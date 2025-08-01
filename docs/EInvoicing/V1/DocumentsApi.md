# AvalaraSdk::EInvoicing::V1::DocumentsApi

All URIs are relative to *https://api.sbx.avalara.com/einvoicing*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**download_document**](DocumentsApi.md#download_document) | **GET** /documents/{documentId}/$download | Returns a copy of the document |
| [**fetch_documents**](DocumentsApi.md#fetch_documents) | **POST** /documents/$fetch | Fetch the inbound document from a tax authority |
| [**get_document_list**](DocumentsApi.md#get_document_list) | **GET** /documents | Returns a summary of documents for a date range |
| [**get_document_status**](DocumentsApi.md#get_document_status) | **GET** /documents/{documentId}/status | Checks the status of a document |
| [**submit_document**](DocumentsApi.md#submit_document) | **POST** /documents | Submits a document to Avalara E-Invoicing API |


## download_document

> File download_document(avalara_version, accept, document_id, opts)

Returns a copy of the document

When the document is available, use this endpoint to download it as text, XML, or PDF. The output format needs to be specified in the Accept header, and it will vary depending on the mandate. If the file has not yet been created, then status code 404 (not found) is returned.

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
api_instance = AvalaraSdk::EInvoicing::V1::DocumentsApi.new api_client

avalara_version = '1.4' # String | The HTTP Header meant to specify the version of the API intended to be used
accept = 'application/pdf' # String | This header indicates the MIME type of the document
document_id = 'document_id_example' # String | The unique ID for this document that was returned in the POST /einvoicing/document response body
opts = {
  x_avalara_client: 'John's E-Invoicing-API Client' # String | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a fingerprint.
}

begin
  # Returns a copy of the document
  result = api_instance.download_document(avalara_version, accept, document_id, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling DocumentsApi->download_document: #{e}"
end
```

#### Using the download_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> download_document_with_http_info(avalara_version, accept, document_id, opts)

```ruby
begin
  # Returns a copy of the document
  data, status_code, headers = api_instance.download_document_with_http_info(avalara_version, accept, document_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue AvalaraSdk::EInvoicing::V1::ApiError => e
  puts "Error when calling DocumentsApi->download_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avalara_version** | **String** | The HTTP Header meant to specify the version of the API intended to be used |  |
| **accept** | **String** | This header indicates the MIME type of the document |  |
| **document_id** | **String** | The unique ID for this document that was returned in the POST /einvoicing/document response body |  |
| **x_avalara_client** | **String** | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a fingerprint. | [optional] |

### Return type

**File**

### Authorization

[Bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/pdf, application/xml, application/json


## fetch_documents

> <DocumentFetch> fetch_documents(avalara_version, fetch_documents_request, opts)

Fetch the inbound document from a tax authority

This API allows you to retrieve an inbound document. Pass key-value pairs as parameters in the request, such as the confirmation number, supplier number, and buyer VAT number.

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
api_instance = AvalaraSdk::EInvoicing::V1::DocumentsApi.new api_client

avalara_version = '1.4' # String | The HTTP Header meant to specify the version of the API intended to be used
fetch_documents_request = AvalaraSdk::EInvoicing::V1::FetchDocumentsRequest.new # FetchDocumentsRequest | 
opts = {
  x_avalara_client: 'John's E-Invoicing-API Client' # String | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a fingerprint.
}

begin
  # Fetch the inbound document from a tax authority
  result = api_instance.fetch_documents(avalara_version, fetch_documents_request, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling DocumentsApi->fetch_documents: #{e}"
end
```

#### Using the fetch_documents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DocumentFetch>, Integer, Hash)> fetch_documents_with_http_info(avalara_version, fetch_documents_request, opts)

```ruby
begin
  # Fetch the inbound document from a tax authority
  data, status_code, headers = api_instance.fetch_documents_with_http_info(avalara_version, fetch_documents_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DocumentFetch>
rescue AvalaraSdk::EInvoicing::V1::ApiError => e
  puts "Error when calling DocumentsApi->fetch_documents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avalara_version** | **String** | The HTTP Header meant to specify the version of the API intended to be used |  |
| **fetch_documents_request** | [**FetchDocumentsRequest**](FetchDocumentsRequest.md) |  |  |
| **x_avalara_client** | **String** | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a fingerprint. | [optional] |

### Return type

[**DocumentFetch**](DocumentFetch.md)

### Authorization

[Bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_document_list

> <DocumentListResponse> get_document_list(avalara_version, opts)

Returns a summary of documents for a date range

Get a list of documents on the Avalara E-Invoicing platform that have a processing date within the specified date range.

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
api_instance = AvalaraSdk::EInvoicing::V1::DocumentsApi.new api_client

avalara_version = '1.4' # String | The HTTP Header meant to specify the version of the API intended to be used
opts = {
  x_avalara_client: 'John's E-Invoicing-API Client', # String | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a fingerprint.
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Start date of documents to return. This defaults to the previous month.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | End date of documents to return. This defaults to the current date.
  flow: 'out', # String | Optionally filter by document direction, where issued = `out` and received = `in`
  count: 'true', # String | When set to true, the count of the collection is also returned in the response body
  count_only: 'false', # String | When set to true, only the count of the collection is returned
  filter: 'id eq 52f60401-44d0-4667-ad47-4afe519abb53', # String | Filter by field name and value. This filter only supports <code>eq</code> . Refer to [https://developer.avalara.com/avatax/filtering-in-rest/](https://developer.avalara.com/avatax/filtering-in-rest/) for more information on filtering. Filtering will be done over the provided startDate and endDate. If no startDate or endDate is provided, defaults will be assumed.
  top: 56, # Integer | The number of items to include in the result.
  skip: 56 # Integer | The number of items to skip in the result.
}

begin
  # Returns a summary of documents for a date range
  result = api_instance.get_document_list(avalara_version, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling DocumentsApi->get_document_list: #{e}"
end
```

#### Using the get_document_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DocumentListResponse>, Integer, Hash)> get_document_list_with_http_info(avalara_version, opts)

```ruby
begin
  # Returns a summary of documents for a date range
  data, status_code, headers = api_instance.get_document_list_with_http_info(avalara_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DocumentListResponse>
rescue AvalaraSdk::EInvoicing::V1::ApiError => e
  puts "Error when calling DocumentsApi->get_document_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avalara_version** | **String** | The HTTP Header meant to specify the version of the API intended to be used |  |
| **x_avalara_client** | **String** | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a fingerprint. | [optional] |
| **start_date** | **Time** | Start date of documents to return. This defaults to the previous month. | [optional] |
| **end_date** | **Time** | End date of documents to return. This defaults to the current date. | [optional] |
| **flow** | **String** | Optionally filter by document direction, where issued &#x3D; &#x60;out&#x60; and received &#x3D; &#x60;in&#x60; | [optional] |
| **count** | **String** | When set to true, the count of the collection is also returned in the response body | [optional] |
| **count_only** | **String** | When set to true, only the count of the collection is returned | [optional] |
| **filter** | **String** | Filter by field name and value. This filter only supports &lt;code&gt;eq&lt;/code&gt; . Refer to [https://developer.avalara.com/avatax/filtering-in-rest/](https://developer.avalara.com/avatax/filtering-in-rest/) for more information on filtering. Filtering will be done over the provided startDate and endDate. If no startDate or endDate is provided, defaults will be assumed. | [optional] |
| **top** | **Integer** | The number of items to include in the result. | [optional] |
| **skip** | **Integer** | The number of items to skip in the result. | [optional] |

### Return type

[**DocumentListResponse**](DocumentListResponse.md)

### Authorization

[Bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_document_status

> <DocumentStatusResponse> get_document_status(avalara_version, document_id, opts)

Checks the status of a document

Using the unique ID from POST /einvoicing/documents response body, request the current status of a document.

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
api_instance = AvalaraSdk::EInvoicing::V1::DocumentsApi.new api_client

avalara_version = '1.4' # String | The HTTP Header meant to specify the version of the API intended to be used
document_id = 'document_id_example' # String | The unique ID for this document that was returned in the POST /einvoicing/documents response body
opts = {
  x_avalara_client: 'John's E-Invoicing-API Client' # String | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a fingerprint.
}

begin
  # Checks the status of a document
  result = api_instance.get_document_status(avalara_version, document_id, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling DocumentsApi->get_document_status: #{e}"
end
```

#### Using the get_document_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DocumentStatusResponse>, Integer, Hash)> get_document_status_with_http_info(avalara_version, document_id, opts)

```ruby
begin
  # Checks the status of a document
  data, status_code, headers = api_instance.get_document_status_with_http_info(avalara_version, document_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DocumentStatusResponse>
rescue AvalaraSdk::EInvoicing::V1::ApiError => e
  puts "Error when calling DocumentsApi->get_document_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avalara_version** | **String** | The HTTP Header meant to specify the version of the API intended to be used |  |
| **document_id** | **String** | The unique ID for this document that was returned in the POST /einvoicing/documents response body |  |
| **x_avalara_client** | **String** | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a fingerprint. | [optional] |

### Return type

[**DocumentStatusResponse**](DocumentStatusResponse.md)

### Authorization

[Bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## submit_document

> <DocumentSubmitResponse> submit_document(avalara_version, metadata, data, opts)

Submits a document to Avalara E-Invoicing API

When a UBL document is sent to this endpoint, it generates a document in the required format as mandated by the specified country. Additionally, it initiates the workflow to transmit the generated document to the relevant tax authority, if necessary.<br><br>The response from the endpoint contains a unique document ID, which can be used to request the status of the document and verify if it was successfully accepted at the destination.<br><br>Furthermore, the unique ID enables the download of a copy of the generated document for reference purposes.

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
api_instance = AvalaraSdk::EInvoicing::V1::DocumentsApi.new api_client

avalara_version = '1.4' # String | The HTTP Header meant to specify the version of the API intended to be used
metadata = AvalaraSdk::EInvoicing::V1::SubmitDocumentMetadata.new({workflow_id: 'partner-einvoicing', data_format: 'ubl-invoice', data_format_version: '2.1', country_code: 'SA', country_mandate: 'SA-Phase1-B2B'}) # SubmitDocumentMetadata | 
data = { ... } # Object | The document to be submitted, as indicated by the metadata fields 'dataFormat' and 'dataFormatVersion'
opts = {
  x_avalara_client: 'John's E-Invoicing-API Client' # String | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a fingerprint.
}

begin
  # Submits a document to Avalara E-Invoicing API
  result = api_instance.submit_document(avalara_version, metadata, data, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling DocumentsApi->submit_document: #{e}"
end
```

#### Using the submit_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DocumentSubmitResponse>, Integer, Hash)> submit_document_with_http_info(avalara_version, metadata, data, opts)

```ruby
begin
  # Submits a document to Avalara E-Invoicing API
  data, status_code, headers = api_instance.submit_document_with_http_info(avalara_version, metadata, data, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DocumentSubmitResponse>
rescue AvalaraSdk::EInvoicing::V1::ApiError => e
  puts "Error when calling DocumentsApi->submit_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avalara_version** | **String** | The HTTP Header meant to specify the version of the API intended to be used |  |
| **metadata** | [**SubmitDocumentMetadata**](SubmitDocumentMetadata.md) |  |  |
| **data** | [**Object**](Object.md) | The document to be submitted, as indicated by the metadata fields &#39;dataFormat&#39; and &#39;dataFormatVersion&#39; |  |
| **x_avalara_client** | **String** | You can freely use any text you wish for this value. This feature can help you diagnose and solve problems with your software. The header can be treated like a fingerprint. | [optional] |

### Return type

[**DocumentSubmitResponse**](DocumentSubmitResponse.md)

### Authorization

[Bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json, text/xml

