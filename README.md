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
*DataInputFieldsApi* | [**get_data_input_fields**](docs/EInvoicing/V1/DataInputFieldsApi.md#get_data_input_fields) | **GET** /data-input-fields | Returns the mandatory and conditional invoice or creditnote input fields for different country mandates
*DocumentsApi* | [**download_document**](docs/EInvoicing/V1/DocumentsApi.md#download_document) | **GET** /documents/{documentId}/$download | Returns a copy of the document
*DocumentsApi* | [**get_document_list**](docs/EInvoicing/V1/DocumentsApi.md#get_document_list) | **GET** /documents | Returns a summary of documents for a date range
*DocumentsApi* | [**get_document_status**](docs/EInvoicing/V1/DocumentsApi.md#get_document_status) | **GET** /document/{documentId}/status | Checks the status of a document
*DocumentsApi* | [**submit_document**](docs/EInvoicing/V1/DocumentsApi.md#submit_document) | **POST** /documents | Submits a document to Avalara E-Invoicing API
*MandatesApi* | [**get_mandates**](docs/EInvoicing/V1/MandatesApi.md#get_mandates) | **GET** /mandates | List country mandates that are supported by the Avalara E-Invoicing platform

<a name="documentation-for-models"></a>
## Documentation for Models

<a name="documentation-for-EInvoicing-V1-models"></a>
### EInvoicing V1 Model Documentation

 - [models.BadDownloadRequest](docs/EInvoicing/V1/BadDownloadRequest.md)
 - [models.BadRequest](docs/EInvoicing/V1/BadRequest.md)
 - [models.ConditionalForField](docs/EInvoicing/V1/ConditionalForField.md)
 - [models.DataInputField](docs/EInvoicing/V1/DataInputField.md)
 - [models.DataInputFieldNotUsedFor](docs/EInvoicing/V1/DataInputFieldNotUsedFor.md)
 - [models.DataInputFieldOptionalFor](docs/EInvoicing/V1/DataInputFieldOptionalFor.md)
 - [models.DataInputFieldRequiredFor](docs/EInvoicing/V1/DataInputFieldRequiredFor.md)
 - [models.DataInputFieldsResponse](docs/EInvoicing/V1/DataInputFieldsResponse.md)
 - [models.DocumentListResponse](docs/EInvoicing/V1/DocumentListResponse.md)
 - [models.DocumentStatusResponse](docs/EInvoicing/V1/DocumentStatusResponse.md)
 - [models.DocumentSubmissionError](docs/EInvoicing/V1/DocumentSubmissionError.md)
 - [models.DocumentSubmitResponse](docs/EInvoicing/V1/DocumentSubmitResponse.md)
 - [models.DocumentSummary](docs/EInvoicing/V1/DocumentSummary.md)
 - [models.ForbiddenError](docs/EInvoicing/V1/ForbiddenError.md)
 - [models.InputDataFormats](docs/EInvoicing/V1/InputDataFormats.md)
 - [models.InternalServerError](docs/EInvoicing/V1/InternalServerError.md)
 - [models.Mandate](docs/EInvoicing/V1/Mandate.md)
 - [models.MandatesResponse](docs/EInvoicing/V1/MandatesResponse.md)
 - [models.NotFoundError](docs/EInvoicing/V1/NotFoundError.md)
 - [models.NotUsedForField](docs/EInvoicing/V1/NotUsedForField.md)
 - [models.RequiredWhenField](docs/EInvoicing/V1/RequiredWhenField.md)
 - [models.StatusEvent](docs/EInvoicing/V1/StatusEvent.md)
 - [models.SubmitDocumentData](docs/EInvoicing/V1/SubmitDocumentData.md)
 - [models.SubmitDocumentMetadata](docs/EInvoicing/V1/SubmitDocumentMetadata.md)
 - [models.WorkflowIds](docs/EInvoicing/V1/WorkflowIds.md)
