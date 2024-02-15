# AvalaraSdk::EInvoicing::V1::DocumentListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **record_set_count** | **String** | Count of collections for the given date range | [optional] |
| **next_link** | **String** |  | [optional] |
| **value** | [**Array&lt;DocumentSummary&gt;**](DocumentSummary.md) | Array of invoices matching query parameters |  |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::DocumentListResponse.new(
  record_set_count: 1,
  next_link: null,
  value: null
)
```

