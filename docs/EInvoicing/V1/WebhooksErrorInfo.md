# AvalaraSdk::EInvoicing::V1::WebhooksErrorInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | An identifying name for the error. | [optional] |
| **status** | **String** | A conanoical error status. | [optional] |
| **detail** | **String** | A detailed description of the error type. | [optional] |
| **instance** | **String** | A detailed description of the specific error ocurrance. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::WebhooksErrorInfo.new(
  title: CustomException,
  status: Error,
  detail: Customized error detail message.,
  instance: more details
)
```

