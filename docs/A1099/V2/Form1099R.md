# AvalaraSdk::A1099::V2::Form1099R

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gross_distributions** | **Float** |  | [optional] |
| **taxable_amount** | **Float** |  | [optional] |
| **taxable_amount_not_determined** | **Boolean** |  | [optional] |
| **total_distribution_indicator** | **Boolean** |  | [optional] |
| **capital_gain** | **Float** |  | [optional] |
| **fed_income_tax_withheld** | **Float** |  | [optional] |
| **employee_contributions** | **Float** |  | [optional] |
| **net_unrealized_appreciation** | **Float** |  | [optional] |
| **distribution_code_required** | **String** |  | [optional] |
| **distribution_code_optional** | **String** |  | [optional] |
| **ira_sep_simple_indicator** | **Boolean** |  | [optional] |
| **total_ira_sep_simple_distribution** | **Float** |  | [optional] |
| **other** | **Float** |  | [optional] |
| **other_percent** | **String** |  | [optional] |
| **percentage_total_distribution** | **String** |  | [optional] |
| **total_employee_contributions** | **Float** |  | [optional] |
| **amount_allocable_to_irr** | **Float** |  | [optional] |
| **first_year_designated_roth_contrib** | **String** |  | [optional] |
| **fatca_requirement_indicator** | **Boolean** |  | [optional] |
| **date_of_payment** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **issuer_id** | **Integer** |  | [optional] |
| **issuer_reference_id** | **String** |  | [optional] |
| **issuer_tin** | **String** |  | [optional] |
| **tax_year** | **Integer** |  | [optional] |
| **federal_efile** | **Boolean** |  | [optional] |
| **federal_efile_status** | [**Form1099StatusDetail**](Form1099StatusDetail.md) |  | [optional] |
| **state_efile** | **Boolean** |  | [optional] |
| **state_efile_status** | [**Array&lt;StateEfileStatusDetail&gt;**](StateEfileStatusDetail.md) |  | [optional] |
| **postal_mail** | **Boolean** |  | [optional] |
| **postal_mail_status** | [**Form1099StatusDetail**](Form1099StatusDetail.md) |  | [optional] |
| **tin_match** | **Boolean** |  | [optional] |
| **tin_match_status** | [**Form1099StatusDetail**](Form1099StatusDetail.md) |  | [optional] |
| **address_verification** | **Boolean** |  | [optional] |
| **address_verification_status** | [**Form1099StatusDetail**](Form1099StatusDetail.md) |  | [optional] |
| **reference_id** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **tin_type** | **String** |  | [optional] |
| **tin** | **String** |  | [optional] |
| **recipient_name** | **String** |  | [optional] |
| **recipient_second_name** | **String** |  | [optional] |
| **address** | **String** |  | [optional] |
| **address2** | **String** |  | [optional] |
| **city** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **zip** | **String** |  | [optional] |
| **foreign_province** | **String** |  | [optional] |
| **country_code** | **String** |  | [optional] |
| **validation_errors** | [**Array&lt;ValidationError&gt;**](ValidationError.md) |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **state_and_local_withholding** | [**StateAndLocalWithholding**](StateAndLocalWithholding.md) |  | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::Form1099R.new(
  gross_distributions: null,
  taxable_amount: null,
  taxable_amount_not_determined: null,
  total_distribution_indicator: null,
  capital_gain: null,
  fed_income_tax_withheld: null,
  employee_contributions: null,
  net_unrealized_appreciation: null,
  distribution_code_required: null,
  distribution_code_optional: null,
  ira_sep_simple_indicator: null,
  total_ira_sep_simple_distribution: null,
  other: null,
  other_percent: null,
  percentage_total_distribution: null,
  total_employee_contributions: null,
  amount_allocable_to_irr: null,
  first_year_designated_roth_contrib: null,
  fatca_requirement_indicator: null,
  date_of_payment: null,
  id: null,
  type: null,
  issuer_id: null,
  issuer_reference_id: null,
  issuer_tin: null,
  tax_year: null,
  federal_efile: null,
  federal_efile_status: null,
  state_efile: null,
  state_efile_status: null,
  postal_mail: null,
  postal_mail_status: null,
  tin_match: null,
  tin_match_status: null,
  address_verification: null,
  address_verification_status: null,
  reference_id: null,
  email: null,
  tin_type: null,
  tin: null,
  recipient_name: null,
  recipient_second_name: null,
  address: null,
  address2: null,
  city: null,
  state: null,
  zip: null,
  foreign_province: null,
  country_code: null,
  validation_errors: null,
  created_at: null,
  updated_at: null,
  state_and_local_withholding: null
)
```

