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
  name: Peppol BIS Billing UBL Invoice V3,
  value: busdox-docid-qns::urn:oasis:names:specification:ubl:schema:xsd:Invoice-2::Invoice##urn:cen.eu:en16931:2017#compliant#urn:fdc:peppol.eu:2017:poacc:billing:3.0::2.1,
  supported_by_trading_partner: true,
  supported_by_avalara: true
)
```

