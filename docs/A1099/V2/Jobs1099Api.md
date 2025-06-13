# AvalaraSdk::A1099::V2::Jobs1099Api

All URIs are relative to *https://api-ava1099.eta.sbx.us-east-1.aws.avalara.io/avalara1099*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_job**](Jobs1099Api.md#get_job) | **GET** /1099/jobs/{id} | Retrieves information about the job |


## get_job

> <JobResult> get_job(id, avalara_version, x_correlation_id)

Retrieves information about the job

Retrieves information about the job

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
api_instance = AvalaraSdk::A1099::V2::Jobs1099Api.new api_client

id = 'id_example' # String | Job id obtained from other API responses, like `/1099/bulk-upsert`.
avalara_version = '2.0' # String | API version
x_correlation_id = '68c7de82-2685-4e81-b0e9-77a78d3c601b' # String | Unique correlation Id in a GUID format

begin
  # Retrieves information about the job
  result = api_instance.get_job(id, avalara_version, x_correlation_id)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling Jobs1099Api->get_job: #{e}"
end
```

#### Using the get_job_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobResult>, Integer, Hash)> get_job_with_http_info(id, avalara_version, x_correlation_id)

```ruby
begin
  # Retrieves information about the job
  data, status_code, headers = api_instance.get_job_with_http_info(id, avalara_version, x_correlation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobResult>
rescue AvalaraSdk::A1099::V2::ApiError => e
  puts "Error when calling Jobs1099Api->get_job_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Job id obtained from other API responses, like &#x60;/1099/bulk-upsert&#x60;. |  |
| **avalara_version** | **String** | API version |  |
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format |  |

### Return type

[**JobResult**](JobResult.md)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

