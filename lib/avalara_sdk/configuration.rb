=begin
#Avalara Shipping Verification for Beverage Alcohol

#API for evaluating transactions against direct-to-consumer Beverage Alcohol shipping regulations.  This API is currently in beta. 

=end

require 'faraday'

module AvalaraSdk
  class Configuration
    PRODUCTION_OPENID_CONFIG_URL = 'https://identity.avalara.com/.well-known/openid-configuration'
    SANDBOX_OPENID_CONFIG_URL = 'https://ai-sbx.avlr.sh/.well-known/openid-configuration'
    QA_OPENID_CONFIG_URL = 'https://ai-awsfqa.avlr.sh/.well-known/openid-configuration'
    FALLBACK_TOKEN_URL = 'https://identity.avalara.com/connect/token'
    FALLBACK_DEVICE_AUTHORIZATION_URL = 'https://identity.avalara.com/connect/token'

    # Official URL of EInvoicing Service (Production by Environment)
    EINVOICING_SERVICE_PRODUCTION_URL = 'https://api.avalara.com'
    EINVOICING_SERVICE_SANDBOX_URL = 'https://api.sbx.avalara.com'
    EINVOICING_SERVICE_QA_URL = 'https://superapi.qa.avalara.io'
    EINVOICING_SERVICE_DEV_URL = 'https://superapi.dev.avalara.io'

    # Official URL of A1099 Service (Production by Environment)
    A1099_SERVICE_PRODUCTION_URL = 'https://api.avalara.com/avalara1099'
    A1099_SERVICE_SANDBOX_URL = 'https://api.sbx.avalara.com/avalara1099'
    A1099_SERVICE_QA_URL = 'https://api-ava1099.gamma.qa.us-west-2.aws.avalara.io'
    A1099_SERVICE_DEV_URL = 'https://api-ava1099.gamma.dev.us-west-2.aws.avalara.io'

    # Defines environment
    attr_accessor :environment

    # Defines Test base Path
    attr_accessor :test_base_path

    # Defines url base path
    attr_reader :base_path

    # Defines API keys used with API Key authentications.
    #
    # @return [Hash] key: parameter name, value: parameter value (API key)
    #
    # @example parameter name is "api_key", API key is "xxx" (e.g. "api_key=xxx" in query string)
    #   config.api_key['api_key'] = 'xxx'
    attr_accessor :api_key
    
    # Defines API key prefixes used with API Key authentications.
    #
    # @return [Hash] key: parameter name, value: API key prefix
    #
    # @example parameter name is "Authorization", API key prefix is "Token" (e.g. "Authorization: Token xxx" in headers)
    #   config.api_key_prefix['api_key'] = 'Token'
    attr_accessor :api_key_prefix

    # Defines the username used with HTTP basic authentication.
    #
    # @return [String]
    attr_accessor :username

    # Defines the password used with HTTP basic authentication.
    #
    # @return [String]
    attr_accessor :password

    # Defines Token URL for OAuth 2.0 flows.
    attr_accessor :token_url

    # Defines Device Authorization URL for OAuth 2.0 flows.
    attr_accessor :device_authorization_url

    # Defines override token URL for OAuth 2.0 flows when using the test environment.
    attr_accessor :test_token_url

    # Defines override device Authorization URL for OAuth 2.0 flows when using the test environment.
    attr_accessor :test_device_authorization_url

    # Defines the ClientId used for the OAuth2 Client Credentials flow.
    attr_accessor :client_id

    # The ClientSecret used for the OAuth2 Client Credentials flow.
    attr_accessor :client_secret

    # The OAuth2 Avalara Identity Bearer Token that will be used for API access.
    attr_accessor :bearer_token

    # Set this to enable/disable debugging. When enabled (set to true), HTTP request/response
    # details will be logged with `logger.debug` (see the `logger` attribute).
    # Default to false.
    #
    # @return [true, false]
    attr_accessor :debugging

    # Defines the logger used for debugging.
    # Default to `Rails.logger` (when in Rails) or logging to STDOUT.
    #
    # @return [#debug]
    attr_accessor :logger

    # Defines the temporary folder to store downloaded files
    # (for API endpoints that have file response).
    # Default to use `Tempfile`.
    #
    # @return [String]
    attr_accessor :temp_folder_path

    # The time limit for HTTP request in seconds.
    # Default to 0 (never times out).
    attr_accessor :timeout

    # Set this to false to skip client side validation in the operation.
    # Default to true.
    # @return [true, false]
    attr_accessor :client_side_validation

    ### TLS/SSL setting
    # Set this to false to skip verifying SSL certificate when calling API from https server.
    # Default to true.
    #
    # @note Do NOT set it to false in production code, otherwise you would face multiple types of cryptographic attacks.
    #
    # @return [true, false]
    attr_accessor :ssl_verify

    ### TLS/SSL setting
    # Any `OpenSSL::SSL::` constant (see https://ruby-doc.org/stdlib-2.5.1/libdoc/openssl/rdoc/OpenSSL/SSL.html)
    #
    # @note Do NOT set it to false in production code, otherwise you would face multiple types of cryptographic attacks.
    #
    attr_accessor :ssl_verify_mode

    ### TLS/SSL setting
    # Set this to customize the certificate file to verify the peer.
    #
    # @return [String] the path to the certificate file
    attr_accessor :ssl_ca_file

    ### TLS/SSL setting
    # Client certificate file (for client certificate)
    attr_accessor :ssl_client_cert

    ### TLS/SSL setting
    # Client private key file (for client certificate)
    attr_accessor :ssl_client_key

    # Set this to customize parameters encoding of array parameter with multi collectionFormat.
    # Default to nil.
    #
    # @see The params_encoding option of Ethon. Related source code:
    # https://github.com/typhoeus/ethon/blob/master/lib/ethon/easy/queryable.rb#L96
    attr_accessor :params_encoding

    attr_accessor :inject_format

    attr_accessor :force_ending_format

    # Defines the application name 
    #
    # @return [String]
    attr_accessor :app_name

    # Defines the application version 
    #
    # @return [String]
    attr_accessor :app_version

    # Defines the machine name 
    #
    # @return [String]
    attr_accessor :machine_name

    def initialize
      @base_path = ''
      @environment=''
      @app_name=''
      @app_version=''
      @machine_name=''
      @client_id=''
      @client_secret=''
      @bearer_token=''
      @token_url=''
      @device_authorization_url=''
      @test_base_path=''
      @test_token_url=''
      @test_device_authorization_url=''
      @username=''
      @password=''
      @api_key = {}
      @api_key_prefix = {}
      @client_side_validation = true
      @ssl_verify = true
      @ssl_verify_mode = nil
      @ssl_ca_file = nil
      @ssl_client_cert = nil
      @ssl_client_key = nil
      @middlewares = []
      @request_middlewares = []
      @response_middlewares = []
      @timeout = 60
      @debugging = false
      @inject_format = false
      @force_ending_format = false
      @logger = defined?(Rails) ? Rails.logger : Logger.new(STDOUT)

      yield(self) if block_given?
    end

    # The default Configuration object.
    def self.default
      @@default ||= Configuration.new
    end

    def configure
      yield(self) if block_given?
    end

    
    def base_path=(base_path)
      @base_path=base_path      
    end

    # Returns base URL for specified operation based on server settings and microservice
    def get_base_path(microservice = :none)
      puts "get_base_path called with microservice = #{microservice.inspect}"

      if environment.downcase == 'test' && test_base_path.empty?
        fail ArgumentError, "Test_Base_Path must be configured to run in test environment mode."
      end

      case microservice
      when :EInvoicing
        case environment.downcase
        when 'production'
          return EINVOICING_SERVICE_PRODUCTION_URL
        when 'sandbox'
          return EINVOICING_SERVICE_SANDBOX_URL
        when 'qa'
          return EINVOICING_SERVICE_QA_URL
        when 'dev'
          return EINVOICING_SERVICE_DEV_URL
        when 'test'
          return test_base_path
        else
          fail ArgumentError, 'Environment not configured correctly, Acceptable values are "production", "sandbox", "qa", "dev", and "test".'
        end
      when :A1099
        case environment.downcase
        when 'production'
          return A1099_SERVICE_PRODUCTION_URL
        when 'sandbox'
          return A1099_SERVICE_SANDBOX_URL
        when 'qa'
          return A1099_SERVICE_QA_URL
        when 'dev'
          return A1099_SERVICE_DEV_URL
        when 'test'
          return test_base_path
        else
          fail ArgumentError, 'Environment not configured correctly, Acceptable values are "production", "sandbox", "qa", "dev", and "test".'
        end
      when :none
        fail ArgumentError, 'Microservice not configured correctly, Acceptable values are "EInvoicing", "A1099", and "none".'
      end
      
    end

    # Gets API key (with prefix if set).
    # @param [String] param_name the parameter name of API key auth
    def api_key_with_prefix(param_name, param_alias = nil)
      key = @api_key[param_name]
      key = @api_key.fetch(param_alias, key) unless param_alias.nil?
      if @api_key_prefix[param_name]
        "#{@api_key_prefix[param_name]} #{key}"
      else
        key
      end
    end

    # Gets Basic Auth token string
    def basic_auth_token
      'Basic ' + ["#{username}:#{password}"].pack('m').delete("\r\n")
    end

    # Returns Auth Settings hash for api client.
    def auth_settings
      {
        'BasicAuth' =>
          {
            type: 'basic',
            in: 'header',
            key: 'Authorization',
            value: basic_auth_token
          },
        'Bearer' =>
          {
            type: 'api_key',
            in: 'header',
            key: 'Authorization',
            value: api_key_with_prefix('Bearer')
          },
      }
    end
   
    # Adds middleware to the stack
    def use(*middleware)
      @middlewares << middleware
    end

    # Adds request middleware to the stack
    def request(*middleware)
      @request_middlewares << middleware
    end

    # Adds response middleware to the stack
    def response(*middleware)
      @response_middlewares << middleware
    end

    # Set up middleware on the connection
    def configure_middleware(connection)
      @middlewares.each do |middleware|
        connection.use(*middleware)
      end

      @request_middlewares.each do |middleware|
        connection.request(*middleware)
      end

      @response_middlewares.each do |middleware|
        connection.response(*middleware)
      end
    end

    def populate_token_url
      if @environment.downcase == 'test'
        @token_url = @test_token_url
        @device_authorization_url = @test_device_authorization_url
      elsif @token_url.nil? || @token_url.length == 0
        begin
          token_response = get_token_url openid_connect_url
          @token_url = token_response['token_endpoint']
          @device_authorization_url = token_response['device_authorization_endpoint']
        rescue Exception => e
          puts "Exception when calling OpenIdConnect to fetch the token endpoint. Error: #{e.message}"
          @token_url = FALLBACK_TOKEN_URL
          @device_authorization_url = FALLBACK_DEVICE_AUTHORIZATION_URL
        end
      end
    end

    def openid_connect_url
      case @environment.downcase
      when 'sandbox'
        SANDBOX_OPENID_CONFIG_URL
      when 'production'
        PRODUCTION_OPENID_CONFIG_URL
      when 'qa'
        QA_OPENID_CONFIG_URL
      end
    end

    def get_token_url(openid_connect_url)
      response = Faraday.get(openid_connect_url) do |req|
        req.headers['Accept'] = 'application/json'
      end
      JSON.parse(response.body)
    end
  end

  # Microservice enumeration
  module AvalaraMicroservice
    EINVOICING = :EInvoicing
    A1099 = :A1099
    NONE = :none
  end
end
