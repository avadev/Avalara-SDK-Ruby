# AvalaraSdk::EInvoicing::V1::DocumentStatusResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID for this document | [optional] |
| **status** | **String** | Status of the document | [optional] |
| **events** | [**Array&lt;StatusEvent&gt;**](StatusEvent.md) |  | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::DocumentStatusResponse.new(
  id: 52f60401-44d0-4667-ad47-4afe519abb53,
  status: Complete,
  events: null
)
```

