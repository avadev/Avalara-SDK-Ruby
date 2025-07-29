# AvalaraSdk::EInvoicing::V1::TaxIdentifierResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country_code** | **String** | The two-letter ISO-3166 country code of the tax identifier. |  |
| **value** | [**TaxIdentifierResponseValue**](TaxIdentifierResponseValue.md) |  | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::TaxIdentifierResponse.new(
  country_code: null,
  value: null
)
```

