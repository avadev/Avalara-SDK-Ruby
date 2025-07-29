# AvalaraSdk::EInvoicing::V1::BatchSearchListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **record_set_count** | **Integer** | The count of records in the result set. | [optional] |
| **next_link** | **String** | Next Link | [optional] |
| **value** | [**Array&lt;BatchSearch&gt;**](BatchSearch.md) | List of batch search records. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::BatchSearchListResponse.new(
  record_set_count: null,
  next_link: null,
  value: null
)
```

