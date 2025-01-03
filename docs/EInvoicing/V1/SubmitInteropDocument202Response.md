# AvalaraSdk::EInvoicing::V1::SubmitInteropDocument202Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **interchange_id** | **String** | The unique interchange ID for this submission. | [optional] |
| **message** | **String** | A message indicating that the document has been accepted. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::SubmitInteropDocument202Response.new(
  interchange_id: 1a70d108-d550-424f-b6c7-755f12d4daf4,
  message: Document accepted for processing.
)
```

