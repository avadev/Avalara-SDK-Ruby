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
*FormsW9Api* | [**create_and_send_w9_form_email**](docs/A1099/V2/FormsW9Api.md#create_and_send_w9_form_email) | **POST** /w9/forms/$create-and-send-email | Create a minimal W9/W4/W8 form and sends the e-mail request
*FormsW9Api* | [**create_w9_form**](docs/A1099/V2/FormsW9Api.md#create_w9_form) | **POST** /w9/forms | Create a W9/W4/W8 form
*FormsW9Api* | [**delete_w9_form**](docs/A1099/V2/FormsW9Api.md#delete_w9_form) | **DELETE** /w9/forms/{id} | Delete a W9/W4/W8 form
*FormsW9Api* | [**get_w9_form**](docs/A1099/V2/FormsW9Api.md#get_w9_form) | **GET** /w9/forms/{id} | Retrieve a W9/W4/W8 form
*FormsW9Api* | [**get_w9_form_pdf**](docs/A1099/V2/FormsW9Api.md#get_w9_form_pdf) | **GET** /w9/forms/{id}/pdf | Download the PDF for a W9/W4/W8 form.
*FormsW9Api* | [**list_w9_forms**](docs/A1099/V2/FormsW9Api.md#list_w9_forms) | **GET** /w9/forms | List W9/W4/W8 forms
*FormsW9Api* | [**send_w9_form_email**](docs/A1099/V2/FormsW9Api.md#send_w9_form_email) | **POST** /w9/forms/{id}/$send-email | Send an email to the vendor/payee requesting they fill out a W9/W4/W8 form
*FormsW9Api* | [**update_w9_form**](docs/A1099/V2/FormsW9Api.md#update_w9_form) | **PUT** /w9/forms/{id} | Update a W9/W4/W8 form
*FormsW9Api* | [**upload_w9_files**](docs/A1099/V2/FormsW9Api.md#upload_w9_files) | **POST** /w9/forms/{id}/attachment | Replace the PDF file for a W9/W4/W8 form
*Issuers1099Api* | [**create_issuer**](docs/A1099/V2/Issuers1099Api.md#create_issuer) | **POST** /1099/issuers | Create an issuer
*Issuers1099Api* | [**delete_issuer**](docs/A1099/V2/Issuers1099Api.md#delete_issuer) | **DELETE** /1099/issuers/{id} | Delete an issuer
*Issuers1099Api* | [**get_issuer**](docs/A1099/V2/Issuers1099Api.md#get_issuer) | **GET** /1099/issuers/{id} | Retrieve an issuer
*Issuers1099Api* | [**get_issuers**](docs/A1099/V2/Issuers1099Api.md#get_issuers) | **GET** /1099/issuers | List issuers
*Issuers1099Api* | [**update_issuer**](docs/A1099/V2/Issuers1099Api.md#update_issuer) | **PUT** /1099/issuers/{id} | Update an issuer
*JobsApi* | [**get_job**](docs/A1099/V2/JobsApi.md#get_job) | **GET** /jobs/{id} | Retrieves information about the job

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

 - [models.CompanyBase](docs/A1099/V2/CompanyBase.md)
 - [models.CompanyRequest](docs/A1099/V2/CompanyRequest.md)
 - [models.CompanyResponse](docs/A1099/V2/CompanyResponse.md)
 - [models.CoveredIndividual](docs/A1099/V2/CoveredIndividual.md)
 - [models.CreateAndSendW9FormEmailRequest](docs/A1099/V2/CreateAndSendW9FormEmailRequest.md)
 - [models.CreateW9Form201Response](docs/A1099/V2/CreateW9Form201Response.md)
 - [models.CreateW9FormRequest](docs/A1099/V2/CreateW9FormRequest.md)
 - [models.EntryStatusResponse](docs/A1099/V2/EntryStatusResponse.md)
 - [models.ErrorResponse](docs/A1099/V2/ErrorResponse.md)
 - [models.ErrorResponseItem](docs/A1099/V2/ErrorResponseItem.md)
 - [models.Form1042S](docs/A1099/V2/Form1042S.md)
 - [models.Form1095B](docs/A1099/V2/Form1095B.md)
 - [models.Form1095C](docs/A1099/V2/Form1095C.md)
 - [models.Form1099Base](docs/A1099/V2/Form1099Base.md)
 - [models.Form1099Div](docs/A1099/V2/Form1099Div.md)
 - [models.Form1099Int](docs/A1099/V2/Form1099Int.md)
 - [models.Form1099K](docs/A1099/V2/Form1099K.md)
 - [models.Form1099ListRequest](docs/A1099/V2/Form1099ListRequest.md)
 - [models.Form1099Misc](docs/A1099/V2/Form1099Misc.md)
 - [models.Form1099Nec](docs/A1099/V2/Form1099Nec.md)
 - [models.Form1099R](docs/A1099/V2/Form1099R.md)
 - [models.Form1099StatusDetail](docs/A1099/V2/Form1099StatusDetail.md)
 - [models.Get1099Form200Response](docs/A1099/V2/Get1099Form200Response.md)
 - [models.IntermediaryOrFlowThrough](docs/A1099/V2/IntermediaryOrFlowThrough.md)
 - [models.IrsResponse](docs/A1099/V2/IrsResponse.md)
 - [models.IssuerBase](docs/A1099/V2/IssuerBase.md)
 - [models.IssuerRequest](docs/A1099/V2/IssuerRequest.md)
 - [models.IssuerResponse](docs/A1099/V2/IssuerResponse.md)
 - [models.JobResponse](docs/A1099/V2/JobResponse.md)
 - [models.OfferAndCoverage](docs/A1099/V2/OfferAndCoverage.md)
 - [models.PaginatedQueryResultModelCompanyResponse](docs/A1099/V2/PaginatedQueryResultModelCompanyResponse.md)
 - [models.PaginatedQueryResultModelForm1099Base](docs/A1099/V2/PaginatedQueryResultModelForm1099Base.md)
 - [models.PaginatedQueryResultModelIssuerResponse](docs/A1099/V2/PaginatedQueryResultModelIssuerResponse.md)
 - [models.PaginatedQueryResultModelW9FormBaseResponse](docs/A1099/V2/PaginatedQueryResultModelW9FormBaseResponse.md)
 - [models.PrimaryWithholdingAgent](docs/A1099/V2/PrimaryWithholdingAgent.md)
 - [models.StateAndLocalWithholding](docs/A1099/V2/StateAndLocalWithholding.md)
 - [models.StateEfileStatusDetail](docs/A1099/V2/StateEfileStatusDetail.md)
 - [models.SubstantialUsOwnerRequest](docs/A1099/V2/SubstantialUsOwnerRequest.md)
 - [models.SubstantialUsOwnerResponse](docs/A1099/V2/SubstantialUsOwnerResponse.md)
 - [models.TinMatchStatusResponse](docs/A1099/V2/TinMatchStatusResponse.md)
 - [models.ValidationError](docs/A1099/V2/ValidationError.md)
 - [models.W4FormMinimalRequest](docs/A1099/V2/W4FormMinimalRequest.md)
 - [models.W4FormRequest](docs/A1099/V2/W4FormRequest.md)
 - [models.W4FormResponse](docs/A1099/V2/W4FormResponse.md)
 - [models.W8BenEFormMinimalRequest](docs/A1099/V2/W8BenEFormMinimalRequest.md)
 - [models.W8BenEFormRequest](docs/A1099/V2/W8BenEFormRequest.md)
 - [models.W8BenEFormResponse](docs/A1099/V2/W8BenEFormResponse.md)
 - [models.W8BenFormMinimalRequest](docs/A1099/V2/W8BenFormMinimalRequest.md)
 - [models.W8BenFormRequest](docs/A1099/V2/W8BenFormRequest.md)
 - [models.W8BenFormResponse](docs/A1099/V2/W8BenFormResponse.md)
 - [models.W8ImyFormMinimalRequest](docs/A1099/V2/W8ImyFormMinimalRequest.md)
 - [models.W8ImyFormRequest](docs/A1099/V2/W8ImyFormRequest.md)
 - [models.W8ImyFormResponse](docs/A1099/V2/W8ImyFormResponse.md)
 - [models.W9FormBaseMinimalRequest](docs/A1099/V2/W9FormBaseMinimalRequest.md)
 - [models.W9FormBaseRequest](docs/A1099/V2/W9FormBaseRequest.md)
 - [models.W9FormBaseResponse](docs/A1099/V2/W9FormBaseResponse.md)
 - [models.W9FormMinimalRequest](docs/A1099/V2/W9FormMinimalRequest.md)
 - [models.W9FormRequest](docs/A1099/V2/W9FormRequest.md)
 - [models.W9FormResponse](docs/A1099/V2/W9FormResponse.md)
