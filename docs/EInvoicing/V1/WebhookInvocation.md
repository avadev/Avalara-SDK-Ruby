# AvalaraSdk::EInvoicing::V1::WebhookInvocation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of this specific resource. |  |
| **retry_count** | **Integer** | The number of invocation attempts. | [optional] |
| **retry_max** | **Integer** | The maximum retries that may be attempted in total. | [optional] |
| **invocation_timestamp** | **Time** | Initial timestamp of the first invocation attempt. |  |
| **retry_timestamp** | **Time** | Timestamp of this invocation attempt. | [optional] |
| **items** | [**Array&lt;EventMessage&gt;**](EventMessage.md) | Array of events being delivered in the webhook |  |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::WebhookInvocation.new(
  id: 0147b6a4-3b40-49d4-8762-575c903bd609,
  retry_count: null,
  retry_max: null,
  invocation_timestamp: null,
  retry_timestamp: null,
  items: null
)
```

