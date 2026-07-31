# AvalaraSdk::A1099::V2::TINMatchesApi

All URIs are relative to *https://api-ava1099.edge.qa.us-east-1.aws.avalara.io/avalara1099*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**perform_real_time_tin_match**](TINMatchesApi.md#perform_real_time_tin_match) | **POST** /tin-matches/$real-time | Perform real time TIN Match |


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
  x_correlation_id: '86993e01-0897-4667-b8f3-bac8c0081c4c', # String | Unique correlation Id in a GUID format
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

