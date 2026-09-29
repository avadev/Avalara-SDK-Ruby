# AvalaraSdk::A1099::V2::BulkTinMatchRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;BulkTinMatchRequestItem&gt;**](BulkTinMatchRequestItem.md) | Collection of TINs to be submitted to TIN match. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::BulkTinMatchRequest.new(
  items: null
)
```

