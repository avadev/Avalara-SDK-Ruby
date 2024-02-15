module AvalaraSdk::Auth
  class DeviceAuthorizationResponse
    attr_accessor :device_code
    attr_accessor :user_code
    attr_accessor :verification_url
    attr_accessor :verification_url_complete
    attr_accessor :interval
    attr_accessor :expiry

    def initialize(device_code, user_code, verification_url, verification_url_complete, expiry, interval)
      @device_code = device_code
      @user_code = user_code
      @verification_url = verification_url
      @verification_url_complete = verification_url_complete
      @expiry = expiry
      @interval = interval
    end
  end
end