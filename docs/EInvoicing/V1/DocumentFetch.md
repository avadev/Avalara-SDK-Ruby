# AvalaraSdk::EInvoicing::V1::DocumentFetch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID for this document that can be used for status checking and file downloads. This is a UID created by the Avalara E-Invoicing platform. | [optional] |
| **status** | **String** | Status of the document | [optional] |
| **event_date_time** | **String** | The date and time when the inbound document was accepted by the Avalara E-Invoicing Platform | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::DocumentFetch.new(
  id: 52f60401-44d0-4667-ad47-4afe519abb53,
  status: Accepted,
  event_date_time: 2024-05-27T14:20:07:723
)
```

