# AvalaraSdk::A1099::V2::TINMatchesApi

All URIs are relative to *https://api.sbx.avalara.com/avalara1099*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_bulk_tin_match**](TINMatchesApi.md#get_bulk_tin_match) | **GET** /tin-matches/$bulk/{id} | Get bulk TIN match details |
| [**get_bulk_tin_match_results**](TINMatchesApi.md#get_bulk_tin_match_results) | **GET** /tin-matches/$bulk/{id}/results | List bulk TIN match results |
| [**perform_real_time_tin_match**](TINMatchesApi.md#perform_real_time_tin_match) | **POST** /tin-matches/$real-time | Perform real time TIN Match |
| [**submit_bulk_tin_match**](TINMatchesApi.md#submit_bulk_tin_match) | **POST** /tin-matches/$bulk | Submit bulk TIN match |


## get_bulk_tin_match

> <BulkTinMatchResponse> get_bulk_tin_match(id, avalara_version, opts)

Get bulk TIN match details

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
api_instance = AvalaraSdk::A1099::V2::TINMatchesApi.new api_client

id = 'id_example' # String | The bulk ID
avalara_version = '2.0.0' # String | API version
opts = {
  x_correlation_id: 'df30781a-da37-45b3-be01-d835e5d0ad8b', # String | Unique correlation Id in a GUID format
  x_avalara_client: 'Swagger UI; 22.1.0' # String | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .
}

begin
  # Get bulk TIN match details
  result = api_instance.get_bulk_tin_match(id, avalara_version, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling TINMatchesApi->get_bulk_tin_match: #{e}"
end
```

#### Using the get_bulk_tin_match_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BulkTinMatchResponse>, Integer, Hash)> get_bulk_tin_match_with_http_info(id, avalara_version, opts)

```ruby
begin
  # Get bulk TIN match details
  data, status_code, headers = api_instance.get_bulk_tin_match_with_http_info(id, avalara_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BulkTinMatchResponse>
rescue AvalaraSdk::A1099::V2::ApiError => e
  puts "Error when calling TINMatchesApi->get_bulk_tin_match_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The bulk ID |  |
| **avalara_version** | **String** | API version |  |
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format | [optional] |
| **x_avalara_client** | **String** | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) . | [optional] |

### Return type

[**BulkTinMatchResponse**](BulkTinMatchResponse.md)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_bulk_tin_match_results

> <PaginatedQueryResultModelBulkTinMatchResultItemResponse> get_bulk_tin_match_results(id, avalara_version, opts)

List bulk TIN match results

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
api_instance = AvalaraSdk::A1099::V2::TINMatchesApi.new api_client

id = 'id_example' # String | The bulk ID
avalara_version = '2.0.0' # String | API version
opts = {
  filter: 'filter_example', # String | A filter statement to identify specific records to retrieve.  For more information on filtering, see <a href=\"https://developer.avalara.com/avatax/filtering-in-rest/\">Filtering in REST</a>.
  top: 56, # Integer | If zero or greater than 1000, return at most 1000 results.  Otherwise, return this number of results.  Used with skip to provide pagination for large datasets.
  skip: 56, # Integer | If nonzero, skip this number of results before returning data. Used with top to provide pagination for large datasets.
  order_by: 'order_by_example', # String | A comma separated list of sort statements in the format (fieldname) [ASC|DESC], for example id ASC.
  count: true, # Boolean | If true, return the global count of elements in the collection.
  count_only: true, # Boolean | If true, return ONLY the global count of elements in the collection.  It only applies when count=true.
  x_correlation_id: '98367ed4-44bb-4254-a388-ec2e63ac293e', # String | Unique correlation Id in a GUID format
  x_avalara_client: 'Swagger UI; 22.1.0' # String | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .
}

begin
  # List bulk TIN match results
  result = api_instance.get_bulk_tin_match_results(id, avalara_version, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling TINMatchesApi->get_bulk_tin_match_results: #{e}"
end
```

#### Using the get_bulk_tin_match_results_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedQueryResultModelBulkTinMatchResultItemResponse>, Integer, Hash)> get_bulk_tin_match_results_with_http_info(id, avalara_version, opts)

```ruby
begin
  # List bulk TIN match results
  data, status_code, headers = api_instance.get_bulk_tin_match_results_with_http_info(id, avalara_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedQueryResultModelBulkTinMatchResultItemResponse>
rescue AvalaraSdk::A1099::V2::ApiError => e
  puts "Error when calling TINMatchesApi->get_bulk_tin_match_results_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The bulk ID |  |
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

[**PaginatedQueryResultModelBulkTinMatchResultItemResponse**](PaginatedQueryResultModelBulkTinMatchResultItemResponse.md)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## perform_real_time_tin_match

> <RealTimeTinMatchResponse> perform_real_time_tin_match(avalara_version, opts)

Perform real time TIN Match

Perform real time TIN Match.

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
api_instance = AvalaraSdk::A1099::V2::TINMatchesApi.new api_client

avalara_version = '2.0.0' # String | API version
opts = {
  x_correlation_id: '7d625954-787a-4153-8365-45cef8288be1', # String | Unique correlation Id in a GUID format
  x_avalara_client: 'Swagger UI; 22.1.0', # String | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .
  real_time_tin_match_request: AvalaraSdk::A1099::V2::RealTimeTinMatchRequest.new # RealTimeTinMatchRequest | Required data to perform TIN match
}

begin
  # Perform real time TIN Match
  result = api_instance.perform_real_time_tin_match(avalara_version, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling TINMatchesApi->perform_real_time_tin_match: #{e}"
end
```

#### Using the perform_real_time_tin_match_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RealTimeTinMatchResponse>, Integer, Hash)> perform_real_time_tin_match_with_http_info(avalara_version, opts)

```ruby
begin
  # Perform real time TIN Match
  data, status_code, headers = api_instance.perform_real_time_tin_match_with_http_info(avalara_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RealTimeTinMatchResponse>
rescue AvalaraSdk::A1099::V2::ApiError => e
  puts "Error when calling TINMatchesApi->perform_real_time_tin_match_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avalara_version** | **String** | API version |  |
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format | [optional] |
| **x_avalara_client** | **String** | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) . | [optional] |
| **real_time_tin_match_request** | [**RealTimeTinMatchRequest**](RealTimeTinMatchRequest.md) | Required data to perform TIN match | [optional] |

### Return type

[**RealTimeTinMatchResponse**](RealTimeTinMatchResponse.md)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: application/json


## submit_bulk_tin_match

> <BulkTinMatchAcceptedResponse> submit_bulk_tin_match(avalara_version, opts)

Submit bulk TIN match

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
api_instance = AvalaraSdk::A1099::V2::TINMatchesApi.new api_client

avalara_version = '2.0.0' # String | API version
opts = {
  x_correlation_id: '3f051c64-117a-46f1-b9b5-324064394c6a', # String | Unique correlation Id in a GUID format
  x_avalara_client: 'Swagger UI; 22.1.0', # String | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .
  bulk_tin_match_request: AvalaraSdk::A1099::V2::BulkTinMatchRequest.new # BulkTinMatchRequest | Required TIN collection to perform bulk TIN match
}

begin
  # Submit bulk TIN match
  result = api_instance.submit_bulk_tin_match(avalara_version, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling TINMatchesApi->submit_bulk_tin_match: #{e}"
end
```

#### Using the submit_bulk_tin_match_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BulkTinMatchAcceptedResponse>, Integer, Hash)> submit_bulk_tin_match_with_http_info(avalara_version, opts)

```ruby
begin
  # Submit bulk TIN match
  data, status_code, headers = api_instance.submit_bulk_tin_match_with_http_info(avalara_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BulkTinMatchAcceptedResponse>
rescue AvalaraSdk::A1099::V2::ApiError => e
  puts "Error when calling TINMatchesApi->submit_bulk_tin_match_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avalara_version** | **String** | API version |  |
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format | [optional] |
| **x_avalara_client** | **String** | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) . | [optional] |
| **bulk_tin_match_request** | [**BulkTinMatchRequest**](BulkTinMatchRequest.md) | Required TIN collection to perform bulk TIN match | [optional] |

### Return type

[**BulkTinMatchAcceptedResponse**](BulkTinMatchAcceptedResponse.md)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: application/json

