# avalara_sdk

AvalaraSdk - the Ruby gem for the Avalara Shipping Verification only

API for evaluating transactions against direct-to-consumer Beverage Alcohol shipping regulations.

This API is currently in beta.


- Package version: 2.4.26

## Installation

```shell
gem install avalara_sdk
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
require 'time'
require 'avalara_sdk'
# setup authorization
AvalaraSdk::Avatax.configure do |config|
  # See Documentation for Authorization section for more auth examples.
  config.bearer_token='<Your Avalara Identity Access Token>'
  config.environment='sandbox'
  config.app_name='testApp'
  config.app_version='1.2.3'
  config.machine_name='testMachine'
end

api_client = AvalaraSdk::ApiClient.new config
api_instance = AvalaraSdk::Avatax::V2::AddressesApi.new api_client

opts = {
  x_avalara_client: 'x_avalara_client_example', # String | Identifies the software you are using to call this API.  For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .
  body: AvalaraSdk::Avatax::V2::AddressValidationInfo.new # AddressValidationInfo | The address to resolve
}

begin
  # Retrieve geolocation information for a specified address
  result = api_instance.resolve_address_post(opts)
  p result
rescue AvalaraSdk::Avatax::ApiError => e
  puts "Error when calling AddressesApi->resolve_address_post: #{e}"
end

```
<a name="documentation-for-authorization"></a>
## Documentation for Authorization

Authentication schemes defined for the API:
<a name="OAuth Client Credentials Flow"></a>
### OAuth Client Credentials

- **Type**: OAuth
- **Flow**: client_credentials
- **Scopes**: 
  - avatax_api: avatax_api scope.

```ruby
require 'time'
require 'avalara_sdk'
# setup authorization
AvalaraSdk::Avatax.configure do |config|
  # See [Authorization Section](#documentation-for-authorization) for more auth examples.
  config.client_id='<Your Avalara Identity Client Id>'
  # Make sure to never check-in this value, should be stored in a secrets manager
  config.client_secret='<Your Avalara Identity Client Secret>'
  config.environment='sandbox'
  config.app_name='testApp'
  config.app_version='1.2.3'
  config.machine_name='testMachine'
end

api_client = AvalaraSdk::ApiClient.new config
api_instance = AvalaraSdk::Avatax::V2::AddressesApi.new api_client

opts = {
  x_avalara_client: 'x_avalara_client_example', # String | Identifies the software you are using to call this API.  For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .
  body: AvalaraSdk::Avatax::V2::AddressValidationInfo.new # AddressValidationInfo | The address to resolve
}

begin
  # Retrieve geolocation information for a specified address
  # OAuth2 Client Credentials Flow will be invoked to retrieve the Bearer Token and it will be appended
  # to the request Authorization Header automaticaly by the SDK.
  result = api_instance.resolve_address_post(opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling AddressesApi->resolve_address_post: #{e}"
end

```

<a name="OAuth Device Code Flow"></a>
### OAuth Device Code

- **Type**: OAuth
- **Flow**: device_code
- **Scopes**: 
  - avatax_api: avatax_api scope.

```ruby
require 'time'
require 'avalara_sdk'
# setup authorization
AvalaraSdk::Avatax.configure do |config|
  config.client_id='<Your Avalara Identity Client Id>'
  config.environment='sandbox'
  config.app_name='testApp'
  config.app_version='1.2.3'
  config.machine_name='testMachine'
end

# Initiate device code flow for Authorization
device_auth_result = AvalaraSdk::Auth::OAuthHelper.initiate_device_authorization_flow("avatax_api", config)
# User Interaction needs to happen here - some polling logic is needed to wait for offline user to authenticate to verification_uri through browser
token_result = AvalaraSdk::Auth::OAuthHelper.get_access_token_for_device_flow(device_auth_result.device_code, config)
# Set bearer token into the config object which will be used by SDK to send Authorization header in requests.
config.bearer_token = token_result.access_token;

api_client = AvalaraSdk::ApiClient.new config
api_instance = AvalaraSdk::Avatax::V2::AddressesApi.new api_client

opts = {
  x_avalara_client: 'x_avalara_client_example', # String | Identifies the software you are using to call this API.  For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .
  body: AvalaraSdk::Avatax::V2::AddressValidationInfo.new # AddressValidationInfo | The address to resolve
}

begin
  # Retrieve geolocation information for a specified address
  # OAuth2 Client Credentials Flow will be invoked to retrieve the Bearer Token and it will be appended
  # to the request Authorization Header automaticaly by the SDK.
  result = api_instance.resolve_address_post(opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling AddressesApi->resolve_address_post: #{e}"
end
```

<a name="documentation-for-api-endpoints"></a>
## Documentation for API Endpoints

<a name="documentation-for-EInvoicing-V1-api-endpoints"></a>
### EInvoicing V1 API Documentation

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DataInputFieldsApi* | [**get_data_input_fields**](docs/EInvoicing/V1/DataInputFieldsApi.md#get_data_input_fields) | **GET** /data-input-fields | Returns the optionality of document fields for different country mandates
*DocumentsApi* | [**download_document**](docs/EInvoicing/V1/DocumentsApi.md#download_document) | **GET** /documents/{documentId}/$download | Returns a copy of the document
*DocumentsApi* | [**fetch_documents**](docs/EInvoicing/V1/DocumentsApi.md#fetch_documents) | **POST** /documents/$fetch | Fetch the inbound document from a tax authority
*DocumentsApi* | [**get_document_list**](docs/EInvoicing/V1/DocumentsApi.md#get_document_list) | **GET** /documents | Returns a summary of documents for a date range
*DocumentsApi* | [**get_document_status**](docs/EInvoicing/V1/DocumentsApi.md#get_document_status) | **GET** /documents/{documentId}/status | Checks the status of a document
*DocumentsApi* | [**submit_document**](docs/EInvoicing/V1/DocumentsApi.md#submit_document) | **POST** /documents | Submits a document to Avalara E-Invoicing API
*InteropApi* | [**submit_interop_document**](docs/EInvoicing/V1/InteropApi.md#submit_interop_document) | **POST** /interop/documents | Submit a document
*MandatesApi* | [**get_mandate_data_input_fields**](docs/EInvoicing/V1/MandatesApi.md#get_mandate_data_input_fields) | **GET** /mandates/{mandateId}/data-input-fields | Returns document field information for a country mandate, a selected document type, and its version
*MandatesApi* | [**get_mandates**](docs/EInvoicing/V1/MandatesApi.md#get_mandates) | **GET** /mandates | List country mandates that are supported by the Avalara E-Invoicing platform
*TradingPartnersApi* | [**batch_search_participants**](docs/EInvoicing/V1/TradingPartnersApi.md#batch_search_participants) | **POST** /trading-partners/batch-searches | Creates a batch search and performs a batch search in the directory for participants in the background.
*TradingPartnersApi* | [**download_batch_search_report**](docs/EInvoicing/V1/TradingPartnersApi.md#download_batch_search_report) | **GET** /trading-partners/batch-searches/{id}/$download-results | Download batch search results in a csv file.
*TradingPartnersApi* | [**get_batch_search_detail**](docs/EInvoicing/V1/TradingPartnersApi.md#get_batch_search_detail) | **GET** /trading-partners/batch-searches/{id} | Get the batch search details for a given id.
*TradingPartnersApi* | [**list_batch_searches**](docs/EInvoicing/V1/TradingPartnersApi.md#list_batch_searches) | **GET** /trading-partners/batch-searches | List all batch searches that were previously submitted.
*TradingPartnersApi* | [**search_participants**](docs/EInvoicing/V1/TradingPartnersApi.md#search_participants) | **GET** /trading-partners | Returns a list of participants matching the input query.

<a name="documentation-for-models"></a>
## Documentation for Models

<a name="documentation-for-EInvoicing-V1-models"></a>
### EInvoicing V1 Model Documentation

 - [models.BadDownloadRequest](docs/EInvoicing/V1/BadDownloadRequest.md)
 - [models.BadRequest](docs/EInvoicing/V1/BadRequest.md)
 - [models.BatchSearch](docs/EInvoicing/V1/BatchSearch.md)
 - [models.BatchSearchListResponse](docs/EInvoicing/V1/BatchSearchListResponse.md)
 - [models.ConditionalForField](docs/EInvoicing/V1/ConditionalForField.md)
 - [models.DataInputField](docs/EInvoicing/V1/DataInputField.md)
 - [models.DataInputFieldNotUsedFor](docs/EInvoicing/V1/DataInputFieldNotUsedFor.md)
 - [models.DataInputFieldOptionalFor](docs/EInvoicing/V1/DataInputFieldOptionalFor.md)
 - [models.DataInputFieldRequiredFor](docs/EInvoicing/V1/DataInputFieldRequiredFor.md)
 - [models.DataInputFieldsResponse](docs/EInvoicing/V1/DataInputFieldsResponse.md)
 - [models.DirectorySearchResponse](docs/EInvoicing/V1/DirectorySearchResponse.md)
 - [models.DirectorySearchResponseValueInner](docs/EInvoicing/V1/DirectorySearchResponseValueInner.md)
 - [models.DirectorySearchResponseValueInnerAddressesInner](docs/EInvoicing/V1/DirectorySearchResponseValueInnerAddressesInner.md)
 - [models.DirectorySearchResponseValueInnerIdentifiersInner](docs/EInvoicing/V1/DirectorySearchResponseValueInnerIdentifiersInner.md)
 - [models.DirectorySearchResponseValueInnerSupportedDocumentTypesInner](docs/EInvoicing/V1/DirectorySearchResponseValueInnerSupportedDocumentTypesInner.md)
 - [models.DocumentFetch](docs/EInvoicing/V1/DocumentFetch.md)
 - [models.DocumentFetchRequest](docs/EInvoicing/V1/DocumentFetchRequest.md)
 - [models.DocumentFetchRequestDataInner](docs/EInvoicing/V1/DocumentFetchRequestDataInner.md)
 - [models.DocumentFetchRequestMetadata](docs/EInvoicing/V1/DocumentFetchRequestMetadata.md)
 - [models.DocumentListResponse](docs/EInvoicing/V1/DocumentListResponse.md)
 - [models.DocumentStatusResponse](docs/EInvoicing/V1/DocumentStatusResponse.md)
 - [models.DocumentSubmissionError](docs/EInvoicing/V1/DocumentSubmissionError.md)
 - [models.DocumentSubmitResponse](docs/EInvoicing/V1/DocumentSubmitResponse.md)
 - [models.DocumentSummary](docs/EInvoicing/V1/DocumentSummary.md)
 - [models.ErrorResponse](docs/EInvoicing/V1/ErrorResponse.md)
 - [models.ForbiddenError](docs/EInvoicing/V1/ForbiddenError.md)
 - [models.InputDataFormats](docs/EInvoicing/V1/InputDataFormats.md)
 - [models.InternalServerError](docs/EInvoicing/V1/InternalServerError.md)
 - [models.Mandate](docs/EInvoicing/V1/Mandate.md)
 - [models.MandateDataInputField](docs/EInvoicing/V1/MandateDataInputField.md)
 - [models.MandateDataInputFieldNamespace](docs/EInvoicing/V1/MandateDataInputFieldNamespace.md)
 - [models.MandatesResponse](docs/EInvoicing/V1/MandatesResponse.md)
 - [models.NotFoundError](docs/EInvoicing/V1/NotFoundError.md)
 - [models.NotUsedForField](docs/EInvoicing/V1/NotUsedForField.md)
 - [models.RequiredWhenField](docs/EInvoicing/V1/RequiredWhenField.md)
 - [models.StatusEvent](docs/EInvoicing/V1/StatusEvent.md)
 - [models.SubmitDocumentMetadata](docs/EInvoicing/V1/SubmitDocumentMetadata.md)
 - [models.SubmitInteropDocument202Response](docs/EInvoicing/V1/SubmitInteropDocument202Response.md)
 - [models.WorkflowIds](docs/EInvoicing/V1/WorkflowIds.md)
