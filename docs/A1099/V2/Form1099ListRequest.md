# AvalaraSdk::A1099::V2::Form1099ListRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Available form types: * &#x60;1042-S&#x60; * &#x60;1095-B&#x60; * &#x60;1095-C&#x60; * &#x60;1099-DIV&#x60; * &#x60;1099-INT&#x60; * &#x60;1099-K&#x60; * &#x60;1099-MISC&#x60; * &#x60;1099-NEC&#x60; * &#x60;1099-R&#x60;  | [optional] |
| **forms** | [**Array&lt;Get1099Form200Response&gt;**](Get1099Form200Response.md) |  | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::Form1099ListRequest.new(
  type: null,
  forms: null
)
```

