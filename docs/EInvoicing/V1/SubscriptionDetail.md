# AvalaraSdk::EInvoicing::V1::SubscriptionDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of this specific resource. |  |
| **description** | **String** | Description of the subscription | [optional] |
| **notification_url** | **String** | The URL of the webhook endpoint to which event messages will be delivered |  |
| **signature** | [**SignatureSignature**](SignatureSignature.md) |  |  |
| **events** | [**Array&lt;EventSubscription&gt;**](EventSubscription.md) |  |  |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::SubscriptionDetail.new(
  id: 0147b6a4-3b40-49d4-8762-575c903bd609,
  description: Basic webhook configuration without signature,
  notification_url: https://webhook.example.com/notifications,
  signature: null,
  events: null
)
```

