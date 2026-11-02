# AvalaraSdk::A1099::V2::FederalEfileError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | IRIS error code | [optional] |
| **message** | **String** | Error message | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::FederalEfileError.new(
  code: SHAREDIRFORM014,
  message: The individual&#39;s name and tax ID number don&#39;t match the IRS database
)
```

