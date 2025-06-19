# AvalaraSdk::A1099::V2::W4FormResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
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
| **id** | **String** | The unique identifier for the form. | [optional] |
| **type** | **String** | The form type. | [optional] |
| **entry_status** | **String** | The form status. | [optional] |
| **entry_status_date** | **Time** | The timestamp for the latest status update. | [optional] |
| **reference_id** | **String** | A reference identifier for the form. | [optional] |
| **company_id** | **String** | The ID of the associated company. | [optional] |
| **display_name** | **String** | The display name associated with the form. | [optional] |
| **email** | **String** | The email address of the individual associated with the form. | [optional] |
| **archived** | **Boolean** | Indicates whether the form is archived. | [optional] |
| **signature** | **String** | The signature of the form. | [optional] |
| **signed_date** | **Time** | The date the form was signed. | [optional] |
| **e_delivery_consented_at** | **Time** | The date when e-delivery was consented. | [optional] |
| **created_at** | **Time** | The creation date of the form. | [optional] |
| **updated_at** | **Time** | The last updated date of the form. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::W4FormResponse.new(
  employee_first_name: Jane,
  employee_middle_name: A.,
  employee_last_name: Smith,
  employee_name_suffix: Jr.,
  tin_type: SSN,
  tin: 123-45-6789,
  address: 456 Elm St,
  city: Springfield,
  state: IL,
  zip: 62704,
  marital_status: Married,
  last_name_differs: false,
  num_allowances: 3,
  other_dependents: 1,
  non_job_income: 5000,
  deductions: 2000,
  additional_withheld: 150,
  exempt_from_withholding: false,
  office_code: OC12345,
  id: null,
  type: null,
  entry_status: null,
  entry_status_date: null,
  reference_id: null,
  company_id: null,
  display_name: null,
  email: null,
  archived: null,
  signature: null,
  signed_date: null,
  e_delivery_consented_at: null,
  created_at: null,
  updated_at: null
)
```

