# AvalaraSdk::A1099::V2::FederalEfileErrorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | The exact IRS/IRIS error code, when IRIS provides one. | [optional] |
| **message** | **String** | The human-readable error message associated with the code, if provided by IRIS. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::FederalEfileErrorResponse.new(
  code: null,
  message: null
)
```

