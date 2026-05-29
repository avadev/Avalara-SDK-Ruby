=begin
#Avalara E-Invoicing API

#An API that supports sending data for an E-Invoicing compliance use-case.


=end

require 'cgi'

module AvalaraSdk::EInvoicing
  module AvalaraSdk::EInvoicing::V1
    class CodeListsApi
      attr_accessor :api_client

      def initialize(api_client)
        if (api_client.nil?)
          fail  ArgumentError,'api_client is nil'
        end
        api_client.set_sdk_version("26.5.0")
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
    
      # Retrieves a code list by ID for a specific country
      # A Code List is a controlled set of predefined, standardized values used to populate specific fields in electronic documents (such as e-invoices). Each code has a stable, machine-readable identifier and a human-readable description. Code Lists are typically based on global standards (e.g., UN/CEFACT, ISO, EN16931) and may include jurisdiction-specific extensions or restrictions.<br><br>Code Lists are versioned, and each version may have defined effective and sunset dates to ensure that the correct set of allowable values is applied according to regulatory or jurisdictional requirements.<br><br>By default, the API returns only non-expired code list versions (versions where the sunset date has not passed). To retrieve expired versions or filter by specific date ranges, use the <code>effectiveDate</code> and <code>sunsetDate</code> query parameters.
      # @param avalara_version [String] Header that specifies the API version to use (for example \&quot;1.6\&quot;).      # @param codelist_id [String] System-generated unique identifier of the code list definition. Typically a UUID used to reference this code list internally or via APIs.      # @param country_code [String] Two-letter ISO 3166-1 alpha-2 country code indicating the jurisdiction this code list applies to.      # @param x_avalara_client [String] Optional header for a client identifier string used for diagnostics (for example \&quot;Fingerprint\&quot;).      # @param effective_date [Date] Filter code list versions by effective date. Returns versions that are effective on or before this date. Format: YYYY-MM-DD (ISO 8601). If not specified, defaults to the current date. sunsetDate is required when effectiveDate is provided.      # @param sunset_date [Date] Filter code list versions by sunset date. Returns versions that have not yet sunset on or before this date. Format: YYYY-MM-DD (ISO 8601). If not specified, only non-expired versions are returned.
      # @return [CodeListResponse]
      def get_code_list(request_parameters)
        data, _status_code, _headers = get_code_list_with_http_info(request_parameters)
        data
      end

      # Retrieves a code list by ID for a specific country
      # A Code List is a controlled set of predefined, standardized values used to populate specific fields in electronic documents (such as e-invoices). Each code has a stable, machine-readable identifier and a human-readable description. Code Lists are typically based on global standards (e.g., UN/CEFACT, ISO, EN16931) and may include jurisdiction-specific extensions or restrictions.&lt;br&gt;&lt;br&gt;Code Lists are versioned, and each version may have defined effective and sunset dates to ensure that the correct set of allowable values is applied according to regulatory or jurisdictional requirements.&lt;br&gt;&lt;br&gt;By default, the API returns only non-expired code list versions (versions where the sunset date has not passed). To retrieve expired versions or filter by specific date ranges, use the &lt;code&gt;effectiveDate&lt;/code&gt; and &lt;code&gt;sunsetDate&lt;/code&gt; query parameters.
          
      # @param avalara_version [String] Header that specifies the API version to use (for example \&quot;1.6\&quot;).    
      # @param codelist_id [String] System-generated unique identifier of the code list definition. Typically a UUID used to reference this code list internally or via APIs.    
      # @param country_code [String] Two-letter ISO 3166-1 alpha-2 country code indicating the jurisdiction this code list applies to.    
      # @param x_avalara_client [String] Optional header for a client identifier string used for diagnostics (for example \&quot;Fingerprint\&quot;).    
      # @param effective_date [Date] Filter code list versions by effective date. Returns versions that are effective on or before this date. Format: YYYY-MM-DD (ISO 8601). If not specified, defaults to the current date. sunsetDate is required when effectiveDate is provided.    
      # @param sunset_date [Date] Filter code list versions by sunset date. Returns versions that have not yet sunset on or before this date. Format: YYYY-MM-DD (ISO 8601). If not specified, only non-expired versions are returned.    
      # @return [Array<(CodeListResponse, Integer, Hash)>] CodeListResponse data, response status code and response headers
      def get_code_list_with_http_info(request_parameters)
        # OAuth2 Scopes
        required_scopes = ''
        # Request Parameters
        avalara_version = request_parameters.get_avalara_version()
        codelist_id = request_parameters.get_codelist_id()
        country_code = request_parameters.get_country_code()
        x_avalara_client = request_parameters.get_x_avalara_client()
        effective_date = request_parameters.get_effective_date()
        sunset_date = request_parameters.get_sunset_date()
        # verify the required parameter 'avalara_version' is set
        if @api_client.config.client_side_validation && avalara_version.nil?
          fail ArgumentError, "Missing the required parameter 'avalara_version' when calling CodeListsApi.get_code_list"
        end
        # verify the required parameter 'codelist_id' is set
        if @api_client.config.client_side_validation && codelist_id.nil?
          fail ArgumentError, "Missing the required parameter 'codelist_id' when calling CodeListsApi.get_code_list"
        end
        # verify the required parameter 'country_code' is set
        if @api_client.config.client_side_validation && country_code.nil?
          fail ArgumentError, "Missing the required parameter 'country_code' when calling CodeListsApi.get_code_list"
        end
        # resource path
        local_var_path = '/einvoicing/codelists/{codelistId}'.sub('{' + 'codelistId' + '}', CGI.escape(codelist_id.to_s))

        # query parameters
        query_params = {}
        if !country_code.nil?
          query_params[:'countryCode'] = country_code
        end
        if !effective_date.nil?
          query_params[:'effectiveDate'] = effective_date
        end
        if !sunset_date.nil?
          query_params[:'sunsetDate'] = sunset_date
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
        return_type = 'CodeListResponse'

        # auth_names
        auth_names = ['Bearer']

        @api_client.apply_auth_to_request!(header_params, auth_names, required_scopes)

        new_options = {
          :operation => :"CodeListsApi.get_code_list",
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

      # Returns a list of code lists for a specific country
      # Get a list of code lists on the Avalara E-Invoicing platform for the specified country. By default, the API returns only non-expired code lists (code lists where the sunset date has not passed). To retrieve expired code lists or filter by specific date ranges, use the <code>effectiveDate</code> and <code>sunsetDate</code> query parameters.<br><br>A Code List is a controlled set of predefined, standardized values used to populate specific fields in electronic documents (such as e-invoices). Each code has a stable, machine-readable identifier and a human-readable description. Code Lists are typically based on global standards (e.g., UN/CEFACT, ISO, EN16931) and may include jurisdiction-specific extensions or restrictions.
      # @param avalara_version [String] Header that specifies the API version to use (for example \&quot;1.6\&quot;).      # @param country_code [String] Two-letter ISO 3166-1 alpha-2 country code indicating the jurisdiction for which code lists should be returned.      # @param x_avalara_client [String] Optional header for a client identifier string used for diagnostics (for example \&quot;Fingerprint\&quot;).      # @param effective_date [Date] Filter code lists by effective date. Returns code lists that are effective on or before this date. Format: YYYY-MM-DD (ISO 8601). If not specified, defaults to the current date. sunsetDate is required when effectiveDate is provided.      # @param sunset_date [Date] Filter code lists by sunset date. Returns code lists that have not yet sunset on or before this date. Format: YYYY-MM-DD (ISO 8601). If not specified, only non-expired code lists are returned.      # @param count [String] When set to true, the response body also includes the count of items in the collection.      # @param count_only [String] When set to true, the response returns only the count of items in the collection.      # @param top [Integer] The number of items to include in the result.      # @param skip [Integer] The number of items to skip in the result.
      # @return [CodeListListResponse]
      def get_code_list_list(request_parameters)
        data, _status_code, _headers = get_code_list_list_with_http_info(request_parameters)
        data
      end

      # Returns a list of code lists for a specific country
      # Get a list of code lists on the Avalara E-Invoicing platform for the specified country. By default, the API returns only non-expired code lists (code lists where the sunset date has not passed). To retrieve expired code lists or filter by specific date ranges, use the &lt;code&gt;effectiveDate&lt;/code&gt; and &lt;code&gt;sunsetDate&lt;/code&gt; query parameters.&lt;br&gt;&lt;br&gt;A Code List is a controlled set of predefined, standardized values used to populate specific fields in electronic documents (such as e-invoices). Each code has a stable, machine-readable identifier and a human-readable description. Code Lists are typically based on global standards (e.g., UN/CEFACT, ISO, EN16931) and may include jurisdiction-specific extensions or restrictions.
          
      # @param avalara_version [String] Header that specifies the API version to use (for example \&quot;1.6\&quot;).    
      # @param country_code [String] Two-letter ISO 3166-1 alpha-2 country code indicating the jurisdiction for which code lists should be returned.    
      # @param x_avalara_client [String] Optional header for a client identifier string used for diagnostics (for example \&quot;Fingerprint\&quot;).    
      # @param effective_date [Date] Filter code lists by effective date. Returns code lists that are effective on or before this date. Format: YYYY-MM-DD (ISO 8601). If not specified, defaults to the current date. sunsetDate is required when effectiveDate is provided.    
      # @param sunset_date [Date] Filter code lists by sunset date. Returns code lists that have not yet sunset on or before this date. Format: YYYY-MM-DD (ISO 8601). If not specified, only non-expired code lists are returned.    
      # @param count [String] When set to true, the response body also includes the count of items in the collection.    
      # @param count_only [String] When set to true, the response returns only the count of items in the collection.    
      # @param top [Integer] The number of items to include in the result.    
      # @param skip [Integer] The number of items to skip in the result.    
      # @return [Array<(CodeListListResponse, Integer, Hash)>] CodeListListResponse data, response status code and response headers
      def get_code_list_list_with_http_info(request_parameters)
        # OAuth2 Scopes
        required_scopes = ''
        # Request Parameters
        avalara_version = request_parameters.get_avalara_version()
        country_code = request_parameters.get_country_code()
        x_avalara_client = request_parameters.get_x_avalara_client()
        effective_date = request_parameters.get_effective_date()
        sunset_date = request_parameters.get_sunset_date()
        count = request_parameters.get_count()
        count_only = request_parameters.get_count_only()
        top = request_parameters.get_top()
        skip = request_parameters.get_skip()
        # verify the required parameter 'avalara_version' is set
        if @api_client.config.client_side_validation && avalara_version.nil?
          fail ArgumentError, "Missing the required parameter 'avalara_version' when calling CodeListsApi.get_code_list_list"
        end
        # verify the required parameter 'country_code' is set
        if @api_client.config.client_side_validation && country_code.nil?
          fail ArgumentError, "Missing the required parameter 'country_code' when calling CodeListsApi.get_code_list_list"
        end
        # resource path
        local_var_path = '/einvoicing/codelists'

        # query parameters
        query_params = {}
        if !country_code.nil?
          query_params[:'countryCode'] = country_code
        end
        if !effective_date.nil?
          query_params[:'effectiveDate'] = effective_date
        end
        if !sunset_date.nil?
          query_params[:'sunsetDate'] = sunset_date
        end
        if !count.nil?
          query_params[:'$count'] = count
        end
        if !count_only.nil?
          query_params[:'$countOnly'] = count_only
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
        return_type = 'CodeListListResponse'

        # auth_names
        auth_names = ['Bearer']

        @api_client.apply_auth_to_request!(header_params, auth_names, required_scopes)

        new_options = {
          :operation => :"CodeListsApi.get_code_list_list",
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
    # Represents the Request object for the GetCodeList API
    #
    # @param  String $avalara_version Header that specifies the API version to use (for example \&quot;1.6\&quot;). (required)
    # @param  String $codelist_id System-generated unique identifier of the code list definition. Typically a UUID used to reference this code list internally or via APIs. (required)
    # @param  String $country_code Two-letter ISO 3166-1 alpha-2 country code indicating the jurisdiction this code list applies to. (required)
    # @param  String $x_avalara_client Optional header for a client identifier string used for diagnostics (for example \&quot;Fingerprint\&quot;). (optional)
    # @param  Date $effective_date Filter code list versions by effective date. Returns versions that are effective on or before this date. Format: YYYY-MM-DD (ISO 8601). If not specified, defaults to the current date. sunsetDate is required when effectiveDate is provided. (optional)
    # @param  Date $sunset_date Filter code list versions by sunset date. Returns versions that have not yet sunset on or before this date. Format: YYYY-MM-DD (ISO 8601). If not specified, only non-expired versions are returned. (optional)
    #
    class GetCodeListRequestSdk
        attr_accessor :avalara_version

        attr_accessor :codelist_id

        attr_accessor :country_code

        attr_accessor :x_avalara_client

        attr_accessor :effective_date

        attr_accessor :sunset_date

        def initialize()
        end

        def get_avalara_version()
            return @avalara_version || '1.6'
        end

        def set_avalara_version(avalara_version)
            @avalara_version = avalara_version
        end

        def get_codelist_id()
            return @codelist_id
        end

        def set_codelist_id(codelist_id)
            @codelist_id = codelist_id
        end

        def get_country_code()
            return @country_code
        end

        def set_country_code(country_code)
            @country_code = country_code
        end

        def get_x_avalara_client()
            return @x_avalara_client
        end

        def set_x_avalara_client(x_avalara_client)
            @x_avalara_client = x_avalara_client
        end

        def get_effective_date()
            return @effective_date
        end

        def set_effective_date(effective_date)
            @effective_date = effective_date
        end

        def get_sunset_date()
            return @sunset_date
        end

        def set_sunset_date(sunset_date)
            @sunset_date = sunset_date
        end
    end
    # Represents the Request object for the GetCodeListList API
    #
    # @param  String $avalara_version Header that specifies the API version to use (for example \&quot;1.6\&quot;). (required)
    # @param  String $country_code Two-letter ISO 3166-1 alpha-2 country code indicating the jurisdiction for which code lists should be returned. (required)
    # @param  String $x_avalara_client Optional header for a client identifier string used for diagnostics (for example \&quot;Fingerprint\&quot;). (optional)
    # @param  Date $effective_date Filter code lists by effective date. Returns code lists that are effective on or before this date. Format: YYYY-MM-DD (ISO 8601). If not specified, defaults to the current date. sunsetDate is required when effectiveDate is provided. (optional)
    # @param  Date $sunset_date Filter code lists by sunset date. Returns code lists that have not yet sunset on or before this date. Format: YYYY-MM-DD (ISO 8601). If not specified, only non-expired code lists are returned. (optional)
    # @param  String $count When set to true, the response body also includes the count of items in the collection. (optional)
    # @param  String $count_only When set to true, the response returns only the count of items in the collection. (optional)
    # @param  Integer $top The number of items to include in the result. (optional)
    # @param  Integer $skip The number of items to skip in the result. (optional)
    #
    class GetCodeListListRequestSdk
        attr_accessor :avalara_version

        attr_accessor :country_code

        attr_accessor :x_avalara_client

        attr_accessor :effective_date

        attr_accessor :sunset_date

        attr_accessor :count

        attr_accessor :count_only

        attr_accessor :top

        attr_accessor :skip

        def initialize()
        end

        def get_avalara_version()
            return @avalara_version || '1.6'
        end

        def set_avalara_version(avalara_version)
            @avalara_version = avalara_version
        end

        def get_country_code()
            return @country_code
        end

        def set_country_code(country_code)
            @country_code = country_code
        end

        def get_x_avalara_client()
            return @x_avalara_client
        end

        def set_x_avalara_client(x_avalara_client)
            @x_avalara_client = x_avalara_client
        end

        def get_effective_date()
            return @effective_date
        end

        def set_effective_date(effective_date)
            @effective_date = effective_date
        end

        def get_sunset_date()
            return @sunset_date
        end

        def set_sunset_date(sunset_date)
            @sunset_date = sunset_date
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
  end
end