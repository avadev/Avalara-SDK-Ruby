# AvalaraSdk::EInvoicing::V1::MandatesApi

All URIs are relative to *https://api.sbx.avalara.com/einvoicing*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_mandates**](MandatesApi.md#get_mandates) | **GET** /mandates | List country mandates that are supported by the Avalara E-Invoicing platform |


## get_mandates

> <MandatesResponse> get_mandates(avalara_version, opts)

List country mandates that are supported by the Avalara E-Invoicing platform

This endpoint offers a list of country mandates supported by the Avalara E-Invoicing API.

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
api_instance = AvalaraSdk::EInvoicing::V1::MandatesApi.new api_client

avalara_version = '1.0' # String | The HTTP Header meant to specify the version of the API intended to be used
opts = {
  x_avalara_client: 'John's E-Invoicing-API Client', # String | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \"Fingerprint\"
  filter: 'countryMandate eq DE-B2G-PEPPOL', # String | Filter by field name and value. This filter only supports <code>eq</code> and <code>contains</code>. Refer to [https://developer.avalara.com/avatax/filtering-in-rest/](https://developer.avalara.com/avatax/filtering-in-rest/) for more information on filtering.
  top: 10, # Float | If nonzero, return no more than this number of results. Used with <code>$skip</code> to provide pagination for large datasets. Unless otherwise specified, the maximum number of records that can be returned from an API call is 1,000 records.
  skip: 10, # Float | If nonzero, skip this number of results before returning data. Used with <code>$top</code> to provide pagination for large datasets.
  count: 'true', # Boolean | When set to true, the count of the collection is also returned in the response body.
  count_only: 'true' # Boolean | When set to true, only the count of the collection is returned
}

begin
  # List country mandates that are supported by the Avalara E-Invoicing platform
  result = api_instance.get_mandates(avalara_version, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling MandatesApi->get_mandates: #{e}"
end
```

#### Using the get_mandates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MandatesResponse>, Integer, Hash)> get_mandates_with_http_info(avalara_version, opts)

```ruby
begin
  # List country mandates that are supported by the Avalara E-Invoicing platform
  data, status_code, headers = api_instance.get_mandates_with_http_info(avalara_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MandatesResponse>
rescue AvalaraSdk::EInvoicing::V1::ApiError => e
  puts "Error when calling MandatesApi->get_mandates_with_http_info: #{e}"
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
| **count** | **Boolean** | When set to true, the count of the collection is also returned in the response body. | [optional] |
| **count_only** | **Boolean** | When set to true, only the count of the collection is returned | [optional] |

### Return type

[**MandatesResponse**](MandatesResponse.md)

### Authorization

[Bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

