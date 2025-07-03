# AvalaraSdk::A1099::V2::Form1099RListItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gross_distribution** | **Float** |  | [optional] |
| **taxable_amount** | **Float** |  | [optional] |
| **taxable_amount_not_determined** | **Boolean** |  | [optional] |
| **total_distribution_determined** | **Boolean** |  | [optional] |
| **capital_gain** | **Float** |  | [optional] |
| **federal_income_tax_withheld** | **Float** |  | [optional] |
| **employee_contributions_or_designated_roth_or_insurance_premiums** | **Float** |  | [optional] |
| **net_unrealized_appreciation_in_employer_securities** | **Float** |  | [optional] |
| **distribution_code** | **String** |  | [optional] |
| **second_distribution_code** | **String** |  | [optional] |
| **ira_sep_simple** | **Boolean** |  | [optional] |
| **traditional_ira_sep_simple_or_roth_conversion_amount** | **Float** |  | [optional] |
| **other_amount** | **Float** |  | [optional] |
| **other_percentage** | **String** |  | [optional] |
| **total_distribution_percentage** | **String** |  | [optional] |
| **total_employee_contributions** | **Float** |  | [optional] |
| **amount_allocable_to_irr_within5_years** | **Float** |  | [optional] |
| **first_year_of_designated_roth_contribution** | **Integer** |  | [optional] |
| **fatca_filing_requirement** | **Boolean** |  | [optional] |
| **date_of_payment** | **Time** |  | [optional] |
| **issuer_reference_id** | **String** |  | [optional] |
| **issuer_tin** | **String** |  | [optional] |
| **tax_year** | **Integer** |  | [optional] |
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

instance = AvalaraSdk::A1099::V2::Form1099RListItem.new(
  gross_distribution: null,
  taxable_amount: null,
  taxable_amount_not_determined: null,
  total_distribution_determined: null,
  capital_gain: null,
  federal_income_tax_withheld: null,
  employee_contributions_or_designated_roth_or_insurance_premiums: null,
  net_unrealized_appreciation_in_employer_securities: null,
  distribution_code: EarlyDistributionNoException,
  second_distribution_code: null,
  ira_sep_simple: null,
  traditional_ira_sep_simple_or_roth_conversion_amount: null,
  other_amount: null,
  other_percentage: null,
  total_distribution_percentage: null,
  total_employee_contributions: null,
  amount_allocable_to_irr_within5_years: null,
  first_year_of_designated_roth_contribution: null,
  fatca_filing_requirement: null,
  date_of_payment: null,
  issuer_reference_id: null,
  issuer_tin: null,
  tax_year: null,
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

