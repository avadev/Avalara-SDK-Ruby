# AvalaraSdk::A1099::V2::W4FormMinimalRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The form type (always \&quot;w4\&quot; for this model). | [optional][readonly] |
| **email** | **String** | The email address of the individual associated with the form. |  |
| **employee_first_name** | **String** | The first name of the employee. |  |
| **employee_last_name** | **String** | The last name of the employee. |  |
| **office_code** | **String** | The office code associated with the form. | [optional] |
| **company_id** | **String** | The ID of the associated company. |  |
| **reference_id** | **String** | A reference identifier for the form. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::W4FormMinimalRequest.new(
  type: W4,
  email: null,
  employee_first_name: null,
  employee_last_name: null,
  office_code: null,
  company_id: null,
  reference_id: null
)
```

