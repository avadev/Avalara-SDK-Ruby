# AvalaraSdk::EInvoicing::V1::TaxIdentifierResponseValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier_type** | **String** | Type of the identifier. | [optional] |
| **identifier** | **String** | The tax identifier of the company. | [optional] |
| **extensions** | **Object** | Optional field containing additional company-related information such as companyName, companyAddress, blockListed, tradeName, and taxPayerType. It may also include other details specific to the given tax authority. Refer to the GET /tax-identifiers/schema API endpoint for the full response structure for a given country. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::TaxIdentifierResponseValue.new(
  identifier_type: null,
  identifier: null,
  extensions: null
)
```

