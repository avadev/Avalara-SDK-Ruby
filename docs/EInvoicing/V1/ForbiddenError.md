# AvalaraSdk::EInvoicing::V1::ForbiddenError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** | A message that informs the user that they may not access a resource | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::ForbiddenError.new(
  message: User is not authorized to access this resource with an explicit deny
)
```

