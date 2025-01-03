# AvalaraSdk::EInvoicing::V1::DocumentListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **recordset_count** | **String** | Count of collections for the given date range | [optional] |
| **next_link** | **String** |  | [optional] |
| **value** | [**Array&lt;DocumentSummary&gt;**](DocumentSummary.md) | Array of documents matching query parameters |  |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::DocumentListResponse.new(
  recordset_count: 1,
  next_link: null,
  value: null
)
```

