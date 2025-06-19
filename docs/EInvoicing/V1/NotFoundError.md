# AvalaraSdk::EInvoicing::V1::NotFoundError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** | The three-digit HTTP error code for a not found error | [optional] |
| **message** | **String** | A message about the not found error | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::NotFoundError.new(
  error: 404,
  message: Not Found
)
```

