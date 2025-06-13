require 'json'
require 'dotenv/load'
require 'securerandom'

describe 'DocumentsAPI' do
  before(:all) do
    config = AvalaraSdk::Configuration.new  
    config.bearer_token = 'eyJhbGciOiJSUzI1NiIsImtpZCI6IkRFMjlBOUU2MTQ1OUNDRjAxNjAxQzk1RTk5NzkwMDg1NjUzRTQwRTFSUzI1NiIsInR5cCI6ImF0K2p3dCIsIng1dCI6IjNpbXA1aFJaelBBV0FjbGVtWGtBaFdVLVFPRSJ9.eyJuYmYiOjE3NDk4Mjg5MTYsImV4cCI6MTc0OTgzMjUxNiwiaXNzIjoiaHR0cHM6Ly9haS1zYnguYXZsci5zaCIsImNsaWVudF9pZCI6IjhjYzk1ZjY5ZTcxZTRjNDE5NzA1NTFlNmZjMDVkMjhmIiwib3JnIjoiNjRjOGZmNzAxNjM0YWNjZGZiM2I1MDgyIiwidGlkIjoiNjRjOGZmNzAzNTU2MTViNTU0YTEyOTgxIiwiYXBwSWQiOiI2NGM4ZmY3NTE2MzRhY2NkZmIzYjUwODUiLCJ0LWdydCI6IntcInVybjphdmFsYXJhOnN5c3RlbXM6ZGVzXCI6W3tcInBcIjpbXCJkb2N1bWVudF9zdWJtaXRcIixcImRvY3VtZW50X3JlYWRcIixcImRvY3VtZW50X3NlYXJjaFwiLFwiZG9jdW1lbnRfc3RhdHVzXCIsXCJkZWZpbml0aW9uc192aWV3XCIsXCJkaXJlY3Rvcnlfc2VhcmNoXCIsXCJ3ZWJob29rX2NyZWF0ZVwiLFwid2ViaG9va19yZWFkXCIsXCJ3ZWJob29rX2RlbGV0ZVwiXSxcImNcIjpcIlwifV0sXCJ1cm46YXZhbGFyYTpzeXN0ZW1zOm9ybFwiOlt7XCJwXCI6W1wiUmVnaXN0cmF0aW9uX3JlYWRcIl0sXCJjXCI6XCJyZWdpc3RyYXRpb25UeXBlIEVRICdFLUludm9pY2UnXCJ9XSxcInVybjphdmFsYXJhOnN5c3RlbXM6Y29tcGFueVwiOlt7XCJwXCI6W1wiQ29tcGFueV9jcmVhdGVcIixcIkNvbXBhbnlfdXBkYXRlXCIsXCJDb21wYW55X2ZldGNoXCJdLFwiY1wiOlwiVGVuYW50SWQgRVEgdG9rZW4vdGVuYW50SWRcIn0se1wicFwiOltcImNvbXBhbnlfYXNwZWN0X2NyZWF0ZVwiLFwiY29tcGFueV9hc3BlY3RfZmV0Y2hcIixcImNvbXBhbnlfYXNwZWN0X3VwZGF0ZVwiLFwiY29tcGFueV9hc3BlY3RfZGVsZXRlXCJdLFwiY1wiOlwiXCJ9XX0iLCJjLWdydCI6Int9Iiwicm9sZXMiOiJ7XCJ1cm46YXZhbGFyYTpzeXN0ZW1zOmRlc1wiOltcIkRFUy1BUEktQ29uc3VtZXJcIl0sXCJ1cm46YXZhbGFyYTpzeXN0ZW1zOm9ybFwiOltcIlZpZXdlclwiXSxcInVybjphdmFsYXJhOnN5c3RlbXM6Y29tcGFueVwiOltcIk9QVVNSb2xlXCJdfSIsImp0aSI6IjkyRTQ0NkQ3OEQyN0Q2MEFGMzQwMjc5Q0Q0NTZFMEFCIiwiaWF0IjoxNzQ5ODI4OTE2LCJzY29wZSI6WyJkZXNfYXBpIiwib3JsX2FwaSIsInNjcyJdfQ.W4uM9A9_REYz4axmw-y86YvwddTENzyB0gGANk-OZ0kbZdcGNOuo5vEkVyRi5fCdPVpeAgsbTOh71ii8y-U_rvuZ2Ux-SEJqhgcrYHtLbUdFzyUWA4mryCtYsJX71MreMQ8i0Qj2fHcv4GvFG5zG3CjaRS7hrwnejwNvlqQ6qjGndH4LDyeb2MJR5eO71AbZlmSTcXzaatCbDHxibvIwzXv_vYMz8MCaO0lc_1pzU_GYrsgujdayUEkKjrJLbOx91-LcLvKicK1VF81FCnLBvpp48YLbqYApo9LX5og1EqDFmanU8CtbuWtcYj4j6fhJiqPVw4nsc-1Siqg3X--WZA'
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