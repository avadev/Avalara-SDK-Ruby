=begin
#Avalara 1099 & W-9 API Definition

### 🔐 Authentication  Generate a **license key** from: *[Avalara Portal](https://www.avalara.com/us/en/signin.html) → Settings → License and API Keys*.  [More on authentication methods](https://developer.avalara.com/avatax-dm-combined-erp/common-setup/authentication/authentication-methods/)  [Test your credentials](https://developer.avalara.com/avatax/test-credentials/)  ## 📘 API & SDK Documentation  [Avalara SDK (.NET) on GitHub](https://github.com/avadev/Avalara-SDK-DotNet#avalarasdk--the-unified-c-library-for-next-gen-avalara-services)  [Code Examples – 1099 API](https://github.com/avadev/Avalara-SDK-DotNet/blob/main/docs/A1099/V2/Class1099IssuersApi.md#call1099issuersget)


=end

require 'cgi'

module AvalaraSdk::A1099
  module AvalaraSdk::A1099::V2
    class Issuers1099Api
      attr_accessor :api_client

      def initialize(api_client)
        if (api_client.nil?)
          fail  ArgumentError,'api_client is nil'
        end
        api_client.set_sdk_version("25.11.2")
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
          klass = AvalaraSdk::A1099::V2.const_get(return_type)
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
    
      # Create an issuer
      # Create an issuer (also known as a Payer).
      # @param avalara_version [String] API version      # @param x_correlation_id [String] Unique correlation Id in a GUID format      # @param x_avalara_client [String] Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .      # @param issuer_request [IssuerRequest] The issuer to create
      # @return [IssuerResponse]
      def create_issuer(request_parameters)
        data, _status_code, _headers = create_issuer_with_http_info(request_parameters)
        data
      end

      # Create an issuer
      # Create an issuer (also known as a Payer).
          
      # @param avalara_version [String] API version    
      # @param x_correlation_id [String] Unique correlation Id in a GUID format    
      # @param x_avalara_client [String] Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .    
      # @param issuer_request [IssuerRequest] The issuer to create    
      # @return [Array<(IssuerResponse, Integer, Hash)>] IssuerResponse data, response status code and response headers
      def create_issuer_with_http_info(request_parameters)
        # OAuth2 Scopes
        required_scopes = ''
        # Request Parameters
        avalara_version = request_parameters.get_avalara_version()
        x_correlation_id = request_parameters.get_x_correlation_id()
        x_avalara_client = request_parameters.get_x_avalara_client()
        issuer_request = request_parameters.get_issuer_request()
        # verify the required parameter 'avalara_version' is set
        if @api_client.config.client_side_validation && avalara_version.nil?
          fail ArgumentError, "Missing the required parameter 'avalara_version' when calling Issuers1099Api.create_issuer"
        end
        # resource path
        local_var_path = '/1099/issuers'

        # query parameters
        query_params = {}

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/json'])
        # HTTP header 'Content-Type'
        content_type = @api_client.select_header_content_type(['application/json', 'text/json', 'application/*+json'])
        if !content_type.nil?
            header_params['Content-Type'] = content_type
        end
        if !avalara_version.nil?
          header_params[:'avalara-version'] = avalara_version
        end
        if !x_correlation_id.nil?
          header_params[:'X-Correlation-Id'] = x_correlation_id
        end
        if !x_avalara_client.nil?
          header_params[:'X-Avalara-Client'] = x_avalara_client
        end

        # form parameters
        form_params = {}

        # http body (model)
        post_body =  @api_client.object_to_http_body(issuer_request) || {}

        # return_type
        return_type = 'IssuerResponse'

        # auth_names
        auth_names = ['bearer']

        @api_client.apply_auth_to_request!(header_params, auth_names, required_scopes)

        new_options = {
          :operation => :"Issuers1099Api.create_issuer",
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => return_type
        }

        response = @api_client.call_api(:POST, local_var_path, new_options, required_scopes, false, :A1099)
        if new_options[:return_type]
          data = deserialize(response, new_options[:return_type])
        else
          data = nil
        end
        return data, response.code, response.headers
      end

      # Delete an issuer
      # Delete an issuer (also known as a Payer).
      # @param id [String] Id of the issuer to delete      # @param avalara_version [String] API version      # @param x_correlation_id [String] Unique correlation Id in a GUID format      # @param x_avalara_client [String] Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .
      # @return [nil]
      def delete_issuer(request_parameters)
        delete_issuer_with_http_info(request_parameters)
        nil
      end

      # Delete an issuer
      # Delete an issuer (also known as a Payer).
          
      # @param id [String] Id of the issuer to delete    
      # @param avalara_version [String] API version    
      # @param x_correlation_id [String] Unique correlation Id in a GUID format    
      # @param x_avalara_client [String] Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .    
      # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
      def delete_issuer_with_http_info(request_parameters)
        # OAuth2 Scopes
        required_scopes = ''
        # Request Parameters
        id = request_parameters.get_id()
        avalara_version = request_parameters.get_avalara_version()
        x_correlation_id = request_parameters.get_x_correlation_id()
        x_avalara_client = request_parameters.get_x_avalara_client()
        # verify the required parameter 'id' is set
        if @api_client.config.client_side_validation && id.nil?
          fail ArgumentError, "Missing the required parameter 'id' when calling Issuers1099Api.delete_issuer"
        end
        # verify the required parameter 'avalara_version' is set
        if @api_client.config.client_side_validation && avalara_version.nil?
          fail ArgumentError, "Missing the required parameter 'avalara_version' when calling Issuers1099Api.delete_issuer"
        end
        # resource path
        local_var_path = '/1099/issuers/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

        # query parameters
        query_params = {}

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/json'])
        if !avalara_version.nil?
          header_params[:'avalara-version'] = avalara_version
        end
        if !x_correlation_id.nil?
          header_params[:'X-Correlation-Id'] = x_correlation_id
        end
        if !x_avalara_client.nil?
          header_params[:'X-Avalara-Client'] = x_avalara_client
        end

        # form parameters
        form_params = {}

        # http body (model)
        post_body = {}

        # return_type
        return_type = ''

        # auth_names
        auth_names = ['bearer']

        @api_client.apply_auth_to_request!(header_params, auth_names, required_scopes)

        new_options = {
          :operation => :"Issuers1099Api.delete_issuer",
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => return_type
        }

        response = @api_client.call_api(:DELETE, local_var_path, new_options, required_scopes, false, :A1099)
        if new_options[:return_type]
          data = deserialize(response, new_options[:return_type])
        else
          data = nil
        end
        return data, response.code, response.headers
      end

      # Retrieve an issuer
      # Retrieve an issuer (also known as a Payer).
      # @param id [String] Id of the issuer to retrieve      # @param avalara_version [String] API version      # @param x_correlation_id [String] Unique correlation Id in a GUID format      # @param x_avalara_client [String] Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .
      # @return [IssuerResponse]
      def get_issuer(request_parameters)
        data, _status_code, _headers = get_issuer_with_http_info(request_parameters)
        data
      end

      # Retrieve an issuer
      # Retrieve an issuer (also known as a Payer).
          
      # @param id [String] Id of the issuer to retrieve    
      # @param avalara_version [String] API version    
      # @param x_correlation_id [String] Unique correlation Id in a GUID format    
      # @param x_avalara_client [String] Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .    
      # @return [Array<(IssuerResponse, Integer, Hash)>] IssuerResponse data, response status code and response headers
      def get_issuer_with_http_info(request_parameters)
        # OAuth2 Scopes
        required_scopes = ''
        # Request Parameters
        id = request_parameters.get_id()
        avalara_version = request_parameters.get_avalara_version()
        x_correlation_id = request_parameters.get_x_correlation_id()
        x_avalara_client = request_parameters.get_x_avalara_client()
        # verify the required parameter 'id' is set
        if @api_client.config.client_side_validation && id.nil?
          fail ArgumentError, "Missing the required parameter 'id' when calling Issuers1099Api.get_issuer"
        end
        # verify the required parameter 'avalara_version' is set
        if @api_client.config.client_side_validation && avalara_version.nil?
          fail ArgumentError, "Missing the required parameter 'avalara_version' when calling Issuers1099Api.get_issuer"
        end
        # resource path
        local_var_path = '/1099/issuers/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

        # query parameters
        query_params = {}

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/json'])
        if !avalara_version.nil?
          header_params[:'avalara-version'] = avalara_version
        end
        if !x_correlation_id.nil?
          header_params[:'X-Correlation-Id'] = x_correlation_id
        end
        if !x_avalara_client.nil?
          header_params[:'X-Avalara-Client'] = x_avalara_client
        end

        # form parameters
        form_params = {}

        # http body (model)
        post_body = {}

        # return_type
        return_type = 'IssuerResponse'

        # auth_names
        auth_names = ['bearer']

        @api_client.apply_auth_to_request!(header_params, auth_names, required_scopes)

        new_options = {
          :operation => :"Issuers1099Api.get_issuer",
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => return_type
        }

        response = @api_client.call_api(:GET, local_var_path, new_options, required_scopes, false, :A1099)
        if new_options[:return_type]
          data = deserialize(response, new_options[:return_type])
        else
          data = nil
        end
        return data, response.code, response.headers
      end

      # List issuers
      # List issuers (also known as Payers). Filterable fields are name, referenceId and taxYear.
      # @param avalara_version [String] API version      # @param filter [String] A filter statement to identify specific records to retrieve.  For more information on filtering, see &lt;a href&#x3D;\&quot;https://developer.avalara.com/avatax/filtering-in-rest/\&quot;&gt;Filtering in REST&lt;/a&gt;.      # @param top [Integer] If zero or greater than 1000, return at most 1000 results.  Otherwise, return this number of results.  Used with skip to provide pagination for large datasets.      # @param skip [Integer] If nonzero, skip this number of results before returning data. Used with top to provide pagination for large datasets.      # @param order_by [String] A comma separated list of sort statements in the format (fieldname) [ASC|DESC], for example id ASC.      # @param count [Boolean] If true, return the global count of elements in the collection.      # @param count_only [Boolean] If true, return ONLY the global count of elements in the collection.  It only applies when count&#x3D;true.      # @param x_correlation_id [String] Unique correlation Id in a GUID format      # @param x_avalara_client [String] Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .
      # @return [PaginatedQueryResultModelIssuerResponse]
      def get_issuers(request_parameters)
        data, _status_code, _headers = get_issuers_with_http_info(request_parameters)
        data
      end

      # List issuers
      # List issuers (also known as Payers). Filterable fields are name, referenceId and taxYear.
          
      # @param avalara_version [String] API version    
      # @param filter [String] A filter statement to identify specific records to retrieve.  For more information on filtering, see &lt;a href&#x3D;\&quot;https://developer.avalara.com/avatax/filtering-in-rest/\&quot;&gt;Filtering in REST&lt;/a&gt;.    
      # @param top [Integer] If zero or greater than 1000, return at most 1000 results.  Otherwise, return this number of results.  Used with skip to provide pagination for large datasets.    
      # @param skip [Integer] If nonzero, skip this number of results before returning data. Used with top to provide pagination for large datasets.    
      # @param order_by [String] A comma separated list of sort statements in the format (fieldname) [ASC|DESC], for example id ASC.    
      # @param count [Boolean] If true, return the global count of elements in the collection.    
      # @param count_only [Boolean] If true, return ONLY the global count of elements in the collection.  It only applies when count&#x3D;true.    
      # @param x_correlation_id [String] Unique correlation Id in a GUID format    
      # @param x_avalara_client [String] Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .    
      # @return [Array<(PaginatedQueryResultModelIssuerResponse, Integer, Hash)>] PaginatedQueryResultModelIssuerResponse data, response status code and response headers
      def get_issuers_with_http_info(request_parameters)
        # OAuth2 Scopes
        required_scopes = ''
        # Request Parameters
        avalara_version = request_parameters.get_avalara_version()
        filter = request_parameters.get_filter()
        top = request_parameters.get_top()
        skip = request_parameters.get_skip()
        order_by = request_parameters.get_order_by()
        count = request_parameters.get_count()
        count_only = request_parameters.get_count_only()
        x_correlation_id = request_parameters.get_x_correlation_id()
        x_avalara_client = request_parameters.get_x_avalara_client()
        # verify the required parameter 'avalara_version' is set
        if @api_client.config.client_side_validation && avalara_version.nil?
          fail ArgumentError, "Missing the required parameter 'avalara_version' when calling Issuers1099Api.get_issuers"
        end
        # resource path
        local_var_path = '/1099/issuers'

        # query parameters
        query_params = {}
        if !filter.nil?
          query_params[:'$filter'] = filter
        end
        if !top.nil?
          query_params[:'$top'] = top
        end
        if !skip.nil?
          query_params[:'$skip'] = skip
        end
        if !order_by.nil?
          query_params[:'$orderBy'] = order_by
        end
        if !count.nil?
          query_params[:'count'] = count
        end
        if !count_only.nil?
          query_params[:'countOnly'] = count_only
        end

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/json'])
        if !avalara_version.nil?
          header_params[:'avalara-version'] = avalara_version
        end
        if !x_correlation_id.nil?
          header_params[:'X-Correlation-Id'] = x_correlation_id
        end
        if !x_avalara_client.nil?
          header_params[:'X-Avalara-Client'] = x_avalara_client
        end

        # form parameters
        form_params = {}

        # http body (model)
        post_body = {}

        # return_type
        return_type = 'PaginatedQueryResultModelIssuerResponse'

        # auth_names
        auth_names = ['bearer']

        @api_client.apply_auth_to_request!(header_params, auth_names, required_scopes)

        new_options = {
          :operation => :"Issuers1099Api.get_issuers",
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => return_type
        }

        response = @api_client.call_api(:GET, local_var_path, new_options, required_scopes, false, :A1099)
        if new_options[:return_type]
          data = deserialize(response, new_options[:return_type])
        else
          data = nil
        end
        return data, response.code, response.headers
      end

      # Update an issuer
      # Update an issuer (also known as a Payer).
      # @param id [String] Id of the issuer to update      # @param avalara_version [String] API version      # @param x_correlation_id [String] Unique correlation Id in a GUID format      # @param x_avalara_client [String] Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .      # @param issuer_request [IssuerRequest] The issuer to update
      # @return [nil]
      def update_issuer(request_parameters)
        update_issuer_with_http_info(request_parameters)
        nil
      end

      # Update an issuer
      # Update an issuer (also known as a Payer).
          
      # @param id [String] Id of the issuer to update    
      # @param avalara_version [String] API version    
      # @param x_correlation_id [String] Unique correlation Id in a GUID format    
      # @param x_avalara_client [String] Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .    
      # @param issuer_request [IssuerRequest] The issuer to update    
      # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
      def update_issuer_with_http_info(request_parameters)
        # OAuth2 Scopes
        required_scopes = ''
        # Request Parameters
        id = request_parameters.get_id()
        avalara_version = request_parameters.get_avalara_version()
        x_correlation_id = request_parameters.get_x_correlation_id()
        x_avalara_client = request_parameters.get_x_avalara_client()
        issuer_request = request_parameters.get_issuer_request()
        # verify the required parameter 'id' is set
        if @api_client.config.client_side_validation && id.nil?
          fail ArgumentError, "Missing the required parameter 'id' when calling Issuers1099Api.update_issuer"
        end
        # verify the required parameter 'avalara_version' is set
        if @api_client.config.client_side_validation && avalara_version.nil?
          fail ArgumentError, "Missing the required parameter 'avalara_version' when calling Issuers1099Api.update_issuer"
        end
        # resource path
        local_var_path = '/1099/issuers/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

        # query parameters
        query_params = {}

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/json'])
        # HTTP header 'Content-Type'
        content_type = @api_client.select_header_content_type(['application/json', 'text/json', 'application/*+json'])
        if !content_type.nil?
            header_params['Content-Type'] = content_type
        end
        if !avalara_version.nil?
          header_params[:'avalara-version'] = avalara_version
        end
        if !x_correlation_id.nil?
          header_params[:'X-Correlation-Id'] = x_correlation_id
        end
        if !x_avalara_client.nil?
          header_params[:'X-Avalara-Client'] = x_avalara_client
        end

        # form parameters
        form_params = {}

        # http body (model)
        post_body =  @api_client.object_to_http_body(issuer_request) || {}

        # return_type
        return_type = ''

        # auth_names
        auth_names = ['bearer']

        @api_client.apply_auth_to_request!(header_params, auth_names, required_scopes)

        new_options = {
          :operation => :"Issuers1099Api.update_issuer",
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => return_type
        }

        response = @api_client.call_api(:PUT, local_var_path, new_options, required_scopes, false, :A1099)
        if new_options[:return_type]
          data = deserialize(response, new_options[:return_type])
        else
          data = nil
        end
        return data, response.code, response.headers
      end
    end
    # Represents the Request object for the CreateIssuer API
    #
    # @param  String $avalara_version API version (required)
    # @param  String $x_correlation_id Unique correlation Id in a GUID format (optional)
    # @param  String $x_avalara_client Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) . (optional)
    # @param  IssuerRequest $issuer_request The issuer to create (optional)
    #
    class CreateIssuerRequestSdk
        attr_accessor :avalara_version

        attr_accessor :x_correlation_id

        attr_accessor :x_avalara_client

        attr_accessor :issuer_request

        def initialize()
        end

        def get_avalara_version()
            return @avalara_version || '2.0'
        end

        def set_avalara_version(avalara_version)
            @avalara_version = avalara_version
        end

        def get_x_correlation_id()
            return @x_correlation_id
        end

        def set_x_correlation_id(x_correlation_id)
            @x_correlation_id = x_correlation_id
        end

        def get_x_avalara_client()
            return @x_avalara_client
        end

        def set_x_avalara_client(x_avalara_client)
            @x_avalara_client = x_avalara_client
        end

        def get_issuer_request()
            return @issuer_request
        end

        def set_issuer_request(issuer_request)
            @issuer_request = issuer_request
        end
    end
    # Represents the Request object for the DeleteIssuer API
    #
    # @param  String $id Id of the issuer to delete (required)
    # @param  String $avalara_version API version (required)
    # @param  String $x_correlation_id Unique correlation Id in a GUID format (optional)
    # @param  String $x_avalara_client Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) . (optional)
    #
    class DeleteIssuerRequestSdk
        attr_accessor :id

        attr_accessor :avalara_version

        attr_accessor :x_correlation_id

        attr_accessor :x_avalara_client

        def initialize()
        end

        def get_id()
            return @id
        end

        def set_id(id)
            @id = id
        end

        def get_avalara_version()
            return @avalara_version || '2.0'
        end

        def set_avalara_version(avalara_version)
            @avalara_version = avalara_version
        end

        def get_x_correlation_id()
            return @x_correlation_id
        end

        def set_x_correlation_id(x_correlation_id)
            @x_correlation_id = x_correlation_id
        end

        def get_x_avalara_client()
            return @x_avalara_client
        end

        def set_x_avalara_client(x_avalara_client)
            @x_avalara_client = x_avalara_client
        end
    end
    # Represents the Request object for the GetIssuer API
    #
    # @param  String $id Id of the issuer to retrieve (required)
    # @param  String $avalara_version API version (required)
    # @param  String $x_correlation_id Unique correlation Id in a GUID format (optional)
    # @param  String $x_avalara_client Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) . (optional)
    #
    class GetIssuerRequestSdk
        attr_accessor :id

        attr_accessor :avalara_version

        attr_accessor :x_correlation_id

        attr_accessor :x_avalara_client

        def initialize()
        end

        def get_id()
            return @id
        end

        def set_id(id)
            @id = id
        end

        def get_avalara_version()
            return @avalara_version || '2.0'
        end

        def set_avalara_version(avalara_version)
            @avalara_version = avalara_version
        end

        def get_x_correlation_id()
            return @x_correlation_id
        end

        def set_x_correlation_id(x_correlation_id)
            @x_correlation_id = x_correlation_id
        end

        def get_x_avalara_client()
            return @x_avalara_client
        end

        def set_x_avalara_client(x_avalara_client)
            @x_avalara_client = x_avalara_client
        end
    end
    # Represents the Request object for the GetIssuers API
    #
    # @param  String $avalara_version API version (required)
    # @param  String $filter A filter statement to identify specific records to retrieve.  For more information on filtering, see &lt;a href&#x3D;\&quot;https://developer.avalara.com/avatax/filtering-in-rest/\&quot;&gt;Filtering in REST&lt;/a&gt;. (optional)
    # @param  Integer $top If zero or greater than 1000, return at most 1000 results.  Otherwise, return this number of results.  Used with skip to provide pagination for large datasets. (optional)
    # @param  Integer $skip If nonzero, skip this number of results before returning data. Used with top to provide pagination for large datasets. (optional)
    # @param  String $order_by A comma separated list of sort statements in the format (fieldname) [ASC|DESC], for example id ASC. (optional)
    # @param  Boolean $count If true, return the global count of elements in the collection. (optional)
    # @param  Boolean $count_only If true, return ONLY the global count of elements in the collection.  It only applies when count&#x3D;true. (optional)
    # @param  String $x_correlation_id Unique correlation Id in a GUID format (optional)
    # @param  String $x_avalara_client Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) . (optional)
    #
    class GetIssuersRequestSdk
        attr_accessor :avalara_version

        attr_accessor :filter

        attr_accessor :top

        attr_accessor :skip

        attr_accessor :order_by

        attr_accessor :count

        attr_accessor :count_only

        attr_accessor :x_correlation_id

        attr_accessor :x_avalara_client

        def initialize()
        end

        def get_avalara_version()
            return @avalara_version || '2.0'
        end

        def set_avalara_version(avalara_version)
            @avalara_version = avalara_version
        end

        def get_filter()
            return @filter
        end

        def set_filter(filter)
            @filter = filter
        end

        def get_top()
            return @top
        end

        def set_top(top)
            @top = top
        end

        def get_skip()
            return @skip
        end

        def set_skip(skip)
            @skip = skip
        end

        def get_order_by()
            return @order_by
        end

        def set_order_by(order_by)
            @order_by = order_by
        end

        def get_count()
            return @count
        end

        def set_count(count)
            @count = count
        end

        def get_count_only()
            return @count_only
        end

        def set_count_only(count_only)
            @count_only = count_only
        end

        def get_x_correlation_id()
            return @x_correlation_id
        end

        def set_x_correlation_id(x_correlation_id)
            @x_correlation_id = x_correlation_id
        end

        def get_x_avalara_client()
            return @x_avalara_client
        end

        def set_x_avalara_client(x_avalara_client)
            @x_avalara_client = x_avalara_client
        end
    end
    # Represents the Request object for the UpdateIssuer API
    #
    # @param  String $id Id of the issuer to update (required)
    # @param  String $avalara_version API version (required)
    # @param  String $x_correlation_id Unique correlation Id in a GUID format (optional)
    # @param  String $x_avalara_client Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) . (optional)
    # @param  IssuerRequest $issuer_request The issuer to update (optional)
    #
    class UpdateIssuerRequestSdk
        attr_accessor :id

        attr_accessor :avalara_version

        attr_accessor :x_correlation_id

        attr_accessor :x_avalara_client

        attr_accessor :issuer_request

        def initialize()
        end

        def get_id()
            return @id
        end

        def set_id(id)
            @id = id
        end

        def get_avalara_version()
            return @avalara_version || '2.0'
        end

        def set_avalara_version(avalara_version)
            @avalara_version = avalara_version
        end

        def get_x_correlation_id()
            return @x_correlation_id
        end

        def set_x_correlation_id(x_correlation_id)
            @x_correlation_id = x_correlation_id
        end

        def get_x_avalara_client()
            return @x_avalara_client
        end

        def set_x_avalara_client(x_avalara_client)
            @x_avalara_client = x_avalara_client
        end

        def get_issuer_request()
            return @issuer_request
        end

        def set_issuer_request(issuer_request)
            @issuer_request = issuer_request
        end
    end
  end
end