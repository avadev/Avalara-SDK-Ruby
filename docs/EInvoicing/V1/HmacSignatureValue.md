# AvalaraSdk::EInvoicing::V1::HmacSignatureValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **algorithm** | **String** | The algorithm used to create the signature. |  |
| **value** | **String** | Signature of the message. |  |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::HmacSignatureValue.new(
  algorithm: sha256,
  value: your-secret-key
)
```

