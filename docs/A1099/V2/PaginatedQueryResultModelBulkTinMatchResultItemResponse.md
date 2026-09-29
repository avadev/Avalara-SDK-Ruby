# AvalaraSdk::A1099::V2::PaginatedQueryResultModelBulkTinMatchResultItemResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **recordset_count** | **Integer** |  | [optional] |
| **value** | [**Array&lt;BulkTinMatchResultItemResponse&gt;**](BulkTinMatchResultItemResponse.md) |  | [optional] |
| **next_link** | **String** |  | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::PaginatedQueryResultModelBulkTinMatchResultItemResponse.new(
  recordset_count: null,
  value: null,
  next_link: null
)
```

