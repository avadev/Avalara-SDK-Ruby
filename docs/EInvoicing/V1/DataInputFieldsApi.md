# AvalaraSdk::EInvoicing::V1::DataInputFieldsApi

All URIs are relative to *https://api.sbx.avalara.com/einvoicing*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_data_input_fields**](DataInputFieldsApi.md#get_data_input_fields) | **GET** /data-input-fields | Returns the mandatory and conditional invoice or creditnote input fields for different country mandates |


## get_data_input_fields

> <DataInputFieldsResponse> get_data_input_fields(avalara_version, opts)

Returns the mandatory and conditional invoice or creditnote input fields for different country mandates

This endpoint provides a list of required, conditional, and optional fields for each country mandate. You can use the <code>mandates</code> endpoint to retrieve all available country mandates. You can use the $filter query parameter to retrieve fields for a particular mandate

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

avalara_version = '1.0' # String | The HTTP Header meant to specify the version of the API intended to be used
opts = {
  x_avalara_client: 'John's E-Invoicing-API Client', # String | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \"Fingerprint\"
  filter: 'requiredFor/countryMandate eq AU-B2G-PEPPOL', # String | Filter by field name and value. This filter only supports <code>eq</code> and <code>contains</code>. Refer to [https://developer.avalara.com/avatax/filtering-in-rest/](https://developer.avalara.com/avatax/filtering-in-rest/) for more information on filtering.
  top: 10, # Float | If nonzero, return no more than this number of results. Used with <code>$skip</code> to provide pagination for large datasets. Unless otherwise specified, the maximum number of records that can be returned from an API call is 1,000 records.
  skip: 10, # Float | If nonzero, skip this number of results before returning data. Used with <code>$top</code> to provide pagination for large datasets.
  count: 'true', # Boolean | When set to true, the count of the collection is also returned in the response body
  count_only: 'true' # Boolean | When set to true, only the count of the collection is returned
}

begin
  # Returns the mandatory and conditional invoice or creditnote input fields for different country mandates
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
  # Returns the mandatory and conditional invoice or creditnote input fields for different country mandates
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
| **avalara_version** | **String** | The HTTP Header meant to specify the version of the API intended to be used |  |
| **x_avalara_client** | **String** | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \&quot;Fingerprint\&quot; | [optional] |
| **filter** | **String** | Filter by field name and value. This filter only supports &lt;code&gt;eq&lt;/code&gt; and &lt;code&gt;contains&lt;/code&gt;. Refer to [https://developer.avalara.com/avatax/filtering-in-rest/](https://developer.avalara.com/avatax/filtering-in-rest/) for more information on filtering. | [optional] |
| **top** | **Float** | If nonzero, return no more than this number of results. Used with &lt;code&gt;$skip&lt;/code&gt; to provide pagination for large datasets. Unless otherwise specified, the maximum number of records that can be returned from an API call is 1,000 records. | [optional] |
| **skip** | **Float** | If nonzero, skip this number of results before returning data. Used with &lt;code&gt;$top&lt;/code&gt; to provide pagination for large datasets. | [optional] |
| **count** | **Boolean** | When set to true, the count of the collection is also returned in the response body | [optional] |
| **count_only** | **Boolean** | When set to true, only the count of the collection is returned | [optional] |

### Return type

[**DataInputFieldsResponse**](DataInputFieldsResponse.md)

### Authorization

[Bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

