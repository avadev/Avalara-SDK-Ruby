# AvalaraSdk::EInvoicing::V1::ReportsApi

All URIs are relative to *https://api.sbx.avalara.com/einvoicing*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**download_report**](ReportsApi.md#download_report) | **GET** /reports/{reportId}/$download | Returns a pre-signed download URL for a report |
| [**get_report_by_id**](ReportsApi.md#get_report_by_id) | **GET** /reports/{reportId}/status | Retrieves a report by its unique ID |
| [**get_reports**](ReportsApi.md#get_reports) | **GET** /reports | Returns a list of reports |


## download_report

> <ReportDownloadResponse> download_report(avalara_version, report_id, opts)

Returns a pre-signed download URL for a report

Returns a pre-signed URL to download the report file when it is available. If the report has not yet been generated, a 404 (not found) is returned.

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
api_instance = AvalaraSdk::EInvoicing::V1::ReportsApi.new api_client

avalara_version = '1.6' # String | Header that specifies the API version to use (for example \"1.6\").
report_id = 'report_id_example' # String | The unique ID for this report as returned in a GET /reports response.
opts = {
  x_avalara_client: 'John's E-Invoicing-API Client', # String | Optional header for a client identifier string used for diagnostics (for example \"Fingerprint\").
  x_correlation_id: 'f3f0d19a-01a1-4748-8a58-f000d0424f43' # String | Optional correlation identifier provided by the caller to trace the call (for example \"f3f0d19a-01a1-4748-8a58-f000d0424f43\").
}

begin
  # Returns a pre-signed download URL for a report
  result = api_instance.download_report(avalara_version, report_id, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling ReportsApi->download_report: #{e}"
end
```

#### Using the download_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportDownloadResponse>, Integer, Hash)> download_report_with_http_info(avalara_version, report_id, opts)

```ruby
begin
  # Returns a pre-signed download URL for a report
  data, status_code, headers = api_instance.download_report_with_http_info(avalara_version, report_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportDownloadResponse>
rescue AvalaraSdk::EInvoicing::V1::ApiError => e
  puts "Error when calling ReportsApi->download_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avalara_version** | **String** | Header that specifies the API version to use (for example \&quot;1.6\&quot;). |  |
| **report_id** | **String** | The unique ID for this report as returned in a GET /reports response. |  |
| **x_avalara_client** | **String** | Optional header for a client identifier string used for diagnostics (for example \&quot;Fingerprint\&quot;). | [optional] |
| **x_correlation_id** | **String** | Optional correlation identifier provided by the caller to trace the call (for example \&quot;f3f0d19a-01a1-4748-8a58-f000d0424f43\&quot;). | [optional] |

### Return type

[**ReportDownloadResponse**](ReportDownloadResponse.md)

### Authorization

[Bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_report_by_id

> <ReportItem> get_report_by_id(avalara_version, report_id, opts)

Retrieves a report by its unique ID

Retrieves a specific report by its unique identifier. Returns complete report details including metadata, status, and associated information.

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
api_instance = AvalaraSdk::EInvoicing::V1::ReportsApi.new api_client

avalara_version = '1.6' # String | Header that specifies the API version to use (for example \"1.6\").
report_id = 'report_id_example' # String | The unique ID for this report as returned in a GET /reports response.
opts = {
  x_avalara_client: 'John's E-Invoicing-API Client', # String | Optional header for a client identifier string used for diagnostics (for example \"Fingerprint\").
  x_correlation_id: 'f3f0d19a-01a1-4748-8a58-f000d0424f43' # String | Optional correlation identifier provided by the caller to trace the call (for example \"f3f0d19a-01a1-4748-8a58-f000d0424f43\").
}

begin
  # Retrieves a report by its unique ID
  result = api_instance.get_report_by_id(avalara_version, report_id, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling ReportsApi->get_report_by_id: #{e}"
end
```

#### Using the get_report_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportItem>, Integer, Hash)> get_report_by_id_with_http_info(avalara_version, report_id, opts)

```ruby
begin
  # Retrieves a report by its unique ID
  data, status_code, headers = api_instance.get_report_by_id_with_http_info(avalara_version, report_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportItem>
rescue AvalaraSdk::EInvoicing::V1::ApiError => e
  puts "Error when calling ReportsApi->get_report_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avalara_version** | **String** | Header that specifies the API version to use (for example \&quot;1.6\&quot;). |  |
| **report_id** | **String** | The unique ID for this report as returned in a GET /reports response. |  |
| **x_avalara_client** | **String** | Optional header for a client identifier string used for diagnostics (for example \&quot;Fingerprint\&quot;). | [optional] |
| **x_correlation_id** | **String** | Optional correlation identifier provided by the caller to trace the call (for example \&quot;f3f0d19a-01a1-4748-8a58-f000d0424f43\&quot;). | [optional] |

### Return type

[**ReportItem**](ReportItem.md)

### Authorization

[Bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_reports

> <ReportListResponse> get_reports(avalara_version, opts)

Returns a list of reports

Retrieves all reports with optional filtering, paging, and sorting. Results are filtered by tenant. Supports OData-style filtering using the $filter parameter. Use $top and $skip for paging; when more results exist, the response includes @nextLink to fetch the next page. Default sort order is by report generation date (descending).

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
api_instance = AvalaraSdk::EInvoicing::V1::ReportsApi.new api_client

avalara_version = '1.6' # String | Header that specifies the API version to use (for example \"1.6\").
opts = {
  x_avalara_client: 'John's E-Invoicing-API Client', # String | Optional header for a client identifier string used for diagnostics (for example \"Fingerprint\").
  x_correlation_id: 'f3f0d19a-01a1-4748-8a58-f000d0424f43', # String | Optional correlation identifier provided by the caller to trace the call (for example \"f3f0d19a-01a1-4748-8a58-f000d0424f43\").
  filter: 'status eq 'COMPLETED'', # String | OData-style filter expression. Supports operators: eq, ne, gt, ge, lt, le, like, ilike, contains. Examples: status eq 'COMPLETED', reportGenerateDate gt '2025-11-01', transactionIds contains 'TXN-2025-001'
  top: 56, # Integer | The number of items to include in the result.
  skip: 56, # Integer | The number of items to skip in the result.
  count: 'true', # String | When set to true, the response body also includes the count of items in the collection.
  count_only: 'false', # String | When set to true, the response returns only the count of items in the collection.
  orderby: 'reportGenerateDate desc' # String | OData-style orderby expression. Format: 'field asc' or 'field desc'. Default: reportGenerateDate desc
}

begin
  # Returns a list of reports
  result = api_instance.get_reports(avalara_version, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling ReportsApi->get_reports: #{e}"
end
```

#### Using the get_reports_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportListResponse>, Integer, Hash)> get_reports_with_http_info(avalara_version, opts)

```ruby
begin
  # Returns a list of reports
  data, status_code, headers = api_instance.get_reports_with_http_info(avalara_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportListResponse>
rescue AvalaraSdk::EInvoicing::V1::ApiError => e
  puts "Error when calling ReportsApi->get_reports_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avalara_version** | **String** | Header that specifies the API version to use (for example \&quot;1.6\&quot;). |  |
| **x_avalara_client** | **String** | Optional header for a client identifier string used for diagnostics (for example \&quot;Fingerprint\&quot;). | [optional] |
| **x_correlation_id** | **String** | Optional correlation identifier provided by the caller to trace the call (for example \&quot;f3f0d19a-01a1-4748-8a58-f000d0424f43\&quot;). | [optional] |
| **filter** | **String** | OData-style filter expression. Supports operators: eq, ne, gt, ge, lt, le, like, ilike, contains. Examples: status eq &#39;COMPLETED&#39;, reportGenerateDate gt &#39;2025-11-01&#39;, transactionIds contains &#39;TXN-2025-001&#39; | [optional] |
| **top** | **Integer** | The number of items to include in the result. | [optional] |
| **skip** | **Integer** | The number of items to skip in the result. | [optional] |
| **count** | **String** | When set to true, the response body also includes the count of items in the collection. | [optional] |
| **count_only** | **String** | When set to true, the response returns only the count of items in the collection. | [optional] |
| **orderby** | **String** | OData-style orderby expression. Format: &#39;field asc&#39; or &#39;field desc&#39;. Default: reportGenerateDate desc | [optional][default to &#39;reportGenerateDate desc&#39;] |

### Return type

[**ReportListResponse**](ReportListResponse.md)

### Authorization

[Bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

