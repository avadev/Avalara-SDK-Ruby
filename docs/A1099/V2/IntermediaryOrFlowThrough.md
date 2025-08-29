# AvalaraSdk::A1099::V2::IntermediaryOrFlowThrough

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ein** | **String** | EIN (Employer Identification Number) of the intermediary or flow-through entity | [optional] |
| **chap3_status_code** | **String** | Chapter 3 status code for the intermediary or flow-through entity | [optional] |
| **chap4_status_code** | **String** | Chapter 4 status code for the intermediary or flow-through entity | [optional] |
| **name** | **String** | Name of the intermediary or flow-through entity | [optional] |
| **giin** | **String** | GIIN (Global Intermediary Identification Number) of the intermediary or flow-through entity | [optional] |
| **country_code** | **String** | Country code for the intermediary or flow-through entity | [optional] |
| **foreign_tin** | **String** | Foreign TIN of the intermediary or flow-through entity | [optional] |
| **address** | **String** | Address of the intermediary or flow-through entity | [optional] |
| **city** | **String** | City of the intermediary or flow-through entity | [optional] |
| **state** | **String** | State of the intermediary or flow-through entity | [optional] |
| **zip** | **String** | Zip code of the intermediary or flow-through entity | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::IntermediaryOrFlowThrough.new(
  ein: null,
  chap3_status_code: null,
  chap4_status_code: null,
  name: null,
  giin: null,
  country_code: null,
  foreign_tin: null,
  address: null,
  city: null,
  state: null,
  zip: null
)
```

