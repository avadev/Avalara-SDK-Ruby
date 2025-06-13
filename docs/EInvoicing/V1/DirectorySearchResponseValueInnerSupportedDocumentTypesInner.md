# AvalaraSdk::EInvoicing::V1::DirectorySearchResponseValueInnerSupportedDocumentTypesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Document type name. | [optional] |
| **value** | **String** | Document type identifier. | [optional] |
| **supported_by_trading_partner** | **Boolean** | Does trading partner support receiving this document type | [optional] |
| **supported_by_avalara** | **Boolean** | Does avalara support exchanging this document type | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::DirectorySearchResponseValueInnerSupportedDocumentTypesInner.new(
  name: null,
  value: null,
  supported_by_trading_partner: null,
  supported_by_avalara: null
)
```

