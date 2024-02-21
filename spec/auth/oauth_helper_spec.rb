# require 'json'
# require 'dotenv/load'
# require 'avalara_sdk/auth/oauth_helper'

# describe 'OAuthHelper' do
#   before(:all) do
#     @config = AvalaraSdk::Configuration.new
#     @config.client_id = ENV["CLIENT_ID"]
#     @config.client_secret = " "
#     @config.environment='production'
#     @config.app_name="testApp"
#     @config.app_version="2.3.1"
#     @config.machine_name="AVL_WIN_007"
#     @config.debugging=false
#   end

#   describe 'test OAuthHelper' do
#     it 'should be to initiate the device code flow' do
#       begin
#         device_auth_result = AvalaraSdk::Auth::OAuthHelper.initiate_device_authorization_flow("avatax_api", @config)
#         expect(device_auth_result.verification_url).to eq "https://identity.avalara.com/device"
#         token_result = AvalaraSdk::Auth::OAuthHelper.get_access_token_for_device_flow(device_auth_result.device_code, @config)
#         expect(token_result.error_message).to eq "authorization_pending"
#         expect(token_result.http_status_code).to eq 400
#         puts "Call Completed"
#       rescue AvalaraSdk::ApiError => e
#         puts "Exception #{e}"
#       end
#     end
#   end

# end
