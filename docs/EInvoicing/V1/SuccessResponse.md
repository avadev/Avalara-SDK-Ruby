# AvalaraSdk::EInvoicing::V1::SuccessResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the new or updated entity. | [optional] |
| **message** | **String** | Success message | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::SuccessResponse.new(
  id: 78f6caaa-6988-4862-bd11-e52906b31b72,
  message: Webhook subscription created successfully
)
```

