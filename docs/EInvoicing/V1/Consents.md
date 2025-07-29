# AvalaraSdk::EInvoicing::V1::Consents

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_in_avalara_directory** | **Boolean** | Indicates whether the trading partner consents to being listed in the directory. If not provided in the payload, its value will default to true. | [optional][default to true] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::Consents.new(
  list_in_avalara_directory: null
)
```

