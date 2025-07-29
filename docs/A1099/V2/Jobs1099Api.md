# AvalaraSdk::A1099::V2::Jobs1099Api

All URIs are relative to *https://api-ava1099.eta.sbx.us-east-1.aws.avalara.io/avalara1099*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_job**](Jobs1099Api.md#get_job) | **GET** /1099/jobs/{id} | Retrieves information about the job |


## get_job

> <JobResult> get_job(id, avalara_version, opts)

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
avalara_version = '2.0.0' # String | API version
opts = {
  x_correlation_id: '0d84e31f-0d44-4920-9f1b-5daa360e7925', # String | Unique correlation Id in a GUID format
  x_avalara_client: 'Swagger UI; 22.1.0' # String | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .
}

begin
  # Retrieves information about the job
  result = api_instance.get_job(id, avalara_version, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling Jobs1099Api->get_job: #{e}"
end
```

#### Using the get_job_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobResult>, Integer, Hash)> get_job_with_http_info(id, avalara_version, opts)

```ruby
begin
  # Retrieves information about the job
  data, status_code, headers = api_instance.get_job_with_http_info(id, avalara_version, opts)
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
| **x_correlation_id** | **String** | Unique correlation Id in a GUID format | [optional] |
| **x_avalara_client** | **String** | Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) . | [optional] |

### Return type

[**JobResult**](JobResult.md)

### Authorization

[bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

