# AvalaraSdk::EInvoicing::V1::DataInputFieldsApi

All URIs are relative to *https://api.sbx.avalara.com/einvoicing*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_data_input_fields**](DataInputFieldsApi.md#get_data_input_fields) | **GET** /data-input-fields | Returns the optionality of document fields for different country mandates |


## get_data_input_fields

> <DataInputFieldsResponse> get_data_input_fields(avalara_version, opts)

Returns the optionality of document fields for different country mandates

This endpoint returns a list of required, conditional, and optional fields for each country mandate. Use the mandates endpoint to retrieve all available country mandates. Use the $filter query parameter to retrieve fields for a specific mandate.

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
api_instance = AvalaraSdk::EInvoicing::V1::DataInputFieldsApi.new api_client

avalara_version = '1.6' # String | Header that specifies the API version to use (for example \"1.6\").
opts = {
  x_avalara_client: 'John's E-Invoicing-API Client', # String | Optional header for a client identifier string used for diagnostics (for example \"Fingerprint\").
  filter: 'requiredFor/countryMandate eq AU-B2G-PEPPOL', # String | Filter by field name and value. This filter supports only eq and contains. For more information, refer to the Avalara filtering guide.
  top: 56, # Integer | The number of items to include in the result.
  skip: 56, # Integer | The number of items to skip in the result.
  count: 'true', # Boolean | When set to true, the response body also includes the count of items in the collection.
  count_only: 'true' # Boolean | When set to true, the response returns only the count of items in the collection.
}

begin
  # Returns the optionality of document fields for different country mandates
  result = api_instance.get_data_input_fields(avalara_version, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling DataInputFieldsApi->get_data_input_fields: #{e}"
end
```

#### Using the get_data_input_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DataInputFieldsResponse>, Integer, Hash)> get_data_input_fields_with_http_info(avalara_version, opts)

```ruby
begin
  # Returns the optionality of document fields for different country mandates
  data, status_code, headers = api_instance.get_data_input_fields_with_http_info(avalara_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DataInputFieldsResponse>
rescue AvalaraSdk::EInvoicing::V1::ApiError => e
  puts "Error when calling DataInputFieldsApi->get_data_input_fields_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avalara_version** | **String** | Header that specifies the API version to use (for example \&quot;1.6\&quot;). |  |
| **x_avalara_client** | **String** | Optional header for a client identifier string used for diagnostics (for example \&quot;Fingerprint\&quot;). | [optional] |
| **filter** | **String** | Filter by field name and value. This filter supports only eq and contains. For more information, refer to the Avalara filtering guide. | [optional] |
| **top** | **Integer** | The number of items to include in the result. | [optional] |
| **skip** | **Integer** | The number of items to skip in the result. | [optional] |
| **count** | **Boolean** | When set to true, the response body also includes the count of items in the collection. | [optional] |
| **count_only** | **Boolean** | When set to true, the response returns only the count of items in the collection. | [optional] |

### Return type

[**DataInputFieldsResponse**](DataInputFieldsResponse.md)

### Authorization

[Bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

