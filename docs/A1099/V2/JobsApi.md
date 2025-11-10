# AvalaraSdk::A1099::V2::JobsApi

All URIs are relative to *https://api.sbx.avalara.com/avalara1099*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_job**](JobsApi.md#get_job) | **GET** /jobs/{id} | Retrieves information about the job |


## get_job

> <JobResponse> get_job(id, avalara_version, opts)

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
api_instance = AvalaraSdk::A1099::V2::JobsApi.new api_client

id = 'id_example' # String | Job id obtained from other API responses, like `/1099/bulk-upsert`.
avalara_version = '2.0.0' # String | API version
opts = {
  x_correlation_id: '120bb5f5-b0ca-4c10-8790-142f997e8336', # String | Unique correlation Id in a GUID format
  x_avalara_client: 'Swagger UI; 22.1.0' # String | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .
}

begin
  # Retrieves information about the job
  result = api_instance.get_job(id, avalara_version, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling JobsApi->get_job: #{e}"
end
```

#### Using the get_job_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobResponse>, Integer, Hash)> get_job_with_http_info(id, avalara_version, opts)

```ruby
begin
  # Retrieves information about the job
  data, status_code, headers = api_instance.get_job_with_http_info(id, avalara_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobResponse>
rescue AvalaraSdk::A1099::V2::ApiError => e
  puts "Error when calling JobsApi->get_job_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Job id obtained from other API responses, like &#x60;/1099/bulk-upsert&#x60;. |  |
| **avalara_version** | **String** | API version |  |
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format | [optional] |
| **x_avalara_client** | **String** | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) . | [optional] |

### Return type

[**JobResponse**](JobResponse.md)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

