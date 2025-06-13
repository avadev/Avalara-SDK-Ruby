# AvalaraSdk::EInvoicing::V1::TradingPartnersApi

All URIs are relative to *https://api.sbx.avalara.com/einvoicing*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**batch_search_participants**](TradingPartnersApi.md#batch_search_participants) | **POST** /trading-partners/batch-searches | Creates a batch search and performs a batch search in the directory for participants in the background. |
| [**download_batch_search_report**](TradingPartnersApi.md#download_batch_search_report) | **GET** /trading-partners/batch-searches/{id}/$download-results | Download batch search results in a csv file. |
| [**get_batch_search_detail**](TradingPartnersApi.md#get_batch_search_detail) | **GET** /trading-partners/batch-searches/{id} | Get the batch search details for a given id. |
| [**list_batch_searches**](TradingPartnersApi.md#list_batch_searches) | **GET** /trading-partners/batch-searches | List all batch searches that were previously submitted. |
| [**search_participants**](TradingPartnersApi.md#search_participants) | **GET** /trading-partners | Returns a list of participants matching the input query. |


## batch_search_participants

> <BatchSearchParticipants202Response> batch_search_participants(avalara_version, name, notification_email, file, opts)

Creates a batch search and performs a batch search in the directory for participants in the background.

Handles batch search requests by uploading a file containing search parameters.

### Examples

```ruby
require 'time'
require 'avalara_sdk'
# setup authorization
AvalaraSdk::EInvoicing::V1.configure do |config|
  # See Documentation for Authorization section in main README.md for more auth examples.
  config.bearer_token='<Your Avalara Identity Access Token>'
  config.environment='sandbox'
  config.app_name='testApp'
  config.app_version='1.2.3'
  config.machine_name='testMachine'
end

api_client = AvalaraSdk::ApiClient.new config
api_instance = AvalaraSdk::EInvoicing::V1::TradingPartnersApi.new api_client

avalara_version = '1.2' # String | The HTTP Header meant to specify the version of the API intended to be used
name = 'Automotive Companies in London Search' # String | The human readable name given to this batch search.
notification_email = 'user@example.com' # String | The email address of the user to whom the batch search completion notification must go to.
file = File.new('/path/to/some/file') # File | CSV file containing search parameters.
opts = {
  x_avalara_client: 'John's E-Invoicing-API Client', # String | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \"Fingerprint\"
  x_correlation_id: 'f3f0d19a-01a1-4748-8a58-f000d0424f43' # String | The caller can use this as an identifier to use as a correlation id to trace the call.
}

begin
  # Creates a batch search and performs a batch search in the directory for participants in the background.
  result = api_instance.batch_search_participants(avalara_version, name, notification_email, file, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling TradingPartnersApi->batch_search_participants: #{e}"
end
```

#### Using the batch_search_participants_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BatchSearchParticipants202Response>, Integer, Hash)> batch_search_participants_with_http_info(avalara_version, name, notification_email, file, opts)

```ruby
begin
  # Creates a batch search and performs a batch search in the directory for participants in the background.
  data, status_code, headers = api_instance.batch_search_participants_with_http_info(avalara_version, name, notification_email, file, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BatchSearchParticipants202Response>
rescue AvalaraSdk::EInvoicing::V1::ApiError => e
  puts "Error when calling TradingPartnersApi->batch_search_participants_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avalara_version** | **String** | The HTTP Header meant to specify the version of the API intended to be used |  |
| **name** | **String** | The human readable name given to this batch search. |  |
| **notification_email** | **String** | The email address of the user to whom the batch search completion notification must go to. |  |
| **file** | **File** | CSV file containing search parameters. |  |
| **x_avalara_client** | **String** | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \&quot;Fingerprint\&quot; | [optional] |
| **x_correlation_id** | **String** | The caller can use this as an identifier to use as a correlation id to trace the call. | [optional] |

### Return type

[**BatchSearchParticipants202Response**](BatchSearchParticipants202Response.md)

### Authorization

[Bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## download_batch_search_report

> File download_batch_search_report(avalara_version, id, opts)

Download batch search results in a csv file.

Downloads the report for a specific batch search using the batch search ID.

### Examples

```ruby
require 'time'
require 'avalara_sdk'
# setup authorization
AvalaraSdk::EInvoicing::V1.configure do |config|
  # See Documentation for Authorization section in main README.md for more auth examples.
  config.bearer_token='<Your Avalara Identity Access Token>'
  config.environment='sandbox'
  config.app_name='testApp'
  config.app_version='1.2.3'
  config.machine_name='testMachine'
end

api_client = AvalaraSdk::ApiClient.new config
api_instance = AvalaraSdk::EInvoicing::V1::TradingPartnersApi.new api_client

avalara_version = '1.2' # String | The HTTP Header meant to specify the version of the API intended to be used
id = '2f5ea4b5-4dae-445a-b3e4-9f65a61eaa99' # String | The ID of the batch search whose report is to be downloaded.
opts = {
  x_avalara_client: 'John's E-Invoicing-API Client', # String | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \"Fingerprint\"
  x_correlation_id: 'f3f0d19a-01a1-4748-8a58-f000d0424f43' # String | The caller can use this as an identifier to use as a correlation id to trace the call.
}

begin
  # Download batch search results in a csv file.
  result = api_instance.download_batch_search_report(avalara_version, id, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling TradingPartnersApi->download_batch_search_report: #{e}"
end
```

#### Using the download_batch_search_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> download_batch_search_report_with_http_info(avalara_version, id, opts)

```ruby
begin
  # Download batch search results in a csv file.
  data, status_code, headers = api_instance.download_batch_search_report_with_http_info(avalara_version, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue AvalaraSdk::EInvoicing::V1::ApiError => e
  puts "Error when calling TradingPartnersApi->download_batch_search_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avalara_version** | **String** | The HTTP Header meant to specify the version of the API intended to be used |  |
| **id** | **String** | The ID of the batch search whose report is to be downloaded. |  |
| **x_avalara_client** | **String** | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \&quot;Fingerprint\&quot; | [optional] |
| **x_correlation_id** | **String** | The caller can use this as an identifier to use as a correlation id to trace the call. | [optional] |

### Return type

**File**

### Authorization

[Bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/csv, application/json


## get_batch_search_detail

> <BatchSearch> get_batch_search_detail(avalara_version, id, opts)

Get the batch search details for a given id.

This endpoint provides a detailed information for a specific batch search based on a given ID. It is ideal for tracking the progress of a previously initiated batch search operation.

### Examples

```ruby
require 'time'
require 'avalara_sdk'
# setup authorization
AvalaraSdk::EInvoicing::V1.configure do |config|
  # See Documentation for Authorization section in main README.md for more auth examples.
  config.bearer_token='<Your Avalara Identity Access Token>'
  config.environment='sandbox'
  config.app_name='testApp'
  config.app_version='1.2.3'
  config.machine_name='testMachine'
end

api_client = AvalaraSdk::ApiClient.new config
api_instance = AvalaraSdk::EInvoicing::V1::TradingPartnersApi.new api_client

avalara_version = '1.2' # String | The HTTP Header meant to specify the version of the API intended to be used
id = '2f5ea4b5-4dae-445a-b3e4-9f65a61eaa99' # String | The ID of the batch search that was submitted earlier.
opts = {
  x_avalara_client: 'John's E-Invoicing-API Client', # String | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \"Fingerprint\"
  x_correlation_id: 'f3f0d19a-01a1-4748-8a58-f000d0424f43' # String | The caller can use this as an identifier to use as a correlation id to trace the call.
}

begin
  # Get the batch search details for a given id.
  result = api_instance.get_batch_search_detail(avalara_version, id, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling TradingPartnersApi->get_batch_search_detail: #{e}"
end
```

#### Using the get_batch_search_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BatchSearch>, Integer, Hash)> get_batch_search_detail_with_http_info(avalara_version, id, opts)

```ruby
begin
  # Get the batch search details for a given id.
  data, status_code, headers = api_instance.get_batch_search_detail_with_http_info(avalara_version, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BatchSearch>
rescue AvalaraSdk::EInvoicing::V1::ApiError => e
  puts "Error when calling TradingPartnersApi->get_batch_search_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avalara_version** | **String** | The HTTP Header meant to specify the version of the API intended to be used |  |
| **id** | **String** | The ID of the batch search that was submitted earlier. |  |
| **x_avalara_client** | **String** | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \&quot;Fingerprint\&quot; | [optional] |
| **x_correlation_id** | **String** | The caller can use this as an identifier to use as a correlation id to trace the call. | [optional] |

### Return type

[**BatchSearch**](BatchSearch.md)

### Authorization

[Bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_batch_searches

> <BatchSearchListResponse> list_batch_searches(avalara_version, opts)

List all batch searches that were previously submitted.

This endpoint provides a way to retrieve a comprehensive list of all batch search operations that have been previously submitted. This endpoint returns details about each batch search, such as their id, status, created date and associated metadata, allowing users to easily view past batch search requests. It's particularly useful for tracking the progress of a previously initiated batch search operations.

### Examples

```ruby
require 'time'
require 'avalara_sdk'
# setup authorization
AvalaraSdk::EInvoicing::V1.configure do |config|
  # See Documentation for Authorization section in main README.md for more auth examples.
  config.bearer_token='<Your Avalara Identity Access Token>'
  config.environment='sandbox'
  config.app_name='testApp'
  config.app_version='1.2.3'
  config.machine_name='testMachine'
end

api_client = AvalaraSdk::ApiClient.new config
api_instance = AvalaraSdk::EInvoicing::V1::TradingPartnersApi.new api_client

avalara_version = '1.2' # String | The HTTP Header meant to specify the version of the API intended to be used
opts = {
  x_avalara_client: 'John's E-Invoicing-API Client', # String | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \"Fingerprint\"
  filter: 'name eq 'Batch_Search_Import_V4'', # String | Filter by field name and value. This filter only supports <code>eq</code> .The parameters supported is <code>name</code>.    Refer to [https://developer.avalara.com/avatax/filtering-in-rest/](https://developer.avalara.com/avatax/filtering-in-rest/) for more information on filtering. Filtering will be done over the provided parameters.
  count: true, # Boolean | When set to true, the count of the collection is included as @recordSetCount in the response body.
  top: '10', # String | If nonzero, return no more than this number of results. Used with <code>$skip</code> to provide pagination for large datasets. Unless otherwise specified, the maximum number of records that can be returned from an API call is 200 records.
  skip: '10', # String | If nonzero, skip this number of results before returning data. Used with <code>$top</code> to provide pagination for large datasets.
  order_by: 'name desc', # String | The $orderBy query parameter specifies the field and sorting direction for ordering the result set. The value is a string that combines a field name and a sorting direction (asc for ascending or desc for descending), separated by a space.
  x_correlation_id: 'f3f0d19a-01a1-4748-8a58-f000d0424f43' # String | The caller can use this as an identifier to use as a correlation id to trace the call.
}

begin
  # List all batch searches that were previously submitted.
  result = api_instance.list_batch_searches(avalara_version, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling TradingPartnersApi->list_batch_searches: #{e}"
end
```

#### Using the list_batch_searches_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BatchSearchListResponse>, Integer, Hash)> list_batch_searches_with_http_info(avalara_version, opts)

```ruby
begin
  # List all batch searches that were previously submitted.
  data, status_code, headers = api_instance.list_batch_searches_with_http_info(avalara_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BatchSearchListResponse>
rescue AvalaraSdk::EInvoicing::V1::ApiError => e
  puts "Error when calling TradingPartnersApi->list_batch_searches_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avalara_version** | **String** | The HTTP Header meant to specify the version of the API intended to be used |  |
| **x_avalara_client** | **String** | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \&quot;Fingerprint\&quot; | [optional] |
| **filter** | **String** | Filter by field name and value. This filter only supports &lt;code&gt;eq&lt;/code&gt; .The parameters supported is &lt;code&gt;name&lt;/code&gt;.    Refer to [https://developer.avalara.com/avatax/filtering-in-rest/](https://developer.avalara.com/avatax/filtering-in-rest/) for more information on filtering. Filtering will be done over the provided parameters. | [optional] |
| **count** | **Boolean** | When set to true, the count of the collection is included as @recordSetCount in the response body. | [optional] |
| **top** | **String** | If nonzero, return no more than this number of results. Used with &lt;code&gt;$skip&lt;/code&gt; to provide pagination for large datasets. Unless otherwise specified, the maximum number of records that can be returned from an API call is 200 records. | [optional] |
| **skip** | **String** | If nonzero, skip this number of results before returning data. Used with &lt;code&gt;$top&lt;/code&gt; to provide pagination for large datasets. | [optional] |
| **order_by** | **String** | The $orderBy query parameter specifies the field and sorting direction for ordering the result set. The value is a string that combines a field name and a sorting direction (asc for ascending or desc for descending), separated by a space. | [optional] |
| **x_correlation_id** | **String** | The caller can use this as an identifier to use as a correlation id to trace the call. | [optional] |

### Return type

[**BatchSearchListResponse**](BatchSearchListResponse.md)

### Authorization

[Bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_participants

> <DirectorySearchResponse> search_participants(avalara_version, search, opts)

Returns a list of participants matching the input query.

This endpoint provides a list of trading partners that match a specified input query. The search is performed based on various filters, search text, and other relevant parameters.

### Examples

```ruby
require 'time'
require 'avalara_sdk'
# setup authorization
AvalaraSdk::EInvoicing::V1.configure do |config|
  # See Documentation for Authorization section in main README.md for more auth examples.
  config.bearer_token='<Your Avalara Identity Access Token>'
  config.environment='sandbox'
  config.app_name='testApp'
  config.app_version='1.2.3'
  config.machine_name='testMachine'
end

api_client = AvalaraSdk::ApiClient.new config
api_instance = AvalaraSdk::EInvoicing::V1::TradingPartnersApi.new api_client

avalara_version = '1.2' # String | The HTTP Header meant to specify the version of the API intended to be used
search = 'Acme and 7726627177 or BMW' # String | Search by value supports logical AND and OR. Refer to [https://learn.microsoft.com/en-us/odata/concepts/queryoptions-overview#search](https://learn.microsoft.com/en-us/odata/concepts/queryoptions-overview#search) for more information on search. Search will be done over <code>name</code> and <code>identifier</code> parameters only.
opts = {
  x_avalara_client: 'John's E-Invoicing-API Client', # String | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \"Fingerprint\"
  count: true, # Boolean | When set to true, the count of the collection is included as @recordSetCount in the response body.
  filter: 'network eq 'Peppol' and country eq 'Australia'', # String | Filter by field name and value. This filter only supports <code>eq</code> .The parameters supported are <code>network</code>, <code>country</code>, <code>documentType</code>, <code>idType</code>.          Refer to [https://developer.avalara.com/avatax/filtering-in-rest/](https://developer.avalara.com/avatax/filtering-in-rest/) for more information on filtering. Filtering will be done over the provided parameters.
  top: '10', # String | If nonzero, return no more than this number of results. Used with <code>$skip</code> to provide pagination for large datasets. Unless otherwise specified, the maximum number of records that can be returned from an API call is 200 records.
  skip: '10', # String | If nonzero, skip this number of results before returning data. Used with <code>$top</code> to provide pagination for large datasets.
  order_by: 'name desc', # String | The $orderBy query parameter specifies the field and sorting direction for ordering the result set. The value is a string that combines a field name and a sorting direction (asc for ascending or desc for descending), separated by a space.
  x_correlation_id: 'f3f0d19a-01a1-4748-8a58-f000d0424f43' # String | The caller can use this as an identifier to use as a correlation id to trace the call.
}

begin
  # Returns a list of participants matching the input query.
  result = api_instance.search_participants(avalara_version, search, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling TradingPartnersApi->search_participants: #{e}"
end
```

#### Using the search_participants_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DirectorySearchResponse>, Integer, Hash)> search_participants_with_http_info(avalara_version, search, opts)

```ruby
begin
  # Returns a list of participants matching the input query.
  data, status_code, headers = api_instance.search_participants_with_http_info(avalara_version, search, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DirectorySearchResponse>
rescue AvalaraSdk::EInvoicing::V1::ApiError => e
  puts "Error when calling TradingPartnersApi->search_participants_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avalara_version** | **String** | The HTTP Header meant to specify the version of the API intended to be used |  |
| **search** | **String** | Search by value supports logical AND and OR. Refer to [https://learn.microsoft.com/en-us/odata/concepts/queryoptions-overview#search](https://learn.microsoft.com/en-us/odata/concepts/queryoptions-overview#search) for more information on search. Search will be done over &lt;code&gt;name&lt;/code&gt; and &lt;code&gt;identifier&lt;/code&gt; parameters only. |  |
| **x_avalara_client** | **String** | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \&quot;Fingerprint\&quot; | [optional] |
| **count** | **Boolean** | When set to true, the count of the collection is included as @recordSetCount in the response body. | [optional] |
| **filter** | **String** | Filter by field name and value. This filter only supports &lt;code&gt;eq&lt;/code&gt; .The parameters supported are &lt;code&gt;network&lt;/code&gt;, &lt;code&gt;country&lt;/code&gt;, &lt;code&gt;documentType&lt;/code&gt;, &lt;code&gt;idType&lt;/code&gt;.          Refer to [https://developer.avalara.com/avatax/filtering-in-rest/](https://developer.avalara.com/avatax/filtering-in-rest/) for more information on filtering. Filtering will be done over the provided parameters. | [optional] |
| **top** | **String** | If nonzero, return no more than this number of results. Used with &lt;code&gt;$skip&lt;/code&gt; to provide pagination for large datasets. Unless otherwise specified, the maximum number of records that can be returned from an API call is 200 records. | [optional] |
| **skip** | **String** | If nonzero, skip this number of results before returning data. Used with &lt;code&gt;$top&lt;/code&gt; to provide pagination for large datasets. | [optional] |
| **order_by** | **String** | The $orderBy query parameter specifies the field and sorting direction for ordering the result set. The value is a string that combines a field name and a sorting direction (asc for ascending or desc for descending), separated by a space. | [optional] |
| **x_correlation_id** | **String** | The caller can use this as an identifier to use as a correlation id to trace the call. | [optional] |

### Return type

[**DirectorySearchResponse**](DirectorySearchResponse.md)

### Authorization

[Bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

