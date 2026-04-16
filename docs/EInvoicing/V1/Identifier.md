# AvalaraSdk::EInvoicing::V1::Identifier

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Identifier name (e.g., Peppol Participant ID). |  |
| **display_name** | **String** | Display name of the identifier. | [optional] |
| **value** | **String** | Value of the identifier. |  |
| **extensions** | [**Array&lt;Extension&gt;**](Extension.md) | Optional array used to carry additional metadata or configuration values for the identifier. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::Identifier.new(
  name: null,
  display_name: null,
  value: null,
  extensions: null
)
```

