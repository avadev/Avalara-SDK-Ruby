# AvalaraSdk::EInvoicing::V1::TradingPartnersApi

All URIs are relative to *https://api.sbx.avalara.com/einvoicing*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**batch_search_participants**](TradingPartnersApi.md#batch_search_participants) | **POST** /trading-partners/batch-searches | Handles batch search requests by uploading a file containing search parameters. |
| [**create_trading_partner**](TradingPartnersApi.md#create_trading_partner) | **POST** /trading-partners | Creates a new trading partner. |
| [**create_trading_partners_batch**](TradingPartnersApi.md#create_trading_partners_batch) | **POST** /trading-partners/batch | Creates a batch of multiple trading partners. |
| [**delete_trading_partner**](TradingPartnersApi.md#delete_trading_partner) | **DELETE** /trading-partners/{id} | Deletes a trading partner using ID. |
| [**download_batch_search_report**](TradingPartnersApi.md#download_batch_search_report) | **GET** /trading-partners/batch-searches/{id}/$download-results | Downloads batch search results in a csv file. |
| [**get_batch_search_detail**](TradingPartnersApi.md#get_batch_search_detail) | **GET** /trading-partners/batch-searches/{id} | Returns the batch search details using ID. |
| [**list_batch_searches**](TradingPartnersApi.md#list_batch_searches) | **GET** /trading-partners/batch-searches | Lists all batch searches that were previously submitted. |
| [**search_participants**](TradingPartnersApi.md#search_participants) | **GET** /trading-partners | Returns a list of participants matching the input query. |
| [**update_trading_partner**](TradingPartnersApi.md#update_trading_partner) | **PUT** /trading-partners/{id} | Updates a trading partner using ID. |


## batch_search_participants

> <BatchSearchParticipants202Response> batch_search_participants(avalara_version, name, notification_email, file, opts)

Handles batch search requests by uploading a file containing search parameters.

This endpoint creates a batch search and performs a batch search in the directory for participants in the background.

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

avalara_version = '1.4' # String | The HTTP Header meant to specify the version of the API intended to be used.
name = 'Automotive Companies in London Search' # String | A <b>human-readable</b> name for the batch search.
notification_email = 'user@example.com' # String | The email address to which a notification will be sent once the batch search is complete.
file = File.new('/path/to/some/file') # File | CSV file containing search parameters.  Input Constraints: - Maximum file size: 1 MB - File Header: Must be less than 500 KB - Total number of lines (including header): Must be 101 or fewer
opts = {
  x_avalara_client: 'John's E-Invoicing-API Client', # String | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \"Fingerprint\".
  x_correlation_id: 'f3f0d19a-01a1-4748-8a58-f000d0424f43' # String | The caller can use this as an identifier to use as a correlation id to trace the call.
}

begin
  # Handles batch search requests by uploading a file containing search parameters.
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
  # Handles batch search requests by uploading a file containing search parameters.
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
| **avalara_version** | **String** | The HTTP Header meant to specify the version of the API intended to be used. |  |
| **name** | **String** | A &lt;b&gt;human-readable&lt;/b&gt; name for the batch search. |  |
| **notification_email** | **String** | The email address to which a notification will be sent once the batch search is complete. |  |
| **file** | **File** | CSV file containing search parameters.  Input Constraints: - Maximum file size: 1 MB - File Header: Must be less than 500 KB - Total number of lines (including header): Must be 101 or fewer |  |
| **x_avalara_client** | **String** | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \&quot;Fingerprint\&quot;. | [optional] |
| **x_correlation_id** | **String** | The caller can use this as an identifier to use as a correlation id to trace the call. | [optional] |

### Return type

[**BatchSearchParticipants202Response**](BatchSearchParticipants202Response.md)

### Authorization

[Bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## create_trading_partner

> <CreateTradingPartner201Response> create_trading_partner(avalara_version, trading_partner, opts)

Creates a new trading partner.

This endpoint creates a new trading partner with the provided details. The request body must include the necessary information as defined in the `TradingPartner` schema.

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

avalara_version = '1.4' # String | The HTTP Header meant to specify the version of the API intended to be used.
trading_partner = AvalaraSdk::EInvoicing::V1::TradingPartner.new({name: 'name_example', identifiers: [AvalaraSdk::EInvoicing::V1::Identifier.new({name: 'name_example', value: 'value_example'})], addresses: [AvalaraSdk::EInvoicing::V1::Address.new({country: 'country_example'})], supported_document_types: [AvalaraSdk::EInvoicing::V1::SupportedDocumentTypes.new({value: 'value_example', supported_by_trading_partner: false})]}) # TradingPartner | 
opts = {
  x_avalara_client: 'John's E-Invoicing-API Client', # String | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \"Fingerprint\".
  x_correlation_id: 'f3f0d19a-01a1-4748-8a58-f000d0424f43' # String | The caller can use this as an identifier to use as a correlation id to trace the call.
}

begin
  # Creates a new trading partner.
  result = api_instance.create_trading_partner(avalara_version, trading_partner, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling TradingPartnersApi->create_trading_partner: #{e}"
end
```

#### Using the create_trading_partner_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTradingPartner201Response>, Integer, Hash)> create_trading_partner_with_http_info(avalara_version, trading_partner, opts)

```ruby
begin
  # Creates a new trading partner.
  data, status_code, headers = api_instance.create_trading_partner_with_http_info(avalara_version, trading_partner, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTradingPartner201Response>
rescue AvalaraSdk::EInvoicing::V1::ApiError => e
  puts "Error when calling TradingPartnersApi->create_trading_partner_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avalara_version** | **String** | The HTTP Header meant to specify the version of the API intended to be used. |  |
| **trading_partner** | [**TradingPartner**](TradingPartner.md) |  |  |
| **x_avalara_client** | **String** | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \&quot;Fingerprint\&quot;. | [optional] |
| **x_correlation_id** | **String** | The caller can use this as an identifier to use as a correlation id to trace the call. | [optional] |

### Return type

[**CreateTradingPartner201Response**](CreateTradingPartner201Response.md)

### Authorization

[Bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_trading_partners_batch

> <CreateTradingPartnersBatch200Response> create_trading_partners_batch(avalara_version, create_trading_partners_batch_request, opts)

Creates a batch of multiple trading partners.

This endpoint creates multiple trading partners in a single batch request. It accepts an array of trading partners and processes them synchronously. Supports a maximum of 100 records or 1 MB request payload. The batch is processed atomically and partial success is not allowed.

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

avalara_version = '1.4' # String | The HTTP Header meant to specify the version of the API intended to be used.
create_trading_partners_batch_request = AvalaraSdk::EInvoicing::V1::CreateTradingPartnersBatchRequest.new # CreateTradingPartnersBatchRequest | 
opts = {
  x_avalara_client: 'John's E-Invoicing-API Client', # String | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \"Fingerprint\".
  x_correlation_id: 'f3f0d19a-01a1-4748-8a58-f000d0424f43' # String | The caller can use this as an identifier to use as a correlation id to trace the call.
}

begin
  # Creates a batch of multiple trading partners.
  result = api_instance.create_trading_partners_batch(avalara_version, create_trading_partners_batch_request, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling TradingPartnersApi->create_trading_partners_batch: #{e}"
end
```

#### Using the create_trading_partners_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTradingPartnersBatch200Response>, Integer, Hash)> create_trading_partners_batch_with_http_info(avalara_version, create_trading_partners_batch_request, opts)

```ruby
begin
  # Creates a batch of multiple trading partners.
  data, status_code, headers = api_instance.create_trading_partners_batch_with_http_info(avalara_version, create_trading_partners_batch_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTradingPartnersBatch200Response>
rescue AvalaraSdk::EInvoicing::V1::ApiError => e
  puts "Error when calling TradingPartnersApi->create_trading_partners_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avalara_version** | **String** | The HTTP Header meant to specify the version of the API intended to be used. |  |
| **create_trading_partners_batch_request** | [**CreateTradingPartnersBatchRequest**](CreateTradingPartnersBatchRequest.md) |  |  |
| **x_avalara_client** | **String** | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \&quot;Fingerprint\&quot;. | [optional] |
| **x_correlation_id** | **String** | The caller can use this as an identifier to use as a correlation id to trace the call. | [optional] |

### Return type

[**CreateTradingPartnersBatch200Response**](CreateTradingPartnersBatch200Response.md)

### Authorization

[Bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_trading_partner

> delete_trading_partner(avalara_version, id, opts)

Deletes a trading partner using ID.

This endpoint deletes an existing trading partner identified by the provided ID.

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

avalara_version = '1.4' # String | The HTTP Header meant to specify the version of the API intended to be used.
id = 'id_example' # String | The ID of the trading partner which is being deleted.
opts = {
  x_avalara_client: 'John's E-Invoicing-API Client', # String | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \"Fingerprint\".
  x_correlation_id: 'f3f0d19a-01a1-4748-8a58-f000d0424f43' # String | The caller can use this as an identifier to use as a correlation id to trace the call.
}

begin
  # Deletes a trading partner using ID.
  api_instance.delete_trading_partner(avalara_version, id, opts)
rescue AvalaraSdk::ApiError => e
  puts "Error when calling TradingPartnersApi->delete_trading_partner: #{e}"
end
```

#### Using the delete_trading_partner_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_trading_partner_with_http_info(avalara_version, id, opts)

```ruby
begin
  # Deletes a trading partner using ID.
  data, status_code, headers = api_instance.delete_trading_partner_with_http_info(avalara_version, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AvalaraSdk::EInvoicing::V1::ApiError => e
  puts "Error when calling TradingPartnersApi->delete_trading_partner_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avalara_version** | **String** | The HTTP Header meant to specify the version of the API intended to be used. |  |
| **id** | **String** | The ID of the trading partner which is being deleted. |  |
| **x_avalara_client** | **String** | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \&quot;Fingerprint\&quot;. | [optional] |
| **x_correlation_id** | **String** | The caller can use this as an identifier to use as a correlation id to trace the call. | [optional] |

### Return type

nil (empty response body)

### Authorization

[Bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## download_batch_search_report

> File download_batch_search_report(avalara_version, id, opts)

Downloads batch search results in a csv file.

This endpoint downloads the report for a specific batch search using the batch search ID. It returns a CSV file containing up to 1,000 query results.

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

avalara_version = '1.4' # String | The HTTP Header meant to specify the version of the API intended to be used.
id = '2f5ea4b5-4dae-445a-b3e4-9f65a61eaa99' # String | The ID of the batch search for which the report should be downloaded.
opts = {
  x_avalara_client: 'John's E-Invoicing-API Client', # String | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \"Fingerprint\".
  x_correlation_id: 'f3f0d19a-01a1-4748-8a58-f000d0424f43' # String | The caller can use this as an identifier to use as a correlation id to trace the call.
}

begin
  # Downloads batch search results in a csv file.
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
  # Downloads batch search results in a csv file.
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
| **avalara_version** | **String** | The HTTP Header meant to specify the version of the API intended to be used. |  |
| **id** | **String** | The ID of the batch search for which the report should be downloaded. |  |
| **x_avalara_client** | **String** | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \&quot;Fingerprint\&quot;. | [optional] |
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

Returns the batch search details using ID.

This endpoint returns detailed information for a specific batch search using the provided ID. It is useful for tracking the status and progress of a previously initiated batch search operation.

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

avalara_version = '1.4' # String | The HTTP Header meant to specify the version of the API intended to be used.
id = '2f5ea4b5-4dae-445a-b3e4-9f65a61eaa99' # String | The ID of the batch search that was submitted earlier.
opts = {
  x_avalara_client: 'John's E-Invoicing-API Client', # String | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \"Fingerprint\".
  x_correlation_id: 'f3f0d19a-01a1-4748-8a58-f000d0424f43' # String | The caller can use this as an identifier to use as a correlation id to trace the call.
}

begin
  # Returns the batch search details using ID.
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
  # Returns the batch search details using ID.
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
| **avalara_version** | **String** | The HTTP Header meant to specify the version of the API intended to be used. |  |
| **id** | **String** | The ID of the batch search that was submitted earlier. |  |
| **x_avalara_client** | **String** | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \&quot;Fingerprint\&quot;. | [optional] |
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

Lists all batch searches that were previously submitted.

This endpoint retrieves a list of all batch search operations that have been previously submitted. It returns details such as the batch search ID, status, creation date, and associated metadata. It is useful for tracking the progress of a previously initiated batch search operations.

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

avalara_version = '1.4' # String | The HTTP Header meant to specify the version of the API intended to be used.
opts = {
  x_avalara_client: 'John's E-Invoicing-API Client', # String | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \"Fingerprint\".
  filter: 'name eq 'Batch_Search_Import_V4'', # String | Filters the results by field name. Only the <code>eq</code> operator and the name field is supported. For more information, refer to [AvaTax filtering guide](https://developer.avalara.com/avatax/filtering-in-rest/).
  count: true, # Boolean | When set to <code>true</code>, returns the total count of matching records included as <code>@recordSetCount</code> in the response body.
  top: 56, # Integer | The number of items to include in the result.
  skip: 56, # Integer | The number of items to skip in the result.
  order_by: 'name desc', # String | The <code>$orderBy</code> query parameter specifies the field and sorting direction for ordering the result set. The value is a string that combines a field name and a sorting direction (asc for ascending or desc for descending), separated by a space.
  x_correlation_id: 'f3f0d19a-01a1-4748-8a58-f000d0424f43' # String | The caller can use this as an identifier to use as a correlation id to trace the call.
}

begin
  # Lists all batch searches that were previously submitted.
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
  # Lists all batch searches that were previously submitted.
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
| **avalara_version** | **String** | The HTTP Header meant to specify the version of the API intended to be used. |  |
| **x_avalara_client** | **String** | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \&quot;Fingerprint\&quot;. | [optional] |
| **filter** | **String** | Filters the results by field name. Only the &lt;code&gt;eq&lt;/code&gt; operator and the name field is supported. For more information, refer to [AvaTax filtering guide](https://developer.avalara.com/avatax/filtering-in-rest/). | [optional] |
| **count** | **Boolean** | When set to &lt;code&gt;true&lt;/code&gt;, returns the total count of matching records included as &lt;code&gt;@recordSetCount&lt;/code&gt; in the response body. | [optional] |
| **top** | **Integer** | The number of items to include in the result. | [optional] |
| **skip** | **Integer** | The number of items to skip in the result. | [optional] |
| **order_by** | **String** | The &lt;code&gt;$orderBy&lt;/code&gt; query parameter specifies the field and sorting direction for ordering the result set. The value is a string that combines a field name and a sorting direction (asc for ascending or desc for descending), separated by a space. | [optional] |
| **x_correlation_id** | **String** | The caller can use this as an identifier to use as a correlation id to trace the call. | [optional] |

### Return type

[**BatchSearchListResponse**](BatchSearchListResponse.md)

### Authorization

[Bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_participants

> <SearchParticipants200Response> search_participants(avalara_version, search, opts)

Returns a list of participants matching the input query.

This endpoint retrieves a list of trading partners that match the specified search criteria. It supports filtering, search text, and other relevant query parameters to narrow down the results.

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

avalara_version = '1.4' # String | The HTTP Header meant to specify the version of the API intended to be used.
search = 'Acme and 7726627177 or BMW' # String | Search by value supports logical <code>AND</code> / <code>OR</code> operators. Search is performed only over the name and identifier value fields. For more information, refer to [Query options overview - OData.](https://learn.microsoft.com/en-us/odata/concepts/queryoptions-overview#search).
opts = {
  x_avalara_client: 'John's E-Invoicing-API Client', # String | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \"Fingerprint\".
  count: true, # Boolean | When set to <code>true</code>, returns the total count of matching records included as <code>@recordSetCount</code> in the response body.
  filter: 'network eq 'Peppol' and country eq 'Australia'', # String | Filters the results using the <code>eq</code> operator. Supported fields: <code>network</code>, <code>country</code>, <code>documentType</code>, <code>idType</code>. For more information, refer to [AvaTax filtering guide](https://developer.avalara.com/avatax/filtering-in-rest/).
  top: 56, # Integer | The number of items to include in the result.
  skip: 56, # Integer | The number of items to skip in the result.
  order_by: 'name desc', # String | The <code>$orderBy</code> query parameter specifies the field and sorting direction for ordering the result set. The value is a string that combines a field name and a sorting direction (asc for ascending or desc for descending), separated by a space.
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

> <Array(<SearchParticipants200Response>, Integer, Hash)> search_participants_with_http_info(avalara_version, search, opts)

```ruby
begin
  # Returns a list of participants matching the input query.
  data, status_code, headers = api_instance.search_participants_with_http_info(avalara_version, search, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchParticipants200Response>
rescue AvalaraSdk::EInvoicing::V1::ApiError => e
  puts "Error when calling TradingPartnersApi->search_participants_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avalara_version** | **String** | The HTTP Header meant to specify the version of the API intended to be used. |  |
| **search** | **String** | Search by value supports logical &lt;code&gt;AND&lt;/code&gt; / &lt;code&gt;OR&lt;/code&gt; operators. Search is performed only over the name and identifier value fields. For more information, refer to [Query options overview - OData.](https://learn.microsoft.com/en-us/odata/concepts/queryoptions-overview#search). |  |
| **x_avalara_client** | **String** | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \&quot;Fingerprint\&quot;. | [optional] |
| **count** | **Boolean** | When set to &lt;code&gt;true&lt;/code&gt;, returns the total count of matching records included as &lt;code&gt;@recordSetCount&lt;/code&gt; in the response body. | [optional] |
| **filter** | **String** | Filters the results using the &lt;code&gt;eq&lt;/code&gt; operator. Supported fields: &lt;code&gt;network&lt;/code&gt;, &lt;code&gt;country&lt;/code&gt;, &lt;code&gt;documentType&lt;/code&gt;, &lt;code&gt;idType&lt;/code&gt;. For more information, refer to [AvaTax filtering guide](https://developer.avalara.com/avatax/filtering-in-rest/). | [optional] |
| **top** | **Integer** | The number of items to include in the result. | [optional] |
| **skip** | **Integer** | The number of items to skip in the result. | [optional] |
| **order_by** | **String** | The &lt;code&gt;$orderBy&lt;/code&gt; query parameter specifies the field and sorting direction for ordering the result set. The value is a string that combines a field name and a sorting direction (asc for ascending or desc for descending), separated by a space. | [optional] |
| **x_correlation_id** | **String** | The caller can use this as an identifier to use as a correlation id to trace the call. | [optional] |

### Return type

[**SearchParticipants200Response**](SearchParticipants200Response.md)

### Authorization

[Bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_trading_partner

> <UpdateTradingPartner200Response> update_trading_partner(avalara_version, id, trading_partner, opts)

Updates a trading partner using ID.

This endpoint updates the details of an existing trading partner specified by the provided ID. It performs a full update, and the request body must include all required fields.

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

avalara_version = '1.4' # String | The HTTP Header meant to specify the version of the API intended to be used.
id = 'id_example' # String | The ID of the trading partner which is being updated.
trading_partner = AvalaraSdk::EInvoicing::V1::TradingPartner.new({name: 'name_example', identifiers: [AvalaraSdk::EInvoicing::V1::Identifier.new({name: 'name_example', value: 'value_example'})], addresses: [AvalaraSdk::EInvoicing::V1::Address.new({country: 'country_example'})], supported_document_types: [AvalaraSdk::EInvoicing::V1::SupportedDocumentTypes.new({value: 'value_example', supported_by_trading_partner: false})]}) # TradingPartner | 
opts = {
  x_avalara_client: 'John's E-Invoicing-API Client', # String | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \"Fingerprint\".
  x_correlation_id: 'f3f0d19a-01a1-4748-8a58-f000d0424f43' # String | The caller can use this as an identifier to use as a correlation id to trace the call.
}

begin
  # Updates a trading partner using ID.
  result = api_instance.update_trading_partner(avalara_version, id, trading_partner, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling TradingPartnersApi->update_trading_partner: #{e}"
end
```

#### Using the update_trading_partner_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateTradingPartner200Response>, Integer, Hash)> update_trading_partner_with_http_info(avalara_version, id, trading_partner, opts)

```ruby
begin
  # Updates a trading partner using ID.
  data, status_code, headers = api_instance.update_trading_partner_with_http_info(avalara_version, id, trading_partner, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateTradingPartner200Response>
rescue AvalaraSdk::EInvoicing::V1::ApiError => e
  puts "Error when calling TradingPartnersApi->update_trading_partner_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avalara_version** | **String** | The HTTP Header meant to specify the version of the API intended to be used. |  |
| **id** | **String** | The ID of the trading partner which is being updated. |  |
| **trading_partner** | [**TradingPartner**](TradingPartner.md) |  |  |
| **x_avalara_client** | **String** | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \&quot;Fingerprint\&quot;. | [optional] |
| **x_correlation_id** | **String** | The caller can use this as an identifier to use as a correlation id to trace the call. | [optional] |

### Return type

[**UpdateTradingPartner200Response**](UpdateTradingPartner200Response.md)

### Authorization

[Bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

