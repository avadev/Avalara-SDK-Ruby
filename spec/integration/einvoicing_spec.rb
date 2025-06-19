require 'json'
require 'dotenv/load'
require 'securerandom'

describe 'EInvoicingApi' do
  before(:all) do
    config = AvalaraSdk::Configuration.new  
    config.bearer_token =  ENV['BEARER_TOKEN_EINVOICING']
    config.environment='sandbox'
    config.app_name="testApp"
    config.app_version="2.3.1"
    config.machine_name="AVL_WIN_007"
    config.debugging=false
    @api_client = AvalaraSdk::ApiClient.new config
    @api_instance = AvalaraSdk::EInvoicing::V1::DocumentsApi.new @api_client
  end

  describe 'test EInvoicing Documents endpoint' do
    get_doc_request = AvalaraSdk::EInvoicing::V1::GetDocumentListRequestSdk.new
    it 'should be able to call list documents without exception' do
      result = nil
      begin
        result = @api_instance.get_document_list(get_doc_request)
        p result
        puts "Call Completed"
      rescue AvalaraSdk::ApiError => e
        puts "Exception #{e}"
        @exception = true
      end
      expect(result).to be_truthy
    end
  end

end