# AvalaraSdk::EInvoicing::V1::StatusEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_date_time** | **String** | The date and time when the status event occured, displayed in the format YYYY-MM-DDThh:mm:ss | [optional] |
| **message** | **String** | A message describing the status event | [optional] |
| **response_key** | **String** |  The type of number or acknowledgement returned by the tax authority (if applicable). For example, it could be an identification key, acknowledgement code, or any other relevant identifier. | [optional] |
| **response_value** | **String** | The corresponding value associated with the response key. This value is provided by the tax authority in response to the event. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::StatusEvent.new(
  event_date_time: 2022-01-09T12:36:02,
  message: E-Invoice sent to SDI,
  response_key: IdentificativoSdI,
  response_value: 2865701
)
```

