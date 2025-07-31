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
*DataInputFieldsApi* | [**get_data_input_fields**](docs/EInvoicing/V1/DataInputFieldsApi.md#get_data_input_fields) | **GET** /data-input-fields | Returns the optionality of document fields for different country mandates
*DocumentsApi* | [**download_document**](docs/EInvoicing/V1/DocumentsApi.md#download_document) | **GET** /documents/{documentId}/$download | Returns a copy of the document
*DocumentsApi* | [**fetch_documents**](docs/EInvoicing/V1/DocumentsApi.md#fetch_documents) | **POST** /documents/$fetch | Fetch the inbound document from a tax authority
*DocumentsApi* | [**get_document_list**](docs/EInvoicing/V1/DocumentsApi.md#get_document_list) | **GET** /documents | Returns a summary of documents for a date range
*DocumentsApi* | [**get_document_status**](docs/EInvoicing/V1/DocumentsApi.md#get_document_status) | **GET** /documents/{documentId}/status | Checks the status of a document
*DocumentsApi* | [**submit_document**](docs/EInvoicing/V1/DocumentsApi.md#submit_document) | **POST** /documents | Submits a document to Avalara E-Invoicing API
*InteropApi* | [**submit_interop_document**](docs/EInvoicing/V1/InteropApi.md#submit_interop_document) | **POST** /interop/documents | Submit a document
*MandatesApi* | [**get_mandate_data_input_fields**](docs/EInvoicing/V1/MandatesApi.md#get_mandate_data_input_fields) | **GET** /mandates/{mandateId}/data-input-fields | Returns document field information for a country mandate, a selected document type, and its version
*MandatesApi* | [**get_mandates**](docs/EInvoicing/V1/MandatesApi.md#get_mandates) | **GET** /mandates | List country mandates that are supported by the Avalara E-Invoicing platform
*SubscriptionsApi* | [**create_webhook_subscription**](docs/EInvoicing/V1/SubscriptionsApi.md#create_webhook_subscription) | **POST** /webhooks/subscriptions | Create a subscription to events
*SubscriptionsApi* | [**delete_webhook_subscription**](docs/EInvoicing/V1/SubscriptionsApi.md#delete_webhook_subscription) | **DELETE** /webhooks/subscriptions/{subscription-id} | Unsubscribe from events
*SubscriptionsApi* | [**get_webhook_subscription**](docs/EInvoicing/V1/SubscriptionsApi.md#get_webhook_subscription) | **GET** /webhooks/subscriptions/{subscription-id} | Get details of a subscription
*SubscriptionsApi* | [**list_webhook_subscriptions**](docs/EInvoicing/V1/SubscriptionsApi.md#list_webhook_subscriptions) | **GET** /webhooks/subscriptions | List all subscriptions
*TaxIdentifiersApi* | [**tax_identifier_schema_by_country**](docs/EInvoicing/V1/TaxIdentifiersApi.md#tax_identifier_schema_by_country) | **GET** /tax-identifiers/schema | Returns the tax identifier request & response schema for a specific country.
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

<a name="documentation-for-A1099-V2-api-endpoints"></a>
### A1099 V2 API Documentation

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CompaniesW9Api* | [**create_company**](docs/A1099/V2/CompaniesW9Api.md#create_company) | **POST** /w9/companies | Create a company
*CompaniesW9Api* | [**delete_company**](docs/A1099/V2/CompaniesW9Api.md#delete_company) | **DELETE** /w9/companies/{id} | Delete a company
*CompaniesW9Api* | [**get_companies**](docs/A1099/V2/CompaniesW9Api.md#get_companies) | **GET** /w9/companies | List companies
*CompaniesW9Api* | [**get_company**](docs/A1099/V2/CompaniesW9Api.md#get_company) | **GET** /w9/companies/{id} | Retrieve a company
*CompaniesW9Api* | [**update_company**](docs/A1099/V2/CompaniesW9Api.md#update_company) | **PUT** /w9/companies/{id} | Update a company
*Forms1099Api* | [**bulk_upsert1099_forms**](docs/A1099/V2/Forms1099Api.md#bulk_upsert1099_forms) | **POST** /1099/forms/$bulk-upsert | Create or update multiple 1099/1095/W2/1042S forms
*Forms1099Api* | [**create1099_form**](docs/A1099/V2/Forms1099Api.md#create1099_form) | **POST** /1099/forms | Create a 1099/1095/W2/1042S form
*Forms1099Api* | [**delete1099_form**](docs/A1099/V2/Forms1099Api.md#delete1099_form) | **DELETE** /1099/forms/{id} | Delete a 1099/1095/W2/1042S form
*Forms1099Api* | [**get1099_form**](docs/A1099/V2/Forms1099Api.md#get1099_form) | **GET** /1099/forms/{id} | Retrieve a 1099/1095/W2/1042S form
*Forms1099Api* | [**get1099_form_pdf**](docs/A1099/V2/Forms1099Api.md#get1099_form_pdf) | **GET** /1099/forms/{id}/pdf | Retrieve the PDF file for a 1099/1095/W2/1042S form
*Forms1099Api* | [**list1099_forms**](docs/A1099/V2/Forms1099Api.md#list1099_forms) | **GET** /1099/forms | List 1099/1095/W2/1042S forms
*Forms1099Api* | [**update1099_form**](docs/A1099/V2/Forms1099Api.md#update1099_form) | **PUT** /1099/forms/{id} | Update a 1099/1095/W2/1042S form
*FormsW9Api* | [**create_w9_form**](docs/A1099/V2/FormsW9Api.md#create_w9_form) | **POST** /w9/forms | Create a W9/W4/W8 form
*FormsW9Api* | [**delete_w9_form**](docs/A1099/V2/FormsW9Api.md#delete_w9_form) | **DELETE** /w9/forms/{id} | Delete a W9/W4/W8 form
*FormsW9Api* | [**get_w9_form**](docs/A1099/V2/FormsW9Api.md#get_w9_form) | **GET** /w9/forms/{id} | Retrieve a W9/W4/W8 form
*FormsW9Api* | [**list_w9_forms**](docs/A1099/V2/FormsW9Api.md#list_w9_forms) | **GET** /w9/forms | List W9/W4/W8 forms
*FormsW9Api* | [**send_w9_form_email**](docs/A1099/V2/FormsW9Api.md#send_w9_form_email) | **POST** /w9/forms/{id}/$send-email | Send an email to the vendor/payee requesting they fill out a W9/W4/W8 form
*FormsW9Api* | [**update_w9_form**](docs/A1099/V2/FormsW9Api.md#update_w9_form) | **PUT** /w9/forms/{id} | Update a W9/W4/W8 form
*FormsW9Api* | [**upload_w9_files**](docs/A1099/V2/FormsW9Api.md#upload_w9_files) | **POST** /w9/forms/{id}/attachment | Replace the PDF file for a W9/W4/W8 form
*Issuers1099Api* | [**create_issuer**](docs/A1099/V2/Issuers1099Api.md#create_issuer) | **POST** /1099/issuers | Create an issuer
*Issuers1099Api* | [**delete_issuer**](docs/A1099/V2/Issuers1099Api.md#delete_issuer) | **DELETE** /1099/issuers/{id} | Delete an issuer
*Issuers1099Api* | [**get_issuer**](docs/A1099/V2/Issuers1099Api.md#get_issuer) | **GET** /1099/issuers/{id} | Retrieve an issuer
*Issuers1099Api* | [**get_issuers**](docs/A1099/V2/Issuers1099Api.md#get_issuers) | **GET** /1099/issuers | List issuers
*Issuers1099Api* | [**update_issuer**](docs/A1099/V2/Issuers1099Api.md#update_issuer) | **PUT** /1099/issuers/{id} | Update an issuer
*Jobs1099Api* | [**get_job**](docs/A1099/V2/Jobs1099Api.md#get_job) | **GET** /1099/jobs/{id} | Retrieves information about the job

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


<a name="documentation-for-A1099-V2-models"></a>
### A1099 V2 Model Documentation

 - [models.Attribute](docs/A1099/V2/Attribute.md)
 - [models.AuthorizedApiRequestModel](docs/A1099/V2/AuthorizedApiRequestModel.md)
 - [models.AuthorizedApiRequestV2DataModel](docs/A1099/V2/AuthorizedApiRequestV2DataModel.md)
 - [models.BaseCompanyModel](docs/A1099/V2/BaseCompanyModel.md)
 - [models.BaseFormListRequest](docs/A1099/V2/BaseFormListRequest.md)
 - [models.BulkUpsert1099FormsRequest](docs/A1099/V2/BulkUpsert1099FormsRequest.md)
 - [models.CompanyCreateUpdateRequestModel](docs/A1099/V2/CompanyCreateUpdateRequestModel.md)
 - [models.CompanyModel](docs/A1099/V2/CompanyModel.md)
 - [models.CompanyResponse](docs/A1099/V2/CompanyResponse.md)
 - [models.CompanyResponseModel](docs/A1099/V2/CompanyResponseModel.md)
 - [models.CoveredIndividualReferenceResponse](docs/A1099/V2/CoveredIndividualReferenceResponse.md)
 - [models.CoveredIndividualRequest](docs/A1099/V2/CoveredIndividualRequest.md)
 - [models.Create1099Form201Response](docs/A1099/V2/Create1099Form201Response.md)
 - [models.CreateW9Form201Response](docs/A1099/V2/CreateW9Form201Response.md)
 - [models.CreateW9FormRequest](docs/A1099/V2/CreateW9FormRequest.md)
 - [models.Data](docs/A1099/V2/Data.md)
 - [models.ErrorModel](docs/A1099/V2/ErrorModel.md)
 - [models.ErrorResponse](docs/A1099/V2/ErrorResponse.md)
 - [models.ErrorResponseErrorsInner](docs/A1099/V2/ErrorResponseErrorsInner.md)
 - [models.Form1042SList](docs/A1099/V2/Form1042SList.md)
 - [models.Form1042SListItem](docs/A1099/V2/Form1042SListItem.md)
 - [models.Form1042SListItemResponse](docs/A1099/V2/Form1042SListItemResponse.md)
 - [models.Form1042SRequest](docs/A1099/V2/Form1042SRequest.md)
 - [models.Form1042SResponse](docs/A1099/V2/Form1042SResponse.md)
 - [models.Form1095BList](docs/A1099/V2/Form1095BList.md)
 - [models.Form1095BListItem](docs/A1099/V2/Form1095BListItem.md)
 - [models.Form1095BListItemResponse](docs/A1099/V2/Form1095BListItemResponse.md)
 - [models.Form1095BRequest](docs/A1099/V2/Form1095BRequest.md)
 - [models.Form1095CList](docs/A1099/V2/Form1095CList.md)
 - [models.Form1095CListItem](docs/A1099/V2/Form1095CListItem.md)
 - [models.Form1099BaseResponse](docs/A1099/V2/Form1099BaseResponse.md)
 - [models.Form1099DivList](docs/A1099/V2/Form1099DivList.md)
 - [models.Form1099DivListItem](docs/A1099/V2/Form1099DivListItem.md)
 - [models.Form1099DivListItemResponse](docs/A1099/V2/Form1099DivListItemResponse.md)
 - [models.Form1099DivRequest](docs/A1099/V2/Form1099DivRequest.md)
 - [models.Form1099DivResponse](docs/A1099/V2/Form1099DivResponse.md)
 - [models.Form1099KList](docs/A1099/V2/Form1099KList.md)
 - [models.Form1099KListItem](docs/A1099/V2/Form1099KListItem.md)
 - [models.Form1099KListItemResponse](docs/A1099/V2/Form1099KListItemResponse.md)
 - [models.Form1099KRequest](docs/A1099/V2/Form1099KRequest.md)
 - [models.Form1099KResponse](docs/A1099/V2/Form1099KResponse.md)
 - [models.Form1099ListResponse](docs/A1099/V2/Form1099ListResponse.md)
 - [models.Form1099ListResponseValueInner](docs/A1099/V2/Form1099ListResponseValueInner.md)
 - [models.Form1099MiscList](docs/A1099/V2/Form1099MiscList.md)
 - [models.Form1099MiscListItem](docs/A1099/V2/Form1099MiscListItem.md)
 - [models.Form1099MiscListItemResponse](docs/A1099/V2/Form1099MiscListItemResponse.md)
 - [models.Form1099MiscRequest](docs/A1099/V2/Form1099MiscRequest.md)
 - [models.Form1099MiscResponse](docs/A1099/V2/Form1099MiscResponse.md)
 - [models.Form1099NecList](docs/A1099/V2/Form1099NecList.md)
 - [models.Form1099NecListItem](docs/A1099/V2/Form1099NecListItem.md)
 - [models.Form1099NecListItemResponse](docs/A1099/V2/Form1099NecListItemResponse.md)
 - [models.Form1099NecRequest](docs/A1099/V2/Form1099NecRequest.md)
 - [models.Form1099NecResponse](docs/A1099/V2/Form1099NecResponse.md)
 - [models.Form1099ProccessResult](docs/A1099/V2/Form1099ProccessResult.md)
 - [models.Form1099RList](docs/A1099/V2/Form1099RList.md)
 - [models.Form1099RListItem](docs/A1099/V2/Form1099RListItem.md)
 - [models.Form1099RListItemResponse](docs/A1099/V2/Form1099RListItemResponse.md)
 - [models.Form1099RRequest](docs/A1099/V2/Form1099RRequest.md)
 - [models.FormRequestBase](docs/A1099/V2/FormRequestBase.md)
 - [models.FormRequestListItemBase](docs/A1099/V2/FormRequestListItemBase.md)
 - [models.FormResponseBase](docs/A1099/V2/FormResponseBase.md)
 - [models.FormSingleRequestBase](docs/A1099/V2/FormSingleRequestBase.md)
 - [models.Get1099Form200Response](docs/A1099/V2/Get1099Form200Response.md)
 - [models.HttpValidationProblemDetails](docs/A1099/V2/HttpValidationProblemDetails.md)
 - [models.ICreateForm1099Request](docs/A1099/V2/ICreateForm1099Request.md)
 - [models.IUpdateForm1099Request](docs/A1099/V2/IUpdateForm1099Request.md)
 - [models.IW9FormDataModelsOneOf](docs/A1099/V2/IW9FormDataModelsOneOf.md)
 - [models.IntermediaryOrFlowThrough](docs/A1099/V2/IntermediaryOrFlowThrough.md)
 - [models.IntermediaryOrFlowThroughRequest](docs/A1099/V2/IntermediaryOrFlowThroughRequest.md)
 - [models.IntermediaryOrFlowThroughResponse](docs/A1099/V2/IntermediaryOrFlowThroughResponse.md)
 - [models.IrsResponse](docs/A1099/V2/IrsResponse.md)
 - [models.IssuerCommand](docs/A1099/V2/IssuerCommand.md)
 - [models.IssuerResponse](docs/A1099/V2/IssuerResponse.md)
 - [models.JobResult](docs/A1099/V2/JobResult.md)
 - [models.Link](docs/A1099/V2/Link.md)
 - [models.OfferAndCoverageRequest](docs/A1099/V2/OfferAndCoverageRequest.md)
 - [models.PaginatedQueryResultModel](docs/A1099/V2/PaginatedQueryResultModel.md)
 - [models.PaginatedQueryResultModelCompanyResponse](docs/A1099/V2/PaginatedQueryResultModelCompanyResponse.md)
 - [models.PaginatedQueryResultModelIssuerResponse](docs/A1099/V2/PaginatedQueryResultModelIssuerResponse.md)
 - [models.PaginatedW9FormsModel](docs/A1099/V2/PaginatedW9FormsModel.md)
 - [models.PrimaryWithholdingAgent](docs/A1099/V2/PrimaryWithholdingAgent.md)
 - [models.PrimaryWithholdingAgentRequest](docs/A1099/V2/PrimaryWithholdingAgentRequest.md)
 - [models.PrimaryWithholdingAgentResponse](docs/A1099/V2/PrimaryWithholdingAgentResponse.md)
 - [models.ProblemDetails](docs/A1099/V2/ProblemDetails.md)
 - [models.StateAndLocalWithholdingRequest](docs/A1099/V2/StateAndLocalWithholdingRequest.md)
 - [models.StateAndLocalWithholdingResponse](docs/A1099/V2/StateAndLocalWithholdingResponse.md)
 - [models.StateEfileStatusDetailResponse](docs/A1099/V2/StateEfileStatusDetailResponse.md)
 - [models.StatusDetail](docs/A1099/V2/StatusDetail.md)
 - [models.SubstantialUsOwnerRequest](docs/A1099/V2/SubstantialUsOwnerRequest.md)
 - [models.SubstantialUsOwnerResponse](docs/A1099/V2/SubstantialUsOwnerResponse.md)
 - [models.TinMatchStatusResponse](docs/A1099/V2/TinMatchStatusResponse.md)
 - [models.Update1099Form200Response](docs/A1099/V2/Update1099Form200Response.md)
 - [models.ValidationErrorResponse](docs/A1099/V2/ValidationErrorResponse.md)
 - [models.W4FormDataModel](docs/A1099/V2/W4FormDataModel.md)
 - [models.W4FormRequest](docs/A1099/V2/W4FormRequest.md)
 - [models.W4FormResponse](docs/A1099/V2/W4FormResponse.md)
 - [models.W8BenEFormRequest](docs/A1099/V2/W8BenEFormRequest.md)
 - [models.W8BenEFormResponse](docs/A1099/V2/W8BenEFormResponse.md)
 - [models.W8BenESubstantialUsOwnerDataModel](docs/A1099/V2/W8BenESubstantialUsOwnerDataModel.md)
 - [models.W8BenFormDataModel](docs/A1099/V2/W8BenFormDataModel.md)
 - [models.W8BenFormRequest](docs/A1099/V2/W8BenFormRequest.md)
 - [models.W8BenFormResponse](docs/A1099/V2/W8BenFormResponse.md)
 - [models.W8BeneFormDataModel](docs/A1099/V2/W8BeneFormDataModel.md)
 - [models.W8ImyFormDataModel](docs/A1099/V2/W8ImyFormDataModel.md)
 - [models.W8ImyFormRequest](docs/A1099/V2/W8ImyFormRequest.md)
 - [models.W8ImyFormResponse](docs/A1099/V2/W8ImyFormResponse.md)
 - [models.W9FormBaseRequest](docs/A1099/V2/W9FormBaseRequest.md)
 - [models.W9FormBaseResponse](docs/A1099/V2/W9FormBaseResponse.md)
 - [models.W9FormDataModel](docs/A1099/V2/W9FormDataModel.md)
 - [models.W9FormRequest](docs/A1099/V2/W9FormRequest.md)
 - [models.W9FormResponse](docs/A1099/V2/W9FormResponse.md)
