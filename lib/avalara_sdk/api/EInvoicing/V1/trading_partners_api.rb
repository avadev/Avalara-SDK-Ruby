=begin
#Avalara E-Invoicing API

#An API that supports sending data for an E-Invoicing compliance use-case.


=end

require 'cgi'

module AvalaraSdk::EInvoicing
  module AvalaraSdk::EInvoicing::V1
    class TradingPartnersApi
      attr_accessor :api_client

      def initialize(api_client)
        if (api_client.nil?)
          fail  ArgumentError,'api_client is nil'
        end
        api_client.set_sdk_version("25.7.0")
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
    
      # Creates a batch search and performs a batch search in the directory for participants in the background.
      # Handles batch search requests by uploading a file containing search parameters.
      # @param avalara_version [String] The HTTP Header meant to specify the version of the API intended to be used      # @param name [String] The human readable name given to this batch search.      # @param notification_email [String] The email address of the user to whom the batch search completion notification must go to.      # @param file [File] CSV file containing search parameters.      # @param x_avalara_client [String] You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \&quot;Fingerprint\&quot;      # @param x_correlation_id [String] The caller can use this as an identifier to use as a correlation id to trace the call.
      # @return [BatchSearchParticipants202Response]
      def batch_search_participants(request_parameters)
        data, _status_code, _headers = batch_search_participants_with_http_info(request_parameters)
        data
      end

      # Creates a batch search and performs a batch search in the directory for participants in the background.
      # Handles batch search requests by uploading a file containing search parameters.
          
      # @param avalara_version [String] The HTTP Header meant to specify the version of the API intended to be used    
      # @param name [String] The human readable name given to this batch search.    
      # @param notification_email [String] The email address of the user to whom the batch search completion notification must go to.    
      # @param file [File] CSV file containing search parameters.    
      # @param x_avalara_client [String] You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \&quot;Fingerprint\&quot;    
      # @param x_correlation_id [String] The caller can use this as an identifier to use as a correlation id to trace the call.    
      # @return [Array<(BatchSearchParticipants202Response, Integer, Hash)>] BatchSearchParticipants202Response data, response status code and response headers
      def batch_search_participants_with_http_info(request_parameters)
        # OAuth2 Scopes
        required_scopes = ''
        # Request Parameters
        avalara_version = request_parameters.get_avalara_version()
        name = request_parameters.get_name()
        notification_email = request_parameters.get_notification_email()
        file = request_parameters.get_file()
        x_avalara_client = request_parameters.get_x_avalara_client()
        x_correlation_id = request_parameters.get_x_correlation_id()
        # verify the required parameter 'avalara_version' is set
        if @api_client.config.client_side_validation && avalara_version.nil?
          fail ArgumentError, "Missing the required parameter 'avalara_version' when calling TradingPartnersApi.batch_search_participants"
        end
        # verify the required parameter 'name' is set
        if @api_client.config.client_side_validation && name.nil?
          fail ArgumentError, "Missing the required parameter 'name' when calling TradingPartnersApi.batch_search_participants"
        end
        # verify the required parameter 'notification_email' is set
        if @api_client.config.client_side_validation && notification_email.nil?
          fail ArgumentError, "Missing the required parameter 'notification_email' when calling TradingPartnersApi.batch_search_participants"
        end
        # verify the required parameter 'file' is set
        if @api_client.config.client_side_validation && file.nil?
          fail ArgumentError, "Missing the required parameter 'file' when calling TradingPartnersApi.batch_search_participants"
        end
        # resource path
        local_var_path = '/einvoicing/trading-partners/batch-searches'

        # query parameters
        query_params = {}
        if !name.nil?
          query_params[:'name'] = name
        end
        if !notification_email.nil?
          query_params[:'notificationEmail'] = notification_email
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
        if !file.nil?
          form_params['file'] = file
        end

        # http body (model)
        post_body = {}

        # return_type
        return_type = 'BatchSearchParticipants202Response'

        # auth_names
        auth_names = ['Bearer']

        @api_client.apply_auth_to_request!(header_params, auth_names, required_scopes)

        new_options = {
          :operation => :"TradingPartnersApi.batch_search_participants",
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

      # Download batch search results in a csv file.
      # Downloads the report for a specific batch search using the batch search ID.
      # @param avalara_version [String] The HTTP Header meant to specify the version of the API intended to be used      # @param id [String] The ID of the batch search whose report is to be downloaded.      # @param x_avalara_client [String] You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \&quot;Fingerprint\&quot;      # @param x_correlation_id [String] The caller can use this as an identifier to use as a correlation id to trace the call.
      # @return [File]
      def download_batch_search_report(request_parameters)
        data, _status_code, _headers = download_batch_search_report_with_http_info(request_parameters)
        data
      end

      # Download batch search results in a csv file.
      # Downloads the report for a specific batch search using the batch search ID.
          
      # @param avalara_version [String] The HTTP Header meant to specify the version of the API intended to be used    
      # @param id [String] The ID of the batch search whose report is to be downloaded.    
      # @param x_avalara_client [String] You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \&quot;Fingerprint\&quot;    
      # @param x_correlation_id [String] The caller can use this as an identifier to use as a correlation id to trace the call.    
      # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
      def download_batch_search_report_with_http_info(request_parameters)
        # OAuth2 Scopes
        required_scopes = ''
        # Request Parameters
        avalara_version = request_parameters.get_avalara_version()
        id = request_parameters.get_id()
        x_avalara_client = request_parameters.get_x_avalara_client()
        x_correlation_id = request_parameters.get_x_correlation_id()
        # verify the required parameter 'avalara_version' is set
        if @api_client.config.client_side_validation && avalara_version.nil?
          fail ArgumentError, "Missing the required parameter 'avalara_version' when calling TradingPartnersApi.download_batch_search_report"
        end
        # verify the required parameter 'id' is set
        if @api_client.config.client_side_validation && id.nil?
          fail ArgumentError, "Missing the required parameter 'id' when calling TradingPartnersApi.download_batch_search_report"
        end
        # resource path
        local_var_path = '/einvoicing/trading-partners/batch-searches/{id}/$download-results'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

        # query parameters
        query_params = {}

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['text/csv', 'application/json'])
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

        # http body (model)
        post_body = {}

        # return_type
        return_type = 'File'

        # auth_names
        auth_names = ['Bearer']

        @api_client.apply_auth_to_request!(header_params, auth_names, required_scopes)

        new_options = {
          :operation => :"TradingPartnersApi.download_batch_search_report",
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

      # Get the batch search details for a given id.
      # This endpoint provides a detailed information for a specific batch search based on a given ID. It is ideal for tracking the progress of a previously initiated batch search operation.
      # @param avalara_version [String] The HTTP Header meant to specify the version of the API intended to be used      # @param id [String] The ID of the batch search that was submitted earlier.      # @param x_avalara_client [String] You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \&quot;Fingerprint\&quot;      # @param x_correlation_id [String] The caller can use this as an identifier to use as a correlation id to trace the call.
      # @return [BatchSearch]
      def get_batch_search_detail(request_parameters)
        data, _status_code, _headers = get_batch_search_detail_with_http_info(request_parameters)
        data
      end

      # Get the batch search details for a given id.
      # This endpoint provides a detailed information for a specific batch search based on a given ID. It is ideal for tracking the progress of a previously initiated batch search operation.
          
      # @param avalara_version [String] The HTTP Header meant to specify the version of the API intended to be used    
      # @param id [String] The ID of the batch search that was submitted earlier.    
      # @param x_avalara_client [String] You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \&quot;Fingerprint\&quot;    
      # @param x_correlation_id [String] The caller can use this as an identifier to use as a correlation id to trace the call.    
      # @return [Array<(BatchSearch, Integer, Hash)>] BatchSearch data, response status code and response headers
      def get_batch_search_detail_with_http_info(request_parameters)
        # OAuth2 Scopes
        required_scopes = ''
        # Request Parameters
        avalara_version = request_parameters.get_avalara_version()
        id = request_parameters.get_id()
        x_avalara_client = request_parameters.get_x_avalara_client()
        x_correlation_id = request_parameters.get_x_correlation_id()
        # verify the required parameter 'avalara_version' is set
        if @api_client.config.client_side_validation && avalara_version.nil?
          fail ArgumentError, "Missing the required parameter 'avalara_version' when calling TradingPartnersApi.get_batch_search_detail"
        end
        # verify the required parameter 'id' is set
        if @api_client.config.client_side_validation && id.nil?
          fail ArgumentError, "Missing the required parameter 'id' when calling TradingPartnersApi.get_batch_search_detail"
        end
        # resource path
        local_var_path = '/einvoicing/trading-partners/batch-searches/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        if !x_correlation_id.nil?
          header_params[:'X-Correlation-ID'] = x_correlation_id
        end

        # form parameters
        form_params = {}

        # http body (model)
        post_body = {}

        # return_type
        return_type = 'BatchSearch'

        # auth_names
        auth_names = ['Bearer']

        @api_client.apply_auth_to_request!(header_params, auth_names, required_scopes)

        new_options = {
          :operation => :"TradingPartnersApi.get_batch_search_detail",
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

      # List all batch searches that were previously submitted.
      # This endpoint provides a way to retrieve a comprehensive list of all batch search operations that have been previously submitted. This endpoint returns details about each batch search, such as their id, status, created date and associated metadata, allowing users to easily view past batch search requests. It's particularly useful for tracking the progress of a previously initiated batch search operations.
      # @param avalara_version [String] The HTTP Header meant to specify the version of the API intended to be used      # @param x_avalara_client [String] You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \&quot;Fingerprint\&quot;      # @param filter [String] Filter by field name and value. This filter only supports &lt;code&gt;eq&lt;/code&gt; .The parameters supported is &lt;code&gt;name&lt;/code&gt;.    Refer to [https://developer.avalara.com/avatax/filtering-in-rest/](https://developer.avalara.com/avatax/filtering-in-rest/) for more information on filtering. Filtering will be done over the provided parameters.      # @param count [Boolean] When set to true, the count of the collection is included as @recordSetCount in the response body.      # @param top [Float] The number of items to include in the result.      # @param skip [String] If nonzero, skip this number of results before returning data. Used with &lt;code&gt;$top&lt;/code&gt; to provide pagination for large datasets.      # @param order_by [String] The $orderBy query parameter specifies the field and sorting direction for ordering the result set. The value is a string that combines a field name and a sorting direction (asc for ascending or desc for descending), separated by a space.      # @param x_correlation_id [String] The caller can use this as an identifier to use as a correlation id to trace the call.
      # @return [BatchSearchListResponse]
      def list_batch_searches(request_parameters)
        data, _status_code, _headers = list_batch_searches_with_http_info(request_parameters)
        data
      end

      # List all batch searches that were previously submitted.
      # This endpoint provides a way to retrieve a comprehensive list of all batch search operations that have been previously submitted. This endpoint returns details about each batch search, such as their id, status, created date and associated metadata, allowing users to easily view past batch search requests. It&#39;s particularly useful for tracking the progress of a previously initiated batch search operations.
          
      # @param avalara_version [String] The HTTP Header meant to specify the version of the API intended to be used    
      # @param x_avalara_client [String] You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \&quot;Fingerprint\&quot;    
      # @param filter [String] Filter by field name and value. This filter only supports &lt;code&gt;eq&lt;/code&gt; .The parameters supported is &lt;code&gt;name&lt;/code&gt;.    Refer to [https://developer.avalara.com/avatax/filtering-in-rest/](https://developer.avalara.com/avatax/filtering-in-rest/) for more information on filtering. Filtering will be done over the provided parameters.    
      # @param count [Boolean] When set to true, the count of the collection is included as @recordSetCount in the response body.    
      # @param top [Float] The number of items to include in the result.    
      # @param skip [String] If nonzero, skip this number of results before returning data. Used with &lt;code&gt;$top&lt;/code&gt; to provide pagination for large datasets.    
      # @param order_by [String] The $orderBy query parameter specifies the field and sorting direction for ordering the result set. The value is a string that combines a field name and a sorting direction (asc for ascending or desc for descending), separated by a space.    
      # @param x_correlation_id [String] The caller can use this as an identifier to use as a correlation id to trace the call.    
      # @return [Array<(BatchSearchListResponse, Integer, Hash)>] BatchSearchListResponse data, response status code and response headers
      def list_batch_searches_with_http_info(request_parameters)
        # OAuth2 Scopes
        required_scopes = ''
        # Request Parameters
        avalara_version = request_parameters.get_avalara_version()
        x_avalara_client = request_parameters.get_x_avalara_client()
        filter = request_parameters.get_filter()
        count = request_parameters.get_count()
        top = request_parameters.get_top()
        skip = request_parameters.get_skip()
        order_by = request_parameters.get_order_by()
        x_correlation_id = request_parameters.get_x_correlation_id()
        # verify the required parameter 'avalara_version' is set
        if @api_client.config.client_side_validation && avalara_version.nil?
          fail ArgumentError, "Missing the required parameter 'avalara_version' when calling TradingPartnersApi.list_batch_searches"
        end
        # resource path
        local_var_path = '/einvoicing/trading-partners/batch-searches'

        # query parameters
        query_params = {}
        if !filter.nil?
          query_params[:'$filter'] = filter
        end
        if !count.nil?
          query_params[:'count'] = count
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
        if !x_correlation_id.nil?
          header_params[:'X-Correlation-ID'] = x_correlation_id
        end

        # form parameters
        form_params = {}

        # http body (model)
        post_body = {}

        # return_type
        return_type = 'BatchSearchListResponse'

        # auth_names
        auth_names = ['Bearer']

        @api_client.apply_auth_to_request!(header_params, auth_names, required_scopes)

        new_options = {
          :operation => :"TradingPartnersApi.list_batch_searches",
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

      # Returns a list of participants matching the input query.
      # This endpoint provides a list of trading partners that match a specified input query. The search is performed based on various filters, search text, and other relevant parameters.
      # @param avalara_version [String] The HTTP Header meant to specify the version of the API intended to be used      # @param search [String] Search by value supports logical AND and OR. Refer to [https://learn.microsoft.com/en-us/odata/concepts/queryoptions-overview#search](https://learn.microsoft.com/en-us/odata/concepts/queryoptions-overview#search) for more information on search. Search will be done over &lt;code&gt;name&lt;/code&gt; and &lt;code&gt;identifier&lt;/code&gt; parameters only.      # @param x_avalara_client [String] You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \&quot;Fingerprint\&quot;      # @param count [Boolean] When set to true, the count of the collection is included as @recordSetCount in the response body.      # @param filter [String] Filter by field name and value. This filter only supports &lt;code&gt;eq&lt;/code&gt; .The parameters supported are &lt;code&gt;network&lt;/code&gt;, &lt;code&gt;country&lt;/code&gt;, &lt;code&gt;documentType&lt;/code&gt;, &lt;code&gt;idType&lt;/code&gt;.          Refer to [https://developer.avalara.com/avatax/filtering-in-rest/](https://developer.avalara.com/avatax/filtering-in-rest/) for more information on filtering. Filtering will be done over the provided parameters.      # @param top [Float] The number of items to include in the result.      # @param skip [String] If nonzero, skip this number of results before returning data. Used with &lt;code&gt;$top&lt;/code&gt; to provide pagination for large datasets.      # @param order_by [String] The $orderBy query parameter specifies the field and sorting direction for ordering the result set. The value is a string that combines a field name and a sorting direction (asc for ascending or desc for descending), separated by a space.      # @param x_correlation_id [String] The caller can use this as an identifier to use as a correlation id to trace the call.
      # @return [DirectorySearchResponse]
      def search_participants(request_parameters)
        data, _status_code, _headers = search_participants_with_http_info(request_parameters)
        data
      end

      # Returns a list of participants matching the input query.
      # This endpoint provides a list of trading partners that match a specified input query. The search is performed based on various filters, search text, and other relevant parameters.
          
      # @param avalara_version [String] The HTTP Header meant to specify the version of the API intended to be used    
      # @param search [String] Search by value supports logical AND and OR. Refer to [https://learn.microsoft.com/en-us/odata/concepts/queryoptions-overview#search](https://learn.microsoft.com/en-us/odata/concepts/queryoptions-overview#search) for more information on search. Search will be done over &lt;code&gt;name&lt;/code&gt; and &lt;code&gt;identifier&lt;/code&gt; parameters only.    
      # @param x_avalara_client [String] You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \&quot;Fingerprint\&quot;    
      # @param count [Boolean] When set to true, the count of the collection is included as @recordSetCount in the response body.    
      # @param filter [String] Filter by field name and value. This filter only supports &lt;code&gt;eq&lt;/code&gt; .The parameters supported are &lt;code&gt;network&lt;/code&gt;, &lt;code&gt;country&lt;/code&gt;, &lt;code&gt;documentType&lt;/code&gt;, &lt;code&gt;idType&lt;/code&gt;.          Refer to [https://developer.avalara.com/avatax/filtering-in-rest/](https://developer.avalara.com/avatax/filtering-in-rest/) for more information on filtering. Filtering will be done over the provided parameters.    
      # @param top [Float] The number of items to include in the result.    
      # @param skip [String] If nonzero, skip this number of results before returning data. Used with &lt;code&gt;$top&lt;/code&gt; to provide pagination for large datasets.    
      # @param order_by [String] The $orderBy query parameter specifies the field and sorting direction for ordering the result set. The value is a string that combines a field name and a sorting direction (asc for ascending or desc for descending), separated by a space.    
      # @param x_correlation_id [String] The caller can use this as an identifier to use as a correlation id to trace the call.    
      # @return [Array<(DirectorySearchResponse, Integer, Hash)>] DirectorySearchResponse data, response status code and response headers
      def search_participants_with_http_info(request_parameters)
        # OAuth2 Scopes
        required_scopes = ''
        # Request Parameters
        avalara_version = request_parameters.get_avalara_version()
        search = request_parameters.get_search()
        x_avalara_client = request_parameters.get_x_avalara_client()
        count = request_parameters.get_count()
        filter = request_parameters.get_filter()
        top = request_parameters.get_top()
        skip = request_parameters.get_skip()
        order_by = request_parameters.get_order_by()
        x_correlation_id = request_parameters.get_x_correlation_id()
        # verify the required parameter 'avalara_version' is set
        if @api_client.config.client_side_validation && avalara_version.nil?
          fail ArgumentError, "Missing the required parameter 'avalara_version' when calling TradingPartnersApi.search_participants"
        end
        # verify the required parameter 'search' is set
        if @api_client.config.client_side_validation && search.nil?
          fail ArgumentError, "Missing the required parameter 'search' when calling TradingPartnersApi.search_participants"
        end
        # resource path
        local_var_path = '/einvoicing/trading-partners'

        # query parameters
        query_params = {}
        if !count.nil?
          query_params[:'count'] = count
        end
        if !search.nil?
          query_params[:'$search'] = search
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
        if !order_by.nil?
          query_params[:'$orderBy'] = order_by
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
        if !x_correlation_id.nil?
          header_params[:'X-Correlation-ID'] = x_correlation_id
        end

        # form parameters
        form_params = {}

        # http body (model)
        post_body = {}

        # return_type
        return_type = 'DirectorySearchResponse'

        # auth_names
        auth_names = ['Bearer']

        @api_client.apply_auth_to_request!(header_params, auth_names, required_scopes)

        new_options = {
          :operation => :"TradingPartnersApi.search_participants",
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
    end
    # Represents the Request object for the BatchSearchParticipants API
    #
    # @param  String $avalara_version The HTTP Header meant to specify the version of the API intended to be used (required)
    # @param  String $name The human readable name given to this batch search. (required)
    # @param  String $notification_email The email address of the user to whom the batch search completion notification must go to. (required)
    # @param  File $file CSV file containing search parameters. (required)
    # @param  String $x_avalara_client You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \&quot;Fingerprint\&quot; (optional)
    # @param  String $x_correlation_id The caller can use this as an identifier to use as a correlation id to trace the call. (optional)
    #
    class BatchSearchParticipantsRequestSdk
        attr_accessor :avalara_version

        attr_accessor :name

        attr_accessor :notification_email

        attr_accessor :file

        attr_accessor :x_avalara_client

        attr_accessor :x_correlation_id

        def initialize()
        end

        def get_avalara_version()
            return @avalara_version || '1.3'
        end

        def set_avalara_version(avalara_version)
            @avalara_version = avalara_version
        end

        def get_name()
            return @name
        end

        def set_name(name)
            @name = name
        end

        def get_notification_email()
            return @notification_email
        end

        def set_notification_email(notification_email)
            @notification_email = notification_email
        end

        def get_file()
            return @file
        end

        def set_file(file)
            @file = file
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
    end
    # Represents the Request object for the DownloadBatchSearchReport API
    #
    # @param  String $avalara_version The HTTP Header meant to specify the version of the API intended to be used (required)
    # @param  String $id The ID of the batch search whose report is to be downloaded. (required)
    # @param  String $x_avalara_client You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \&quot;Fingerprint\&quot; (optional)
    # @param  String $x_correlation_id The caller can use this as an identifier to use as a correlation id to trace the call. (optional)
    #
    class DownloadBatchSearchReportRequestSdk
        attr_accessor :avalara_version

        attr_accessor :id

        attr_accessor :x_avalara_client

        attr_accessor :x_correlation_id

        def initialize()
        end

        def get_avalara_version()
            return @avalara_version || '1.3'
        end

        def set_avalara_version(avalara_version)
            @avalara_version = avalara_version
        end

        def get_id()
            return @id
        end

        def set_id(id)
            @id = id
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
    end
    # Represents the Request object for the GetBatchSearchDetail API
    #
    # @param  String $avalara_version The HTTP Header meant to specify the version of the API intended to be used (required)
    # @param  String $id The ID of the batch search that was submitted earlier. (required)
    # @param  String $x_avalara_client You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \&quot;Fingerprint\&quot; (optional)
    # @param  String $x_correlation_id The caller can use this as an identifier to use as a correlation id to trace the call. (optional)
    #
    class GetBatchSearchDetailRequestSdk
        attr_accessor :avalara_version

        attr_accessor :id

        attr_accessor :x_avalara_client

        attr_accessor :x_correlation_id

        def initialize()
        end

        def get_avalara_version()
            return @avalara_version || '1.3'
        end

        def set_avalara_version(avalara_version)
            @avalara_version = avalara_version
        end

        def get_id()
            return @id
        end

        def set_id(id)
            @id = id
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
    end
    # Represents the Request object for the ListBatchSearches API
    #
    # @param  String $avalara_version The HTTP Header meant to specify the version of the API intended to be used (required)
    # @param  String $x_avalara_client You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \&quot;Fingerprint\&quot; (optional)
    # @param  String $filter Filter by field name and value. This filter only supports &lt;code&gt;eq&lt;/code&gt; .The parameters supported is &lt;code&gt;name&lt;/code&gt;.    Refer to [https://developer.avalara.com/avatax/filtering-in-rest/](https://developer.avalara.com/avatax/filtering-in-rest/) for more information on filtering. Filtering will be done over the provided parameters. (optional)
    # @param  Boolean $count When set to true, the count of the collection is included as @recordSetCount in the response body. (optional)
    # @param  Float $top The number of items to include in the result. (optional)
    # @param  String $skip If nonzero, skip this number of results before returning data. Used with &lt;code&gt;$top&lt;/code&gt; to provide pagination for large datasets. (optional)
    # @param  String $order_by The $orderBy query parameter specifies the field and sorting direction for ordering the result set. The value is a string that combines a field name and a sorting direction (asc for ascending or desc for descending), separated by a space. (optional)
    # @param  String $x_correlation_id The caller can use this as an identifier to use as a correlation id to trace the call. (optional)
    #
    class ListBatchSearchesRequestSdk
        attr_accessor :avalara_version

        attr_accessor :x_avalara_client

        attr_accessor :filter

        attr_accessor :count

        attr_accessor :top

        attr_accessor :skip

        attr_accessor :order_by

        attr_accessor :x_correlation_id

        def initialize()
        end

        def get_avalara_version()
            return @avalara_version || '1.3'
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

        def get_filter()
            return @filter
        end

        def set_filter(filter)
            @filter = filter
        end

        def get_count()
            return @count
        end

        def set_count(count)
            @count = count
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

        def get_x_correlation_id()
            return @x_correlation_id
        end

        def set_x_correlation_id(x_correlation_id)
            @x_correlation_id = x_correlation_id
        end
    end
    # Represents the Request object for the SearchParticipants API
    #
    # @param  String $avalara_version The HTTP Header meant to specify the version of the API intended to be used (required)
    # @param  String $search Search by value supports logical AND and OR. Refer to [https://learn.microsoft.com/en-us/odata/concepts/queryoptions-overview#search](https://learn.microsoft.com/en-us/odata/concepts/queryoptions-overview#search) for more information on search. Search will be done over &lt;code&gt;name&lt;/code&gt; and &lt;code&gt;identifier&lt;/code&gt; parameters only. (required)
    # @param  String $x_avalara_client You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \&quot;Fingerprint\&quot; (optional)
    # @param  Boolean $count When set to true, the count of the collection is included as @recordSetCount in the response body. (optional)
    # @param  String $filter Filter by field name and value. This filter only supports &lt;code&gt;eq&lt;/code&gt; .The parameters supported are &lt;code&gt;network&lt;/code&gt;, &lt;code&gt;country&lt;/code&gt;, &lt;code&gt;documentType&lt;/code&gt;, &lt;code&gt;idType&lt;/code&gt;.          Refer to [https://developer.avalara.com/avatax/filtering-in-rest/](https://developer.avalara.com/avatax/filtering-in-rest/) for more information on filtering. Filtering will be done over the provided parameters. (optional)
    # @param  Float $top The number of items to include in the result. (optional)
    # @param  String $skip If nonzero, skip this number of results before returning data. Used with &lt;code&gt;$top&lt;/code&gt; to provide pagination for large datasets. (optional)
    # @param  String $order_by The $orderBy query parameter specifies the field and sorting direction for ordering the result set. The value is a string that combines a field name and a sorting direction (asc for ascending or desc for descending), separated by a space. (optional)
    # @param  String $x_correlation_id The caller can use this as an identifier to use as a correlation id to trace the call. (optional)
    #
    class SearchParticipantsRequestSdk
        attr_accessor :avalara_version

        attr_accessor :search

        attr_accessor :x_avalara_client

        attr_accessor :count

        attr_accessor :filter

        attr_accessor :top

        attr_accessor :skip

        attr_accessor :order_by

        attr_accessor :x_correlation_id

        def initialize()
        end

        def get_avalara_version()
            return @avalara_version || '1.3'
        end

        def set_avalara_version(avalara_version)
            @avalara_version = avalara_version
        end

        def get_search()
            return @search
        end

        def set_search(search)
            @search = search
        end

        def get_x_avalara_client()
            return @x_avalara_client
        end

        def set_x_avalara_client(x_avalara_client)
            @x_avalara_client = x_avalara_client
        end

        def get_count()
            return @count
        end

        def set_count(count)
            @count = count
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

        def get_x_correlation_id()
            return @x_correlation_id
        end

        def set_x_correlation_id(x_correlation_id)
            @x_correlation_id = x_correlation_id
        end
    end
  end
end