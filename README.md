# avalara_sdk - the Unified Java SDK for next gen Avalara services.

Unified SDK consists of services on top of which the Avalara Compliance Cloud platform is built. These services are foundational and provide functionality such as einvoicing.

- Package version: 24.12.0

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
config = AvalaraSdk::Configuration.new
config.environment = 'sandbox'                # Set the environment (sandbox, production, etc.)
config.app_name = 'testApp'                   # Set your application name
config.app_version = '1.2.3'                  # Set your application version
config.machine_name = 'testMachine'           # Set your machine name
config.bearer_token = 'Your_Bearer_token' # Set your OAuth2 Bearer Token (replace with actual token)

api_client = AvalaraSdk::ApiClient.new config
api_instance = AvalaraSdk::EInvoicing::V1::MandatesApi.new api_client
get_mandates_request = AvalaraSdk::EInvoicing::V1::GetMandatesRequest.new
get_mandates_request.set_x_avalara_client('x_avalara_client_example')

begin
  # Retrieve geolocation information for a specified address
  result = api_instance.get_mandates(get_mandates_request)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling MandatesApi->get_mandates: #{e}"
end

```

<a name="documentation-for-api-endpoints"></a>

## Documentation for API Endpoints

<a name="documentation-for-EInvoicing-V1-api-endpoints"></a>

### EInvoicing V1 API Documentation

| Class                | Method                                                                                                    | HTTP request                                                    | Description                                                                                             |
| -------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| _DataInputFieldsApi_ | [**get_data_input_fields**](docs/EInvoicing/V1/DataInputFieldsApi.md#get_data_input_fields)               | **GET** /data-input-fields                                      | Returns the optionality of document fields for different country mandates                               |
| _DocumentsApi_       | [**download_document**](docs/EInvoicing/V1/DocumentsApi.md#download_document)                             | **GET** /documents/{documentId}/$download                       | Returns a copy of the document                                                                          |
| _DocumentsApi_       | [**fetch_documents**](docs/EInvoicing/V1/DocumentsApi.md#fetch_documents)                                 | **POST** /documents/$fetch                                      | Fetch the inbound document from a tax authority                                                         |
| _DocumentsApi_       | [**get_document_list**](docs/EInvoicing/V1/DocumentsApi.md#get_document_list)                             | **GET** /documents                                              | Returns a summary of documents for a date range                                                         |
| _DocumentsApi_       | [**get_document_status**](docs/EInvoicing/V1/DocumentsApi.md#get_document_status)                         | **GET** /documents/{documentId}/status                          | Checks the status of a document                                                                         |
| _DocumentsApi_       | [**submit_document**](docs/EInvoicing/V1/DocumentsApi.md#submit_document)                                 | **POST** /documents                                             | Submits a document to Avalara E-Invoicing API                                                           |
| _InteropApi_         | [**submit_interop_document**](docs/EInvoicing/V1/InteropApi.md#submit_interop_document)                   | **POST** /interop/documents                                     | Submit a document                                                                                       |
| _MandatesApi_        | [**get_mandate_data_input_fields**](docs/EInvoicing/V1/MandatesApi.md#get_mandate_data_input_fields)      | **GET** /mandates/{mandateId}/data-input-fields                 | Returns document field information for a country mandate, a selected document type, and its version     |
| _MandatesApi_        | [**get_mandates**](docs/EInvoicing/V1/MandatesApi.md#get_mandates)                                        | **GET** /mandates                                               | List country mandates that are supported by the Avalara E-Invoicing platform                            |
| _TradingPartnersApi_ | [**batch_search_participants**](docs/EInvoicing/V1/TradingPartnersApi.md#batch_search_participants)       | **POST** /trading-partners/batch-searches                       | Creates a batch search and performs a batch search in the directory for participants in the background. |
| _TradingPartnersApi_ | [**download_batch_search_report**](docs/EInvoicing/V1/TradingPartnersApi.md#download_batch_search_report) | **GET** /trading-partners/batch-searches/{id}/$download-results | Download batch search results in a csv file.                                                            |
| _TradingPartnersApi_ | [**get_batch_search_detail**](docs/EInvoicing/V1/TradingPartnersApi.md#get_batch_search_detail)           | **GET** /trading-partners/batch-searches/{id}                   | Get the batch search details for a given id.                                                            |
| _TradingPartnersApi_ | [**list_batch_searches**](docs/EInvoicing/V1/TradingPartnersApi.md#list_batch_searches)                   | **GET** /trading-partners/batch-searches                        | List all batch searches that were previously submitted.                                                 |
| _TradingPartnersApi_ | [**search_participants**](docs/EInvoicing/V1/TradingPartnersApi.md#search_participants)                   | **GET** /trading-partners                                       | Returns a list of participants matching the input query.                                                |

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
