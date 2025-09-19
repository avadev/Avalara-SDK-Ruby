# AvalaraSdk::A1099::V2::TinMatchStatusResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **time** | **Time** | The current timestamp for the TIN match request. | [optional] |
| **status** | **String** | The current status for the TIN match request. | [optional] |
| **irs_response** | [**IrsResponse**](IrsResponse.md) | The IRS response. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::TinMatchStatusResponse.new(
  time: null,
  status: null,
  irs_response: null
)
```

