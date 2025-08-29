=begin
#Avalara E-Invoicing API

#An API that supports sending data for an E-Invoicing compliance use-case.


=end

require 'cgi'

module AvalaraSdk::EInvoicing
  module AvalaraSdk::EInvoicing::V1
    class InteropApi
      attr_accessor :api_client

      def initialize(api_client)
        if (api_client.nil?)
          fail  ArgumentError,'api_client is nil'
        end
        api_client.set_sdk_version("25.8.3")
        @api_client = api_client
      end

      # JSON MIME examples:
      #   application/json
      #   application/json; charset=UTF8
      #   APPLICATION/JSON
      #   */*
      # @param [String] mime MIME
      # @return [Boolean] True if the MIME is application/json
      def json_mime?(mime)
        (mime == '*/*') || !(mime =~ /Application\/.*json(?!p)(;.*)?/i).nil?
      end

      # Deserialize the response to the given return type.
      #
      # @param [Response] response HTTP response
      # @param [String] return_type some examples: "User", "Array<User>", "Hash<String, Integer>"
      def deserialize(response, return_type)
        body = response.body

        # handle file downloading - return the File instance processed in request callbacks
        # note that response body is empty when the file is written in chunks in request on_body callback
        if return_type == 'File'
          content_disposition = response.headers['Content-Disposition']
          if content_disposition && content_disposition =~ /filename=/i
            filename = content_disposition[/filename=['"]?([^'"\s]+)['"]?/, 1]
            prefix = sanitize_filename(filename)
          else
            prefix = 'download-'
          end
          prefix = prefix + '-' unless prefix.end_with?('-')
          encoding = body.encoding
          @tempfile = Tempfile.open(prefix, @config.temp_folder_path, encoding: encoding)
          @tempfile.write(@stream.join.force_encoding(encoding))
          @tempfile.close
          @config.logger.info "Temp file written to #{@tempfile.path}, please copy the file to a proper folder "\
                              "with e.g. `FileUtils.cp(tempfile.path, '/new/file/path')` otherwise the temp file "\
                              "will be deleted automatically with GC. It's also recommended to delete the temp file "\
                              "explicitly with `tempfile.delete`"
          return @tempfile
        end

        return nil if body.nil? || body.empty?

        # return response body directly for String return type
        return body if return_type == 'String'

        # ensuring a default content type
        content_type = response.headers['Content-Type'] || 'application/json'

        fail "Content-Type is not supported: #{content_type}" unless json_mime?(content_type)

        begin
          data = JSON.parse("[#{body}]", :symbolize_names => true)[0]
        rescue JSON::ParserError => e
          if %w(String Date Time).include?(return_type)
            data = body
          else
            raise e
          end
        end

        convert_to_type data, return_type
      end

      # Convert data to the given return type.
      # @param [Object] data Data to be converted
      # @param [String] return_type Return type
      # @return [Mixed] Data in a particular type
      def convert_to_type(data, return_type)
        return nil if data.nil?
        case return_type
        when 'String'
          data.to_s
        when 'Integer'
          data.to_i
        when 'Float'
          data.to_f
        when 'Boolean'
          data == true
        when 'Time'
          # parse date time (expecting ISO 8601 format)
          Time.parse data
        when 'Date'
          # parse date time (expecting ISO 8601 format)
          Date.parse data
        when 'Object'
          # generic object (usually a Hash), return directly
          data
        when /\AArray<(.+)>\z/
          # e.g. Array<Pet>
          sub_type = $1
          data.map { |item| convert_to_type(item, sub_type) }
        when /\AHash\<String, (.+)\>\z/
          # e.g. Hash<String, Integer>
          sub_type = $1
          {}.tap do |hash|
            data.each { |k, v| hash[k] = convert_to_type(v, sub_type) }
          end
        else
          # models (e.g. Pet) or oneOf
          klass = AvalaraSdk::EInvoicing::V1.const_get(return_type)
          klass.respond_to?(:openapi_one_of) ? klass.build(data) : klass.build_from_hash(data)
        end
      end

      # Sanitize filename by removing path.
      # e.g. ../../sun.gif becomes sun.gif
      #
      # @param [String] filename the filename to be sanitized
      # @return [String] the sanitized filename
      def sanitize_filename(filename)
        filename.gsub(/.*[\/\\]/, '')
      end

      # Update header and query params based on authentication settings.
      #
      # @param [Hash] header_params Header parameters
      # @param [Hash] query_params Query parameters
      # @param [String] auth_names Authentication scheme name
      def update_params_for_auth!(header_params, query_params, auth_names)
        Array(auth_names).each do |auth_name|
          auth_setting = @config.auth_settings[auth_name]
          next unless auth_setting
          case auth_setting[:in]
          when 'header' then header_params[auth_setting[:key]] = auth_setting[:value]
          when 'query'  then query_params[auth_setting[:key]] = auth_setting[:value]
          else fail ArgumentError, 'Authentication token must be in `query` or `header`'
          end
        end
      end

      # Sets user agent in HTTP header
      #
      # @param [String] user_agent User agent (e.g. openapi-generator/ruby/1.0.0)
      def user_agent=(user_agent)
        @user_agent = user_agent
        @default_headers['User-Agent'] = @user_agent
      end

      # Return Accept header based on an array of accepts provided.
      # @param [Array] accepts array for Accept
      # @return [String] the Accept header (e.g. application/json)
      def select_header_accept(accepts)
        return nil if accepts.nil? || accepts.empty?
        # use JSON when present, otherwise use all of the provided
        json_accept = accepts.find { |s| json_mime?(s) }
        json_accept || accepts.join(',')
      end

      # Return Content-Type header based on an array of content types provided.
      # @param [Array] content_types array for Content-Type
      # @return [String] the Content-Type header  (e.g. application/json)
      def select_header_content_type(content_types)
        # return nil by default
        return if content_types.nil? || content_types.empty?
        # use JSON when present, otherwise use the first one
        json_content_type = content_types.find { |s| json_mime?(s) }
        json_content_type || content_types.first
      end

      # Convert object (array, hash, object, etc) to JSON string.
      # @param [Object] model object to be converted into JSON string
      # @return [String] JSON string representation of the object
      def object_to_http_body(model)
        return model if model.nil? || model.is_a?(String)
        local_body = nil
        if model.is_a?(Array)
          local_body = model.map { |m| object_to_hash(m) }
        else
          local_body = object_to_hash(model)
        end
        local_body.to_json
      end

      # Convert object(non-array) to hash.
      # @param [Object] obj object to be converted into JSON string
      # @return [String] JSON string representation of the object
      def object_to_hash(obj)
        if obj.respond_to?(:to_hash)
          obj.to_hash
        else
          obj
        end
      end

      # Build parameter value according to the given collection format.
      # @param [String] collection_format one of :csv, :ssv, :tsv, :pipes and :multi
      def build_collection_param(param, collection_format)
        case collection_format
        when :csv
          param.join(',')
        when :ssv
          param.join(' ')
        when :tsv
          param.join("\t")
        when :pipes
          param.join('|')
        when :multi
          # return the array directly as typhoeus will handle it as expected
          param
        else
          fail "unknown collection format: #{collection_format.inspect}"
        end
      end
    
      # Submit a document
      # This API used by the interoperability partners to submit a document to  their trading partners in Avalara on behalf of their customers. 
      # @param document_type [String] Type of the document being uploaded. Partners will be configured in Avalara system to send only certain types of documents.      # @param interchange_type [String] Type of interchange (codes in Avalara system that uniquely identifies a type of interchange). Partners will be configured in Avalara system to send documents belonging to certain types of interchanges.      # @param avalara_version [String] The HTTP Header meant to specify the version of the API intended to be used      # @param x_avalara_client [String] You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \&quot;Fingerprint\&quot;      # @param x_correlation_id [String] The caller can use this as an identifier to use as a correlation id to trace the call.      # @param file_name [File] The file to be uploaded (e.g., UBL XML, CII XML).
      # @return [SubmitInteropDocument202Response]
      def submit_interop_document(request_parameters)
        data, _status_code, _headers = submit_interop_document_with_http_info(request_parameters)
        data
      end

      # Submit a document
      # This API used by the interoperability partners to submit a document to  their trading partners in Avalara on behalf of their customers. 
          
      # @param document_type [String] Type of the document being uploaded. Partners will be configured in Avalara system to send only certain types of documents.    
      # @param interchange_type [String] Type of interchange (codes in Avalara system that uniquely identifies a type of interchange). Partners will be configured in Avalara system to send documents belonging to certain types of interchanges.    
      # @param avalara_version [String] The HTTP Header meant to specify the version of the API intended to be used    
      # @param x_avalara_client [String] You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \&quot;Fingerprint\&quot;    
      # @param x_correlation_id [String] The caller can use this as an identifier to use as a correlation id to trace the call.    
      # @param file_name [File] The file to be uploaded (e.g., UBL XML, CII XML).    
      # @return [Array<(SubmitInteropDocument202Response, Integer, Hash)>] SubmitInteropDocument202Response data, response status code and response headers
      def submit_interop_document_with_http_info(request_parameters)
        # OAuth2 Scopes
        required_scopes = ''
        # Request Parameters
        document_type = request_parameters.get_document_type()
        interchange_type = request_parameters.get_interchange_type()
        avalara_version = request_parameters.get_avalara_version()
        x_avalara_client = request_parameters.get_x_avalara_client()
        x_correlation_id = request_parameters.get_x_correlation_id()
        file_name = request_parameters.get_file_name()
        # verify the required parameter 'document_type' is set
        if @api_client.config.client_side_validation && document_type.nil?
          fail ArgumentError, "Missing the required parameter 'document_type' when calling InteropApi.submit_interop_document"
        end
        # verify enum value
        allowable_values = ["ubl-invoice-2.1", "ubl-creditnote-2.1", "ubl-applicationresponse-2.1"]
        if @api_client.config.client_side_validation && !allowable_values.include?(document_type)
          fail ArgumentError, "invalid value for \"document_type\", must be one of #{allowable_values}"
        end
        # verify the required parameter 'interchange_type' is set
        if @api_client.config.client_side_validation && interchange_type.nil?
          fail ArgumentError, "Missing the required parameter 'interchange_type' when calling InteropApi.submit_interop_document"
        end
        # verify enum value
        allowable_values = ["FI-B2B-TIEKE", "FI-B2G-TIEKE"]
        if @api_client.config.client_side_validation && !allowable_values.include?(interchange_type)
          fail ArgumentError, "invalid value for \"interchange_type\", must be one of #{allowable_values}"
        end
        # verify the required parameter 'avalara_version' is set
        if @api_client.config.client_side_validation && avalara_version.nil?
          fail ArgumentError, "Missing the required parameter 'avalara_version' when calling InteropApi.submit_interop_document"
        end
        # resource path
        local_var_path = '/einvoicing/interop/documents'

        # query parameters
        query_params = {}
        if !document_type.nil?
          query_params[:'documentType'] = document_type
        end
        if !interchange_type.nil?
          query_params[:'interchangeType'] = interchange_type
        end

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/json'])
        # HTTP header 'Content-Type'
        content_type = @api_client.select_header_content_type(['multipart/form-data'])
        if !content_type.nil?
            header_params['Content-Type'] = content_type
        end
        if !avalara_version.nil?
          header_params[:'avalara-version'] = avalara_version
        end
        if !x_avalara_client.nil?
          header_params[:'X-Avalara-Client'] = x_avalara_client
        end
        if !x_correlation_id.nil?
          header_params[:'X-Correlation-ID'] = x_correlation_id
        end

        # form parameters
        form_params = {}
        if !file_name.nil?
          form_params['fileName'] = file_name
        end

        # http body (model)
        post_body = {}

        # return_type
        return_type = 'SubmitInteropDocument202Response'

        # auth_names
        auth_names = ['Bearer']

        @api_client.apply_auth_to_request!(header_params, auth_names, required_scopes)

        new_options = {
          :operation => :"InteropApi.submit_interop_document",
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => return_type
        }

        response = @api_client.call_api(:POST, local_var_path, new_options, required_scopes, false, :EInvoicing)
        if new_options[:return_type]
          data = deserialize(response, new_options[:return_type])
        else
          data = nil
        end
        return data, response.code, response.headers
      end
    end
    # Represents the Request object for the SubmitInteropDocument API
    #
    # @param  String $document_type Type of the document being uploaded. Partners will be configured in Avalara system to send only certain types of documents. (required)
    # @param  String $interchange_type Type of interchange (codes in Avalara system that uniquely identifies a type of interchange). Partners will be configured in Avalara system to send documents belonging to certain types of interchanges. (required)
    # @param  String $avalara_version The HTTP Header meant to specify the version of the API intended to be used (required)
    # @param  String $x_avalara_client You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \&quot;Fingerprint\&quot; (optional)
    # @param  String $x_correlation_id The caller can use this as an identifier to use as a correlation id to trace the call. (optional)
    # @param  File $file_name The file to be uploaded (e.g., UBL XML, CII XML). (optional)
    #
    class SubmitInteropDocumentRequestSdk
        attr_accessor :document_type

        attr_accessor :interchange_type

        attr_accessor :avalara_version

        attr_accessor :x_avalara_client

        attr_accessor :x_correlation_id

        attr_accessor :file_name

        def initialize()
        end

        def get_document_type()
            return @document_type
        end

        def set_document_type(document_type)
            @document_type = document_type
        end

        def get_interchange_type()
            return @interchange_type
        end

        def set_interchange_type(interchange_type)
            @interchange_type = interchange_type
        end

        def get_avalara_version()
            return @avalara_version || '1.4'
        end

        def set_avalara_version(avalara_version)
            @avalara_version = avalara_version
        end

        def get_x_avalara_client()
            return @x_avalara_client
        end

        def set_x_avalara_client(x_avalara_client)
            @x_avalara_client = x_avalara_client
        end

        def get_x_correlation_id()
            return @x_correlation_id
        end

        def set_x_correlation_id(x_correlation_id)
            @x_correlation_id = x_correlation_id
        end

        def get_file_name()
            return @file_name
        end

        def set_file_name(file_name)
            @file_name = file_name
        end
    end
  end
end