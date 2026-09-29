# AvalaraSdk::A1099::V2::BulkTinMatchRequestItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tin_type** | **String** | The TIN type. | [optional] |
| **tin** | **String** | The TIN to be submitted to TIN match. | [optional] |
| **name** | **String** | The entity name to be submitted to TIN match. | [optional] |
| **reference_id** | **String** | The reference identifier for the TIN to be submitted. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::BulkTinMatchRequestItem.new(
  tin_type: null,
  tin: null,
  name: null,
  reference_id: null
)
```

