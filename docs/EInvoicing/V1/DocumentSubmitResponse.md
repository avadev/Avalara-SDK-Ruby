# AvalaraSdk::EInvoicing::V1::DocumentSubmitResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID for this document that can be used for status checking and file downloads. This is a UID created by the Avalara E-Invoicing platform. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::DocumentSubmitResponse.new(
  id: 52f60401-44d0-4667-ad47-4afe519abb53
)
```

