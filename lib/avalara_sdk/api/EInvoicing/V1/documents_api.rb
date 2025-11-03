=begin
#Avalara E-Invoicing API

#An API that supports sending data for an E-Invoicing compliance use-case.


=end

require 'cgi'

module AvalaraSdk::EInvoicing
  module AvalaraSdk::EInvoicing::V1
    class DocumentsApi
      attr_accessor :api_client

      def initialize(api_client)
        if (api_client.nil?)
          fail  ArgumentError,'api_client is nil'
        end
        api_client.set_sdk_version("25.11.0")
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
    
      # Returns a copy of the document
      # When the document is available, use this endpoint to download it as text, XML, or PDF. The output format needs to be specified in the Accept header, and it will vary depending on the mandate. If the file has not yet been created, then status code 404 (not found) is returned.
      # @param avalara_version [String] The HTTP Header meant to specify the version of the API intended to be used      # @param accept [String] This header indicates the MIME type of the document      # @param document_id [String] The unique ID for this document that was returned in the POST /einvoicing/document response body      # @param x_avalara_client [String] You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a fingerprint.
      # @return [File]
      def download_document(request_parameters)
        data, _status_code, _headers = download_document_with_http_info(request_parameters)
        data
      end

      # Returns a copy of the document
      # When the document is available, use this endpoint to download it as text, XML, or PDF. The output format needs to be specified in the Accept header, and it will vary depending on the mandate. If the file has not yet been created, then status code 404 (not found) is returned.
          
      # @param avalara_version [String] The HTTP Header meant to specify the version of the API intended to be used    
      # @param accept [String] This header indicates the MIME type of the document    
      # @param document_id [String] The unique ID for this document that was returned in the POST /einvoicing/document response body    
      # @param x_avalara_client [String] You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a fingerprint.    
      # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
      def download_document_with_http_info(request_parameters)
        # OAuth2 Scopes
        required_scopes = ''
        # Request Parameters
        avalara_version = request_parameters.get_avalara_version()
        accept = request_parameters.get_accept()
        document_id = request_parameters.get_document_id()
        x_avalara_client = request_parameters.get_x_avalara_client()
        # verify the required parameter 'avalara_version' is set
        if @api_client.config.client_side_validation && avalara_version.nil?
          fail ArgumentError, "Missing the required parameter 'avalara_version' when calling DocumentsApi.download_document"
        end
        # verify the required parameter 'accept' is set
        if @api_client.config.client_side_validation && accept.nil?
          fail ArgumentError, "Missing the required parameter 'accept' when calling DocumentsApi.download_document"
        end
        # verify the required parameter 'document_id' is set
        if @api_client.config.client_side_validation && document_id.nil?
          fail ArgumentError, "Missing the required parameter 'document_id' when calling DocumentsApi.download_document"
        end
        # resource path
        local_var_path = '/einvoicing/documents/{documentId}/$download'.sub('{' + 'documentId' + '}', CGI.escape(document_id.to_s))

        # query parameters
        query_params = {}

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/pdf', 'application/xml', 'application/json'])
        if !avalara_version.nil?
          header_params[:'avalara-version'] = avalara_version
        end
        if !accept.nil?
          header_params[:'Accept'] = accept
        end
        if !x_avalara_client.nil?
          header_params[:'X-Avalara-Client'] = x_avalara_client
        end

        # form parameters
        form_params = {}

        # http body (model)
        post_body = {}

        # return_type
        return_type = 'File'

        # auth_names
        auth_names = ['Bearer']

        @api_client.apply_auth_to_request!(header_params, auth_names, required_scopes)

        new_options = {
          :operation => :"DocumentsApi.download_document",
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => return_type
        }

        response = @api_client.call_api(:GET, local_var_path, new_options, required_scopes, false, :EInvoicing)
        if new_options[:return_type]
          data = deserialize(response, new_options[:return_type])
        else
          data = nil
        end
        return data, response.code, response.headers
      end

      # Fetch the inbound document from a tax authority
      # This API allows you to retrieve an inbound document. Pass key-value pairs as parameters in the request, such as the confirmation number, supplier number, and buyer VAT number.
      # @param avalara_version [String] The HTTP Header meant to specify the version of the API intended to be used      # @param fetch_documents_request [FetchDocumentsRequest]       # @param x_avalara_client [String] You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a fingerprint.
      # @return [DocumentFetch]
      def fetch_documents(request_parameters)
        data, _status_code, _headers = fetch_documents_with_http_info(request_parameters)
        data
      end

      # Fetch the inbound document from a tax authority
      # This API allows you to retrieve an inbound document. Pass key-value pairs as parameters in the request, such as the confirmation number, supplier number, and buyer VAT number.
          
      # @param avalara_version [String] The HTTP Header meant to specify the version of the API intended to be used    
      # @param fetch_documents_request [FetchDocumentsRequest]     
      # @param x_avalara_client [String] You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a fingerprint.    
      # @return [Array<(DocumentFetch, Integer, Hash)>] DocumentFetch data, response status code and response headers
      def fetch_documents_with_http_info(request_parameters)
        # OAuth2 Scopes
        required_scopes = ''
        # Request Parameters
        avalara_version = request_parameters.get_avalara_version()
        fetch_documents_request = request_parameters.get_fetch_documents_request()
        x_avalara_client = request_parameters.get_x_avalara_client()
        # verify the required parameter 'avalara_version' is set
        if @api_client.config.client_side_validation && avalara_version.nil?
          fail ArgumentError, "Missing the required parameter 'avalara_version' when calling DocumentsApi.fetch_documents"
        end
        # verify the required parameter 'fetch_documents_request' is set
        if @api_client.config.client_side_validation && fetch_documents_request.nil?
          fail ArgumentError, "Missing the required parameter 'fetch_documents_request' when calling DocumentsApi.fetch_documents"
        end
        # resource path
        local_var_path = '/einvoicing/documents/$fetch'

        # query parameters
        query_params = {}

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/json'])
        # HTTP header 'Content-Type'
        content_type = @api_client.select_header_content_type(['application/json'])
        if !content_type.nil?
            header_params['Content-Type'] = content_type
        end
        if !avalara_version.nil?
          header_params[:'avalara-version'] = avalara_version
        end
        if !x_avalara_client.nil?
          header_params[:'X-Avalara-Client'] = x_avalara_client
        end

        # form parameters
        form_params = {}

        # http body (model)
        post_body =  @api_client.object_to_http_body(fetch_documents_request) || {}

        # return_type
        return_type = 'DocumentFetch'

        # auth_names
        auth_names = ['Bearer']

        @api_client.apply_auth_to_request!(header_params, auth_names, required_scopes)

        new_options = {
          :operation => :"DocumentsApi.fetch_documents",
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

      # Returns a summary of documents for a date range
      # Get a list of documents on the Avalara E-Invoicing platform that have a processing date within the specified date range.
      # @param avalara_version [String] The HTTP Header meant to specify the version of the API intended to be used      # @param x_avalara_client [String] You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a fingerprint.      # @param start_date [Time] Start date of documents to return. This defaults to the previous month.      # @param end_date [Time] End date of documents to return. This defaults to the current date.      # @param flow [String] Optionally filter by document direction, where issued &#x3D; &#x60;out&#x60; and received &#x3D; &#x60;in&#x60;      # @param count [String] When set to true, the count of the collection is also returned in the response body      # @param count_only [String] When set to true, only the count of the collection is returned      # @param filter [String] Filter by field name and value. This filter only supports &lt;code&gt;eq&lt;/code&gt; . Refer to [https://developer.avalara.com/avatax/filtering-in-rest/](https://developer.avalara.com/avatax/filtering-in-rest/) for more information on filtering. Filtering will be done over the provided startDate and endDate. If no startDate or endDate is provided, defaults will be assumed.      # @param top [Integer] The number of items to include in the result.      # @param skip [Integer] The number of items to skip in the result.
      # @return [DocumentListResponse]
      def get_document_list(request_parameters)
        data, _status_code, _headers = get_document_list_with_http_info(request_parameters)
        data
      end

      # Returns a summary of documents for a date range
      # Get a list of documents on the Avalara E-Invoicing platform that have a processing date within the specified date range.
          
      # @param avalara_version [String] The HTTP Header meant to specify the version of the API intended to be used    
      # @param x_avalara_client [String] You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a fingerprint.    
      # @param start_date [Time] Start date of documents to return. This defaults to the previous month.    
      # @param end_date [Time] End date of documents to return. This defaults to the current date.    
      # @param flow [String] Optionally filter by document direction, where issued &#x3D; &#x60;out&#x60; and received &#x3D; &#x60;in&#x60;    
      # @param count [String] When set to true, the count of the collection is also returned in the response body    
      # @param count_only [String] When set to true, only the count of the collection is returned    
      # @param filter [String] Filter by field name and value. This filter only supports &lt;code&gt;eq&lt;/code&gt; . Refer to [https://developer.avalara.com/avatax/filtering-in-rest/](https://developer.avalara.com/avatax/filtering-in-rest/) for more information on filtering. Filtering will be done over the provided startDate and endDate. If no startDate or endDate is provided, defaults will be assumed.    
      # @param top [Integer] The number of items to include in the result.    
      # @param skip [Integer] The number of items to skip in the result.    
      # @return [Array<(DocumentListResponse, Integer, Hash)>] DocumentListResponse data, response status code and response headers
      def get_document_list_with_http_info(request_parameters)
        # OAuth2 Scopes
        required_scopes = ''
        # Request Parameters
        avalara_version = request_parameters.get_avalara_version()
        x_avalara_client = request_parameters.get_x_avalara_client()
        start_date = request_parameters.get_start_date()
        end_date = request_parameters.get_end_date()
        flow = request_parameters.get_flow()
        count = request_parameters.get_count()
        count_only = request_parameters.get_count_only()
        filter = request_parameters.get_filter()
        top = request_parameters.get_top()
        skip = request_parameters.get_skip()
        # verify the required parameter 'avalara_version' is set
        if @api_client.config.client_side_validation && avalara_version.nil?
          fail ArgumentError, "Missing the required parameter 'avalara_version' when calling DocumentsApi.get_document_list"
        end
        # resource path
        local_var_path = '/einvoicing/documents'

        # query parameters
        query_params = {}
        if !start_date.nil?
          query_params[:'startDate'] = start_date
        end
        if !end_date.nil?
          query_params[:'endDate'] = end_date
        end
        if !flow.nil?
          query_params[:'flow'] = flow
        end
        if !count.nil?
          query_params[:'$count'] = count
        end
        if !count_only.nil?
          query_params[:'$countOnly'] = count_only
        end
        if !filter.nil?
          query_params[:'$filter'] = filter
        end
        if !top.nil?
          query_params[:'$top'] = top
        end
        if !skip.nil?
          query_params[:'$skip'] = skip
        end

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/json'])
        if !avalara_version.nil?
          header_params[:'avalara-version'] = avalara_version
        end
        if !x_avalara_client.nil?
          header_params[:'X-Avalara-Client'] = x_avalara_client
        end

        # form parameters
        form_params = {}

        # http body (model)
        post_body = {}

        # return_type
        return_type = 'DocumentListResponse'

        # auth_names
        auth_names = ['Bearer']

        @api_client.apply_auth_to_request!(header_params, auth_names, required_scopes)

        new_options = {
          :operation => :"DocumentsApi.get_document_list",
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => return_type
        }

        response = @api_client.call_api(:GET, local_var_path, new_options, required_scopes, false, :EInvoicing)
        if new_options[:return_type]
          data = deserialize(response, new_options[:return_type])
        else
          data = nil
        end
        return data, response.code, response.headers
      end

      # Checks the status of a document
      # Using the unique ID from POST /einvoicing/documents response body, request the current status of a document.
      # @param avalara_version [String] The HTTP Header meant to specify the version of the API intended to be used      # @param document_id [String] The unique ID for this document that was returned in the POST /einvoicing/documents response body      # @param x_avalara_client [String] You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a fingerprint.
      # @return [DocumentStatusResponse]
      def get_document_status(request_parameters)
        data, _status_code, _headers = get_document_status_with_http_info(request_parameters)
        data
      end

      # Checks the status of a document
      # Using the unique ID from POST /einvoicing/documents response body, request the current status of a document.
          
      # @param avalara_version [String] The HTTP Header meant to specify the version of the API intended to be used    
      # @param document_id [String] The unique ID for this document that was returned in the POST /einvoicing/documents response body    
      # @param x_avalara_client [String] You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a fingerprint.    
      # @return [Array<(DocumentStatusResponse, Integer, Hash)>] DocumentStatusResponse data, response status code and response headers
      def get_document_status_with_http_info(request_parameters)
        # OAuth2 Scopes
        required_scopes = ''
        # Request Parameters
        avalara_version = request_parameters.get_avalara_version()
        document_id = request_parameters.get_document_id()
        x_avalara_client = request_parameters.get_x_avalara_client()
        # verify the required parameter 'avalara_version' is set
        if @api_client.config.client_side_validation && avalara_version.nil?
          fail ArgumentError, "Missing the required parameter 'avalara_version' when calling DocumentsApi.get_document_status"
        end
        # verify the required parameter 'document_id' is set
        if @api_client.config.client_side_validation && document_id.nil?
          fail ArgumentError, "Missing the required parameter 'document_id' when calling DocumentsApi.get_document_status"
        end
        # resource path
        local_var_path = '/einvoicing/documents/{documentId}/status'.sub('{' + 'documentId' + '}', CGI.escape(document_id.to_s))

        # query parameters
        query_params = {}

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/json'])
        if !avalara_version.nil?
          header_params[:'avalara-version'] = avalara_version
        end
        if !x_avalara_client.nil?
          header_params[:'X-Avalara-Client'] = x_avalara_client
        end

        # form parameters
        form_params = {}

        # http body (model)
        post_body = {}

        # return_type
        return_type = 'DocumentStatusResponse'

        # auth_names
        auth_names = ['Bearer']

        @api_client.apply_auth_to_request!(header_params, auth_names, required_scopes)

        new_options = {
          :operation => :"DocumentsApi.get_document_status",
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => return_type
        }

        response = @api_client.call_api(:GET, local_var_path, new_options, required_scopes, false, :EInvoicing)
        if new_options[:return_type]
          data = deserialize(response, new_options[:return_type])
        else
          data = nil
        end
        return data, response.code, response.headers
      end

      # Submits a document to Avalara E-Invoicing API
      # When a UBL document is sent to this endpoint, it generates a document in the required format as mandated by the specified country. Additionally, it initiates the workflow to transmit the generated document to the relevant tax authority, if necessary.<br><br>The response from the endpoint contains a unique document ID, which can be used to request the status of the document and verify if it was successfully accepted at the destination.<br><br>Furthermore, the unique ID enables the download of a copy of the generated document for reference purposes.
      # @param avalara_version [String] The HTTP Header meant to specify the version of the API intended to be used      # @param metadata [SubmitDocumentMetadata]       # @param data [Object] The document to be submitted, as indicated by the metadata fields &#39;dataFormat&#39; and &#39;dataFormatVersion&#39;      # @param x_avalara_client [String] You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a fingerprint.
      # @return [DocumentSubmitResponse]
      def submit_document(request_parameters)
        data, _status_code, _headers = submit_document_with_http_info(request_parameters)
        data
      end

      # Submits a document to Avalara E-Invoicing API
      # When a UBL document is sent to this endpoint, it generates a document in the required format as mandated by the specified country. Additionally, it initiates the workflow to transmit the generated document to the relevant tax authority, if necessary.&lt;br&gt;&lt;br&gt;The response from the endpoint contains a unique document ID, which can be used to request the status of the document and verify if it was successfully accepted at the destination.&lt;br&gt;&lt;br&gt;Furthermore, the unique ID enables the download of a copy of the generated document for reference purposes.
          
      # @param avalara_version [String] The HTTP Header meant to specify the version of the API intended to be used    
      # @param metadata [SubmitDocumentMetadata]     
      # @param data [Object] The document to be submitted, as indicated by the metadata fields &#39;dataFormat&#39; and &#39;dataFormatVersion&#39;    
      # @param x_avalara_client [String] You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a fingerprint.    
      # @return [Array<(DocumentSubmitResponse, Integer, Hash)>] DocumentSubmitResponse data, response status code and response headers
      def submit_document_with_http_info(request_parameters)
        # OAuth2 Scopes
        required_scopes = ''
        # Request Parameters
        avalara_version = request_parameters.get_avalara_version()
        metadata = request_parameters.get_metadata()
        data = request_parameters.get_data()
        x_avalara_client = request_parameters.get_x_avalara_client()
        # verify the required parameter 'avalara_version' is set
        if @api_client.config.client_side_validation && avalara_version.nil?
          fail ArgumentError, "Missing the required parameter 'avalara_version' when calling DocumentsApi.submit_document"
        end
        # verify the required parameter 'metadata' is set
        if @api_client.config.client_side_validation && metadata.nil?
          fail ArgumentError, "Missing the required parameter 'metadata' when calling DocumentsApi.submit_document"
        end
        # verify the required parameter 'data' is set
        if @api_client.config.client_side_validation && data.nil?
          fail ArgumentError, "Missing the required parameter 'data' when calling DocumentsApi.submit_document"
        end
        # resource path
        local_var_path = '/einvoicing/documents'

        # query parameters
        query_params = {}

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/xml'])
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

        # form parameters
        form_params = {}
        if !metadata.nil?
          form_params['metadata'] = metadata
        end
        if !data.nil?
          form_params['data'] = data
        end

        # http body (model)
        post_body = {}

        # return_type
        return_type = 'DocumentSubmitResponse'

        # auth_names
        auth_names = ['Bearer']

        @api_client.apply_auth_to_request!(header_params, auth_names, required_scopes)

        new_options = {
          :operation => :"DocumentsApi.submit_document",
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
    # Represents the Request object for the DownloadDocument API
    #
    # @param  String $avalara_version The HTTP Header meant to specify the version of the API intended to be used (required)
    # @param  String $accept This header indicates the MIME type of the document (required)
    # @param  String $document_id The unique ID for this document that was returned in the POST /einvoicing/document response body (required)
    # @param  String $x_avalara_client You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a fingerprint. (optional)
    #
    class DownloadDocumentRequestSdk
        attr_accessor :avalara_version

        attr_accessor :accept

        attr_accessor :document_id

        attr_accessor :x_avalara_client

        def initialize()
        end

        def get_avalara_version()
            return @avalara_version || '1.4'
        end

        def set_avalara_version(avalara_version)
            @avalara_version = avalara_version
        end

        def get_accept()
            return @accept
        end

        def set_accept(accept)
            @accept = accept
        end

        def get_document_id()
            return @document_id
        end

        def set_document_id(document_id)
            @document_id = document_id
        end

        def get_x_avalara_client()
            return @x_avalara_client
        end

        def set_x_avalara_client(x_avalara_client)
            @x_avalara_client = x_avalara_client
        end
    end
    # Represents the Request object for the FetchDocuments API
    #
    # @param  String $avalara_version The HTTP Header meant to specify the version of the API intended to be used (required)
    # @param  FetchDocumentsRequest $fetch_documents_request fetch_documents_request (required)
    # @param  String $x_avalara_client You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a fingerprint. (optional)
    #
    class FetchDocumentsRequestSdk
        attr_accessor :avalara_version

        attr_accessor :fetch_documents_request

        attr_accessor :x_avalara_client

        def initialize()
        end

        def get_avalara_version()
            return @avalara_version || '1.4'
        end

        def set_avalara_version(avalara_version)
            @avalara_version = avalara_version
        end

        def get_fetch_documents_request()
            return @fetch_documents_request
        end

        def set_fetch_documents_request(fetch_documents_request)
            @fetch_documents_request = fetch_documents_request
        end

        def get_x_avalara_client()
            return @x_avalara_client
        end

        def set_x_avalara_client(x_avalara_client)
            @x_avalara_client = x_avalara_client
        end
    end
    # Represents the Request object for the GetDocumentList API
    #
    # @param  String $avalara_version The HTTP Header meant to specify the version of the API intended to be used (required)
    # @param  String $x_avalara_client You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a fingerprint. (optional)
    # @param  Time $start_date Start date of documents to return. This defaults to the previous month. (optional)
    # @param  Time $end_date End date of documents to return. This defaults to the current date. (optional)
    # @param  String $flow Optionally filter by document direction, where issued &#x3D; &#x60;out&#x60; and received &#x3D; &#x60;in&#x60; (optional)
    # @param  String $count When set to true, the count of the collection is also returned in the response body (optional)
    # @param  String $count_only When set to true, only the count of the collection is returned (optional)
    # @param  String $filter Filter by field name and value. This filter only supports &lt;code&gt;eq&lt;/code&gt; . Refer to [https://developer.avalara.com/avatax/filtering-in-rest/](https://developer.avalara.com/avatax/filtering-in-rest/) for more information on filtering. Filtering will be done over the provided startDate and endDate. If no startDate or endDate is provided, defaults will be assumed. (optional)
    # @param  Integer $top The number of items to include in the result. (optional)
    # @param  Integer $skip The number of items to skip in the result. (optional)
    #
    class GetDocumentListRequestSdk
        attr_accessor :avalara_version

        attr_accessor :x_avalara_client

        attr_accessor :start_date

        attr_accessor :end_date

        attr_accessor :flow

        attr_accessor :count

        attr_accessor :count_only

        attr_accessor :filter

        attr_accessor :top

        attr_accessor :skip

        def initialize()
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

        def get_start_date()
            return @start_date
        end

        def set_start_date(start_date)
            @start_date = start_date
        end

        def get_end_date()
            return @end_date
        end

        def set_end_date(end_date)
            @end_date = end_date
        end

        def get_flow()
            return @flow
        end

        def set_flow(flow)
            @flow = flow
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
    end
    # Represents the Request object for the GetDocumentStatus API
    #
    # @param  String $avalara_version The HTTP Header meant to specify the version of the API intended to be used (required)
    # @param  String $document_id The unique ID for this document that was returned in the POST /einvoicing/documents response body (required)
    # @param  String $x_avalara_client You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a fingerprint. (optional)
    #
    class GetDocumentStatusRequestSdk
        attr_accessor :avalara_version

        attr_accessor :document_id

        attr_accessor :x_avalara_client

        def initialize()
        end

        def get_avalara_version()
            return @avalara_version || '1.4'
        end

        def set_avalara_version(avalara_version)
            @avalara_version = avalara_version
        end

        def get_document_id()
            return @document_id
        end

        def set_document_id(document_id)
            @document_id = document_id
        end

        def get_x_avalara_client()
            return @x_avalara_client
        end

        def set_x_avalara_client(x_avalara_client)
            @x_avalara_client = x_avalara_client
        end
    end
    # Represents the Request object for the SubmitDocument API
    #
    # @param  String $avalara_version The HTTP Header meant to specify the version of the API intended to be used (required)
    # @param  SubmitDocumentMetadata $metadata metadata (required)
    # @param  Object $data The document to be submitted, as indicated by the metadata fields &#39;dataFormat&#39; and &#39;dataFormatVersion&#39; (required)
    # @param  String $x_avalara_client You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a fingerprint. (optional)
    #
    class SubmitDocumentRequestSdk
        attr_accessor :avalara_version

        attr_accessor :metadata

        attr_accessor :data

        attr_accessor :x_avalara_client

        def initialize()
        end

        def get_avalara_version()
            return @avalara_version || '1.4'
        end

        def set_avalara_version(avalara_version)
            @avalara_version = avalara_version
        end

        def get_metadata()
            return @metadata
        end

        def set_metadata(metadata)
            @metadata = metadata
        end

        def get_data()
            return @data
        end

        def set_data(data)
            @data = data
        end

        def get_x_avalara_client()
            return @x_avalara_client
        end

        def set_x_avalara_client(x_avalara_client)
            @x_avalara_client = x_avalara_client
        end
    end
  end
end