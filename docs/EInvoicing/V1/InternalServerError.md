# AvalaraSdk::EInvoicing::V1::InternalServerError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** | A bad request error code | [optional] |
| **message** | **String** | A message explaining the bad request error | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::InternalServerError.new(
  error: 500,
  message: Something went wrong, please try again
)
```

