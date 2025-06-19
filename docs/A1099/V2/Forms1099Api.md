# AvalaraSdk::A1099::V2::Forms1099Api

All URIs are relative to *https://api-ava1099.eta.sbx.us-east-1.aws.avalara.io/avalara1099*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**bulk_upsert1099_forms**](Forms1099Api.md#bulk_upsert1099_forms) | **POST** /1099/forms/$bulk-upsert | Creates or updates multiple 1099 forms. |
| [**create1099_form**](Forms1099Api.md#create1099_form) | **POST** /1099/forms | Creates a 1099 form. |
| [**delete1099_form**](Forms1099Api.md#delete1099_form) | **DELETE** /1099/forms/{id} | Deletes a 1099 form. |
| [**get1099_form**](Forms1099Api.md#get1099_form) | **GET** /1099/forms/{id} | Retrieves a 1099 form. |
| [**get1099_form_pdf**](Forms1099Api.md#get1099_form_pdf) | **GET** /1099/forms/{id}/pdf | Retrieves the PDF file for a single 1099 by form id. |
| [**list1099_forms**](Forms1099Api.md#list1099_forms) | **GET** /1099/forms | Retrieves a list of 1099 forms based on query parameters. |
| [**update1099_form**](Forms1099Api.md#update1099_form) | **PUT** /1099/forms/{id} | Updates a 1099 form. |


## bulk_upsert1099_forms

> <Form1099ProccessResult> bulk_upsert1099_forms(avalara_version, x_correlation_id, opts)

Creates or updates multiple 1099 forms.

This endpoint allows you to create or update multiple 1099 forms.  You can use one of the following payload structures:                **Form 1099-MISC:**  ```json  {     \"formType\": \"1099-MISC\",     \"forms\": [         {             \"IssuerId\": \"123456\",             \"IssuerReferenceId\": \"REF123\",             \"IssuerTin\": \"12-3456789\",             \"TaxYear\": 2023,             \"ReferenceId\": \"FORM123456\",             \"RecipientName\": \"John Doe\",             \"RecipientTin\": \"987-65-4321\",             \"TinType\": 1,             \"RecipientSecondName\": \"Jane Doe\",             \"StreetAddress\": \"123 Main Street\",             \"StreetAddressLine2\": \"Apt 4B\",             \"City\": \"New York\",             \"State\": \"NY\",             \"Zip\": \"10001\",             \"RecipientEmail\": \"john.doe@email.com\",             \"AccountNumber\": \"ACC123456\",             \"OfficeCode\": \"NYC01\",             \"SecondTinNotice\": false,             \"RecipientNonUsProvince\": \"\",             \"CountryCode\": \"US\",             \"Rents\": 12000.00,             \"Royalties\": 5000.00,             \"OtherIncome\": 3000.00,             \"FishingBoatProceeds\": 0.00,             \"MedicalHealthCarePayments\": 15000.00,             \"SubstitutePayments\": 1000.00,             \"CropInsuranceProceeds\": 0.00,             \"GrossProceedsPaidToAttorney\": 7500.00,             \"FishPurchasedForResale\": 0.00,             \"FedIncomeTaxWithheld\": 5000.00,             \"Section409ADeferrals\": 0.00,             \"ExcessGoldenParachutePayments\": 0.00,             \"NonqualifiedDeferredCompensation\": 0.00,             \"PayerMadeDirectSales\": false,             \"FatcaFilingRequirement\": false,             \"StateAndLocalWithholding\": {               \"StateTaxWithheld\": 2500.00,               \"LocalTaxWithheld\": 1000.00,               \"State\": \"NY\",               \"StateIdNumber\": \"NY123456\",               \"Locality\": \"New York City\",               \"StateIncome\": 35000.00,               \"LocalIncome\": 35000.00             }         }     ]  }  ```                **Form 1099-NEC:**  ```json  {    \"formType\": \"1099-NEC\",    \"forms\": [      {        \"issuerID\": \"180337282\",        \"issuerReferenceId\": \"ISS123\",        \"issuerTin\": \"12-3000000\",        \"taxYear\": 2024,        \"referenceID\": \"REF-002\",        \"recipientName\": \"Jane Smith\",        \"recipientSecondName\": \"\",        \"recipientTin\": \"987-65-4321\",        \"tinType\": 1,        \"streetAddress\": \"123 Center St\",        \"streetAddressLine2\": \"\",        \"city\": \"Santa Monica\",        \"state\": \"CA\",        \"zip\": \"90401\",        \"countryCode\": \"US\",        \"recipientNonUsProvince\": \"\",        \"recipientEmail\": \"\",        \"accountNumber\": \"\",        \"officeCode\": \"\",        \"secondTinNotice\": false,        \"nonemployeeCompensation\": 123.45,        \"payerMadeDirectSales\": false,        \"federalIncomeTaxWithheld\": 12.34,        \"stateAndLocalWithholding\": {          \"state\": \"CA\",          \"stateIdNumber\": \"123123123\"          \"stateIncome\": 123.45,          \"stateTaxWithheld\": 12.34,          \"locality\": \"Santa Monica\",          \"localityIdNumber\": \"456456\",          \"localTaxWithheld\": 12.34          \"localIncome\": 50000.00         },        \"federalEFile\": true,        \"postalMail\": true,        \"stateEFile\": true,        \"tinMatch\": true,        \"addressVerification\": true       }     ]   }  ```  For the full version of the payload and its schema details, refer to the Swagger schemas section.

### Examples

```ruby
require 'time'
require 'avalara_sdk'
# setup authorization
AvalaraSdk::A1099::V2.configure do |config|
  # See Documentation for Authorization section in main README.md for more auth examples.
  config.bearer_token='<Your Avalara Identity Access Token>'
  config.environment='sandbox'
  config.app_name='testApp'
  config.app_version='1.2.3'
  config.machine_name='testMachine'
end

api_client = AvalaraSdk::ApiClient.new config
api_instance = AvalaraSdk::A1099::V2::Forms1099Api.new api_client

avalara_version = '2.0' # String | API version
x_correlation_id = '1ded0db3-4f25-4b15-b159-6d1467e6faac' # String | Unique correlation Id in a GUID format
opts = {
  dry_run: true, # Boolean | 
  bulk_upsert1099_forms_request: AvalaraSdk::A1099::V2::Form1099DivList.new # BulkUpsert1099FormsRequest | 
}

begin
  # Creates or updates multiple 1099 forms.
  result = api_instance.bulk_upsert1099_forms(avalara_version, x_correlation_id, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling Forms1099Api->bulk_upsert1099_forms: #{e}"
end
```

#### Using the bulk_upsert1099_forms_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Form1099ProccessResult>, Integer, Hash)> bulk_upsert1099_forms_with_http_info(avalara_version, x_correlation_id, opts)

```ruby
begin
  # Creates or updates multiple 1099 forms.
  data, status_code, headers = api_instance.bulk_upsert1099_forms_with_http_info(avalara_version, x_correlation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Form1099ProccessResult>
rescue AvalaraSdk::A1099::V2::ApiError => e
  puts "Error when calling Forms1099Api->bulk_upsert1099_forms_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avalara_version** | **String** | API version |  |
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format |  |
| **dry_run** | **Boolean** |  | [optional][default to false] |
| **bulk_upsert1099_forms_request** | [**BulkUpsert1099FormsRequest**](BulkUpsert1099FormsRequest.md) |  | [optional] |

### Return type

[**Form1099ProccessResult**](Form1099ProccessResult.md)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: application/json


## create1099_form

> <FormResponseBase> create1099_form(avalara_version, x_correlation_id, opts)

Creates a 1099 form.

### Examples

```ruby
require 'time'
require 'avalara_sdk'
# setup authorization
AvalaraSdk::A1099::V2.configure do |config|
  # See Documentation for Authorization section in main README.md for more auth examples.
  config.bearer_token='<Your Avalara Identity Access Token>'
  config.environment='sandbox'
  config.app_name='testApp'
  config.app_version='1.2.3'
  config.machine_name='testMachine'
end

api_client = AvalaraSdk::ApiClient.new config
api_instance = AvalaraSdk::A1099::V2::Forms1099Api.new api_client

avalara_version = '2.0' # String | API version
x_correlation_id = '35eadeb5-51d8-4eb3-9442-90086637d517' # String | Unique correlation Id in a GUID format
opts = {
  i_create_form1099_request: AvalaraSdk::A1099::V2::Form1099DivRequest.new # ICreateForm1099Request | 
}

begin
  # Creates a 1099 form.
  result = api_instance.create1099_form(avalara_version, x_correlation_id, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling Forms1099Api->create1099_form: #{e}"
end
```

#### Using the create1099_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FormResponseBase>, Integer, Hash)> create1099_form_with_http_info(avalara_version, x_correlation_id, opts)

```ruby
begin
  # Creates a 1099 form.
  data, status_code, headers = api_instance.create1099_form_with_http_info(avalara_version, x_correlation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FormResponseBase>
rescue AvalaraSdk::A1099::V2::ApiError => e
  puts "Error when calling Forms1099Api->create1099_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avalara_version** | **String** | API version |  |
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format |  |
| **i_create_form1099_request** | [**ICreateForm1099Request**](ICreateForm1099Request.md) |  | [optional] |

### Return type

[**FormResponseBase**](FormResponseBase.md)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: application/json


## delete1099_form

> delete1099_form(id, avalara_version, x_correlation_id)

Deletes a 1099 form.

### Examples

```ruby
require 'time'
require 'avalara_sdk'
# setup authorization
AvalaraSdk::A1099::V2.configure do |config|
  # See Documentation for Authorization section in main README.md for more auth examples.
  config.bearer_token='<Your Avalara Identity Access Token>'
  config.environment='sandbox'
  config.app_name='testApp'
  config.app_version='1.2.3'
  config.machine_name='testMachine'
end

api_client = AvalaraSdk::ApiClient.new config
api_instance = AvalaraSdk::A1099::V2::Forms1099Api.new api_client

id = 'id_example' # String | The unique identifier of the desired form to delete.
avalara_version = '2.0' # String | API version
x_correlation_id = 'edf4d49e-9ce1-40be-ae32-9da91e5fcb39' # String | Unique correlation Id in a GUID format

begin
  # Deletes a 1099 form.
  api_instance.delete1099_form(id, avalara_version, x_correlation_id)
rescue AvalaraSdk::ApiError => e
  puts "Error when calling Forms1099Api->delete1099_form: #{e}"
end
```

#### Using the delete1099_form_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete1099_form_with_http_info(id, avalara_version, x_correlation_id)

```ruby
begin
  # Deletes a 1099 form.
  data, status_code, headers = api_instance.delete1099_form_with_http_info(id, avalara_version, x_correlation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AvalaraSdk::A1099::V2::ApiError => e
  puts "Error when calling Forms1099Api->delete1099_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the desired form to delete. |  |
| **avalara_version** | **String** | API version |  |
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format |  |

### Return type

nil (empty response body)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get1099_form

> <FormResponseBase> get1099_form(id, avalara_version, x_correlation_id)

Retrieves a 1099 form.

### Examples

```ruby
require 'time'
require 'avalara_sdk'
# setup authorization
AvalaraSdk::A1099::V2.configure do |config|
  # See Documentation for Authorization section in main README.md for more auth examples.
  config.bearer_token='<Your Avalara Identity Access Token>'
  config.environment='sandbox'
  config.app_name='testApp'
  config.app_version='1.2.3'
  config.machine_name='testMachine'
end

api_client = AvalaraSdk::ApiClient.new config
api_instance = AvalaraSdk::A1099::V2::Forms1099Api.new api_client

id = 'id_example' # String | 
avalara_version = '2.0' # String | API version
x_correlation_id = 'c9fe4a5f-69af-4b47-9ad3-f483a9328e4e' # String | Unique correlation Id in a GUID format

begin
  # Retrieves a 1099 form.
  result = api_instance.get1099_form(id, avalara_version, x_correlation_id)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling Forms1099Api->get1099_form: #{e}"
end
```

#### Using the get1099_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FormResponseBase>, Integer, Hash)> get1099_form_with_http_info(id, avalara_version, x_correlation_id)

```ruby
begin
  # Retrieves a 1099 form.
  data, status_code, headers = api_instance.get1099_form_with_http_info(id, avalara_version, x_correlation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FormResponseBase>
rescue AvalaraSdk::A1099::V2::ApiError => e
  puts "Error when calling Forms1099Api->get1099_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **avalara_version** | **String** | API version |  |
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format |  |

### Return type

[**FormResponseBase**](FormResponseBase.md)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get1099_form_pdf

> <FormResponseBase> get1099_form_pdf(id, avalara_version, x_correlation_id, opts)

Retrieves the PDF file for a single 1099 by form id.

### Examples

```ruby
require 'time'
require 'avalara_sdk'
# setup authorization
AvalaraSdk::A1099::V2.configure do |config|
  # See Documentation for Authorization section in main README.md for more auth examples.
  config.bearer_token='<Your Avalara Identity Access Token>'
  config.environment='sandbox'
  config.app_name='testApp'
  config.app_version='1.2.3'
  config.machine_name='testMachine'
end

api_client = AvalaraSdk::ApiClient.new config
api_instance = AvalaraSdk::A1099::V2::Forms1099Api.new api_client

id = 'id_example' # String | 
avalara_version = '2.0' # String | API version
x_correlation_id = '314852b3-0f9f-42c3-aafe-f294a7c7fe12' # String | Unique correlation Id in a GUID format
opts = {
  mark_edelivered: true # Boolean | The parameter for marked e-delivered
}

begin
  # Retrieves the PDF file for a single 1099 by form id.
  result = api_instance.get1099_form_pdf(id, avalara_version, x_correlation_id, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling Forms1099Api->get1099_form_pdf: #{e}"
end
```

#### Using the get1099_form_pdf_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FormResponseBase>, Integer, Hash)> get1099_form_pdf_with_http_info(id, avalara_version, x_correlation_id, opts)

```ruby
begin
  # Retrieves the PDF file for a single 1099 by form id.
  data, status_code, headers = api_instance.get1099_form_pdf_with_http_info(id, avalara_version, x_correlation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FormResponseBase>
rescue AvalaraSdk::A1099::V2::ApiError => e
  puts "Error when calling Forms1099Api->get1099_form_pdf_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **avalara_version** | **String** | API version |  |
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format |  |
| **mark_edelivered** | **Boolean** | The parameter for marked e-delivered | [optional] |

### Return type

[**FormResponseBase**](FormResponseBase.md)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list1099_forms

> <Form1099List> list1099_forms(avalara_version, x_correlation_id, opts)

Retrieves a list of 1099 forms based on query parameters.

### Examples

```ruby
require 'time'
require 'avalara_sdk'
# setup authorization
AvalaraSdk::A1099::V2.configure do |config|
  # See Documentation for Authorization section in main README.md for more auth examples.
  config.bearer_token='<Your Avalara Identity Access Token>'
  config.environment='sandbox'
  config.app_name='testApp'
  config.app_version='1.2.3'
  config.machine_name='testMachine'
end

api_client = AvalaraSdk::ApiClient.new config
api_instance = AvalaraSdk::A1099::V2::Forms1099Api.new api_client

avalara_version = '2.0' # String | API version
x_correlation_id = 'f37c790b-837b-4b6e-b884-0c0f7aae2ea8' # String | Unique correlation Id in a GUID format
opts = {
  filter: 'filter_example', # String | A filter statement to identify specific records to retrieve. For more information on filtering, see <a href=\"https://developer.avalara.com/avatax/filtering-in-rest/\">Filtering in REST</a>.    Collections support filtering only on certain fields. An attempt to filter on an unsupported field will receive a 400 Bad Request response.    Supported filtering fields are as follows:        issuerId      issuerReferenceId      taxYear      addressVerificationStatus - possible values are: unknown, pending, failed, incomplete, unchanged, verified      createdAt      edeliveryStatus - possible values are: sent, unscheduled, bad_verify, bad_verify_limit, scheduled, bounced, accepted      email      federalEfileStatus - possible values are: unscheduled, scheduled, sent, corrected_scheduled, accepted, corrected, corrected_accepted, held      firstPayeeName      mailStatus - possible values are: sent, unscheduled, pending, delivered      referenceId      tinMatchStatus - possible values are: none, pending, matched, failed      type - possible values are: 940, 941, 943, 944, 945, 1042, 1042-S, 1095-B, 1095-C, 1097-BTC, 1098, 1098-C, 1098-E, 1098-Q, 1098-T, 3921, 3922, 5498, 5498-ESA, 5498-SA, 1099-MISC, 1099-A, 1099-B, 1099-C, 1099-CAP, 1099-DIV, 1099-G, 1099-INT, 1099-K, 1099-LS, 1099-LTC, 1099-NEC, 1099-OID, 1099-PATR, 1099-Q, 1099-R, 1099-S, 1099-SA, T4A, W-2, W-2G, 1099-HC      updatedAt      validity - possible values are: true, false
  top: 56, # Integer | If nonzero, return no more than this number of results.     Used with skip to provide pagination for large datasets.     Unless otherwise specified, the maximum number of records that can be returned from an API call is 1,000 records.
  skip: 56, # Integer | If nonzero, skip this number of results before returning data. Used with top to provide pagination for large datasets.
  order_by: 'order_by_example' # String | A comma separated list of sort statements in the format (fieldname) [ASC|DESC], for example issuerReferenceId ASC.    Supported sorting fields are:         issuerReferenceId       taxYear       createdAt       firstPayeeName      updatedAt
}

begin
  # Retrieves a list of 1099 forms based on query parameters.
  result = api_instance.list1099_forms(avalara_version, x_correlation_id, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling Forms1099Api->list1099_forms: #{e}"
end
```

#### Using the list1099_forms_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Form1099List>, Integer, Hash)> list1099_forms_with_http_info(avalara_version, x_correlation_id, opts)

```ruby
begin
  # Retrieves a list of 1099 forms based on query parameters.
  data, status_code, headers = api_instance.list1099_forms_with_http_info(avalara_version, x_correlation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Form1099List>
rescue AvalaraSdk::A1099::V2::ApiError => e
  puts "Error when calling Forms1099Api->list1099_forms_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avalara_version** | **String** | API version |  |
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format |  |
| **filter** | **String** | A filter statement to identify specific records to retrieve. For more information on filtering, see &lt;a href&#x3D;\&quot;https://developer.avalara.com/avatax/filtering-in-rest/\&quot;&gt;Filtering in REST&lt;/a&gt;.    Collections support filtering only on certain fields. An attempt to filter on an unsupported field will receive a 400 Bad Request response.    Supported filtering fields are as follows:        issuerId      issuerReferenceId      taxYear      addressVerificationStatus - possible values are: unknown, pending, failed, incomplete, unchanged, verified      createdAt      edeliveryStatus - possible values are: sent, unscheduled, bad_verify, bad_verify_limit, scheduled, bounced, accepted      email      federalEfileStatus - possible values are: unscheduled, scheduled, sent, corrected_scheduled, accepted, corrected, corrected_accepted, held      firstPayeeName      mailStatus - possible values are: sent, unscheduled, pending, delivered      referenceId      tinMatchStatus - possible values are: none, pending, matched, failed      type - possible values are: 940, 941, 943, 944, 945, 1042, 1042-S, 1095-B, 1095-C, 1097-BTC, 1098, 1098-C, 1098-E, 1098-Q, 1098-T, 3921, 3922, 5498, 5498-ESA, 5498-SA, 1099-MISC, 1099-A, 1099-B, 1099-C, 1099-CAP, 1099-DIV, 1099-G, 1099-INT, 1099-K, 1099-LS, 1099-LTC, 1099-NEC, 1099-OID, 1099-PATR, 1099-Q, 1099-R, 1099-S, 1099-SA, T4A, W-2, W-2G, 1099-HC      updatedAt      validity - possible values are: true, false | [optional] |
| **top** | **Integer** | If nonzero, return no more than this number of results.     Used with skip to provide pagination for large datasets.     Unless otherwise specified, the maximum number of records that can be returned from an API call is 1,000 records. | [optional][default to 10] |
| **skip** | **Integer** | If nonzero, skip this number of results before returning data. Used with top to provide pagination for large datasets. | [optional][default to 0] |
| **order_by** | **String** | A comma separated list of sort statements in the format (fieldname) [ASC|DESC], for example issuerReferenceId ASC.    Supported sorting fields are:         issuerReferenceId       taxYear       createdAt       firstPayeeName      updatedAt | [optional] |

### Return type

[**Form1099List**](Form1099List.md)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update1099_form

> <FormResponseBase> update1099_form(id, avalara_version, x_correlation_id, opts)

Updates a 1099 form.

### Examples

```ruby
require 'time'
require 'avalara_sdk'
# setup authorization
AvalaraSdk::A1099::V2.configure do |config|
  # See Documentation for Authorization section in main README.md for more auth examples.
  config.bearer_token='<Your Avalara Identity Access Token>'
  config.environment='sandbox'
  config.app_name='testApp'
  config.app_version='1.2.3'
  config.machine_name='testMachine'
end

api_client = AvalaraSdk::ApiClient.new config
api_instance = AvalaraSdk::A1099::V2::Forms1099Api.new api_client

id = 'id_example' # String | 
avalara_version = '2.0' # String | API version
x_correlation_id = 'fb554f8c-95f6-4194-9043-900ae946030c' # String | Unique correlation Id in a GUID format
opts = {
  i_update_form1099_request: AvalaraSdk::A1099::V2::Form1099DivRequest.new # IUpdateForm1099Request | 
}

begin
  # Updates a 1099 form.
  result = api_instance.update1099_form(id, avalara_version, x_correlation_id, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling Forms1099Api->update1099_form: #{e}"
end
```

#### Using the update1099_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FormResponseBase>, Integer, Hash)> update1099_form_with_http_info(id, avalara_version, x_correlation_id, opts)

```ruby
begin
  # Updates a 1099 form.
  data, status_code, headers = api_instance.update1099_form_with_http_info(id, avalara_version, x_correlation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FormResponseBase>
rescue AvalaraSdk::A1099::V2::ApiError => e
  puts "Error when calling Forms1099Api->update1099_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **avalara_version** | **String** | API version |  |
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format |  |
| **i_update_form1099_request** | [**IUpdateForm1099Request**](IUpdateForm1099Request.md) |  | [optional] |

### Return type

[**FormResponseBase**](FormResponseBase.md)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: application/json

