# AvalaraSdk::A1099::V2::W9FormBaseRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The form type. | [optional][readonly] |
| **company_id** | **String** | The ID of the associated company. | [optional] |
| **reference_id** | **String** | A reference identifier for the form. | [optional] |
| **email** | **String** | The email address of the individual associated with the form. | [optional] |
| **e_delivery_consented_at** | **Time** | The date when e-delivery was consented. | [optional] |
| **signature** | **String** | The signature of the form. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::W9FormBaseRequest.new(
  type: W4,
  company_id: null,
  reference_id: null,
  email: null,
  e_delivery_consented_at: null,
  signature: null
)
```

