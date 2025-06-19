# AvalaraSdk::EInvoicing::V1::SubscriptionRegistration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description of the subscription | [optional] |
| **notification_url** | **String** | The URL of the webhook endpoint to which event messages will be delivered |  |
| **signature** | [**SignatureSignature**](SignatureSignature.md) |  |  |
| **events** | [**Array&lt;EventSubscription&gt;**](EventSubscription.md) |  |  |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::SubscriptionRegistration.new(
  description: Basic webhook configuration without signature,
  notification_url: https://webhook.example.com/notifications,
  signature: null,
  events: null
)
```

