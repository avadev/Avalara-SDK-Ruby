# AvalaraSdk::EInvoicing::V1::DocumentSubmissionError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status_code** | **String** | The three-digit HTTP status code for the exception | [optional] |
| **message** | **String** | A message explaining the exception | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::DocumentSubmissionError.new(
  status_code: 400,
  message: Failed to parse document
)
```

