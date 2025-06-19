require 'json'
require 'dotenv/load'
require 'securerandom'

describe 'A1099Api' do
  before(:all) do
    config = AvalaraSdk::Configuration.new
    config.bearer_token   = ENV['BEARER_TOKEN_A1099']
    config.environment    = 'sandbox'
    config.app_name       = 'testApp'
    config.app_version    = '1.0'
    config.machine_name   = 'test-machine'
    config.debugging      = true

    @api_client    = AvalaraSdk::ApiClient.new(config)
    @issuers_api   = AvalaraSdk::A1099::V2::Issuers1099Api.new(@api_client)
    @companies_api = AvalaraSdk::A1099::V2::CompaniesW9Api.new(@api_client)
    @forms1099_api = AvalaraSdk::A1099::V2::Forms1099Api.new(@api_client)
  end

  describe 'GetIssuers endpoint' do
    it 'retrieves a list of issuers' do
      request = AvalaraSdk::A1099::V2::GetIssuersRequestSdk.new
      request.avalara_version  = '2.0'
      request.x_correlation_id = SecureRandom.uuid
      request.top             = 10
      request.skip            = 0
      request.count           = true

      result = @issuers_api.get_issuers(request)
      expect(result).not_to be_nil
      expect(result.value).not_to be_nil
    end
  end

  describe 'GetCompanies endpoint' do
    it 'retrieves a list of companies' do
      request = AvalaraSdk::A1099::V2::GetCompaniesRequestSdk.new
      request.avalara_version  = '2.0'
      request.x_correlation_id = SecureRandom.uuid
      request.top             = 10
      request.skip            = 0
      request.count           = true

      result = @companies_api.get_companies(request)
      expect(result).not_to be_nil
      expect(result.value).not_to be_nil
    end
  end

  describe 'List1099Forms endpoint' do
    it 'retrieves a list of 1099 forms' do
      request = AvalaraSdk::A1099::V2::List1099FormsRequestSdk.new
      request.avalara_version  = '2.0'
      request.x_correlation_id = SecureRandom.uuid
      request.top             = 10
      request.skip            = 0

      result = @forms1099_api.list1099_forms(request)
      expect(result).not_to be_nil
      expect(result.data).not_to be_nil
    end
  end
end
