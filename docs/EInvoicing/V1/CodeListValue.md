# AvalaraSdk::EInvoicing::V1::CodeListValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | The actual code value used in documents or systems. This is typically what appears in the e-invoice payload, such as a numeric or alphanumeric code from the official code list. | [optional] |
| **value** | **String** | Human-readable label or name for the code, localized according to the locale field of the version. | [optional] |
| **description** | **String** | Detailed explanation of what the code represents, localized according to the locale field of the version. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::CodeListValue.new(
  code: 380,
  value: Commercial Invoice,
  description: Commercial Invoice Type
)
```

