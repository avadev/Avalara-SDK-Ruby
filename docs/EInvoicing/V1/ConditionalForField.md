# AvalaraSdk::EInvoicing::V1::ConditionalForField

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country_mandate** | **String** |  | [optional] |
| **required_when** | [**Array&lt;RequiredWhenField&gt;**](RequiredWhenField.md) | Array of scenarios which describe when a particular field is conditional for a country mandate | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::ConditionalForField.new(
  country_mandate: DE-ZUGFERD,
  required_when: null
)
```

