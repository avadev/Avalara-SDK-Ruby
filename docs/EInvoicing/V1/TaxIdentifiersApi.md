# AvalaraSdk::EInvoicing::V1::TaxIdentifiersApi

All URIs are relative to *https://api.sbx.avalara.com/einvoicing*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**tax_identifier_schema_by_country**](TaxIdentifiersApi.md#tax_identifier_schema_by_country) | **GET** /tax-identifiers/schema | Returns the tax identifier request &amp; response schema for a specific country. |
| [**validate_tax_identifier**](TaxIdentifiersApi.md#validate_tax_identifier) | **POST** /tax-identifiers/validate | Validates a tax identifier. |


## tax_identifier_schema_by_country

> <TaxIdentifierSchemaByCountry200Response> tax_identifier_schema_by_country(avalara_version, country_code, opts)

Returns the tax identifier request & response schema for a specific country.

This endpoint retrieves the request and response schema required to validate tax identifiers based on a specific country's requirements. This can include both standard fields and any additional parameters required by the respective country's tax authority.

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
api_instance = AvalaraSdk::EInvoicing::V1::TaxIdentifiersApi.new api_client

avalara_version = '1.4' # String | The HTTP Header meant to specify the version of the API intended to be used.
country_code = 'DE' # String | The two-letter ISO-3166 country code for which the schema should be retrieved.
opts = {
  x_avalara_client: 'John's E-Invoicing-API Client', # String | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \"Fingerprint\".
  x_correlation_id: 'f3f0d19a-01a1-4748-8a58-f000d0424f43', # String | The caller can use this as an identifier to use as a correlation id to trace the call.
  type: 'request' # String | Specifies whether to return the request or response schema.
}

begin
  # Returns the tax identifier request & response schema for a specific country.
  result = api_instance.tax_identifier_schema_by_country(avalara_version, country_code, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling TaxIdentifiersApi->tax_identifier_schema_by_country: #{e}"
end
```

#### Using the tax_identifier_schema_by_country_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaxIdentifierSchemaByCountry200Response>, Integer, Hash)> tax_identifier_schema_by_country_with_http_info(avalara_version, country_code, opts)

```ruby
begin
  # Returns the tax identifier request & response schema for a specific country.
  data, status_code, headers = api_instance.tax_identifier_schema_by_country_with_http_info(avalara_version, country_code, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaxIdentifierSchemaByCountry200Response>
rescue AvalaraSdk::EInvoicing::V1::ApiError => e
  puts "Error when calling TaxIdentifiersApi->tax_identifier_schema_by_country_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avalara_version** | **String** | The HTTP Header meant to specify the version of the API intended to be used. |  |
| **country_code** | **String** | The two-letter ISO-3166 country code for which the schema should be retrieved. |  |
| **x_avalara_client** | **String** | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \&quot;Fingerprint\&quot;. | [optional] |
| **x_correlation_id** | **String** | The caller can use this as an identifier to use as a correlation id to trace the call. | [optional] |
| **type** | **String** | Specifies whether to return the request or response schema. | [optional] |

### Return type

[**TaxIdentifierSchemaByCountry200Response**](TaxIdentifierSchemaByCountry200Response.md)

### Authorization

[Bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## validate_tax_identifier

> <TaxIdentifierResponse> validate_tax_identifier(avalara_version, tax_identifier_request, opts)

Validates a tax identifier.

This endpoint verifies whether a given tax identifier is valid and properly formatted according to the rules of the applicable country or tax system.

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
api_instance = AvalaraSdk::EInvoicing::V1::TaxIdentifiersApi.new api_client

avalara_version = '1.4' # String | The HTTP Header meant to specify the version of the API intended to be used.
tax_identifier_request = AvalaraSdk::EInvoicing::V1::TaxIdentifierRequest.new({country_code: 'country_code_example', identifier_type: 'identifier_type_example', identifier: 'identifier_example'}) # TaxIdentifierRequest | 
opts = {
  x_avalara_client: 'John's E-Invoicing-API Client', # String | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \"Fingerprint\".
  x_correlation_id: 'f3f0d19a-01a1-4748-8a58-f000d0424f43' # String | The caller can use this as an identifier to use as a correlation id to trace the call.
}

begin
  # Validates a tax identifier.
  result = api_instance.validate_tax_identifier(avalara_version, tax_identifier_request, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling TaxIdentifiersApi->validate_tax_identifier: #{e}"
end
```

#### Using the validate_tax_identifier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaxIdentifierResponse>, Integer, Hash)> validate_tax_identifier_with_http_info(avalara_version, tax_identifier_request, opts)

```ruby
begin
  # Validates a tax identifier.
  data, status_code, headers = api_instance.validate_tax_identifier_with_http_info(avalara_version, tax_identifier_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaxIdentifierResponse>
rescue AvalaraSdk::EInvoicing::V1::ApiError => e
  puts "Error when calling TaxIdentifiersApi->validate_tax_identifier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avalara_version** | **String** | The HTTP Header meant to specify the version of the API intended to be used. |  |
| **tax_identifier_request** | [**TaxIdentifierRequest**](TaxIdentifierRequest.md) |  |  |
| **x_avalara_client** | **String** | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \&quot;Fingerprint\&quot;. | [optional] |
| **x_correlation_id** | **String** | The caller can use this as an identifier to use as a correlation id to trace the call. | [optional] |

### Return type

[**TaxIdentifierResponse**](TaxIdentifierResponse.md)

### Authorization

[Bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

