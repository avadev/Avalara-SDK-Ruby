# AvalaraSdk::A1099::V2::StateAndLocalWithholdingResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **state_tax_withheld** | **Float** | Amount of state tax that was withheld | [optional] |
| **state** | **String** | US state | [optional] |
| **state_id_number** | **String** | State ID number of the entity issuing the form | [optional] |
| **state_income** | **Float** | Amount of state income | [optional] |
| **local_tax_withheld** | **Float** | Amount of local tax that was withheld | [optional] |
| **locality** | **String** | Locality name | [optional] |
| **locality_id_number** | **String** | Locality ID number of the entity issuing the form | [optional] |
| **local_income** | **Float** | Amount of local income | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::StateAndLocalWithholdingResponse.new(
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

