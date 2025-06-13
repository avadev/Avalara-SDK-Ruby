# AvalaraSdk::A1099::V2::StateAndLocalWithholding

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **state_tax_withheld** | **Float** |  | [optional] |
| **state** | **String** |  | [optional] |
| **state_id_number** | **String** |  | [optional] |
| **state_income** | **Float** |  | [optional] |
| **local_tax_withheld** | **Float** |  | [optional] |
| **locality** | **String** |  | [optional] |
| **locality_id_number** | **String** |  | [optional] |
| **local_income** | **Float** |  | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::StateAndLocalWithholding.new(
  state_tax_withheld: null,
  state: null,
  state_id_number: null,
  state_income: null,
  local_tax_withheld: null,
  locality: null,
  locality_id_number: null,
  local_income: null
)
```

