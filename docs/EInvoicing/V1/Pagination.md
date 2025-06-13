# AvalaraSdk::EInvoicing::V1::Pagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **recordset_count** | **Integer** | The total count of records in the dataset. | [optional] |
| **next_link** | **String** | The URL to the next page of results. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::Pagination.new(
  recordset_count: null,
  next_link: null
)
```

