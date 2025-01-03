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
  id: 2f5ea4b5-4dae-445a-b3e4-9f65a61eaa99,
  name: Batch Search Report 1,
  created_by: user@example.com,
  created: 2024-08-01T12:34:56Z,
  last_modified: 2024-08-01T12:34:56Z,
  status: Accepted,
  error: null
)
```

