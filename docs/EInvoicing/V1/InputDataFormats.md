# AvalaraSdk::EInvoicing::V1::InputDataFormats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **format** | **String** | Document format | [optional] |
| **versions** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::InputDataFormats.new(
  format: ubl-invoice,
  versions: null
)
```

