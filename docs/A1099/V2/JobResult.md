# AvalaraSdk::A1099::V2::JobResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **dry_run** | **Boolean** |  | [optional] |
| **upsert** | **Boolean** |  | [optional] |
| **status** | **String** |  | [optional] |
| **error_message** | **String** |  | [optional] |
| **total_processed** | **Integer** |  | [optional] |
| **total_rows** | **Integer** |  | [optional] |
| **updated_valid** | **Integer** |  | [optional] |
| **updated_no_email** | **Integer** |  | [optional] |
| **updated_invalid** | **Integer** |  | [optional] |
| **skipped_duplicate** | **Integer** |  | [optional] |
| **skipped_invalid** | **Integer** |  | [optional] |
| **skipped_multiple_matches** | **Integer** |  | [optional] |
| **not_found** | **Integer** |  | [optional] |
| **created_invalid** | **Integer** |  | [optional] |
| **created_no_email** | **Integer** |  | [optional] |
| **created_valid** | **Integer** |  | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::JobResult.new(
  id: null,
  type: null,
  dry_run: null,
  upsert: null,
  status: null,
  error_message: null,
  total_processed: null,
  total_rows: null,
  updated_valid: null,
  updated_no_email: null,
  updated_invalid: null,
  skipped_duplicate: null,
  skipped_invalid: null,
  skipped_multiple_matches: null,
  not_found: null,
  created_invalid: null,
  created_no_email: null,
  created_valid: null
)
```

