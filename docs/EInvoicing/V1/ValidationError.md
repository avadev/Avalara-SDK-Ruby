# AvalaraSdk::EInvoicing::V1::ValidationError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field** | **String** | The name of the field that failed validation. | [optional] |
| **message** | **String** | A human-readable explanation of the error for the specific field. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::ValidationError.new(
  field: null,
  message: null
)
```

