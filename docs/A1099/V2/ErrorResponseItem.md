# AvalaraSdk::A1099::V2::ErrorResponseItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | An identifier for this occurrence of the problem.  It is the name of a request&#39;s field when specific to that field.  Otherwise, for other types of errors, its value is empty. | [optional] |
| **detail** | **String** | An explanation specific to this occurrence of the problem. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::ErrorResponseItem.new(
  type: null,
  detail: null
)
```

