# AvalaraSdk::EInvoicing::V1::DirectorySearchResponseValueInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Avalara unique ID of the participant in the directory. | [optional] |
| **name** | **String** | Name of the participant (typically, the name of the business entity). | [optional] |
| **network** | **String** | The network where the participant is present. | [optional] |
| **registration_date** | **Date** | Registration date of the participant if available | [optional] |
| **identifiers** | [**Array&lt;DirectorySearchResponseValueInnerIdentifiersInner&gt;**](DirectorySearchResponseValueInnerIdentifiersInner.md) |  | [optional] |
| **addresses** | [**Array&lt;DirectorySearchResponseValueInnerAddressesInner&gt;**](DirectorySearchResponseValueInnerAddressesInner.md) |  | [optional] |
| **supported_document_types** | [**Array&lt;DirectorySearchResponseValueInnerSupportedDocumentTypesInner&gt;**](DirectorySearchResponseValueInnerSupportedDocumentTypesInner.md) |  | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::DirectorySearchResponseValueInner.new(
  id: null,
  name: null,
  network: null,
  registration_date: null,
  identifiers: null,
  addresses: null,
  supported_document_types: null
)
```

