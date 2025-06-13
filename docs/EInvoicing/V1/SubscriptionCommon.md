# AvalaraSdk::EInvoicing::V1::SubscriptionCommon

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description of the subscription | [optional] |
| **notification_url** | **String** | The URL of the webhook endpoint to which event messages will be delivered |  |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::SubscriptionCommon.new(
  description: Basic webhook configuration without signature,
  notification_url: https://webhook.example.com/notifications
)
```

