# AvalaraSdk::EInvoicing::V1::BadRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** | The three-digit HTTP error code for the bad request | [optional] |
| **message** | **String** | A message explaining the bad request | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::BadRequest.new(
  error: 400,
  message: Invalid data format YYYY-MM-DDThh:mm:ss expected
)
```

