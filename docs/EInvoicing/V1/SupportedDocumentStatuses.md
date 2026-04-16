# AvalaraSdk::EInvoicing::V1::SupportedDocumentStatuses

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | The name of the status (e.g., Approved, Fully Paid). | [optional] |
| **description** | **String** | Explanation of what the status means. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::SupportedDocumentStatuses.new(
  status: null,
  description: null
)
```

