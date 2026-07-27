# AvalaraSdk::A1099::V2::RealTimeTinMatchResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | The status of the TIN match (matched or rejected). | [optional] |
| **irs_response** | [**RealTimeTinMatchIrsResponse**](RealTimeTinMatchIrsResponse.md) | The IRS response details. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::RealTimeTinMatchResponse.new(
  status: null,
  irs_response: null
)
```

