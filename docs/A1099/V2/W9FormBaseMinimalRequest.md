# AvalaraSdk::A1099::V2::W9FormBaseMinimalRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The form type. | [optional][readonly] |
| **company_id** | **String** | The ID of the associated company. |  |
| **reference_id** | **String** | A reference identifier for the form. | [optional] |
| **email** | **String** | The email address of the individual associated with the form. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::W9FormBaseMinimalRequest.new(
  type: W4,
  company_id: null,
  reference_id: null,
  email: null
)
```

