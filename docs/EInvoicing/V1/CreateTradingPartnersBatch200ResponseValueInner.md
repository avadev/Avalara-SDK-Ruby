# AvalaraSdk::EInvoicing::V1::CreateTradingPartnersBatch200ResponseValueInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the created trading partner. | [optional] |
| **index** | **Integer** | Index number of the trading partner. | [optional] |
| **message** | **String** | A success message for the specific created record. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::CreateTradingPartnersBatch200ResponseValueInner.new(
  id: ec0c06dffe6166c47fccbb3e6d391920e68c333d84f2510d4df2,
  index: 0,
  message: Trading partner &#39;Pineapple Labs ltd&#39; created successfully.
)
```

