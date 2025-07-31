# AvalaraSdk::A1099::V2::Form1099DivRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_ordinary_dividends** | **String** | Total ordinary dividends | [optional] |
| **qualified_dividends** | **String** | Qualified dividends | [optional] |
| **total_capital_gain_distributions** | **String** | Total capital gain distributions | [optional] |
| **unrecaptured_section1250_gain** | **String** | Unrecaptured Section 1250 gain | [optional] |
| **section1202_gain** | **String** | Section 1202 gain | [optional] |
| **collectibles_gain** | **String** | Collectibles (28%) gain | [optional] |
| **section897_ordinary_dividends** | **String** | Section 897 ordinary dividends | [optional] |
| **section897_capital_gain** | **String** | Section 897 capital gain | [optional] |
| **nondividend_distributions** | **String** | Nondividend distributions | [optional] |
| **federal_income_tax_withheld** | **String** | Federal income tax withheld | [optional] |
| **section199_a_dividends** | **String** | Section 199A dividends | [optional] |
| **investment_expenses** | **String** | Investment expenses | [optional] |
| **foreign_tax_paid** | **String** | Foreign tax paid | [optional] |
| **foreign_country_or_us_possession** | **String** | Foreign country or U.S. possession | [optional] |
| **cash_liquidation_distributions** | **String** | Cash liquidation distributions | [optional] |
| **noncash_liquidation_distributions** | **String** | Noncash liquidation distributions | [optional] |
| **exempt_interest_dividends** | **String** | Exempt-interest dividends | [optional] |
| **specified_private_activity_bond_interest_dividends** | **String** | Specified private activity bond interest dividends | [optional] |
| **fatca_filing_requirement** | **Boolean** | FATCA filing requirement | [optional] |
| **type** | **String** |  | [optional] |
| **issuer_id** | **String** | Issuer ID | [optional] |
| **reference_id** | **String** | Reference ID | [optional] |
| **recipient_tin** | **String** | Recipient Tax ID Number | [optional] |
| **recipient_name** | **String** | Recipient name | [optional] |
| **tin_type** | **String** | Type of TIN (Tax ID Number). Will be one of:  * SSN  * EIN  * ITIN  * ATIN | [optional] |
| **recipient_second_name** | **String** | Recipient second name | [optional] |
| **address** | **String** | Address |  |
| **address2** | **String** | Address line 2 | [optional] |
| **city** | **String** | City |  |
| **state** | **String** | US state. Required if CountryCode is \&quot;US\&quot;. | [optional] |
| **zip** | **String** | Zip/postal code | [optional] |
| **email** | **String** | Recipient email address | [optional] |
| **account_number** | **String** | Account number | [optional] |
| **office_code** | **String** | Office code | [optional] |
| **non_us_province** | **String** | Foreign province | [optional] |
| **country_code** | **String** | Country code, as defined at https://www.irs.gov/e-file-providers/country-codes |  |
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

instance = AvalaraSdk::A1099::V2::Form1099DivRequest.new(
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

