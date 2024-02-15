# AvalaraSdk::EInvoicing::V1::DocumentStatusResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID for this document | [optional] |
| **status** | **String** | Status of the transaction: &lt;br&gt; &#39;Pending&#39; &lt;br&gt; &#39;Failed&#39; &lt;br&gt; &#39;Complete&#39; | [optional] |
| **events** | [**Array&lt;StatusEvent&gt;**](StatusEvent.md) |  | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::DocumentStatusResponse.new(
  id: 2022-01-008572,
  status: Complete,
  events: null
)
```

