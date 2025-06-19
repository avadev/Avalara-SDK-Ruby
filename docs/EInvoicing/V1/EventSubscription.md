# AvalaraSdk::EInvoicing::V1::EventSubscription

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_name** | **String** | Unique, to the delivery system, identifier of the event. |  |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::EventSubscription.new(
  event_name: document.complete
)
```

