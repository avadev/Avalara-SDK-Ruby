# AvalaraSdk::EInvoicing::V1::TaxIdentifierRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country_code** | **String** | The two-letter ISO-3166 country code of the tax identifier. |  |
| **identifier_type** | **String** | Type of the identifier. |  |
| **identifier** | **String** | The tax identifier of the company. |  |
| **extensions** | **Object** | Optional field for adding additional details required by specific tax authorities. Refer to the GET /tax-identifiers/schema API endpoint for the full request structure for a given country. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::TaxIdentifierRequest.new(
  country_code: null,
  identifier_type: null,
  identifier: null,
  extensions: null
)
```

