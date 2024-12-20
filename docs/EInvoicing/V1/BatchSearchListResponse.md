# AvalaraSdk::EInvoicing::V1::BatchSearchListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **record_set_count** | **Integer** | The count of records in the result set | [optional] |
| **next_link** | **String** | Next Link | [optional] |
| **value** | [**Array&lt;BatchSearch&gt;**](BatchSearch.md) |  | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::BatchSearchListResponse.new(
  record_set_count: 500,
  next_link: TODO,
  value: null
)
```

