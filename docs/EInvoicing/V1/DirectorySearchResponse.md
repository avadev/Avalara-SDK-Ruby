# AvalaraSdk::EInvoicing::V1::DirectorySearchResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **record_set_count** | **Integer** | The count of records in the result set | [optional] |
| **next_link** | **String** | The next page link to get the next set of results. | [optional] |
| **value** | [**Array&lt;DirectorySearchResponseValueInner&gt;**](DirectorySearchResponseValueInner.md) |  | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::DirectorySearchResponse.new(
  record_set_count: null,
  next_link: null,
  value: null
)
```

