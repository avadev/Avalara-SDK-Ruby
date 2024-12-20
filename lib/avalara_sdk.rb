=begin

This is auto-generated class by sdk-generator 

=end

# All files
require File.expand_path( '../avalara_sdk/api_client.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/api_error.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/api/EInvoicing/V1/data_input_fields_api.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/api/EInvoicing/V1/documents_api.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/api/EInvoicing/V1/interop_api.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/api/EInvoicing/V1/mandates_api.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/api/EInvoicing/V1/trading_partners_api.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/auth/device_authorization_response.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/auth/oauth_helper.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/auth/token_response.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/configuration.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/models/EInvoicing/V1/bad_download_request.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/models/EInvoicing/V1/bad_request.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/models/EInvoicing/V1/batch_search_list_response.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/models/EInvoicing/V1/batch_search.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/models/EInvoicing/V1/conditional_for_field.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/models/EInvoicing/V1/data_input_field_not_used_for.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/models/EInvoicing/V1/data_input_field_optional_for.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/models/EInvoicing/V1/data_input_field_required_for.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/models/EInvoicing/V1/data_input_field.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/models/EInvoicing/V1/data_input_fields_response.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/models/EInvoicing/V1/directory_search_response_value_inner_addresses_inner.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/models/EInvoicing/V1/directory_search_response_value_inner_identifiers_inner.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/models/EInvoicing/V1/directory_search_response_value_inner_supported_document_types_inner.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/models/EInvoicing/V1/directory_search_response_value_inner.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/models/EInvoicing/V1/directory_search_response.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/models/EInvoicing/V1/document_fetch.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/models/EInvoicing/V1/document_list_response.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/models/EInvoicing/V1/document_status_response.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/models/EInvoicing/V1/document_submission_error.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/models/EInvoicing/V1/document_submit_response.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/models/EInvoicing/V1/document_summary.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/models/EInvoicing/V1/error_response.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/models/EInvoicing/V1/fetch_documents_request_data_inner.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/models/EInvoicing/V1/fetch_documents_request_metadata.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/models/EInvoicing/V1/fetch_documents_request.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/models/EInvoicing/V1/forbidden_error.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/models/EInvoicing/V1/input_data_formats.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/models/EInvoicing/V1/internal_server_error.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/models/EInvoicing/V1/mandate_data_input_field_namespace.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/models/EInvoicing/V1/mandate_data_input_field.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/models/EInvoicing/V1/mandate.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/models/EInvoicing/V1/mandates_response.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/models/EInvoicing/V1/not_found_error.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/models/EInvoicing/V1/not_used_for_field.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/models/EInvoicing/V1/required_when_field.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/models/EInvoicing/V1/status_event.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/models/EInvoicing/V1/submit_document_data.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/models/EInvoicing/V1/submit_document_metadata.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/models/EInvoicing/V1/submit_interop_document202_response.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/models/EInvoicing/V1/workflow_ids.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/response_hash.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/token_metadata.rb', __FILE__) 
require File.expand_path( '../avalara_sdk/version.rb', __FILE__) 


module AvalaraSdk
  class << self
    # Customize default settings for the SDK using block.
    #   AvalaraSdk.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
