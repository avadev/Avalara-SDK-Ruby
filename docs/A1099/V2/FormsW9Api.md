# AvalaraSdk::A1099::V2::FormsW9Api

All URIs are relative to *https://api-ava1099.eta.sbx.us-east-1.aws.avalara.io/avalara1099*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_w9_form**](FormsW9Api.md#create_w9_form) | **POST** /w9/forms | Create a W9/W4/W8 form |
| [**delete_w9_form**](FormsW9Api.md#delete_w9_form) | **DELETE** /w9/forms/{id} | Delete a W9/W4/W8 form |
| [**get_w9_form**](FormsW9Api.md#get_w9_form) | **GET** /w9/forms/{id} | Retrieve a W9/W4/W8 form |
| [**list_w9_forms**](FormsW9Api.md#list_w9_forms) | **GET** /w9/forms | List W9/W4/W8 forms |
| [**send_w9_form_email**](FormsW9Api.md#send_w9_form_email) | **POST** /w9/forms/{id}/$send-email | Send an email to the vendor/payee requesting they fill out a W9/W4/W8 form |
| [**update_w9_form**](FormsW9Api.md#update_w9_form) | **PUT** /w9/forms/{id} | Update a W9/W4/W8 form |
| [**upload_w9_files**](FormsW9Api.md#upload_w9_files) | **POST** /w9/forms/{id}/attachment | Replace the PDF file for a W9/W4/W8 form |


## create_w9_form

> <CreateW9Form201Response> create_w9_form(avalara_version, opts)

Create a W9/W4/W8 form

Create a W9/W4/W8 form.

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
api_instance = AvalaraSdk::A1099::V2::FormsW9Api.new api_client

avalara_version = '2.0.0' # String | API version
opts = {
  x_correlation_id: '479b3bdd-2b5c-48b3-b24c-b0ecbe0d07c5', # String | Unique correlation Id in a GUID format
  x_avalara_client: 'Swagger UI; 22.1.0', # String | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .
  create_w9_form_request: AvalaraSdk::A1099::V2::W4FormRequest.new # CreateW9FormRequest | Form to be created
}

begin
  # Create a W9/W4/W8 form
  result = api_instance.create_w9_form(avalara_version, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling FormsW9Api->create_w9_form: #{e}"
end
```

#### Using the create_w9_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateW9Form201Response>, Integer, Hash)> create_w9_form_with_http_info(avalara_version, opts)

```ruby
begin
  # Create a W9/W4/W8 form
  data, status_code, headers = api_instance.create_w9_form_with_http_info(avalara_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateW9Form201Response>
rescue AvalaraSdk::A1099::V2::ApiError => e
  puts "Error when calling FormsW9Api->create_w9_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avalara_version** | **String** | API version |  |
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format | [optional] |
| **x_avalara_client** | **String** | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) . | [optional] |
| **create_w9_form_request** | [**CreateW9FormRequest**](CreateW9FormRequest.md) | Form to be created | [optional] |

### Return type

[**CreateW9Form201Response**](CreateW9Form201Response.md)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: application/json


## delete_w9_form

> delete_w9_form(id, avalara_version, opts)

Delete a W9/W4/W8 form

Delete a W9/W4/W8 form.

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
api_instance = AvalaraSdk::A1099::V2::FormsW9Api.new api_client

id = 'id_example' # String | ID of the form to delete
avalara_version = '2.0.0' # String | API version
opts = {
  x_correlation_id: '7d79301a-ebfd-40a1-a1af-a9a1e44f8936', # String | Unique correlation Id in a GUID format
  x_avalara_client: 'Swagger UI; 22.1.0' # String | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .
}

begin
  # Delete a W9/W4/W8 form
  api_instance.delete_w9_form(id, avalara_version, opts)
rescue AvalaraSdk::ApiError => e
  puts "Error when calling FormsW9Api->delete_w9_form: #{e}"
end
```

#### Using the delete_w9_form_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_w9_form_with_http_info(id, avalara_version, opts)

```ruby
begin
  # Delete a W9/W4/W8 form
  data, status_code, headers = api_instance.delete_w9_form_with_http_info(id, avalara_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AvalaraSdk::A1099::V2::ApiError => e
  puts "Error when calling FormsW9Api->delete_w9_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the form to delete |  |
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


## get_w9_form

> <CreateW9Form201Response> get_w9_form(id, avalara_version, opts)

Retrieve a W9/W4/W8 form

Retrieve a W9/W4/W8 form.

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
api_instance = AvalaraSdk::A1099::V2::FormsW9Api.new api_client

id = 'id_example' # String | ID of the form
avalara_version = '2.0.0' # String | API version
opts = {
  x_correlation_id: 'b4cc81aa-1d2e-4cef-aa68-705ea2aaf594', # String | Unique correlation Id in a GUID format
  x_avalara_client: 'Swagger UI; 22.1.0' # String | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .
}

begin
  # Retrieve a W9/W4/W8 form
  result = api_instance.get_w9_form(id, avalara_version, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling FormsW9Api->get_w9_form: #{e}"
end
```

#### Using the get_w9_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateW9Form201Response>, Integer, Hash)> get_w9_form_with_http_info(id, avalara_version, opts)

```ruby
begin
  # Retrieve a W9/W4/W8 form
  data, status_code, headers = api_instance.get_w9_form_with_http_info(id, avalara_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateW9Form201Response>
rescue AvalaraSdk::A1099::V2::ApiError => e
  puts "Error when calling FormsW9Api->get_w9_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the form |  |
| **avalara_version** | **String** | API version |  |
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format | [optional] |
| **x_avalara_client** | **String** | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) . | [optional] |

### Return type

[**CreateW9Form201Response**](CreateW9Form201Response.md)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_w9_forms

> <PaginatedW9FormsModel> list_w9_forms(avalara_version, opts)

List W9/W4/W8 forms

List W9/W4/W8 forms.

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
api_instance = AvalaraSdk::A1099::V2::FormsW9Api.new api_client

avalara_version = '2.0.0' # String | API version
opts = {
  filter: 'filter_example', # String | A filter statement to identify specific records to retrieve. For more information on filtering, see <a href=\"https://developer.avalara.com/avatax/filtering-in-rest/\">Filtering in REST</a>.
  top: 56, # Integer | If nonzero, return no more than this number of results. Used with skip to provide pagination for large datasets. Unless otherwise specified, the maximum number of records that can be returned from an API call is 1,000 records.
  skip: 56, # Integer | If nonzero, skip this number of results before returning data. Used with top to provide pagination for large datasets.
  order_by: 'order_by_example', # String | A comma separated list of sort statements in the format (fieldname) [ASC|DESC], for example id ASC.
  count: true, # Boolean | When true, returns a @recordSetCount in the result set
  x_correlation_id: '8afdb9ff-bb10-414e-bd81-5cb5175aad0c', # String | Unique correlation Id in a GUID format
  x_avalara_client: 'Swagger UI; 22.1.0' # String | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .
}

begin
  # List W9/W4/W8 forms
  result = api_instance.list_w9_forms(avalara_version, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling FormsW9Api->list_w9_forms: #{e}"
end
```

#### Using the list_w9_forms_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedW9FormsModel>, Integer, Hash)> list_w9_forms_with_http_info(avalara_version, opts)

```ruby
begin
  # List W9/W4/W8 forms
  data, status_code, headers = api_instance.list_w9_forms_with_http_info(avalara_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedW9FormsModel>
rescue AvalaraSdk::A1099::V2::ApiError => e
  puts "Error when calling FormsW9Api->list_w9_forms_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avalara_version** | **String** | API version |  |
| **filter** | **String** | A filter statement to identify specific records to retrieve. For more information on filtering, see &lt;a href&#x3D;\&quot;https://developer.avalara.com/avatax/filtering-in-rest/\&quot;&gt;Filtering in REST&lt;/a&gt;. | [optional] |
| **top** | **Integer** | If nonzero, return no more than this number of results. Used with skip to provide pagination for large datasets. Unless otherwise specified, the maximum number of records that can be returned from an API call is 1,000 records. | [optional][default to 10] |
| **skip** | **Integer** | If nonzero, skip this number of results before returning data. Used with top to provide pagination for large datasets. | [optional][default to 0] |
| **order_by** | **String** | A comma separated list of sort statements in the format (fieldname) [ASC|DESC], for example id ASC. | [optional] |
| **count** | **Boolean** | When true, returns a @recordSetCount in the result set | [optional] |
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format | [optional] |
| **x_avalara_client** | **String** | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) . | [optional] |

### Return type

[**PaginatedW9FormsModel**](PaginatedW9FormsModel.md)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## send_w9_form_email

> <IW9FormDataModelsOneOf> send_w9_form_email(id, avalara_version, opts)

Send an email to the vendor/payee requesting they fill out a W9/W4/W8 form

Send an email to the vendor/payee requesting they fill out a W9/W4/W8 form.

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
api_instance = AvalaraSdk::A1099::V2::FormsW9Api.new api_client

id = 'id_example' # String | The ID of the W9/W4/W8 form.
avalara_version = '2.0.0' # String | API version
opts = {
  x_correlation_id: '37d1fca1-1efa-454b-a3ff-94ec972b74b4', # String | Unique correlation Id in a GUID format
  x_avalara_client: 'Swagger UI; 22.1.0' # String | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .
}

begin
  # Send an email to the vendor/payee requesting they fill out a W9/W4/W8 form
  result = api_instance.send_w9_form_email(id, avalara_version, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling FormsW9Api->send_w9_form_email: #{e}"
end
```

#### Using the send_w9_form_email_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IW9FormDataModelsOneOf>, Integer, Hash)> send_w9_form_email_with_http_info(id, avalara_version, opts)

```ruby
begin
  # Send an email to the vendor/payee requesting they fill out a W9/W4/W8 form
  data, status_code, headers = api_instance.send_w9_form_email_with_http_info(id, avalara_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IW9FormDataModelsOneOf>
rescue AvalaraSdk::A1099::V2::ApiError => e
  puts "Error when calling FormsW9Api->send_w9_form_email_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the W9/W4/W8 form. |  |
| **avalara_version** | **String** | API version |  |
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format | [optional] |
| **x_avalara_client** | **String** | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) . | [optional] |

### Return type

[**IW9FormDataModelsOneOf**](IW9FormDataModelsOneOf.md)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_w9_form

> <IW9FormDataModelsOneOf> update_w9_form(id, avalara_version, opts)

Update a W9/W4/W8 form

Update a W9/W4/W8 form.

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
api_instance = AvalaraSdk::A1099::V2::FormsW9Api.new api_client

id = 'id_example' # String | ID of the form to update
avalara_version = '2.0.0' # String | API version
opts = {
  x_correlation_id: '8c37ab84-020e-452c-ad69-df89a9ac9cfa', # String | Unique correlation Id in a GUID format
  x_avalara_client: 'Swagger UI; 22.1.0', # String | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .
  iw9_form_data_models_one_of: AvalaraSdk::A1099::V2::W4FormDataModel.new # IW9FormDataModelsOneOf | Form to be updated
}

begin
  # Update a W9/W4/W8 form
  result = api_instance.update_w9_form(id, avalara_version, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling FormsW9Api->update_w9_form: #{e}"
end
```

#### Using the update_w9_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IW9FormDataModelsOneOf>, Integer, Hash)> update_w9_form_with_http_info(id, avalara_version, opts)

```ruby
begin
  # Update a W9/W4/W8 form
  data, status_code, headers = api_instance.update_w9_form_with_http_info(id, avalara_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IW9FormDataModelsOneOf>
rescue AvalaraSdk::A1099::V2::ApiError => e
  puts "Error when calling FormsW9Api->update_w9_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the form to update |  |
| **avalara_version** | **String** | API version |  |
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format | [optional] |
| **x_avalara_client** | **String** | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) . | [optional] |
| **iw9_form_data_models_one_of** | [**IW9FormDataModelsOneOf**](IW9FormDataModelsOneOf.md) | Form to be updated | [optional] |

### Return type

[**IW9FormDataModelsOneOf**](IW9FormDataModelsOneOf.md)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: application/json


## upload_w9_files

> upload_w9_files(id, avalara_version, opts)

Replace the PDF file for a W9/W4/W8 form

Replaces the PDF file for a W9/W4/W8 form.

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
api_instance = AvalaraSdk::A1099::V2::FormsW9Api.new api_client

id = 'id_example' # String | Id of the form
avalara_version = '2.0.0' # String | API version
opts = {
  x_correlation_id: '2ce587b6-7523-41b2-8033-347329740bcb', # String | Unique correlation Id in a GUID format
  x_avalara_client: 'Swagger UI; 22.1.0', # String | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .
  file: File.new('/path/to/some/file') # File | 
}

begin
  # Replace the PDF file for a W9/W4/W8 form
  api_instance.upload_w9_files(id, avalara_version, opts)
rescue AvalaraSdk::ApiError => e
  puts "Error when calling FormsW9Api->upload_w9_files: #{e}"
end
```

#### Using the upload_w9_files_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> upload_w9_files_with_http_info(id, avalara_version, opts)

```ruby
begin
  # Replace the PDF file for a W9/W4/W8 form
  data, status_code, headers = api_instance.upload_w9_files_with_http_info(id, avalara_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AvalaraSdk::A1099::V2::ApiError => e
  puts "Error when calling FormsW9Api->upload_w9_files_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Id of the form |  |
| **avalara_version** | **String** | API version |  |
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format | [optional] |
| **x_avalara_client** | **String** | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) . | [optional] |
| **file** | **File** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

