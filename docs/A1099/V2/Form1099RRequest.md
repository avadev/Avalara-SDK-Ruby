# AvalaraSdk::A1099::V2::Form1099RRequest

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
| **type** | **String** |  | [optional] |
| **issuer_id** | **String** | Issuer ID | [optional] |
| **reference_id** | **String** | Reference ID | [optional] |
| **recipient_tin** | **String** | Recipient Tax ID Number | [optional] |
| **recipient_name** | **String** | Recipient name | [optional] |
| **tin_type** | **String** | Type of TIN (Tax ID Number). Will be one of:  * SSN  * EIN  * ITIN  * ATIN | [optional] |
| **recipient_second_name** | **String** | Recipient second name | [optional] |
| **address** | **String** | Address | [optional] |
| **address2** | **String** | Address line 2 | [optional] |
| **city** | **String** | City | [optional] |
| **state** | **String** | US state. Required if CountryCode is \&quot;US\&quot;. | [optional] |
| **zip** | **String** | Zip/postal code | [optional] |
| **email** | **String** | Recipient email address | [optional] |
| **account_number** | **String** | Account number | [optional] |
| **office_code** | **String** | Office code | [optional] |
| **non_us_province** | **String** | Foreign province | [optional] |
| **country_code** | **String** | Country code, as defined at https://www.irs.gov/e-file-providers/country-codes | [optional] |
| **federal_e_file** | **Boolean** | Boolean indicating that federal e-filing should be scheduled for this form | [optional] |
| **postal_mail** | **Boolean** | Boolean indicating that postal mailing to the recipient should be scheduled for this form | [optional] |
| **state_e_file** | **Boolean** | Boolean indicating that state e-filing should be scheduled for this form | [optional] |
| **tin_match** | **Boolean** | Boolean indicating that TIN Matching should be scheduled for this form | [optional] |
| **no_tin** | **Boolean** | Indicates whether the recipient has no TIN | [optional] |
| **second_tin_notice** | **Boolean** | Second TIN notice in three years | [optional] |
| **address_verification** | **Boolean** | Boolean indicating that address verification should be scheduled for this form | [optional] |
| **state_and_local_withholding** | [**StateAndLocalWithholdingRequest**](StateAndLocalWithholdingRequest.md) | State and local withholding information | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::Form1099RRequest.new(
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
  issuer_id: null,
  reference_id: null,
  recipient_tin: null,
  recipient_name: null,
  tin_type: EIN,
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
  state_and_local_withholding: null
)
```

