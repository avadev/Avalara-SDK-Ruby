# AvalaraSdk::EInvoicing::V1::BatchSearch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the batch search | [optional] |
| **name** | **String** | Name of the batch report | [optional] |
| **created_by** | **String** | Email of the user who created the batch search | [optional] |
| **created** | **Time** | Timestamp when the batch search was created | [optional] |
| **last_modified** | **Time** | Timestamp when the batch search was created | [optional] |
| **status** | **String** | Status of the batch search | [optional] |
| **error** | [**ErrorResponse**](ErrorResponse.md) |  | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::BatchSearch.new(
  id: null,
  name: null,
  created_by: null,
  created: null,
  last_modified: null,
  status: null,
  error: null
)
```

