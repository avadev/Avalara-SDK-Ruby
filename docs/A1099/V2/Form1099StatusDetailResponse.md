# AvalaraSdk::A1099::V2::Form1099StatusDetailResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **time** | **String** | The date the form is scheduled for or the time the status last changed | [optional] |
| **status** | **String** | The status of the form. Will be one of:  * unsent  * scheduled  * sent  * corrected_scheduled  * accepted  * corrected  * corrected_accepted  * held  * pending  * delivered  * bad_verify  * bad_verify_limit  * bounced  * verified  * incomplete  * failed  * unchanged  * unknown | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::Form1099StatusDetailResponse.new(
  time: 2025-07-29T15:26:03.2848136Z,
  status: accepted
)
```

