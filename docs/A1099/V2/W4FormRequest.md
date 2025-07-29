# AvalaraSdk::A1099::V2::W4FormRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The form type (always \&quot;w4\&quot; for this model). | [optional][readonly] |
| **employee_first_name** | **String** | The first name of the employee. | [optional] |
| **employee_middle_name** | **String** | The middle name of the employee. | [optional] |
| **employee_last_name** | **String** | The last name of the employee. | [optional] |
| **employee_name_suffix** | **String** | The name suffix of the employee. | [optional] |
| **tin_type** | **String** | The type of TIN provided. | [optional] |
| **tin** | **String** | The taxpayer identification number (TIN). | [optional] |
| **address** | **String** | The address of the employee. | [optional] |
| **city** | **String** | The city of residence of the employee. | [optional] |
| **state** | **String** | The state of residence of the employee. | [optional] |
| **zip** | **String** | The ZIP code of residence of the employee. | [optional] |
| **marital_status** | **String** | The marital status of the employee. | [optional] |
| **last_name_differs** | **Boolean** | Indicates whether the last name differs from prior records. | [optional] |
| **num_allowances** | **Integer** | The number of allowances claimed by the employee. | [optional] |
| **other_dependents** | **Integer** | The number of dependents other than allowances. | [optional] |
| **non_job_income** | **Float** | The amount of non-job income. | [optional] |
| **deductions** | **Float** | The amount of deductions claimed. | [optional] |
| **additional_withheld** | **Float** | The additional amount withheld. | [optional] |
| **exempt_from_withholding** | **Boolean** | Indicates whether the employee is exempt from withholding. | [optional] |
| **office_code** | **String** | The office code associated with the form. | [optional] |
| **company_id** | **String** | The ID of the associated company. | [optional] |
| **reference_id** | **String** | A reference identifier for the form. | [optional] |
| **email** | **String** | The email address of the individual associated with the form. | [optional] |
| **e_delivery_consented_at** | **Time** | The date when e-delivery was consented. | [optional] |
| **signature** | **String** | The signature of the form. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::W4FormRequest.new(
  type: W4,
  employee_first_name: null,
  employee_middle_name: null,
  employee_last_name: null,
  employee_name_suffix: null,
  tin_type: null,
  tin: null,
  address: null,
  city: null,
  state: null,
  zip: null,
  marital_status: null,
  last_name_differs: null,
  num_allowances: null,
  other_dependents: null,
  non_job_income: null,
  deductions: null,
  additional_withheld: null,
  exempt_from_withholding: null,
  office_code: null,
  company_id: null,
  reference_id: null,
  email: null,
  e_delivery_consented_at: null,
  signature: null
)
```

