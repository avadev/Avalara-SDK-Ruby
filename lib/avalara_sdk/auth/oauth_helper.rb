require 'faraday'
require 'avalara_sdk/auth/device_authorization_response'
require 'avalara_sdk/auth/token_response'

module AvalaraSdk::Auth
  class OAuthHelper
    def self.initiate_device_authorization_flow(scopes, configuration)
      configuration.populate_token_url

      data = { "client_id"=>"#{configuration.client_id}", "scope"=>"#{scopes}" }

      begin
        response = Faraday.post(configuration.device_authorization_url) do |req|
          req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
          req.headers['Accept'] = 'application/json'
          req.body = URI.encode_www_form(data)
        end
        json = JSON.parse(response.body)
        DeviceAuthorizationResponse.new(json['device_code'],
                                        json['user_code'],
                                        json['verification_uri'],
                                        json['verification_uri_complete'],
                                        json['expires_in'],
                                        json['interval'])
      rescue Exception => e
        puts "Exception when calling device authorization endpoint. Error: #{e.message}"
        raise "Exception when calling device authorization endpoint. Error: #{e.message}"
      end
    end

    def self.get_access_token_for_device_flow(device_authorization_code, configuration)
      configuration.populate_token_url

      data = { "client_id"=>"#{configuration.client_id}", "device_code"=>"#{device_authorization_code}", "grant_type"=>"urn:ietf:params:oauth:grant-type:device_code" }

      begin
        response = Faraday.post(configuration.token_url) do |req|
          req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
          req.headers['Accept'] = 'application/json'
          req.body = URI.encode_www_form(data)
        end
        json = JSON.parse(response.body)

        if (response.status > 199 && response.status < 300)
          TokenResponse.new(json['access_token'], json['token_type'], json['expires_in'], json['refresh_token'], response.status, nil)
        else
          TokenResponse.new(nil, nil, nil, nil, response.status, json['error'])
        end
      rescue Exception => e
        puts "Exception when calling token endpoint. Error: #{e.message}"
        raise "Exception when calling token endpoint. Error: #{e.message}"
      end
    end
  end
end