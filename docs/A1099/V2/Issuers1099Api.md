# AvalaraSdk::A1099::V2::Issuers1099Api

All URIs are relative to *https://api.sbx.avalara.com/avalara1099*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_issuer**](Issuers1099Api.md#create_issuer) | **POST** /1099/issuers | Create an issuer |
| [**delete_issuer**](Issuers1099Api.md#delete_issuer) | **DELETE** /1099/issuers/{id} | Delete an issuer |
| [**get_issuer**](Issuers1099Api.md#get_issuer) | **GET** /1099/issuers/{id} | Retrieve an issuer |
| [**get_issuers**](Issuers1099Api.md#get_issuers) | **GET** /1099/issuers | List issuers |
| [**update_issuer**](Issuers1099Api.md#update_issuer) | **PUT** /1099/issuers/{id} | Update an issuer |


## create_issuer

> <IssuerResponse> create_issuer(avalara_version, opts)

Create an issuer

Create an issuer (also known as a Payer).

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

avalara_version = '2.0.0' # String | API version
opts = {
  x_correlation_id: 'c9fe2806-b469-4728-93f3-f60f31c6e515', # String | Unique correlation Id in a GUID format
  x_avalara_client: 'Swagger UI; 22.1.0', # String | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .
  create_issuer_request: AvalaraSdk::A1099::V2::IssuerCommand.new({name: 'name_example', telephone: 'telephone_example', tax_year: 37, email: 'email_example', address: 'address_example', city: 'city_example', state: 'state_example', zip: 'zip_example', last_filing: false}) # CreateIssuerRequest | The issuer to create
}

begin
  # Create an issuer
  result = api_instance.create_issuer(avalara_version, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling Issuers1099Api->create_issuer: #{e}"
end
```

#### Using the create_issuer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IssuerResponse>, Integer, Hash)> create_issuer_with_http_info(avalara_version, opts)

```ruby
begin
  # Create an issuer
  data, status_code, headers = api_instance.create_issuer_with_http_info(avalara_version, opts)
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
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format | [optional] |
| **x_avalara_client** | **String** | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) . | [optional] |
| **create_issuer_request** | [**CreateIssuerRequest**](CreateIssuerRequest.md) | The issuer to create | [optional] |

### Return type

[**IssuerResponse**](IssuerResponse.md)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: application/json


## delete_issuer

> delete_issuer(id, avalara_version, opts)

Delete an issuer

Delete an issuer (also known as a Payer).

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
avalara_version = '2.0.0' # String | API version
opts = {
  x_correlation_id: '081895ce-c445-430c-9769-dfade0e811da', # String | Unique correlation Id in a GUID format
  x_avalara_client: 'Swagger UI; 22.1.0' # String | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .
}

begin
  # Delete an issuer
  api_instance.delete_issuer(id, avalara_version, opts)
rescue AvalaraSdk::ApiError => e
  puts "Error when calling Issuers1099Api->delete_issuer: #{e}"
end
```

#### Using the delete_issuer_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_issuer_with_http_info(id, avalara_version, opts)

```ruby
begin
  # Delete an issuer
  data, status_code, headers = api_instance.delete_issuer_with_http_info(id, avalara_version, opts)
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
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format | [optional] |
| **x_avalara_client** | **String** | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) . | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_issuer

> <IssuerResponse> get_issuer(id, avalara_version, opts)

Retrieve an issuer

Retrieve an issuer (also known as a Payer).

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

id = 'id_example' # String | Id of the issuer to retrieve
avalara_version = '2.0.0' # String | API version
opts = {
  x_correlation_id: '918a7b34-19fa-42ae-be7e-42f1f8717e7f', # String | Unique correlation Id in a GUID format
  x_avalara_client: 'Swagger UI; 22.1.0' # String | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .
}

begin
  # Retrieve an issuer
  result = api_instance.get_issuer(id, avalara_version, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling Issuers1099Api->get_issuer: #{e}"
end
```

#### Using the get_issuer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IssuerResponse>, Integer, Hash)> get_issuer_with_http_info(id, avalara_version, opts)

```ruby
begin
  # Retrieve an issuer
  data, status_code, headers = api_instance.get_issuer_with_http_info(id, avalara_version, opts)
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
| **id** | **String** | Id of the issuer to retrieve |  |
| **avalara_version** | **String** | API version |  |
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format | [optional] |
| **x_avalara_client** | **String** | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) . | [optional] |

### Return type

[**IssuerResponse**](IssuerResponse.md)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_issuers

> <PaginatedQueryResultModelIssuerResponse> get_issuers(avalara_version, opts)

List issuers

List issuers (also known as Payers). Filterable fields are name, referenceId and taxYear.

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

avalara_version = '2.0.0' # String | API version
opts = {
  filter: 'taxYear eq 2024', # String | A filter statement to identify specific records to retrieve.  For more information on filtering, see <a href=\"https://developer.avalara.com/avatax/filtering-in-rest/\">Filtering in REST</a>.
  top: 56, # Integer | If zero or greater than 1000, return at most 1000 results.  Otherwise, return this number of results.  Used with skip to provide pagination for large datasets.
  skip: 56, # Integer | If nonzero, skip this number of results before returning data. Used with top to provide pagination for large datasets.
  order_by: 'order_by_example', # String | A comma separated list of sort statements in the format (fieldname) [ASC|DESC], for example id ASC.
  count: true, # Boolean | If true, return the global count of elements in the collection.
  count_only: true, # Boolean | If true, return ONLY the global count of elements in the collection.  It only applies when count=true.
  x_correlation_id: 'da800a09-436c-4bca-8e7a-557741840192', # String | Unique correlation Id in a GUID format
  x_avalara_client: 'Swagger UI; 22.1.0' # String | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .
}

begin
  # List issuers
  result = api_instance.get_issuers(avalara_version, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling Issuers1099Api->get_issuers: #{e}"
end
```

#### Using the get_issuers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedQueryResultModelIssuerResponse>, Integer, Hash)> get_issuers_with_http_info(avalara_version, opts)

```ruby
begin
  # List issuers
  data, status_code, headers = api_instance.get_issuers_with_http_info(avalara_version, opts)
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
| **filter** | **String** | A filter statement to identify specific records to retrieve.  For more information on filtering, see &lt;a href&#x3D;\&quot;https://developer.avalara.com/avatax/filtering-in-rest/\&quot;&gt;Filtering in REST&lt;/a&gt;. | [optional] |
| **top** | **Integer** | If zero or greater than 1000, return at most 1000 results.  Otherwise, return this number of results.  Used with skip to provide pagination for large datasets. | [optional] |
| **skip** | **Integer** | If nonzero, skip this number of results before returning data. Used with top to provide pagination for large datasets. | [optional] |
| **order_by** | **String** | A comma separated list of sort statements in the format (fieldname) [ASC|DESC], for example id ASC. | [optional] |
| **count** | **Boolean** | If true, return the global count of elements in the collection. | [optional] |
| **count_only** | **Boolean** | If true, return ONLY the global count of elements in the collection.  It only applies when count&#x3D;true. | [optional] |
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format | [optional] |
| **x_avalara_client** | **String** | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) . | [optional] |

### Return type

[**PaginatedQueryResultModelIssuerResponse**](PaginatedQueryResultModelIssuerResponse.md)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_issuer

> update_issuer(id, avalara_version, opts)

Update an issuer

Update an issuer (also known as a Payer).

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

id = 'id_example' # String | Id of the issuer to update
avalara_version = '2.0.0' # String | API version
opts = {
  x_correlation_id: 'cb4b1dbc-2041-4d63-878e-b528a67f2ffc', # String | Unique correlation Id in a GUID format
  x_avalara_client: 'Swagger UI; 22.1.0', # String | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .
  create_issuer_request: AvalaraSdk::A1099::V2::IssuerCommand.new({name: 'name_example', telephone: 'telephone_example', tax_year: 37, email: 'email_example', address: 'address_example', city: 'city_example', state: 'state_example', zip: 'zip_example', last_filing: false}) # CreateIssuerRequest | The issuer to update
}

begin
  # Update an issuer
  api_instance.update_issuer(id, avalara_version, opts)
rescue AvalaraSdk::ApiError => e
  puts "Error when calling Issuers1099Api->update_issuer: #{e}"
end
```

#### Using the update_issuer_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_issuer_with_http_info(id, avalara_version, opts)

```ruby
begin
  # Update an issuer
  data, status_code, headers = api_instance.update_issuer_with_http_info(id, avalara_version, opts)
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
| **id** | **String** | Id of the issuer to update |  |
| **avalara_version** | **String** | API version |  |
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format | [optional] |
| **x_avalara_client** | **String** | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) . | [optional] |
| **create_issuer_request** | [**CreateIssuerRequest**](CreateIssuerRequest.md) | The issuer to update | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: application/json

