# AvalaraSdk::EInvoicing::V1::StatusEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_date_time** | **String** | The date and time when the status event occured, displayed in the format YYYY-MM-DDThh:mm:ss | [optional] |
| **message** | **String** | A message describing the status event | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::StatusEvent.new(
  event_date_time: 2022-01-09T12:36:02,
  message: E-Invoice sent via Peppol
)
```

