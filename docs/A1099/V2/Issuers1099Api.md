# AvalaraSdk::A1099::V2::Issuers1099Api

All URIs are relative to *https://api-ava1099.eta.sbx.us-east-1.aws.avalara.io/avalara1099*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_issuer**](Issuers1099Api.md#create_issuer) | **POST** /1099/issuers | Create an issuer |
| [**delete_issuer**](Issuers1099Api.md#delete_issuer) | **DELETE** /1099/issuers/{id} | Delete an issuer |
| [**get_issuer**](Issuers1099Api.md#get_issuer) | **GET** /1099/issuers/{id} | Get an issuer |
| [**get_issuers**](Issuers1099Api.md#get_issuers) | **GET** /1099/issuers | List issuers |
| [**update_issuer**](Issuers1099Api.md#update_issuer) | **PUT** /1099/issuers/{id} | Update an issuer |


## create_issuer

> <IssuerResponse> create_issuer(avalara_version, x_correlation_id, opts)

Create an issuer

Create a new issuer

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
api_instance = AvalaraSdk::A1099::V2::Issuers1099Api.new api_client

avalara_version = '2.0' # String | API version
x_correlation_id = 'bb3c3258-4a6e-4dc8-a958-a699cfb3772e' # String | Unique correlation Id in a GUID format
opts = {
  issuer_command: AvalaraSdk::A1099::V2::IssuerCommand.new # IssuerCommand | The issuer to create
}

begin
  # Create an issuer
  result = api_instance.create_issuer(avalara_version, x_correlation_id, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling Issuers1099Api->create_issuer: #{e}"
end
```

#### Using the create_issuer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IssuerResponse>, Integer, Hash)> create_issuer_with_http_info(avalara_version, x_correlation_id, opts)

```ruby
begin
  # Create an issuer
  data, status_code, headers = api_instance.create_issuer_with_http_info(avalara_version, x_correlation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IssuerResponse>
rescue AvalaraSdk::A1099::V2::ApiError => e
  puts "Error when calling Issuers1099Api->create_issuer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avalara_version** | **String** | API version |  |
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format |  |
| **issuer_command** | [**IssuerCommand**](IssuerCommand.md) | The issuer to create | [optional] |

### Return type

[**IssuerResponse**](IssuerResponse.md)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: application/json


## delete_issuer

> delete_issuer(id, avalara_version, x_correlation_id)

Delete an issuer

Delete an issuer

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
api_instance = AvalaraSdk::A1099::V2::Issuers1099Api.new api_client

id = 'id_example' # String | Id of the issuer to delete
avalara_version = '2.0' # String | API version
x_correlation_id = 'ca05554f-4b06-4f80-ba5e-717d6edfcd67' # String | Unique correlation Id in a GUID format

begin
  # Delete an issuer
  api_instance.delete_issuer(id, avalara_version, x_correlation_id)
rescue AvalaraSdk::ApiError => e
  puts "Error when calling Issuers1099Api->delete_issuer: #{e}"
end
```

#### Using the delete_issuer_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_issuer_with_http_info(id, avalara_version, x_correlation_id)

```ruby
begin
  # Delete an issuer
  data, status_code, headers = api_instance.delete_issuer_with_http_info(id, avalara_version, x_correlation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AvalaraSdk::A1099::V2::ApiError => e
  puts "Error when calling Issuers1099Api->delete_issuer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Id of the issuer to delete |  |
| **avalara_version** | **String** | API version |  |
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format |  |

### Return type

nil (empty response body)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_issuer

> <IssuerResponse> get_issuer(id, avalara_version, x_correlation_id)

Get an issuer

Get an issuer

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
api_instance = AvalaraSdk::A1099::V2::Issuers1099Api.new api_client

id = 'id_example' # String | 
avalara_version = '2.0' # String | API version
x_correlation_id = 'ac852ed7-4d27-4844-bb38-3ad83c7ba46c' # String | Unique correlation Id in a GUID format

begin
  # Get an issuer
  result = api_instance.get_issuer(id, avalara_version, x_correlation_id)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling Issuers1099Api->get_issuer: #{e}"
end
```

#### Using the get_issuer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IssuerResponse>, Integer, Hash)> get_issuer_with_http_info(id, avalara_version, x_correlation_id)

```ruby
begin
  # Get an issuer
  data, status_code, headers = api_instance.get_issuer_with_http_info(id, avalara_version, x_correlation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IssuerResponse>
rescue AvalaraSdk::A1099::V2::ApiError => e
  puts "Error when calling Issuers1099Api->get_issuer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **avalara_version** | **String** | API version |  |
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format |  |

### Return type

[**IssuerResponse**](IssuerResponse.md)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_issuers

> <PaginatedQueryResultModelIssuerResponse> get_issuers(avalara_version, x_correlation_id, opts)

List issuers

List issuers for a given tax year. Filterable fields are name, referenceId and taxYear

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
api_instance = AvalaraSdk::A1099::V2::Issuers1099Api.new api_client

avalara_version = '2.0' # String | API version
x_correlation_id = 'a48293cc-19f2-4971-9fde-c856cc131200' # String | Unique correlation Id in a GUID format
opts = {
  filter: 'filter_example', # String | A filter statement to identify specific records to retrieve.  For more information on filtering, see <a href=\"https://developer.avalara.com/avatax/filtering-in-rest/\">Filtering in REST</a>.
  top: 56, # Integer | If zero or greater than 1000, return at most 1000 results.  Otherwise, return this number of results.  Used with skip to provide pagination for large datasets.
  skip: 56, # Integer | If nonzero, skip this number of results before returning data. Used with top to provide pagination for large datasets.
  order_by: 'order_by_example', # String | A comma separated list of sort statements in the format (fieldname) [ASC|DESC], for example id ASC.
  count: true, # Boolean | If true, return the global count of elements in the collection.
  count_only: true # Boolean | If true, return ONLY the global count of elements in the collection.  It only applies when count=true.
}

begin
  # List issuers
  result = api_instance.get_issuers(avalara_version, x_correlation_id, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling Issuers1099Api->get_issuers: #{e}"
end
```

#### Using the get_issuers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedQueryResultModelIssuerResponse>, Integer, Hash)> get_issuers_with_http_info(avalara_version, x_correlation_id, opts)

```ruby
begin
  # List issuers
  data, status_code, headers = api_instance.get_issuers_with_http_info(avalara_version, x_correlation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedQueryResultModelIssuerResponse>
rescue AvalaraSdk::A1099::V2::ApiError => e
  puts "Error when calling Issuers1099Api->get_issuers_with_http_info: #{e}"
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

[**PaginatedQueryResultModelIssuerResponse**](PaginatedQueryResultModelIssuerResponse.md)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_issuer

> update_issuer(id, avalara_version, x_correlation_id, opts)

Update an issuer

Update an existing issuer

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
api_instance = AvalaraSdk::A1099::V2::Issuers1099Api.new api_client

id = 'id_example' # String | Id of the issuer to Update
avalara_version = '2.0' # String | API version
x_correlation_id = '0c618dc9-79c1-424f-8b6a-6a80c766d673' # String | Unique correlation Id in a GUID format
opts = {
  issuer_command: AvalaraSdk::A1099::V2::IssuerCommand.new # IssuerCommand | The issuer to update
}

begin
  # Update an issuer
  api_instance.update_issuer(id, avalara_version, x_correlation_id, opts)
rescue AvalaraSdk::ApiError => e
  puts "Error when calling Issuers1099Api->update_issuer: #{e}"
end
```

#### Using the update_issuer_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_issuer_with_http_info(id, avalara_version, x_correlation_id, opts)

```ruby
begin
  # Update an issuer
  data, status_code, headers = api_instance.update_issuer_with_http_info(id, avalara_version, x_correlation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AvalaraSdk::A1099::V2::ApiError => e
  puts "Error when calling Issuers1099Api->update_issuer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Id of the issuer to Update |  |
| **avalara_version** | **String** | API version |  |
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format |  |
| **issuer_command** | [**IssuerCommand**](IssuerCommand.md) | The issuer to update | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: application/json

