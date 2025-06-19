# AvalaraSdk::A1099::V2::CompaniesW9Api

All URIs are relative to *https://api-ava1099.eta.sbx.us-east-1.aws.avalara.io/avalara1099*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_company**](CompaniesW9Api.md#create_company) | **POST** /w9/companies | Creates a new company |
| [**delete_company**](CompaniesW9Api.md#delete_company) | **DELETE** /w9/companies/{id} | Deletes a company |
| [**get_companies**](CompaniesW9Api.md#get_companies) | **GET** /w9/companies | List companies |
| [**get_company**](CompaniesW9Api.md#get_company) | **GET** /w9/companies/{id} | Retrieve a company |
| [**update_company**](CompaniesW9Api.md#update_company) | **PUT** /w9/companies/{id} | Update a company |


## create_company

> <CompanyResponseModel> create_company(avalara_version, x_correlation_id, opts)

Creates a new company

Creates a new company

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
api_instance = AvalaraSdk::A1099::V2::CompaniesW9Api.new api_client

avalara_version = '2.0' # String | API version
x_correlation_id = 'c66e3323-aa87-424c-9c89-8dfee7bfe206' # String | Unique correlation Id in a GUID format
opts = {
  company_create_update_request_model: AvalaraSdk::A1099::V2::CompanyCreateUpdateRequestModel.new # CompanyCreateUpdateRequestModel | The company to create
}

begin
  # Creates a new company
  result = api_instance.create_company(avalara_version, x_correlation_id, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling CompaniesW9Api->create_company: #{e}"
end
```

#### Using the create_company_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompanyResponseModel>, Integer, Hash)> create_company_with_http_info(avalara_version, x_correlation_id, opts)

```ruby
begin
  # Creates a new company
  data, status_code, headers = api_instance.create_company_with_http_info(avalara_version, x_correlation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompanyResponseModel>
rescue AvalaraSdk::A1099::V2::ApiError => e
  puts "Error when calling CompaniesW9Api->create_company_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avalara_version** | **String** | API version |  |
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format |  |
| **company_create_update_request_model** | [**CompanyCreateUpdateRequestModel**](CompanyCreateUpdateRequestModel.md) | The company to create | [optional] |

### Return type

[**CompanyResponseModel**](CompanyResponseModel.md)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: application/json


## delete_company

> delete_company(id, avalara_version, x_correlation_id)

Deletes a company

Deletes a company

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
api_instance = AvalaraSdk::A1099::V2::CompaniesW9Api.new api_client

id = 'id_example' # String | The company to delete
avalara_version = '2.0' # String | API version
x_correlation_id = '59295e97-31e8-49fc-93e1-e012007ebdde' # String | Unique correlation Id in a GUID format

begin
  # Deletes a company
  api_instance.delete_company(id, avalara_version, x_correlation_id)
rescue AvalaraSdk::ApiError => e
  puts "Error when calling CompaniesW9Api->delete_company: #{e}"
end
```

#### Using the delete_company_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_company_with_http_info(id, avalara_version, x_correlation_id)

```ruby
begin
  # Deletes a company
  data, status_code, headers = api_instance.delete_company_with_http_info(id, avalara_version, x_correlation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AvalaraSdk::A1099::V2::ApiError => e
  puts "Error when calling CompaniesW9Api->delete_company_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The company to delete |  |
| **avalara_version** | **String** | API version |  |
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format |  |

### Return type

nil (empty response body)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_companies

> <PaginatedQueryResultModelCompanyResponse> get_companies(avalara_version, x_correlation_id, opts)

List companies

List existing companies. Filterable/Sortable fields are: \"name\", \"referenceId\", \"group.name\", \"createdAt\" and \"updatedAt\".

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
api_instance = AvalaraSdk::A1099::V2::CompaniesW9Api.new api_client

avalara_version = '2.0' # String | API version
x_correlation_id = '18ba9c2b-136f-4365-a847-92af92dfe7ba' # String | Unique correlation Id in a GUID format
opts = {
  filter: 'filter_example', # String | A filter statement to identify specific records to retrieve.  For more information on filtering, see <a href=\"https://developer.avalara.com/avatax/filtering-in-rest/\">Filtering in REST</a>.
  top: 56, # Integer | If zero or greater than 1000, return at most 1000 results.  Otherwise, return this number of results.  Used with skip to provide pagination for large datasets.
  skip: 56, # Integer | If nonzero, skip this number of results before returning data. Used with top to provide pagination for large datasets.
  order_by: 'order_by_example', # String | A comma separated list of sort statements in the format (fieldname) [ASC|DESC], for example id ASC.
  count: true, # Boolean | If true, return the global count of elements in the collection.
  count_only: true # Boolean | If true, return ONLY the global count of elements in the collection.  It only applies when count=true.
}

begin
  # List companies
  result = api_instance.get_companies(avalara_version, x_correlation_id, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling CompaniesW9Api->get_companies: #{e}"
end
```

#### Using the get_companies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedQueryResultModelCompanyResponse>, Integer, Hash)> get_companies_with_http_info(avalara_version, x_correlation_id, opts)

```ruby
begin
  # List companies
  data, status_code, headers = api_instance.get_companies_with_http_info(avalara_version, x_correlation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedQueryResultModelCompanyResponse>
rescue AvalaraSdk::A1099::V2::ApiError => e
  puts "Error when calling CompaniesW9Api->get_companies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avalara_version** | **String** | API version |  |
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format |  |
| **filter** | **String** | A filter statement to identify specific records to retrieve.  For more information on filtering, see &lt;a href&#x3D;\&quot;https://developer.avalara.com/avatax/filtering-in-rest/\&quot;&gt;Filtering in REST&lt;/a&gt;. | [optional] |
| **top** | **Integer** | If zero or greater than 1000, return at most 1000 results.  Otherwise, return this number of results.  Used with skip to provide pagination for large datasets. | [optional] |
| **skip** | **Integer** | If nonzero, skip this number of results before returning data. Used with top to provide pagination for large datasets. | [optional] |
| **order_by** | **String** | A comma separated list of sort statements in the format (fieldname) [ASC|DESC], for example id ASC. | [optional] |
| **count** | **Boolean** | If true, return the global count of elements in the collection. | [optional] |
| **count_only** | **Boolean** | If true, return ONLY the global count of elements in the collection.  It only applies when count&#x3D;true. | [optional] |

### Return type

[**PaginatedQueryResultModelCompanyResponse**](PaginatedQueryResultModelCompanyResponse.md)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_company

> <CompanyResponse> get_company(id, avalara_version, x_correlation_id)

Retrieve a company

Retrieve an existing company

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
api_instance = AvalaraSdk::A1099::V2::CompaniesW9Api.new api_client

id = 'id_example' # String | Id of the company
avalara_version = '2.0' # String | API version
x_correlation_id = 'b378b193-3da6-4dce-87ee-e2ad780e1ed3' # String | Unique correlation Id in a GUID format

begin
  # Retrieve a company
  result = api_instance.get_company(id, avalara_version, x_correlation_id)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling CompaniesW9Api->get_company: #{e}"
end
```

#### Using the get_company_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompanyResponse>, Integer, Hash)> get_company_with_http_info(id, avalara_version, x_correlation_id)

```ruby
begin
  # Retrieve a company
  data, status_code, headers = api_instance.get_company_with_http_info(id, avalara_version, x_correlation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompanyResponse>
rescue AvalaraSdk::A1099::V2::ApiError => e
  puts "Error when calling CompaniesW9Api->get_company_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Id of the company |  |
| **avalara_version** | **String** | API version |  |
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format |  |

### Return type

[**CompanyResponse**](CompanyResponse.md)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_company

> <CompanyResponseModel> update_company(id, avalara_version, x_correlation_id, opts)

Update a company

Update a company

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
api_instance = AvalaraSdk::A1099::V2::CompaniesW9Api.new api_client

id = 'id_example' # String | The ID of the company to update
avalara_version = '2.0' # String | API version
x_correlation_id = 'ef982351-7c46-4d85-a211-672e1a62f221' # String | Unique correlation Id in a GUID format
opts = {
  company_create_update_request_model: AvalaraSdk::A1099::V2::CompanyCreateUpdateRequestModel.new # CompanyCreateUpdateRequestModel | The updated company data
}

begin
  # Update a company
  result = api_instance.update_company(id, avalara_version, x_correlation_id, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling CompaniesW9Api->update_company: #{e}"
end
```

#### Using the update_company_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompanyResponseModel>, Integer, Hash)> update_company_with_http_info(id, avalara_version, x_correlation_id, opts)

```ruby
begin
  # Update a company
  data, status_code, headers = api_instance.update_company_with_http_info(id, avalara_version, x_correlation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompanyResponseModel>
rescue AvalaraSdk::A1099::V2::ApiError => e
  puts "Error when calling CompaniesW9Api->update_company_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the company to update |  |
| **avalara_version** | **String** | API version |  |
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format |  |
| **company_create_update_request_model** | [**CompanyCreateUpdateRequestModel**](CompanyCreateUpdateRequestModel.md) | The updated company data | [optional] |

### Return type

[**CompanyResponseModel**](CompanyResponseModel.md)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: application/json

