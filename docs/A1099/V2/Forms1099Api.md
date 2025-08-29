# AvalaraSdk::A1099::V2::Forms1099Api

All URIs are relative to *https://api.sbx.avalara.com/avalara1099*

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

> <JobResponse> bulk_upsert1099_forms(avalara_version, opts)

Create or update multiple 1099/1095/W2/1042S forms

This endpoint allows you to create or update multiple 1099/1095/W2/1042S forms.  Maximum of 5000 forms can be processed in a single bulk request.

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
  dry_run: true, # Boolean | defaults to false. If true, it will NOT change the DB. It will just return a report of what would've have been changed in the DB
  x_correlation_id: '51b17473-1a08-453e-ae8c-41924f260edb', # String | Unique correlation Id in a GUID format
  x_avalara_client: 'Swagger UI; 22.1.0', # String | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .
  form1099_list_request: AvalaraSdk::A1099::V2::Form1099ListRequest.new # Form1099ListRequest | 
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

> <Array(<JobResponse>, Integer, Hash)> bulk_upsert1099_forms_with_http_info(avalara_version, opts)

```ruby
begin
  # Create or update multiple 1099/1095/W2/1042S forms
  data, status_code, headers = api_instance.bulk_upsert1099_forms_with_http_info(avalara_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobResponse>
rescue AvalaraSdk::A1099::V2::ApiError => e
  puts "Error when calling Forms1099Api->bulk_upsert1099_forms_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avalara_version** | **String** | API version |  |
| **dry_run** | **Boolean** | defaults to false. If true, it will NOT change the DB. It will just return a report of what would&#39;ve have been changed in the DB | [optional][default to false] |
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format | [optional] |
| **x_avalara_client** | **String** | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) . | [optional] |
| **form1099_list_request** | [**Form1099ListRequest**](Form1099ListRequest.md) |  | [optional] |

### Return type

[**JobResponse**](JobResponse.md)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: application/json


## create1099_form

> <Get1099Form200Response> create1099_form(avalara_version, opts)

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
  x_correlation_id: '8658b701-7c0e-4a84-91fa-101c7b6865d8', # String | Unique correlation Id in a GUID format
  x_avalara_client: 'Swagger UI; 22.1.0', # String | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .
  get1099_form200_response: AvalaraSdk::A1099::V2::Form1042S.new({unique_form_id: 'unique_form_id_example', income_code: '01', gross_income: 3.56, withholding_indicator: '3', tax_country_code: 'tax_country_code_example', type: '1099-NEC', recipient_name: 'recipient_name_example', address: 'address_example', city: 'city_example', country_code: 'country_code_example'}) # Get1099Form200Response | 
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

> <Array(<Get1099Form200Response>, Integer, Hash)> create1099_form_with_http_info(avalara_version, opts)

```ruby
begin
  # Create a 1099/1095/W2/1042S form
  data, status_code, headers = api_instance.create1099_form_with_http_info(avalara_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get1099Form200Response>
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
| **get1099_form200_response** | [**Get1099Form200Response**](Get1099Form200Response.md) |  | [optional] |

### Return type

[**Get1099Form200Response**](Get1099Form200Response.md)

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
  x_correlation_id: '828993a0-67f5-46c9-b0be-a45fc4436fea', # String | Unique correlation Id in a GUID format
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
  x_correlation_id: '60127475-bae6-4285-a7eb-1ad8aec75ae6', # String | Unique correlation Id in a GUID format
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
  x_correlation_id: 'e7c4583b-0102-46c1-a579-35438519cc67', # String | Unique correlation Id in a GUID format
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

> <PaginatedQueryResultModelForm1099Base> list1099_forms(avalara_version, opts)

List 1099/1095/W2/1042S forms

List 1099/1095/W2/1042S forms.                Collections support filtering only on certain fields. An attempt to filter on an unsupported field will receive a 400 Bad Request response.                Supported filtering fields are as follows:                - issuerId  - issuerReferenceId  - taxYear  - addressVerificationStatus - possible values are: unknown, pending, failed, incomplete, unchanged, verified  - createdAt  - edeliveryStatus - possible values are: sent, unscheduled, bad_verify, bad_verify_limit, scheduled, bounced, accepted  - email  - federalEfileStatus - possible values are: unscheduled, scheduled, sent, corrected_scheduled, accepted, corrected, corrected_accepted, held  - recipientName  - mailStatus - possible values are: sent, unscheduled, pending, delivered  - referenceId  - tinMatchStatus - possible values are: none, pending, matched, failed  - type - possible values are: 940, 941, 943, 944, 945, 1042, 1042-S, 1095-B, 1095-C, 1097-BTC, 1098, 1098-C, 1098-E, 1098-Q, 1098-T, 3921, 3922, 5498, 5498-ESA, 5498-SA, 1099-MISC, 1099-A, 1099-B, 1099-C, 1099-CAP, 1099-DIV, 1099-G, 1099-INT, 1099-K, 1099-LS, 1099-LTC, 1099-NEC, 1099-OID, 1099-PATR, 1099-Q, 1099-R, 1099-S, 1099-SA, T4A, W-2, W-2G, 1099-HC  - updatedAt  - validity - possible values are: true, false                For more information on filtering, see <see href=\"https://developer.avalara.com/avatax/filtering-in-rest/\">Filtering in REST</see>.

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
  filter: 'issuerId eq 884781823', # String | A filter statement to identify specific records to retrieve.  For more information on filtering, see <a href=\"https://developer.avalara.com/avatax/filtering-in-rest/\">Filtering in REST</a>.
  top: 56, # Integer | If zero or greater than 1000, return at most 1000 results.  Otherwise, return this number of results.  Used with skip to provide pagination for large datasets.
  skip: 56, # Integer | If nonzero, skip this number of results before returning data. Used with top to provide pagination for large datasets.
  order_by: 'order_by_example', # String | A comma separated list of sort statements in the format (fieldname) [ASC|DESC], for example id ASC.
  count: true, # Boolean | If true, return the global count of elements in the collection.
  count_only: true, # Boolean | If true, return ONLY the global count of elements in the collection.  It only applies when count=true.
  x_correlation_id: '6740cecb-55e5-44ff-86e7-f47e741249e8', # String | Unique correlation Id in a GUID format
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

> <Array(<PaginatedQueryResultModelForm1099Base>, Integer, Hash)> list1099_forms_with_http_info(avalara_version, opts)

```ruby
begin
  # List 1099/1095/W2/1042S forms
  data, status_code, headers = api_instance.list1099_forms_with_http_info(avalara_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedQueryResultModelForm1099Base>
rescue AvalaraSdk::A1099::V2::ApiError => e
  puts "Error when calling Forms1099Api->list1099_forms_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avalara_version** | **String** | API version |  |
| **filter** | **String** | A filter statement to identify specific records to retrieve.  For more information on filtering, see &lt;a href&#x3D;\&quot;https://developer.avalara.com/avatax/filtering-in-rest/\&quot;&gt;Filtering in REST&lt;/a&gt;. | [optional] |
| **top** | **Integer** | If zero or greater than 1000, return at most 1000 results.  Otherwise, return this number of results.  Used with skip to provide pagination for large datasets. | [optional] |
| **skip** | **Integer** | If nonzero, skip this number of results before returning data. Used with top to provide pagination for large datasets. | [optional] |
| **order_by** | **String** | A comma separated list of sort statements in the format (fieldname) [ASC|DESC], for example id ASC. | [optional] |
| **count** | **Boolean** | If true, return the global count of elements in the collection. | [optional] |
| **count_only** | **Boolean** | If true, return ONLY the global count of elements in the collection.  It only applies when count&#x3D;true. | [optional] |
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format | [optional] |
| **x_avalara_client** | **String** | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) . | [optional] |

### Return type

[**PaginatedQueryResultModelForm1099Base**](PaginatedQueryResultModelForm1099Base.md)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update1099_form

> <Get1099Form200Response> update1099_form(id, avalara_version, opts)

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
  x_correlation_id: '2e10a990-964c-4a25-99c8-fb3e5a1f9315', # String | Unique correlation Id in a GUID format
  x_avalara_client: 'Swagger UI; 22.1.0', # String | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .
  get1099_form200_response: AvalaraSdk::A1099::V2::Form1042S.new({unique_form_id: 'unique_form_id_example', income_code: '01', gross_income: 3.56, withholding_indicator: '3', tax_country_code: 'tax_country_code_example', type: '1099-NEC', recipient_name: 'recipient_name_example', address: 'address_example', city: 'city_example', country_code: 'country_code_example'}) # Get1099Form200Response | 
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

> <Array(<Get1099Form200Response>, Integer, Hash)> update1099_form_with_http_info(id, avalara_version, opts)

```ruby
begin
  # Update a 1099/1095/W2/1042S form
  data, status_code, headers = api_instance.update1099_form_with_http_info(id, avalara_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get1099Form200Response>
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
| **get1099_form200_response** | [**Get1099Form200Response**](Get1099Form200Response.md) |  | [optional] |

### Return type

[**Get1099Form200Response**](Get1099Form200Response.md)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: application/json

