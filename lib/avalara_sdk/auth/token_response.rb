module AvalaraSdk::Auth
  class TokenResponse
    attr_accessor :access_token
    attr_accessor :token_type
    attr_accessor :expiry_time
    attr_accessor :refresh_token
    attr_accessor :http_status_code
    attr_accessor :error_message

    def initialize(access_token, token_type, expiry_time, refresh_token, http_status_code, error_message)
      @access_token = access_token
      @token_type = token_type
      @expiry_time = expiry_time
      @refresh_token = refresh_token
      @http_status_code = http_status_code
      @error_message = error_message
    end
  end
end