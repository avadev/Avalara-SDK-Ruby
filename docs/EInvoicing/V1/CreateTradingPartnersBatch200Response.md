# AvalaraSdk::EInvoicing::V1::CreateTradingPartnersBatch200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **message** | **String** | A message indicating the result of the batch operation. | [optional] |
| **value** | [**Array&lt;CreateTradingPartnersBatch200ResponseValueInner&gt;**](CreateTradingPartnersBatch200ResponseValueInner.md) | A list of trading partners successfully created. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::CreateTradingPartnersBatch200Response.new(
  status: Complete,
  message: Batch created successfully.,
  value: null
)
```

