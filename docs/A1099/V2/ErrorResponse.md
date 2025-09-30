# AvalaraSdk::A1099::V2::ErrorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | A summary of the problem type. | [optional] |
| **errors** | [**Array&lt;ErrorResponseItem&gt;**](ErrorResponseItem.md) | A list of errors detailing the problem type. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::ErrorResponse.new(
  title: null,
  errors: null
)
```

