# AvalaraSdk::EInvoicing::V1::CreateTradingPartner201Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Avalara unique ID of the participant in the directory. | [optional] |
| **status** | **String** | The status of the create operation. | [optional] |
| **message** | **String** | A human-readable message providing additional context or feedback about the outcome of the operation. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::CreateTradingPartner201Response.new(
  id: ec0c06dffe6166c47fccbb3e6d391920e68c333d84f2510d4df2,
  status: Complete,
  message: Trading partner created successfully.
)
```

