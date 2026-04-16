# AvalaraSdk::EInvoicing::V1::CodeListListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **recordset_count** | **String** | Count of code lists for the given query parameters | [optional] |
| **next_link** | **String** |  | [optional] |
| **value** | [**Array&lt;CodeListSummary&gt;**](CodeListSummary.md) | Array of code lists matching query parameters |  |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::CodeListListResponse.new(
  recordset_count: 1,
  next_link: null,
  value: null
)
```

