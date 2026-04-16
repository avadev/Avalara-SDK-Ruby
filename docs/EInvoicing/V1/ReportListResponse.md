# AvalaraSdk::EInvoicing::V1::ReportListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **recordset_count** | **String** | Count of reports matching the filter for the given query. Present when the request includes $count&#x3D;true. | [optional] |
| **next_link** | **String** | URL to retrieve the next page of results when more items match the query. Omitted or null when there is no next page. | [optional] |
| **value** | [**Array&lt;ReportItem&gt;**](ReportItem.md) | Array of reports matching the query parameters. |  |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::ReportListResponse.new(
  recordset_count: 1,
  next_link: null,
  value: null
)
```

