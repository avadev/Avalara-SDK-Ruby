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

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CodeListsApi* | [**get_code_list**](docs/EInvoicing/V1/CodeListsApi.md#get_code_list) | **GET** /codelists/{codelistId} | Retrieves a code list by ID for a specific country
*CodeListsApi* | [**get_code_list_list**](docs/EInvoicing/V1/CodeListsApi.md#get_code_list_list) | **GET** /codelists | Returns a list of code lists for a specific country
*DataInputFieldsApi* | [**get_data_input_fields**](docs/EInvoicing/V1/DataInputFieldsApi.md#get_data_input_fields) | **GET** /data-input-fields | Returns the optionality of document fields for different country mandates
*DocumentsApi* | [**download_document**](docs/EInvoicing/V1/DocumentsApi.md#download_document) | **GET** /documents/{documentId}/$download | Returns a copy of the document
*DocumentsApi* | [**fetch_documents**](docs/EInvoicing/V1/DocumentsApi.md#fetch_documents) | **POST** /documents/$fetch | Fetch the inbound document from a tax authority
*DocumentsApi* | [**get_document_list**](docs/EInvoicing/V1/DocumentsApi.md#get_document_list) | **GET** /documents | Returns a summary of documents for a date range
*DocumentsApi* | [**get_document_status**](docs/EInvoicing/V1/DocumentsApi.md#get_document_status) | **GET** /documents/{documentId}/status | Checks the status of a document
*DocumentsApi* | [**submit_document**](docs/EInvoicing/V1/DocumentsApi.md#submit_document) | **POST** /documents | Submits a document to Avalara E-Invoicing API
*InteropApi* | [**submit_interop_document**](docs/EInvoicing/V1/InteropApi.md#submit_interop_document) | **POST** /interop/documents | Submit a document
*MandatesApi* | [**get_mandate_data_input_fields**](docs/EInvoicing/V1/MandatesApi.md#get_mandate_data_input_fields) | **GET** /mandates/{mandateId}/data-input-fields | Returns document field information for a country mandate, a selected document type, and its version
*MandatesApi* | [**get_mandates**](docs/EInvoicing/V1/MandatesApi.md#get_mandates) | **GET** /mandates | List country mandates that are supported by the Avalara E-Invoicing platform
*ReportsApi* | [**download_report**](docs/EInvoicing/V1/ReportsApi.md#download_report) | **GET** /reports/{reportId}/$download | Returns a pre-signed download URL for a report
*ReportsApi* | [**get_report_by_id**](docs/EInvoicing/V1/ReportsApi.md#get_report_by_id) | **GET** /reports/{reportId}/status | Retrieves a report by its unique ID
*ReportsApi* | [**get_reports**](docs/EInvoicing/V1/ReportsApi.md#get_reports) | **GET** /reports | Returns a list of reports
*SubscriptionsApi* | [**create_webhook_subscription**](docs/EInvoicing/V1/SubscriptionsApi.md#create_webhook_subscription) | **POST** /webhooks/subscriptions | Create a subscription to events
*SubscriptionsApi* | [**delete_webhook_subscription**](docs/EInvoicing/V1/SubscriptionsApi.md#delete_webhook_subscription) | **DELETE** /webhooks/subscriptions/{subscriptionId} | Unsubscribe from events
*SubscriptionsApi* | [**get_webhook_subscription**](docs/EInvoicing/V1/SubscriptionsApi.md#get_webhook_subscription) | **GET** /webhooks/subscriptions/{subscriptionId} | Get details of a subscription
*SubscriptionsApi* | [**list_webhook_subscriptions**](docs/EInvoicing/V1/SubscriptionsApi.md#list_webhook_subscriptions) | **GET** /webhooks/subscriptions | List all subscriptions
*TaxIdentifiersApi* | [**tax_identifier_schema_by_country**](docs/EInvoicing/V1/TaxIdentifiersApi.md#tax_identifier_schema_by_country) | **GET** /tax-identifiers/schema | Returns the tax identifier request and response schema for a specific country.
*TaxIdentifiersApi* | [**validate_tax_identifier**](docs/EInvoicing/V1/TaxIdentifiersApi.md#validate_tax_identifier) | **POST** /tax-identifiers/validate | Validates a tax identifier.
*TradingPartnersApi* | [**batch_search_participants**](docs/EInvoicing/V1/TradingPartnersApi.md#batch_search_participants) | **POST** /trading-partners/batch-searches | Handles batch search requests by uploading a file containing search parameters.
*TradingPartnersApi* | [**create_trading_partner**](docs/EInvoicing/V1/TradingPartnersApi.md#create_trading_partner) | **POST** /trading-partners | Creates a new trading partner.
*TradingPartnersApi* | [**create_trading_partners_batch**](docs/EInvoicing/V1/TradingPartnersApi.md#create_trading_partners_batch) | **POST** /trading-partners/batch | Creates a batch of multiple trading partners.
*TradingPartnersApi* | [**delete_trading_partner**](docs/EInvoicing/V1/TradingPartnersApi.md#delete_trading_partner) | **DELETE** /trading-partners/{id} | Deletes a trading partner using ID.
*TradingPartnersApi* | [**download_batch_search_report**](docs/EInvoicing/V1/TradingPartnersApi.md#download_batch_search_report) | **GET** /trading-partners/batch-searches/{id}/$download-results | Downloads batch search results in a csv file.
*TradingPartnersApi* | [**get_batch_search_detail**](docs/EInvoicing/V1/TradingPartnersApi.md#get_batch_search_detail) | **GET** /trading-partners/batch-searches/{id} | Returns the batch search details using ID.
*TradingPartnersApi* | [**list_batch_searches**](docs/EInvoicing/V1/TradingPartnersApi.md#list_batch_searches) | **GET** /trading-partners/batch-searches | Lists all batch searches that were previously submitted.
*TradingPartnersApi* | [**search_participants**](docs/EInvoicing/V1/TradingPartnersApi.md#search_participants) | **GET** /trading-partners | Returns a list of participants matching the input query.
*TradingPartnersApi* | [**update_trading_partner**](docs/EInvoicing/V1/TradingPartnersApi.md#update_trading_partner) | **PUT** /trading-partners/{id} | Updates a trading partner using ID.

<a name="documentation-for-models"></a>
## Documentation for Models

<a name="documentation-for-EInvoicing-V1-models"></a>
### EInvoicing V1 Model Documentation

 - [models.Address](docs/EInvoicing/V1/Address.md)
 - [models.BadDownloadRequest](docs/EInvoicing/V1/BadDownloadRequest.md)
 - [models.BadRequest](docs/EInvoicing/V1/BadRequest.md)
 - [models.BatchErrorDetail](docs/EInvoicing/V1/BatchErrorDetail.md)
 - [models.BatchSearch](docs/EInvoicing/V1/BatchSearch.md)
 - [models.BatchSearchListResponse](docs/EInvoicing/V1/BatchSearchListResponse.md)
 - [models.BatchSearchParticipants202Response](docs/EInvoicing/V1/BatchSearchParticipants202Response.md)
 - [models.CodeListListResponse](docs/EInvoicing/V1/CodeListListResponse.md)
 - [models.CodeListResponse](docs/EInvoicing/V1/CodeListResponse.md)
 - [models.CodeListSummary](docs/EInvoicing/V1/CodeListSummary.md)
 - [models.CodeListValue](docs/EInvoicing/V1/CodeListValue.md)
 - [models.CodeListVersion](docs/EInvoicing/V1/CodeListVersion.md)
 - [models.ConditionalForField](docs/EInvoicing/V1/ConditionalForField.md)
 - [models.Consents](docs/EInvoicing/V1/Consents.md)
 - [models.CreateTradingPartner201Response](docs/EInvoicing/V1/CreateTradingPartner201Response.md)
 - [models.CreateTradingPartnersBatch200Response](docs/EInvoicing/V1/CreateTradingPartnersBatch200Response.md)
 - [models.CreateTradingPartnersBatch200ResponseValueInner](docs/EInvoicing/V1/CreateTradingPartnersBatch200ResponseValueInner.md)
 - [models.CreateTradingPartnersBatchRequest](docs/EInvoicing/V1/CreateTradingPartnersBatchRequest.md)
 - [models.DataInputField](docs/EInvoicing/V1/DataInputField.md)
 - [models.DataInputFieldNotUsedFor](docs/EInvoicing/V1/DataInputFieldNotUsedFor.md)
 - [models.DataInputFieldOptionalFor](docs/EInvoicing/V1/DataInputFieldOptionalFor.md)
 - [models.DataInputFieldRequiredFor](docs/EInvoicing/V1/DataInputFieldRequiredFor.md)
 - [models.DataInputFieldsResponse](docs/EInvoicing/V1/DataInputFieldsResponse.md)
 - [models.DocumentFetch](docs/EInvoicing/V1/DocumentFetch.md)
 - [models.DocumentListResponse](docs/EInvoicing/V1/DocumentListResponse.md)
 - [models.DocumentStatusResponse](docs/EInvoicing/V1/DocumentStatusResponse.md)
 - [models.DocumentSubmissionError](docs/EInvoicing/V1/DocumentSubmissionError.md)
 - [models.DocumentSubmitResponse](docs/EInvoicing/V1/DocumentSubmitResponse.md)
 - [models.DocumentSummary](docs/EInvoicing/V1/DocumentSummary.md)
 - [models.ErrorResponse](docs/EInvoicing/V1/ErrorResponse.md)
 - [models.EventId](docs/EInvoicing/V1/EventId.md)
 - [models.EventMessage](docs/EInvoicing/V1/EventMessage.md)
 - [models.EventPayload](docs/EInvoicing/V1/EventPayload.md)
 - [models.EventSubscription](docs/EInvoicing/V1/EventSubscription.md)
 - [models.Extension](docs/EInvoicing/V1/Extension.md)
 - [models.FetchDocumentsRequest](docs/EInvoicing/V1/FetchDocumentsRequest.md)
 - [models.FetchDocumentsRequestDataInner](docs/EInvoicing/V1/FetchDocumentsRequestDataInner.md)
 - [models.FetchDocumentsRequestMetadata](docs/EInvoicing/V1/FetchDocumentsRequestMetadata.md)
 - [models.ForbiddenError](docs/EInvoicing/V1/ForbiddenError.md)
 - [models.HmacSignature](docs/EInvoicing/V1/HmacSignature.md)
 - [models.HmacSignatureValue](docs/EInvoicing/V1/HmacSignatureValue.md)
 - [models.Id](docs/EInvoicing/V1/Id.md)
 - [models.Identifier](docs/EInvoicing/V1/Identifier.md)
 - [models.InputDataFormats](docs/EInvoicing/V1/InputDataFormats.md)
 - [models.InternalServerError](docs/EInvoicing/V1/InternalServerError.md)
 - [models.Mandate](docs/EInvoicing/V1/Mandate.md)
 - [models.MandateDataInputField](docs/EInvoicing/V1/MandateDataInputField.md)
 - [models.MandateDataInputFieldNamespace](docs/EInvoicing/V1/MandateDataInputFieldNamespace.md)
 - [models.MandatesResponse](docs/EInvoicing/V1/MandatesResponse.md)
 - [models.NotFoundError](docs/EInvoicing/V1/NotFoundError.md)
 - [models.NotUsedForField](docs/EInvoicing/V1/NotUsedForField.md)
 - [models.OutputDataFormats](docs/EInvoicing/V1/OutputDataFormats.md)
 - [models.Pagination](docs/EInvoicing/V1/Pagination.md)
 - [models.ReportDownloadResponse](docs/EInvoicing/V1/ReportDownloadResponse.md)
 - [models.ReportItem](docs/EInvoicing/V1/ReportItem.md)
 - [models.ReportListResponse](docs/EInvoicing/V1/ReportListResponse.md)
 - [models.RequiredWhenField](docs/EInvoicing/V1/RequiredWhenField.md)
 - [models.SearchParticipants200Response](docs/EInvoicing/V1/SearchParticipants200Response.md)
 - [models.Signature](docs/EInvoicing/V1/Signature.md)
 - [models.SignatureSignature](docs/EInvoicing/V1/SignatureSignature.md)
 - [models.SignatureValue](docs/EInvoicing/V1/SignatureValue.md)
 - [models.SignatureValueSignature](docs/EInvoicing/V1/SignatureValueSignature.md)
 - [models.StatusEvent](docs/EInvoicing/V1/StatusEvent.md)
 - [models.SubmitDocumentMetadata](docs/EInvoicing/V1/SubmitDocumentMetadata.md)
 - [models.SubmitInteropDocument202Response](docs/EInvoicing/V1/SubmitInteropDocument202Response.md)
 - [models.SubscriptionCommon](docs/EInvoicing/V1/SubscriptionCommon.md)
 - [models.SubscriptionDetail](docs/EInvoicing/V1/SubscriptionDetail.md)
 - [models.SubscriptionListResponse](docs/EInvoicing/V1/SubscriptionListResponse.md)
 - [models.SubscriptionRegistration](docs/EInvoicing/V1/SubscriptionRegistration.md)
 - [models.SuccessResponse](docs/EInvoicing/V1/SuccessResponse.md)
 - [models.SupportedDocumentStatuses](docs/EInvoicing/V1/SupportedDocumentStatuses.md)
 - [models.SupportedDocumentTypes](docs/EInvoicing/V1/SupportedDocumentTypes.md)
 - [models.TaxIdentifierRequest](docs/EInvoicing/V1/TaxIdentifierRequest.md)
 - [models.TaxIdentifierResponse](docs/EInvoicing/V1/TaxIdentifierResponse.md)
 - [models.TaxIdentifierResponseValue](docs/EInvoicing/V1/TaxIdentifierResponseValue.md)
 - [models.TaxIdentifierSchemaByCountry200Response](docs/EInvoicing/V1/TaxIdentifierSchemaByCountry200Response.md)
 - [models.TradingPartner](docs/EInvoicing/V1/TradingPartner.md)
 - [models.UpdateTradingPartner200Response](docs/EInvoicing/V1/UpdateTradingPartner200Response.md)
 - [models.ValidationError](docs/EInvoicing/V1/ValidationError.md)
 - [models.WebhookInvocation](docs/EInvoicing/V1/WebhookInvocation.md)
 - [models.WebhooksErrorInfo](docs/EInvoicing/V1/WebhooksErrorInfo.md)
 - [models.WebhooksErrorResponse](docs/EInvoicing/V1/WebhooksErrorResponse.md)
 - [models.WorkflowIds](docs/EInvoicing/V1/WorkflowIds.md)
