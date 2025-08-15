# AvalaraSdk::A1099::V2::Forms1099Api

All URIs are relative to *https://api-ava1099.eta.sbx.us-east-1.aws.avalara.io/avalara1099*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**bulk_upsert1099_forms**](Forms1099Api.md#bulk_upsert1099_forms) | **POST** /1099/forms/$bulk-upsert | Create or update multiple 1099/1095/W2/1042S forms |
| [**create1099_form**](Forms1099Api.md#create1099_form) | **POST** /1099/forms | Create a 1099/1095/W2/1042S form |
| [**delete1099_form**](Forms1099Api.md#delete1099_form) | **DELETE** /1099/forms/{id} | Delete a 1099/1095/W2/1042S form |
| [**get1099_form**](Forms1099Api.md#get1099_form) | **GET** /1099/forms/{id} | Retrieve a 1099/1095/W2/1042S form |
| [**get1099_form_pdf**](Forms1099Api.md#get1099_form_pdf) | **GET** /1099/forms/{id}/pdf | Retrieve the PDF file for a 1099/1095/W2/1042S form |
| [**list1099_forms**](Forms1099Api.md#list1099_forms) | **GET** /1099/forms | List 1099/1095/W2/1042S forms |
| [**update1099_form**](Forms1099Api.md#update1099_form) | **PUT** /1099/forms/{id} | Update a 1099/1095/W2/1042S form |


## bulk_upsert1099_forms

> <Form1099ProccessResult> bulk_upsert1099_forms(avalara_version, opts)

Create or update multiple 1099/1095/W2/1042S forms

This endpoint allows you to create or update multiple 1099/1095/W2/1042S forms.  You can use one of the following payload structures:                **Form 1099-MISC:**  ```json  {     \"formType\": \"1099-MISC\",     \"forms\": [         {             \"IssuerId\": \"123456\",             \"IssuerReferenceId\": \"REF123\",             \"IssuerTin\": \"12-3456789\",             \"TaxYear\": 2023,             \"ReferenceId\": \"FORM123456\",             \"RecipientName\": \"John Doe\",             \"RecipientTin\": \"587-65-4321\",             \"TinType\": \"SSN\",             \"RecipientSecondName\": \"Jane Doe\",             \"Address\": \"123 Main Street\",             \"Address2\": \"Apt 4B\",             \"City\": \"New York\",             \"State\": \"NY\",             \"Zip\": \"10001\",             \"Email\": \"john.doe@email.com\",             \"AccountNumber\": \"ACC123456\",             \"OfficeCode\": \"NYC01\",             \"SecondTinNotice\": false,             \"NonUsProvince\": \"\",             \"CountryCode\": \"US\",             \"Rents\": 12000.00,             \"Royalties\": 5000.00,             \"OtherIncome\": 3000.00,             \"FishingBoatProceeds\": 0.00,             \"MedicalAndHealthCarePayments\": 15000.00,             \"SubstitutePayments\": 1000.00,             \"CropInsuranceProceeds\": 0.00,             \"GrossProceedsPaidToAttorney\": 7500.00,             \"FishPurchasedForResale\": 0.00,             \"FedIncomeTaxWithheld\": 5000.00,             \"Section409ADeferrals\": 0.00,             \"ExcessGoldenParachutePayments\": 0.00,             \"NonqualifiedDeferredCompensation\": 0.00,             \"DirectSalesIndicator\": false,             \"FatcaFilingRequirement\": false,             \"StateAndLocalWithholding\": {               \"StateTaxWithheld\": 2500.00,               \"LocalTaxWithheld\": 1000.00,               \"State\": \"NY\",               \"StateIdNumber\": \"NY123456\",               \"Locality\": \"New York City\",               \"StateIncome\": 35000.00,               \"LocalIncome\": 35000.00             }         }     ]  }  ```                **Form 1099-NEC:**  ```json  {    \"formType\": \"1099-NEC\",    \"forms\": [      {        \"issuerID\": \"180337282\",        \"issuerReferenceId\": \"ISS123\",        \"issuerTin\": \"12-3000000\",        \"taxYear\": 2024,        \"referenceID\": \"REF-002\",        \"recipientName\": \"Jane Smith\",        \"recipientSecondName\": \"\",        \"recipientTin\": \"587-65-4321\",        \"tinType\": \"SSN\",        \"address\": \"123 Center St\",        \"address2\": \"\",        \"city\": \"Santa Monica\",        \"state\": \"CA\",        \"zip\": \"90401\",        \"countryCode\": \"US\",        \"nonUsProvince\": \"\",        \"email\": \"\",        \"accountNumber\": \"\",        \"officeCode\": \"\",        \"secondTinNotice\": false,        \"nonemployeeCompensation\": 123.45,        \"directSalesIndicator\": false,        \"federalIncomeTaxWithheld\": 12.34,        \"stateAndLocalWithholding\": {          \"state\": \"CA\",          \"stateIdNumber\": \"123123123\",          \"stateIncome\": 123.45,          \"stateTaxWithheld\": 12.34,          \"locality\": \"Santa Monica\",          \"localityIdNumber\": \"456456\",          \"localTaxWithheld\": 12.34,          \"localIncome\": 50000.00         },        \"federalEFile\": true,        \"postalMail\": true,        \"stateEFile\": true,        \"tinMatch\": true,        \"addressVerification\": true       }     ]   }  ```  For the full version of the payload and its schema details, refer to the Swagger schemas section.

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

avalara_version = '2.0.0' # String | API version
opts = {
  dry_run: true, # Boolean | 
  x_correlation_id: 'fc005c04-52f7-44d6-bf16-6551603a8324', # String | Unique correlation Id in a GUID format
  x_avalara_client: 'Swagger UI; 22.1.0', # String | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .
  bulk_upsert1099_forms_request: AvalaraSdk::A1099::V2::Form1042SList.new # BulkUpsert1099FormsRequest | 
}

begin
  # Create or update multiple 1099/1095/W2/1042S forms
  result = api_instance.bulk_upsert1099_forms(avalara_version, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling Forms1099Api->bulk_upsert1099_forms: #{e}"
end
```

#### Using the bulk_upsert1099_forms_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Form1099ProccessResult>, Integer, Hash)> bulk_upsert1099_forms_with_http_info(avalara_version, opts)

```ruby
begin
  # Create or update multiple 1099/1095/W2/1042S forms
  data, status_code, headers = api_instance.bulk_upsert1099_forms_with_http_info(avalara_version, opts)
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
| **dry_run** | **Boolean** |  | [optional][default to false] |
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format | [optional] |
| **x_avalara_client** | **String** | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) . | [optional] |
| **bulk_upsert1099_forms_request** | [**BulkUpsert1099FormsRequest**](BulkUpsert1099FormsRequest.md) |  | [optional] |

### Return type

[**Form1099ProccessResult**](Form1099ProccessResult.md)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: application/json


## create1099_form

> <Create1099Form201Response> create1099_form(avalara_version, opts)

Create a 1099/1095/W2/1042S form

Create a 1099/1095/W2/1042S form.

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

avalara_version = '2.0.0' # String | API version
opts = {
  x_correlation_id: '13eb4eb0-0e7d-41e3-adf3-61b131c1a92c', # String | Unique correlation Id in a GUID format
  x_avalara_client: 'Swagger UI; 22.1.0', # String | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .
  i_create_form1099_request: AvalaraSdk::A1099::V2::Form1099DivRequest.new # ICreateForm1099Request | 
}

begin
  # Create a 1099/1095/W2/1042S form
  result = api_instance.create1099_form(avalara_version, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling Forms1099Api->create1099_form: #{e}"
end
```

#### Using the create1099_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Create1099Form201Response>, Integer, Hash)> create1099_form_with_http_info(avalara_version, opts)

```ruby
begin
  # Create a 1099/1095/W2/1042S form
  data, status_code, headers = api_instance.create1099_form_with_http_info(avalara_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Create1099Form201Response>
rescue AvalaraSdk::A1099::V2::ApiError => e
  puts "Error when calling Forms1099Api->create1099_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avalara_version** | **String** | API version |  |
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format | [optional] |
| **x_avalara_client** | **String** | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) . | [optional] |
| **i_create_form1099_request** | [**ICreateForm1099Request**](ICreateForm1099Request.md) |  | [optional] |

### Return type

[**Create1099Form201Response**](Create1099Form201Response.md)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: application/json


## delete1099_form

> delete1099_form(id, avalara_version, opts)

Delete a 1099/1095/W2/1042S form

Delete a 1099/1095/W2/1042S form.

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
avalara_version = '2.0.0' # String | API version
opts = {
  x_correlation_id: '2bcc9cf0-9638-46d5-a792-be61566e0651', # String | Unique correlation Id in a GUID format
  x_avalara_client: 'Swagger UI; 22.1.0' # String | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .
}

begin
  # Delete a 1099/1095/W2/1042S form
  api_instance.delete1099_form(id, avalara_version, opts)
rescue AvalaraSdk::ApiError => e
  puts "Error when calling Forms1099Api->delete1099_form: #{e}"
end
```

#### Using the delete1099_form_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete1099_form_with_http_info(id, avalara_version, opts)

```ruby
begin
  # Delete a 1099/1095/W2/1042S form
  data, status_code, headers = api_instance.delete1099_form_with_http_info(id, avalara_version, opts)
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
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format | [optional] |
| **x_avalara_client** | **String** | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) . | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get1099_form

> <Get1099Form200Response> get1099_form(id, avalara_version, opts)

Retrieve a 1099/1095/W2/1042S form

Retrieve a 1099/1095/W2/1042S form.

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
avalara_version = '2.0.0' # String | API version
opts = {
  x_correlation_id: '6e842a03-8b64-4b02-8c5e-7073bf4e8a8c', # String | Unique correlation Id in a GUID format
  x_avalara_client: 'Swagger UI; 22.1.0' # String | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .
}

begin
  # Retrieve a 1099/1095/W2/1042S form
  result = api_instance.get1099_form(id, avalara_version, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling Forms1099Api->get1099_form: #{e}"
end
```

#### Using the get1099_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get1099Form200Response>, Integer, Hash)> get1099_form_with_http_info(id, avalara_version, opts)

```ruby
begin
  # Retrieve a 1099/1095/W2/1042S form
  data, status_code, headers = api_instance.get1099_form_with_http_info(id, avalara_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get1099Form200Response>
rescue AvalaraSdk::A1099::V2::ApiError => e
  puts "Error when calling Forms1099Api->get1099_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **avalara_version** | **String** | API version |  |
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format | [optional] |
| **x_avalara_client** | **String** | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) . | [optional] |

### Return type

[**Get1099Form200Response**](Get1099Form200Response.md)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get1099_form_pdf

> File get1099_form_pdf(id, avalara_version, opts)

Retrieve the PDF file for a 1099/1095/W2/1042S form

Retrieve the PDF file for a 1099/1095/W2/1042S form.

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

id = 'id_example' # String | The ID of the form
avalara_version = '2.0.0' # String | API version
opts = {
  mark_edelivered: true, # Boolean | Optional boolean that if set indicates that the form should be marked as having been successfully edelivered
  x_correlation_id: '7b4aa70b-3a10-4fa0-bf19-7592170409b7', # String | Unique correlation Id in a GUID format
  x_avalara_client: 'Swagger UI; 22.1.0' # String | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .
}

begin
  # Retrieve the PDF file for a 1099/1095/W2/1042S form
  result = api_instance.get1099_form_pdf(id, avalara_version, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling Forms1099Api->get1099_form_pdf: #{e}"
end
```

#### Using the get1099_form_pdf_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> get1099_form_pdf_with_http_info(id, avalara_version, opts)

```ruby
begin
  # Retrieve the PDF file for a 1099/1095/W2/1042S form
  data, status_code, headers = api_instance.get1099_form_pdf_with_http_info(id, avalara_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue AvalaraSdk::A1099::V2::ApiError => e
  puts "Error when calling Forms1099Api->get1099_form_pdf_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the form |  |
| **avalara_version** | **String** | API version |  |
| **mark_edelivered** | **Boolean** | Optional boolean that if set indicates that the form should be marked as having been successfully edelivered | [optional] |
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format | [optional] |
| **x_avalara_client** | **String** | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) . | [optional] |

### Return type

**File**

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/pdf, application/json


## list1099_forms

> <Form1099ListResponse> list1099_forms(avalara_version, opts)

List 1099/1095/W2/1042S forms

List 1099/1095/W2/1042S forms. Filterable fields are name, referenceId and taxYear.

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

avalara_version = '2.0.0' # String | API version
opts = {
  filter: 'issuerId eq 884781823', # String | A filter statement to identify specific records to retrieve. For more information on filtering, see <a href=\"https://developer.avalara.com/avatax/filtering-in-rest/\">Filtering in REST</a>.    Collections support filtering only on certain fields. An attempt to filter on an unsupported field will receive a 400 Bad Request response.    Supported filtering fields are as follows:        issuerId      issuerReferenceId      taxYear      addressVerificationStatus - possible values are: unknown, pending, failed, incomplete, unchanged, verified      createdAt      edeliveryStatus - possible values are: sent, unscheduled, bad_verify, bad_verify_limit, scheduled, bounced, accepted      email      federalEfileStatus - possible values are: unscheduled, scheduled, sent, corrected_scheduled, accepted, corrected, corrected_accepted, held      recipientName      mailStatus - possible values are: sent, unscheduled, pending, delivered      referenceId      tinMatchStatus - possible values are: none, pending, matched, failed      type - possible values are: 940, 941, 943, 944, 945, 1042, 1042-S, 1095-B, 1095-C, 1097-BTC, 1098, 1098-C, 1098-E, 1098-Q, 1098-T, 3921, 3922, 5498, 5498-ESA, 5498-SA, 1099-MISC, 1099-A, 1099-B, 1099-C, 1099-CAP, 1099-DIV, 1099-G, 1099-INT, 1099-K, 1099-LS, 1099-LTC, 1099-NEC, 1099-OID, 1099-PATR, 1099-Q, 1099-R, 1099-S, 1099-SA, T4A, W-2, W-2G, 1099-HC      updatedAt      validity - possible values are: true, false
  top: 56, # Integer | If nonzero, return no more than this number of results.     Used with skip to provide pagination for large datasets.     Unless otherwise specified, the maximum number of records that can be returned from an API call is 1,000 records.
  skip: 56, # Integer | If nonzero, skip this number of results before returning data. Used with top to provide pagination for large datasets.
  order_by: 'order_by_example', # String | A comma separated list of sort statements in the format (fieldname) [ASC|DESC], for example issuerReferenceId ASC.    Supported sorting fields are:         issuerReferenceId       taxYear       createdAt       recipientName      updatedAt
  x_correlation_id: '7766bce5-4834-4907-81e9-dd0fd6c13079', # String | Unique correlation Id in a GUID format
  x_avalara_client: 'Swagger UI; 22.1.0' # String | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .
}

begin
  # List 1099/1095/W2/1042S forms
  result = api_instance.list1099_forms(avalara_version, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling Forms1099Api->list1099_forms: #{e}"
end
```

#### Using the list1099_forms_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Form1099ListResponse>, Integer, Hash)> list1099_forms_with_http_info(avalara_version, opts)

```ruby
begin
  # List 1099/1095/W2/1042S forms
  data, status_code, headers = api_instance.list1099_forms_with_http_info(avalara_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Form1099ListResponse>
rescue AvalaraSdk::A1099::V2::ApiError => e
  puts "Error when calling Forms1099Api->list1099_forms_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avalara_version** | **String** | API version |  |
| **filter** | **String** | A filter statement to identify specific records to retrieve. For more information on filtering, see &lt;a href&#x3D;\&quot;https://developer.avalara.com/avatax/filtering-in-rest/\&quot;&gt;Filtering in REST&lt;/a&gt;.    Collections support filtering only on certain fields. An attempt to filter on an unsupported field will receive a 400 Bad Request response.    Supported filtering fields are as follows:        issuerId      issuerReferenceId      taxYear      addressVerificationStatus - possible values are: unknown, pending, failed, incomplete, unchanged, verified      createdAt      edeliveryStatus - possible values are: sent, unscheduled, bad_verify, bad_verify_limit, scheduled, bounced, accepted      email      federalEfileStatus - possible values are: unscheduled, scheduled, sent, corrected_scheduled, accepted, corrected, corrected_accepted, held      recipientName      mailStatus - possible values are: sent, unscheduled, pending, delivered      referenceId      tinMatchStatus - possible values are: none, pending, matched, failed      type - possible values are: 940, 941, 943, 944, 945, 1042, 1042-S, 1095-B, 1095-C, 1097-BTC, 1098, 1098-C, 1098-E, 1098-Q, 1098-T, 3921, 3922, 5498, 5498-ESA, 5498-SA, 1099-MISC, 1099-A, 1099-B, 1099-C, 1099-CAP, 1099-DIV, 1099-G, 1099-INT, 1099-K, 1099-LS, 1099-LTC, 1099-NEC, 1099-OID, 1099-PATR, 1099-Q, 1099-R, 1099-S, 1099-SA, T4A, W-2, W-2G, 1099-HC      updatedAt      validity - possible values are: true, false | [optional] |
| **top** | **Integer** | If nonzero, return no more than this number of results.     Used with skip to provide pagination for large datasets.     Unless otherwise specified, the maximum number of records that can be returned from an API call is 1,000 records. | [optional][default to 10] |
| **skip** | **Integer** | If nonzero, skip this number of results before returning data. Used with top to provide pagination for large datasets. | [optional][default to 0] |
| **order_by** | **String** | A comma separated list of sort statements in the format (fieldname) [ASC|DESC], for example issuerReferenceId ASC.    Supported sorting fields are:         issuerReferenceId       taxYear       createdAt       recipientName      updatedAt | [optional] |
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format | [optional] |
| **x_avalara_client** | **String** | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) . | [optional] |

### Return type

[**Form1099ListResponse**](Form1099ListResponse.md)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update1099_form

> <Update1099Form200Response> update1099_form(id, avalara_version, opts)

Update a 1099/1095/W2/1042S form

Update a 1099/1095/W2/1042S form.

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
avalara_version = '2.0.0' # String | API version
opts = {
  x_correlation_id: '9f622e4f-7992-4e4f-8e24-e628c5339402', # String | Unique correlation Id in a GUID format
  x_avalara_client: 'Swagger UI; 22.1.0', # String | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .
  i_update_form1099_request: AvalaraSdk::A1099::V2::Form1099DivRequest.new # IUpdateForm1099Request | 
}

begin
  # Update a 1099/1095/W2/1042S form
  result = api_instance.update1099_form(id, avalara_version, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling Forms1099Api->update1099_form: #{e}"
end
```

#### Using the update1099_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Update1099Form200Response>, Integer, Hash)> update1099_form_with_http_info(id, avalara_version, opts)

```ruby
begin
  # Update a 1099/1095/W2/1042S form
  data, status_code, headers = api_instance.update1099_form_with_http_info(id, avalara_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Update1099Form200Response>
rescue AvalaraSdk::A1099::V2::ApiError => e
  puts "Error when calling Forms1099Api->update1099_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **avalara_version** | **String** | API version |  |
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format | [optional] |
| **x_avalara_client** | **String** | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) . | [optional] |
| **i_update_form1099_request** | [**IUpdateForm1099Request**](IUpdateForm1099Request.md) |  | [optional] |

### Return type

[**Update1099Form200Response**](Update1099Form200Response.md)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: application/json

