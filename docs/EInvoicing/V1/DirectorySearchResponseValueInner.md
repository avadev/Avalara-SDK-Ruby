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
  id: 2a27ee0cf5bcb6165ab891503652343419a8fc5fe6b406299c47d7b44aa8548c,
  name: Pineapple Labs ltd,
  network: Peppol,
  registration_date: null,
  identifiers: null,
  addresses: null,
  supported_document_types: null
)
```

