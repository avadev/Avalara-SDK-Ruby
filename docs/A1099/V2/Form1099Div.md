# AvalaraSdk::A1099::V2::Form1099Div

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_ordinary_dividends** | **Float** | Total ordinary dividends | [optional] |
| **qualified_dividends** | **Float** | Qualified dividends | [optional] |
| **total_capital_gain_distributions** | **Float** | Total capital gain distributions | [optional] |
| **unrecaptured_section1250_gain** | **Float** | Unrecaptured Section 1250 gain | [optional] |
| **section1202_gain** | **Float** | Section 1202 gain | [optional] |
| **collectibles_gain** | **Float** | Collectibles (28%) gain | [optional] |
| **section897_ordinary_dividends** | **Float** | Section 897 ordinary dividends | [optional] |
| **section897_capital_gain** | **Float** | Section 897 capital gain | [optional] |
| **nondividend_distributions** | **Float** | Nondividend distributions | [optional] |
| **federal_income_tax_withheld** | **Float** | Federal income tax withheld | [optional] |
| **section199_a_dividends** | **Float** | Section 199A dividends | [optional] |
| **investment_expenses** | **Float** | Investment expenses | [optional] |
| **foreign_tax_paid** | **Float** | Foreign tax paid | [optional] |
| **foreign_country_or_us_possession** | **String** | Foreign country or U.S. possession | [optional] |
| **cash_liquidation_distributions** | **Float** | Cash liquidation distributions | [optional] |
| **noncash_liquidation_distributions** | **Float** | Noncash liquidation distributions | [optional] |
| **exempt_interest_dividends** | **Float** | Exempt-interest dividends | [optional] |
| **specified_private_activity_bond_interest_dividends** | **Float** | Specified private activity bond interest dividends | [optional] |
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

instance = AvalaraSdk::A1099::V2::Form1099Div.new(
  total_ordinary_dividends: null,
  qualified_dividends: null,
  total_capital_gain_distributions: null,
  unrecaptured_section1250_gain: null,
  section1202_gain: null,
  collectibles_gain: null,
  section897_ordinary_dividends: null,
  section897_capital_gain: null,
  nondividend_distributions: null,
  federal_income_tax_withheld: null,
  section199_a_dividends: null,
  investment_expenses: null,
  foreign_tax_paid: null,
  foreign_country_or_us_possession: null,
  cash_liquidation_distributions: null,
  noncash_liquidation_distributions: null,
  exempt_interest_dividends: null,
  specified_private_activity_bond_interest_dividends: null,
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

