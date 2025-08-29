# AvalaraSdk::A1099::V2::W8BenEFormMinimalRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The form type (always \&quot;w8bene\&quot; for this model). | [optional][readonly] |
| **email** | **String** | The email address of the individual associated with the form. |  |
| **name** | **String** | The name of the individual or entity associated with the form. |  |
| **reference_number** | **String** | A reference number for the form. | [optional] |
| **company_id** | **String** | The ID of the associated company. |  |
| **reference_id** | **String** | A reference identifier for the form. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::W8BenEFormMinimalRequest.new(
  type: W4,
  email: null,
  name: null,
  reference_number: null,
  company_id: null,
  reference_id: null
)
```

