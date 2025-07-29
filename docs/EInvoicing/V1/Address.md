# AvalaraSdk::EInvoicing::V1::Address

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **line1** | **String** | Address line 1 | [optional] |
| **line2** | **String** | Address line 2 | [optional] |
| **city** | **String** | City | [optional] |
| **state** | **String** | State | [optional] |
| **country** | **String** | Country (ISO 3166) |  |
| **postal_code** | **String** | Postal code | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::Address.new(
  line1: null,
  line2: null,
  city: null,
  state: null,
  country: null,
  postal_code: null
)
```

