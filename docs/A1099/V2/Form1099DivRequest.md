# AvalaraSdk::A1099::V2::Form1099DivRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_ordinary_dividends** | **String** |  | [optional] |
| **qualified_dividends** | **String** |  | [optional] |
| **total_capital_gain_distr** | **String** |  | [optional] |
| **unrecap_sec1250_gain** | **String** |  | [optional] |
| **section1202_gain** | **String** |  | [optional] |
| **collectibles_gain** | **String** |  | [optional] |
| **section897_ordinary_dividends** | **String** |  | [optional] |
| **section897_capital_gain** | **String** |  | [optional] |
| **nondividend_distributions** | **String** |  | [optional] |
| **federal_income_tax_withheld** | **String** |  | [optional] |
| **section199_a_dividends** | **String** |  | [optional] |
| **investment_expenses** | **String** |  | [optional] |
| **foreign_tax_paid** | **String** |  | [optional] |
| **foreign_country_or_us_possession** | **String** |  | [optional] |
| **cash_liquidation_distributions** | **String** |  | [optional] |
| **noncash_liquidation_distributions** | **String** |  | [optional] |
| **exempt_interest_dividends** | **String** |  | [optional] |
| **specified_private_activity_bond_interest_dividends** | **String** |  | [optional] |
| **fatca_filing_requirement** | **String** |  | [optional] |
| **type** | **String** |  | [optional][readonly] |
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

instance = AvalaraSdk::A1099::V2::Form1099DivRequest.new(
  total_ordinary_dividends: null,
  qualified_dividends: null,
  total_capital_gain_distr: null,
  unrecap_sec1250_gain: null,
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
  type: Form1099Nec,
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

