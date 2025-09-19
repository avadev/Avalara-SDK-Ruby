=begin
#Avalara E-Invoicing API

#An API that supports sending data for an E-Invoicing compliance use-case.


=end

require 'cgi'

module AvalaraSdk::EInvoicing
  module AvalaraSdk::EInvoicing::V1
    class SubscriptionsApi
      attr_accessor :api_client

      def initialize(api_client)
        if (api_client.nil?)
          fail  ArgumentError,'api_client is nil'
        end
        api_client.set_sdk_version("25.9.0")
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
    
      # Create a subscription to events
      # Create a subscription to events exposed by registered systems.
      # @param avalara_version [String] The version of the API to use, e.g., \&quot;1.4\&quot;.      # @param subscription_registration [SubscriptionRegistration]       # @param x_correlation_id [String] A unique identifier for tracking the request and its response      # @param x_avalara_client [String] Client application identification
      # @return [SuccessResponse]
      def create_webhook_subscription(request_parameters)
        data, _status_code, _headers = create_webhook_subscription_with_http_info(request_parameters)
        data
      end

      # Create a subscription to events
      # Create a subscription to events exposed by registered systems.
          
      # @param avalara_version [String] The version of the API to use, e.g., \&quot;1.4\&quot;.    
      # @param subscription_registration [SubscriptionRegistration]     
      # @param x_correlation_id [String] A unique identifier for tracking the request and its response    
      # @param x_avalara_client [String] Client application identification    
      # @return [Array<(SuccessResponse, Integer, Hash)>] SuccessResponse data, response status code and response headers
      def create_webhook_subscription_with_http_info(request_parameters)
        # OAuth2 Scopes
        required_scopes = ''
        # Request Parameters
        avalara_version = request_parameters.get_avalara_version()
        subscription_registration = request_parameters.get_subscription_registration()
        x_correlation_id = request_parameters.get_x_correlation_id()
        x_avalara_client = request_parameters.get_x_avalara_client()
        # verify the required parameter 'avalara_version' is set
        if @api_client.config.client_side_validation && avalara_version.nil?
          fail ArgumentError, "Missing the required parameter 'avalara_version' when calling SubscriptionsApi.create_webhook_subscription"
        end
        # verify the required parameter 'subscription_registration' is set
        if @api_client.config.client_side_validation && subscription_registration.nil?
          fail ArgumentError, "Missing the required parameter 'subscription_registration' when calling SubscriptionsApi.create_webhook_subscription"
        end
        # resource path
        local_var_path = '/einvoicing/webhooks/subscriptions'

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
        if !x_correlation_id.nil?
          header_params[:'X-Correlation-ID'] = x_correlation_id
        end
        if !x_avalara_client.nil?
          header_params[:'X-Avalara-Client'] = x_avalara_client
        end

        # form parameters
        form_params = {}

        # http body (model)
        post_body =  @api_client.object_to_http_body(subscription_registration) || {}

        # return_type
        return_type = 'SuccessResponse'

        # auth_names
        auth_names = ['Bearer']

        @api_client.apply_auth_to_request!(header_params, auth_names, required_scopes)

        new_options = {
          :operation => :"SubscriptionsApi.create_webhook_subscription",
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

      # Unsubscribe from events
      # Remove a subscription from the webhooks dispatch service. All events and subscriptions are also deleted.
      # @param subscription_id [String]       # @param avalara_version [String] The version of the API to use, e.g., \&quot;1.4\&quot;.      # @param x_correlation_id [String] A unique identifier for tracking the request and its response      # @param x_avalara_client [String] Client application identification
      # @return [nil]
      def delete_webhook_subscription(request_parameters)
        delete_webhook_subscription_with_http_info(request_parameters)
        nil
      end

      # Unsubscribe from events
      # Remove a subscription from the webhooks dispatch service. All events and subscriptions are also deleted.
          
      # @param subscription_id [String]     
      # @param avalara_version [String] The version of the API to use, e.g., \&quot;1.4\&quot;.    
      # @param x_correlation_id [String] A unique identifier for tracking the request and its response    
      # @param x_avalara_client [String] Client application identification    
      # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
      def delete_webhook_subscription_with_http_info(request_parameters)
        # OAuth2 Scopes
        required_scopes = ''
        # Request Parameters
        subscription_id = request_parameters.get_subscription_id()
        avalara_version = request_parameters.get_avalara_version()
        x_correlation_id = request_parameters.get_x_correlation_id()
        x_avalara_client = request_parameters.get_x_avalara_client()
        # verify the required parameter 'subscription_id' is set
        if @api_client.config.client_side_validation && subscription_id.nil?
          fail ArgumentError, "Missing the required parameter 'subscription_id' when calling SubscriptionsApi.delete_webhook_subscription"
        end
        # verify the required parameter 'avalara_version' is set
        if @api_client.config.client_side_validation && avalara_version.nil?
          fail ArgumentError, "Missing the required parameter 'avalara_version' when calling SubscriptionsApi.delete_webhook_subscription"
        end
        # resource path
        local_var_path = '/einvoicing/webhooks/subscriptions/{subscription-id}'.sub('{' + 'subscription-id' + '}', CGI.escape(subscription_id.to_s))

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
          header_params[:'X-Correlation-ID'] = x_correlation_id
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
        auth_names = ['Bearer']

        @api_client.apply_auth_to_request!(header_params, auth_names, required_scopes)

        new_options = {
          :operation => :"SubscriptionsApi.delete_webhook_subscription",
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => return_type
        }

        response = @api_client.call_api(:DELETE, local_var_path, new_options, required_scopes, false, :EInvoicing)
        if new_options[:return_type]
          data = deserialize(response, new_options[:return_type])
        else
          data = nil
        end
        return data, response.code, response.headers
      end

      # Get details of a subscription
      # Retrieve details of a specific subscription.
      # @param subscription_id [String]       # @param avalara_version [String] The version of the API to use, e.g., \&quot;1.4\&quot;.      # @param x_correlation_id [String] A unique identifier for tracking the request and its response      # @param x_avalara_client [String] Client application identification
      # @return [SubscriptionDetail]
      def get_webhook_subscription(request_parameters)
        data, _status_code, _headers = get_webhook_subscription_with_http_info(request_parameters)
        data
      end

      # Get details of a subscription
      # Retrieve details of a specific subscription.
          
      # @param subscription_id [String]     
      # @param avalara_version [String] The version of the API to use, e.g., \&quot;1.4\&quot;.    
      # @param x_correlation_id [String] A unique identifier for tracking the request and its response    
      # @param x_avalara_client [String] Client application identification    
      # @return [Array<(SubscriptionDetail, Integer, Hash)>] SubscriptionDetail data, response status code and response headers
      def get_webhook_subscription_with_http_info(request_parameters)
        # OAuth2 Scopes
        required_scopes = ''
        # Request Parameters
        subscription_id = request_parameters.get_subscription_id()
        avalara_version = request_parameters.get_avalara_version()
        x_correlation_id = request_parameters.get_x_correlation_id()
        x_avalara_client = request_parameters.get_x_avalara_client()
        # verify the required parameter 'subscription_id' is set
        if @api_client.config.client_side_validation && subscription_id.nil?
          fail ArgumentError, "Missing the required parameter 'subscription_id' when calling SubscriptionsApi.get_webhook_subscription"
        end
        # verify the required parameter 'avalara_version' is set
        if @api_client.config.client_side_validation && avalara_version.nil?
          fail ArgumentError, "Missing the required parameter 'avalara_version' when calling SubscriptionsApi.get_webhook_subscription"
        end
        # resource path
        local_var_path = '/einvoicing/webhooks/subscriptions/{subscription-id}'.sub('{' + 'subscription-id' + '}', CGI.escape(subscription_id.to_s))

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
          header_params[:'X-Correlation-ID'] = x_correlation_id
        end
        if !x_avalara_client.nil?
          header_params[:'X-Avalara-Client'] = x_avalara_client
        end

        # form parameters
        form_params = {}

        # http body (model)
        post_body = {}

        # return_type
        return_type = 'SubscriptionDetail'

        # auth_names
        auth_names = ['Bearer']

        @api_client.apply_auth_to_request!(header_params, auth_names, required_scopes)

        new_options = {
          :operation => :"SubscriptionsApi.get_webhook_subscription",
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

      # List all subscriptions
      # Retrieve a list of all subscriptions.
      # @param avalara_version [String] The version of the API to use, e.g., \&quot;1.4\&quot;.      # @param x_correlation_id [String] A unique identifier for tracking the request and its response      # @param x_avalara_client [String] Client application identification      # @param top [Integer] The number of items to include in the result.      # @param skip [Integer] The number of items to skip in the result.      # @param count [Boolean] Whether to include the total count of records in the result.      # @param count_only [Boolean] Whether to return only the count of records, without the list of records.
      # @return [SubscriptionListResponse]
      def list_webhook_subscriptions(request_parameters)
        data, _status_code, _headers = list_webhook_subscriptions_with_http_info(request_parameters)
        data
      end

      # List all subscriptions
      # Retrieve a list of all subscriptions.
          
      # @param avalara_version [String] The version of the API to use, e.g., \&quot;1.4\&quot;.    
      # @param x_correlation_id [String] A unique identifier for tracking the request and its response    
      # @param x_avalara_client [String] Client application identification    
      # @param top [Integer] The number of items to include in the result.    
      # @param skip [Integer] The number of items to skip in the result.    
      # @param count [Boolean] Whether to include the total count of records in the result.    
      # @param count_only [Boolean] Whether to return only the count of records, without the list of records.    
      # @return [Array<(SubscriptionListResponse, Integer, Hash)>] SubscriptionListResponse data, response status code and response headers
      def list_webhook_subscriptions_with_http_info(request_parameters)
        # OAuth2 Scopes
        required_scopes = ''
        # Request Parameters
        avalara_version = request_parameters.get_avalara_version()
        x_correlation_id = request_parameters.get_x_correlation_id()
        x_avalara_client = request_parameters.get_x_avalara_client()
        top = request_parameters.get_top()
        skip = request_parameters.get_skip()
        count = request_parameters.get_count()
        count_only = request_parameters.get_count_only()
        # verify the required parameter 'avalara_version' is set
        if @api_client.config.client_side_validation && avalara_version.nil?
          fail ArgumentError, "Missing the required parameter 'avalara_version' when calling SubscriptionsApi.list_webhook_subscriptions"
        end
        # resource path
        local_var_path = '/einvoicing/webhooks/subscriptions'

        # query parameters
        query_params = {}
        if !top.nil?
          query_params[:'$top'] = top
        end
        if !skip.nil?
          query_params[:'$skip'] = skip
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
          header_params[:'X-Correlation-ID'] = x_correlation_id
        end
        if !x_avalara_client.nil?
          header_params[:'X-Avalara-Client'] = x_avalara_client
        end

        # form parameters
        form_params = {}

        # http body (model)
        post_body = {}

        # return_type
        return_type = 'SubscriptionListResponse'

        # auth_names
        auth_names = ['Bearer']

        @api_client.apply_auth_to_request!(header_params, auth_names, required_scopes)

        new_options = {
          :operation => :"SubscriptionsApi.list_webhook_subscriptions",
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
    # Represents the Request object for the CreateWebhookSubscription API
    #
    # @param  String $avalara_version The version of the API to use, e.g., \&quot;1.4\&quot;. (required)
    # @param  SubscriptionRegistration $subscription_registration subscription_registration (required)
    # @param  String $x_correlation_id A unique identifier for tracking the request and its response (optional)
    # @param  String $x_avalara_client Client application identification (optional)
    #
    class CreateWebhookSubscriptionRequestSdk
        attr_accessor :avalara_version

        attr_accessor :subscription_registration

        attr_accessor :x_correlation_id

        attr_accessor :x_avalara_client

        def initialize()
        end

        def get_avalara_version()
            return @avalara_version || '1.4'
        end

        def set_avalara_version(avalara_version)
            @avalara_version = avalara_version
        end

        def get_subscription_registration()
            return @subscription_registration
        end

        def set_subscription_registration(subscription_registration)
            @subscription_registration = subscription_registration
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
    # Represents the Request object for the DeleteWebhookSubscription API
    #
    # @param  String $subscription_id subscription_id (required)
    # @param  String $avalara_version The version of the API to use, e.g., \&quot;1.4\&quot;. (required)
    # @param  String $x_correlation_id A unique identifier for tracking the request and its response (optional)
    # @param  String $x_avalara_client Client application identification (optional)
    #
    class DeleteWebhookSubscriptionRequestSdk
        attr_accessor :subscription_id

        attr_accessor :avalara_version

        attr_accessor :x_correlation_id

        attr_accessor :x_avalara_client

        def initialize()
        end

        def get_subscription_id()
            return @subscription_id
        end

        def set_subscription_id(subscription_id)
            @subscription_id = subscription_id
        end

        def get_avalara_version()
            return @avalara_version || '1.4'
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
    # Represents the Request object for the GetWebhookSubscription API
    #
    # @param  String $subscription_id subscription_id (required)
    # @param  String $avalara_version The version of the API to use, e.g., \&quot;1.4\&quot;. (required)
    # @param  String $x_correlation_id A unique identifier for tracking the request and its response (optional)
    # @param  String $x_avalara_client Client application identification (optional)
    #
    class GetWebhookSubscriptionRequestSdk
        attr_accessor :subscription_id

        attr_accessor :avalara_version

        attr_accessor :x_correlation_id

        attr_accessor :x_avalara_client

        def initialize()
        end

        def get_subscription_id()
            return @subscription_id
        end

        def set_subscription_id(subscription_id)
            @subscription_id = subscription_id
        end

        def get_avalara_version()
            return @avalara_version || '1.4'
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
    # Represents the Request object for the ListWebhookSubscriptions API
    #
    # @param  String $avalara_version The version of the API to use, e.g., \&quot;1.4\&quot;. (required)
    # @param  String $x_correlation_id A unique identifier for tracking the request and its response (optional)
    # @param  String $x_avalara_client Client application identification (optional)
    # @param  Integer $top The number of items to include in the result. (optional)
    # @param  Integer $skip The number of items to skip in the result. (optional)
    # @param  Boolean $count Whether to include the total count of records in the result. (optional)
    # @param  Boolean $count_only Whether to return only the count of records, without the list of records. (optional)
    #
    class ListWebhookSubscriptionsRequestSdk
        attr_accessor :avalara_version

        attr_accessor :x_correlation_id

        attr_accessor :x_avalara_client

        attr_accessor :top

        attr_accessor :skip

        attr_accessor :count

        attr_accessor :count_only

        def initialize()
        end

        def get_avalara_version()
            return @avalara_version || '1.4'
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
    end
  end
end