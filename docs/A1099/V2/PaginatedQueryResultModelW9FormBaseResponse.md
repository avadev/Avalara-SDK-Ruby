# AvalaraSdk::A1099::V2::PaginatedQueryResultModelW9FormBaseResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **recordset_count** | **Integer** |  | [optional] |
| **value** | [**Array&lt;CreateW9Form201Response&gt;**](CreateW9Form201Response.md) |  | [optional] |
| **next_link** | **String** |  | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::PaginatedQueryResultModelW9FormBaseResponse.new(
  recordset_count: null,
  value: null,
  next_link: null
)
```

