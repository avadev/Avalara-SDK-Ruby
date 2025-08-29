# AvalaraSdk::A1099::V2::Form1099R

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
| **date_of_payment** | **Date** | Date of payment | [optional] |
| **fatca_filing_requirement** | **Boolean** | FATCA filing requirement | [optional] |
| **type** | **String** | Form type |  |
| **id** | **String** | Form ID. Unique identifier set when the record is created. | [optional][readonly] |
| **issuer_id** | **String** | Issuer ID - only required when creating forms | [optional] |
| **issuer_reference_id** | **String** | Issuer Reference ID - only required when creating forms | [optional] |
| **issuer_tin** | **String** | Issuer TIN - readonly | [optional] |
| **tax_year** | **Integer** | Tax Year - only required when creating forms | [optional] |
| **reference_id** | **String** | Internal reference ID. Never shown to any agency or recipient. | [optional] |
| **tin** | **String** | Recipient&#39;s Federal Tax Identification Number (TIN). | [optional] |
| **recipient_name** | **String** | Recipient name |  |
| **tin_type** | **String** | Type of TIN (Tax ID Number) | [optional] |
| **recipient_second_name** | **String** | Recipient second name | [optional] |
| **address** | **String** | Address. |  |
| **address2** | **String** | Address line 2. | [optional] |
| **city** | **String** | City. |  |
| **state** | **String** | Two-letter US state or Canadian province code (required for US/CA addresses). | [optional] |
| **zip** | **String** | ZIP/postal code. | [optional] |
| **email** | **String** | Recipient&#39;s Contact email address. | [optional] |
| **account_number** | **String** | Account number | [optional] |
| **office_code** | **String** | Office code | [optional] |
| **non_us_province** | **String** | Province or region for non-US/CA addresses. | [optional] |
| **country_code** | **String** | Two-letter IRS country code (e.g., &#39;US&#39;, &#39;CA&#39;), as defined at https://www.irs.gov/e-file-providers/country-codes. |  |
| **federal_efile_date** | **Date** | Date when federal e-filing should be scheduled for this form | [optional] |
| **postal_mail** | **Boolean** | Boolean indicating that postal mailing to the recipient should be scheduled for this form | [optional] |
| **state_efile_date** | **Date** | Date when state e-filing should be scheduled for this form | [optional] |
| **recipient_edelivery_date** | **Date** | Date when recipient e-delivery should be scheduled for this form | [optional] |
| **tin_match** | **Boolean** | Boolean indicating that TIN Matching should be scheduled for this form | [optional] |
| **no_tin** | **Boolean** | No TIN indicator | [optional] |
| **address_verification** | **Boolean** | Boolean indicating that address verification should be scheduled for this form | [optional] |
| **state_and_local_withholding** | [**StateAndLocalWithholding**](StateAndLocalWithholding.md) | State and local withholding information | [optional] |
| **second_tin_notice** | **Boolean** | Second TIN notice | [optional] |
| **federal_efile_status** | [**Form1099StatusDetail**](Form1099StatusDetail.md) | Federal e-file status | [optional][readonly] |
| **state_efile_status** | [**Array&lt;StateEfileStatusDetail&gt;**](StateEfileStatusDetail.md) | State e-file status | [optional][readonly] |
| **postal_mail_status** | [**Form1099StatusDetail**](Form1099StatusDetail.md) | Postal mail to recipient status | [optional][readonly] |
| **tin_match_status** | [**Form1099StatusDetail**](Form1099StatusDetail.md) | TIN Match status | [optional][readonly] |
| **address_verification_status** | [**Form1099StatusDetail**](Form1099StatusDetail.md) | Address verification status | [optional][readonly] |
| **e_delivery_status** | [**Form1099StatusDetail**](Form1099StatusDetail.md) | EDelivery status | [optional][readonly] |
| **validation_errors** | [**Array&lt;ValidationError&gt;**](ValidationError.md) | Validation errors | [optional][readonly] |
| **created_at** | **Time** | Date time when the record was created. | [optional][readonly] |
| **updated_at** | **Time** | Date time when the record was last updated. | [optional][readonly] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::Form1099R.new(
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
  date_of_payment: null,
  fatca_filing_requirement: null,
  type: 1099-NEC,
  id: null,
  issuer_id: null,
  issuer_reference_id: null,
  issuer_tin: null,
  tax_year: null,
  reference_id: null,
  tin: null,
  recipient_name: null,
  tin_type: null,
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
  federal_efile_date: null,
  postal_mail: null,
  state_efile_date: null,
  recipient_edelivery_date: null,
  tin_match: null,
  no_tin: null,
  address_verification: null,
  state_and_local_withholding: null,
  second_tin_notice: null,
  federal_efile_status: null,
  state_efile_status: null,
  postal_mail_status: null,
  tin_match_status: null,
  address_verification_status: null,
  e_delivery_status: null,
  validation_errors: null,
  created_at: null,
  updated_at: null
)
```

