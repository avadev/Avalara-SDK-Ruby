# AvalaraSdk::EInvoicing::V1::MandatesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **recordset_count** | **Float** | Total count of results | [optional] |
| **next_link** | **String** |  | [optional] |
| **value** | [**Array&lt;Mandate&gt;**](Mandate.md) | Mandates schema | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::MandatesResponse.new(
  recordset_count: 1,
  next_link: null,
  value: null
)
```

