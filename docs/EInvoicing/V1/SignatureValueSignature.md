# AvalaraSdk::EInvoicing::V1::SignatureValueSignature

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **algorithm** | **String** | The algorithm used to create the signature. |  |
| **value** | **String** | Signature of the message. |  |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::SignatureValueSignature.new(
  type: null,
  algorithm: sha256,
  value: your-secret-key
)
```

