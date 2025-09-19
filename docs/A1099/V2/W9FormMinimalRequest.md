# AvalaraSdk::A1099::V2::W9FormMinimalRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The form type (always \&quot;w9\&quot; for this model). | [optional][readonly] |
| **email** | **String** | The email address of the individual associated with the form. |  |
| **name** | **String** | The name of the individual or entity associated with the form. |  |
| **account_number** | **String** | The account number associated with the form. | [optional] |
| **company_id** | **String** | The ID of the associated company. Required when creating a form. | [optional] |
| **reference_id** | **String** | A reference identifier for the form. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::W9FormMinimalRequest.new(
  type: null,
  email: null,
  name: null,
  account_number: null,
  company_id: null,
  reference_id: null
)
```

