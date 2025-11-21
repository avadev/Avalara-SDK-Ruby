# AvalaraSdk::A1099::V2::ValidationError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field** | **String** | The field containing the error | [optional] |
| **errors** | **Array&lt;String&gt;** | The list of error messages | [optional] |
| **error_codes** | **Array&lt;String&gt;** | The list of error codes (only present when api_error_codes flag is enabled) | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::ValidationError.new(
  field: null,
  errors: null,
  error_codes: null
)
```

