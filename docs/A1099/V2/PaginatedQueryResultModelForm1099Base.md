# AvalaraSdk::A1099::V2::PaginatedQueryResultModelForm1099Base

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **recordset_count** | **Integer** |  | [optional] |
| **value** | [**Array&lt;Get1099Form200Response&gt;**](Get1099Form200Response.md) |  | [optional] |
| **next_link** | **String** |  | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::PaginatedQueryResultModelForm1099Base.new(
  recordset_count: null,
  value: null,
  next_link: null
)
```

