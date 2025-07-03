# AvalaraSdk::A1099::V2::Form1095BListItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **employee_first_name** | **String** |  | [optional] |
| **employee_middle_name** | **String** |  | [optional] |
| **employee_last_name** | **String** |  | [optional] |
| **employee_name_suffix** | **String** |  | [optional] |
| **employee_date_of_birth** | **Time** |  | [optional] |
| **origin_of_health_coverage_code** | **String** |  | [optional] |
| **covered_individuals** | [**Array&lt;CoveredIndividualRequest&gt;**](CoveredIndividualRequest.md) |  | [optional] |
| **issuer_id** | **String** |  | [optional] |
| **reference_id** | **String** |  | [optional] |
| **recipient_name** | **String** |  | [optional] |
| **recipient_tin** | **String** |  | [optional] |
| **tin_type** | **String** |  | [optional] |
| **recipient_second_name** | **String** |  | [optional] |
| **address** | **String** |  | [optional] |
| **address2** | **String** |  | [optional] |
| **city** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **zip** | **String** |  | [optional] |
| **recipient_email** | **String** |  | [optional] |
| **account_number** | **String** |  | [optional] |
| **office_code** | **String** |  | [optional] |
| **recipient_non_us_province** | **String** |  | [optional] |
| **country_code** | **String** |  | [optional] |
| **federal_e_file** | **Boolean** |  | [optional] |
| **postal_mail** | **Boolean** |  | [optional] |
| **state_e_file** | **Boolean** |  | [optional] |
| **tin_match** | **Boolean** |  | [optional] |
| **address_verification** | **Boolean** |  | [optional] |
| **state_and_local_withholding** | [**StateAndLocalWithholdingRequest**](StateAndLocalWithholdingRequest.md) |  | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::Form1095BListItem.new(
  employee_first_name: null,
  employee_middle_name: null,
  employee_last_name: null,
  employee_name_suffix: null,
  employee_date_of_birth: null,
  origin_of_health_coverage_code: SmallBusinessHealthOptionsProgram,
  covered_individuals: null,
  issuer_id: null,
  reference_id: null,
  recipient_name: null,
  recipient_tin: null,
  tin_type: EIN,
  recipient_second_name: null,
  address: null,
  address2: null,
  city: null,
  state: null,
  zip: null,
  recipient_email: null,
  account_number: null,
  office_code: null,
  recipient_non_us_province: null,
  country_code: null,
  federal_e_file: null,
  postal_mail: null,
  state_e_file: null,
  tin_match: null,
  address_verification: null,
  state_and_local_withholding: null
)
```

