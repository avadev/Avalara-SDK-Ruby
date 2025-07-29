# AvalaraSdk::EInvoicing::V1::InteropApi

All URIs are relative to *https://api.sbx.avalara.com/einvoicing*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**submit_interop_document**](InteropApi.md#submit_interop_document) | **POST** /interop/documents | Submit a document |


## submit_interop_document

> <SubmitInteropDocument202Response> submit_interop_document(document_type, interchange_type, avalara_version, opts)

Submit a document

This API used by the interoperability partners to submit a document to  their trading partners in Avalara on behalf of their customers. 

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
api_instance = AvalaraSdk::EInvoicing::V1::InteropApi.new api_client

document_type = 'ubl-invoice-2.1' # String | Type of the document being uploaded. Partners will be configured in Avalara system to send only certain types of documents.
interchange_type = 'FI-B2B-TIEKE' # String | Type of interchange (codes in Avalara system that uniquely identifies a type of interchange). Partners will be configured in Avalara system to send documents belonging to certain types of interchanges.
avalara_version = '1.4' # String | The HTTP Header meant to specify the version of the API intended to be used
opts = {
  x_avalara_client: 'John's E-Invoicing-API Client', # String | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \"Fingerprint\"
  x_correlation_id: 'f3f0d19a-01a1-4748-8a58-f000d0424f43', # String | The caller can use this as an identifier to use as a correlation id to trace the call.
  file_name: File.new('/path/to/some/file') # File | The file to be uploaded (e.g., UBL XML, CII XML).
}

begin
  # Submit a document
  result = api_instance.submit_interop_document(document_type, interchange_type, avalara_version, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling InteropApi->submit_interop_document: #{e}"
end
```

#### Using the submit_interop_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubmitInteropDocument202Response>, Integer, Hash)> submit_interop_document_with_http_info(document_type, interchange_type, avalara_version, opts)

```ruby
begin
  # Submit a document
  data, status_code, headers = api_instance.submit_interop_document_with_http_info(document_type, interchange_type, avalara_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubmitInteropDocument202Response>
rescue AvalaraSdk::EInvoicing::V1::ApiError => e
  puts "Error when calling InteropApi->submit_interop_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document_type** | **String** | Type of the document being uploaded. Partners will be configured in Avalara system to send only certain types of documents. |  |
| **interchange_type** | **String** | Type of interchange (codes in Avalara system that uniquely identifies a type of interchange). Partners will be configured in Avalara system to send documents belonging to certain types of interchanges. |  |
| **avalara_version** | **String** | The HTTP Header meant to specify the version of the API intended to be used |  |
| **x_avalara_client** | **String** | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a \&quot;Fingerprint\&quot; | [optional] |
| **x_correlation_id** | **String** | The caller can use this as an identifier to use as a correlation id to trace the call. | [optional] |
| **file_name** | **File** | The file to be uploaded (e.g., UBL XML, CII XML). | [optional] |

### Return type

[**SubmitInteropDocument202Response**](SubmitInteropDocument202Response.md)

### Authorization

[Bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

