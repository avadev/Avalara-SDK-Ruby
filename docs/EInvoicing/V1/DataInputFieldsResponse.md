# AvalaraSdk::EInvoicing::V1::DataInputFieldsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **recordset_count** | **Float** | Total count of results | [optional] |
| **next_link** | **String** |  | [optional] |
| **value** | [**Array&lt;DataInputField&gt;**](DataInputField.md) | Array of Data Input Fields | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::DataInputFieldsResponse.new(
  recordset_count: 1,
  next_link: null,
  value: null
)
```

