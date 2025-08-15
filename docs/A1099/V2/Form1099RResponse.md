# AvalaraSdk::A1099::V2::Form1099RResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gross_distribution** | **Float** | Gross distribution | [optional] |
| **taxable_amount** | **Float** | Taxable amount | [optional] |
| **taxable_amount_not_determined** | **Boolean** | Taxable amount not determined | [optional] |
| **total_distribution_determined** | **Boolean** | Total distribution | [optional] |
| **capital_gain** | **Float** | Capital gain (included in Box 2a) | [optional] |
| **federal_income_tax_withheld** | **Float** | Federal income tax withheld | [optional] |
| **employee_contributions_or_designated_roth_or_insurance_premiums** | **Float** | Employee contributions/Designated Roth contributions or insurance premiums | [optional] |
| **net_unrealized_appreciation_in_employer_securities** | **Float** | Net unrealized appreciation in employer&#39;s securities | [optional] |
| **distribution_code** | **String** | Distribution code | [optional] |
| **second_distribution_code** | **String** | Second distribution code | [optional] |
| **ira_sep_simple** | **Boolean** | IRA/SEP/SIMPLE | [optional] |
| **traditional_ira_sep_simple_or_roth_conversion_amount** | **Float** | Traditional IRA/SEP/SIMPLE or Roth conversion amount | [optional] |
| **other_amount** | **Float** | Other amount | [optional] |
| **other_percentage** | **String** | Other percentage | [optional] |
| **total_distribution_percentage** | **String** | Total distribution percentage | [optional] |
| **total_employee_contributions** | **Float** | Total employee contributions | [optional] |
| **amount_allocable_to_irr_within5_years** | **Float** | Amount allocable to IRR within 5 years | [optional] |
| **first_year_of_designated_roth_contribution** | **String** | First year of designated Roth contribution | [optional] |
| **fatca_filing_requirement** | **Boolean** | FATCA filing requirement | [optional] |
| **date_of_payment** | **Time** | Date of payment | [optional] |
| **type** | **String** |  | [optional][readonly] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **state_and_local_withholding** | [**StateAndLocalWithholdingResponse**](StateAndLocalWithholdingResponse.md) |  | [optional] |
| **tin_type** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **issuer_id** | **String** |  | [optional] |
| **issuer_reference_id** | **String** |  | [optional] |
| **issuer_tin** | **String** |  | [optional] |
| **tax_year** | **Integer** |  | [optional] |
| **reference_id** | **String** |  | [optional] |
| **recipient_name** | **String** |  | [optional] |
| **recipient_tin** | **String** |  | [optional] |
| **recipient_second_name** | **String** |  | [optional] |
| **address** | **String** |  | [optional] |
| **address2** | **String** |  | [optional] |
| **city** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **zip** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **account_number** | **String** |  | [optional] |
| **office_code** | **String** |  | [optional] |
| **non_us_province** | **String** |  | [optional] |
| **country_code** | **String** |  | [optional] |
| **federal_e_file** | **Boolean** |  | [optional] |
| **postal_mail** | **Boolean** |  | [optional] |
| **state_e_file** | **Boolean** |  | [optional] |
| **tin_match** | **Boolean** |  | [optional] |
| **no_tin** | **Boolean** |  | [optional] |
| **second_tin_notice** | **Boolean** |  | [optional] |
| **address_verification** | **Boolean** |  | [optional] |
| **federal_efile_status** | [**StatusDetail**](StatusDetail.md) |  | [optional] |
| **e_delivery_status** | [**StatusDetail**](StatusDetail.md) |  | [optional] |
| **state_efile_status** | [**Array&lt;StateEfileStatusDetailResponse&gt;**](StateEfileStatusDetailResponse.md) |  | [optional] |
| **postal_mail_status** | [**StatusDetail**](StatusDetail.md) |  | [optional] |
| **tin_match_status** | [**StatusDetail**](StatusDetail.md) |  | [optional] |
| **address_verification_status** | [**StatusDetail**](StatusDetail.md) |  | [optional] |
| **validation_errors** | [**Array&lt;ValidationErrorResponse&gt;**](ValidationErrorResponse.md) |  | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::Form1099RResponse.new(
  gross_distribution: null,
  taxable_amount: null,
  taxable_amount_not_determined: null,
  total_distribution_determined: null,
  capital_gain: null,
  federal_income_tax_withheld: null,
  employee_contributions_or_designated_roth_or_insurance_premiums: null,
  net_unrealized_appreciation_in_employer_securities: null,
  distribution_code: null,
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
  type: 1099-NEC,
  created_at: null,
  updated_at: null,
  state_and_local_withholding: null,
  tin_type: EIN,
  id: null,
  issuer_id: null,
  issuer_reference_id: null,
  issuer_tin: null,
  tax_year: null,
  reference_id: null,
  recipient_name: null,
  recipient_tin: null,
  recipient_second_name: null,
  address: null,
  address2: null,
  city: null,
  state: null,
  zip: null,
  email: null,
  account_number: null,
  office_code: null,
  non_us_province: null,
  country_code: null,
  federal_e_file: null,
  postal_mail: null,
  state_e_file: null,
  tin_match: null,
  no_tin: null,
  second_tin_notice: null,
  address_verification: null,
  federal_efile_status: null,
  e_delivery_status: null,
  state_efile_status: null,
  postal_mail_status: null,
  tin_match_status: null,
  address_verification_status: null,
  validation_errors: null
)
```

