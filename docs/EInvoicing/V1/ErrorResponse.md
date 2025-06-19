# AvalaraSdk::EInvoicing::V1::ErrorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **detail** | **String** |  | [optional] |
| **instance** | **String** |  | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::ErrorResponse.new(
  title: BadInput,
  status: Error,
  detail: The input query is invalid.,
  instance: Invalid request format or parameters.
)
```

