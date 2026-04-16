# AvalaraSdk::EInvoicing::V1::CodeListsApi

All URIs are relative to *https://api.sbx.avalara.com/einvoicing*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_code_list**](CodeListsApi.md#get_code_list) | **GET** /codelists/{codelistId} | Retrieves a code list by ID for a specific country |
| [**get_code_list_list**](CodeListsApi.md#get_code_list_list) | **GET** /codelists | Returns a list of code lists for a specific country |


## get_code_list

> <CodeListResponse> get_code_list(avalara_version, codelist_id, country_code, opts)

Retrieves a code list by ID for a specific country

A Code List is a controlled set of predefined, standardized values used to populate specific fields in electronic documents (such as e-invoices). Each code has a stable, machine-readable identifier and a human-readable description. Code Lists are typically based on global standards (e.g., UN/CEFACT, ISO, EN16931) and may include jurisdiction-specific extensions or restrictions.<br><br>Code Lists are versioned, and each version may have defined effective and sunset dates to ensure that the correct set of allowable values is applied according to regulatory or jurisdictional requirements.<br><br>By default, the API returns only non-expired code list versions (versions where the sunset date has not passed). To retrieve expired versions or filter by specific date ranges, use the <code>effectiveDate</code> and <code>sunsetDate</code> query parameters.

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
api_instance = AvalaraSdk::EInvoicing::V1::CodeListsApi.new api_client

avalara_version = '1.6' # String | Header that specifies the API version to use (for example \"1.6\").
codelist_id = 'ab123343-3432-423c-ac3f-53453scs9999' # String | System-generated unique identifier of the code list definition. Typically a UUID used to reference this code list internally or via APIs.
country_code = 'FR' # String | Two-letter ISO 3166-1 alpha-2 country code indicating the jurisdiction this code list applies to.
opts = {
  x_avalara_client: 'John's E-Invoicing-API Client', # String | Optional header for a client identifier string used for diagnostics (for example \"Fingerprint\").
  effective_date: Date.parse('Tue Dec 31 16:00:00 PST 2024'), # Date | Filter code list versions by effective date. Returns versions that are effective on or before this date. Format: YYYY-MM-DD (ISO 8601). If not specified, defaults to the current date. sunsetDate is required when effectiveDate is provided.
  sunset_date: Date.parse('Wed Dec 30 16:00:00 PST 2026') # Date | Filter code list versions by sunset date. Returns versions that have not yet sunset on or before this date. Format: YYYY-MM-DD (ISO 8601). If not specified, only non-expired versions are returned.
}

begin
  # Retrieves a code list by ID for a specific country
  result = api_instance.get_code_list(avalara_version, codelist_id, country_code, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling CodeListsApi->get_code_list: #{e}"
end
```

#### Using the get_code_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CodeListResponse>, Integer, Hash)> get_code_list_with_http_info(avalara_version, codelist_id, country_code, opts)

```ruby
begin
  # Retrieves a code list by ID for a specific country
  data, status_code, headers = api_instance.get_code_list_with_http_info(avalara_version, codelist_id, country_code, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CodeListResponse>
rescue AvalaraSdk::EInvoicing::V1::ApiError => e
  puts "Error when calling CodeListsApi->get_code_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avalara_version** | **String** | Header that specifies the API version to use (for example \&quot;1.6\&quot;). |  |
| **codelist_id** | **String** | System-generated unique identifier of the code list definition. Typically a UUID used to reference this code list internally or via APIs. |  |
| **country_code** | **String** | Two-letter ISO 3166-1 alpha-2 country code indicating the jurisdiction this code list applies to. |  |
| **x_avalara_client** | **String** | Optional header for a client identifier string used for diagnostics (for example \&quot;Fingerprint\&quot;). | [optional] |
| **effective_date** | **Date** | Filter code list versions by effective date. Returns versions that are effective on or before this date. Format: YYYY-MM-DD (ISO 8601). If not specified, defaults to the current date. sunsetDate is required when effectiveDate is provided. | [optional] |
| **sunset_date** | **Date** | Filter code list versions by sunset date. Returns versions that have not yet sunset on or before this date. Format: YYYY-MM-DD (ISO 8601). If not specified, only non-expired versions are returned. | [optional] |

### Return type

[**CodeListResponse**](CodeListResponse.md)

### Authorization

[Bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_code_list_list

> <CodeListListResponse> get_code_list_list(avalara_version, country_code, opts)

Returns a list of code lists for a specific country

Get a list of code lists on the Avalara E-Invoicing platform for the specified country. By default, the API returns only non-expired code lists (code lists where the sunset date has not passed). To retrieve expired code lists or filter by specific date ranges, use the <code>effectiveDate</code> and <code>sunsetDate</code> query parameters.<br><br>A Code List is a controlled set of predefined, standardized values used to populate specific fields in electronic documents (such as e-invoices). Each code has a stable, machine-readable identifier and a human-readable description. Code Lists are typically based on global standards (e.g., UN/CEFACT, ISO, EN16931) and may include jurisdiction-specific extensions or restrictions.

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
api_instance = AvalaraSdk::EInvoicing::V1::CodeListsApi.new api_client

avalara_version = '1.6' # String | Header that specifies the API version to use (for example \"1.6\").
country_code = 'FR' # String | Two-letter ISO 3166-1 alpha-2 country code indicating the jurisdiction for which code lists should be returned.
opts = {
  x_avalara_client: 'John's E-Invoicing-API Client', # String | Optional header for a client identifier string used for diagnostics (for example \"Fingerprint\").
  effective_date: Date.parse('Tue Dec 31 16:00:00 PST 2024'), # Date | Filter code lists by effective date. Returns code lists that are effective on or before this date. Format: YYYY-MM-DD (ISO 8601). If not specified, defaults to the current date. sunsetDate is required when effectiveDate is provided.
  sunset_date: Date.parse('Wed Dec 30 16:00:00 PST 2026'), # Date | Filter code lists by sunset date. Returns code lists that have not yet sunset on or before this date. Format: YYYY-MM-DD (ISO 8601). If not specified, only non-expired code lists are returned.
  count: 'true', # String | When set to true, the response body also includes the count of items in the collection.
  count_only: 'false', # String | When set to true, the response returns only the count of items in the collection.
  top: 56, # Integer | The number of items to include in the result.
  skip: 56 # Integer | The number of items to skip in the result.
}

begin
  # Returns a list of code lists for a specific country
  result = api_instance.get_code_list_list(avalara_version, country_code, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling CodeListsApi->get_code_list_list: #{e}"
end
```

#### Using the get_code_list_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CodeListListResponse>, Integer, Hash)> get_code_list_list_with_http_info(avalara_version, country_code, opts)

```ruby
begin
  # Returns a list of code lists for a specific country
  data, status_code, headers = api_instance.get_code_list_list_with_http_info(avalara_version, country_code, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CodeListListResponse>
rescue AvalaraSdk::EInvoicing::V1::ApiError => e
  puts "Error when calling CodeListsApi->get_code_list_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avalara_version** | **String** | Header that specifies the API version to use (for example \&quot;1.6\&quot;). |  |
| **country_code** | **String** | Two-letter ISO 3166-1 alpha-2 country code indicating the jurisdiction for which code lists should be returned. |  |
| **x_avalara_client** | **String** | Optional header for a client identifier string used for diagnostics (for example \&quot;Fingerprint\&quot;). | [optional] |
| **effective_date** | **Date** | Filter code lists by effective date. Returns code lists that are effective on or before this date. Format: YYYY-MM-DD (ISO 8601). If not specified, defaults to the current date. sunsetDate is required when effectiveDate is provided. | [optional] |
| **sunset_date** | **Date** | Filter code lists by sunset date. Returns code lists that have not yet sunset on or before this date. Format: YYYY-MM-DD (ISO 8601). If not specified, only non-expired code lists are returned. | [optional] |
| **count** | **String** | When set to true, the response body also includes the count of items in the collection. | [optional] |
| **count_only** | **String** | When set to true, the response returns only the count of items in the collection. | [optional] |
| **top** | **Integer** | The number of items to include in the result. | [optional] |
| **skip** | **Integer** | The number of items to skip in the result. | [optional] |

### Return type

[**CodeListListResponse**](CodeListListResponse.md)

### Authorization

[Bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

