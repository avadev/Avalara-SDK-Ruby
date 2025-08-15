# AvalaraSdk::A1099::V2::Form1099Div

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_ordinary_dividends** | **Float** |  | [optional] |
| **qualified_dividends** | **Float** |  | [optional] |
| **total_capital_gain_distributions** | **Float** |  | [optional] |
| **unrecaptured_section1250_gain** | **Float** |  | [optional] |
| **section1202_gain** | **Float** |  | [optional] |
| **collectibles_gain** | **Float** |  | [optional] |
| **section897_ordinary_dividends** | **Float** |  | [optional] |
| **section897_capital_gain** | **Float** |  | [optional] |
| **nondividend_distributions** | **Float** |  | [optional] |
| **federal_income_tax_withheld** | **Float** |  | [optional] |
| **section199_a_dividends** | **Float** |  | [optional] |
| **investment_expenses** | **Float** |  | [optional] |
| **foreign_tax_paid** | **Float** |  | [optional] |
| **foreign_country_or_us_possession** | **String** |  | [optional] |
| **cash_liquidation_distributions** | **Float** |  | [optional] |
| **noncash_liquidation_distributions** | **Float** |  | [optional] |
| **exempt_interest_dividends** | **Float** |  | [optional] |
| **specified_private_activity_bond_interest_dividends** | **Float** |  | [optional] |
| **fatca_filing_requirement** | **Boolean** |  | [optional] |
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
| **e_delivery_status** | [**Form1099StatusDetail**](Form1099StatusDetail.md) |  | [optional] |
| **reference_id** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **tin_type** | **String** |  | [optional] |
| **tin** | **String** |  | [optional] |
| **no_tin** | **Boolean** |  | [optional] |
| **second_tin_notice** | **Boolean** |  | [optional] |
| **recipient_name** | **String** |  | [optional] |
| **recipient_second_name** | **String** |  | [optional] |
| **address** | **String** |  | [optional] |
| **address2** | **String** |  | [optional] |
| **city** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **zip** | **String** |  | [optional] |
| **non_us_province** | **String** |  | [optional] |
| **country_code** | **String** |  | [optional] |
| **account_number** | **String** |  | [optional] |
| **office_code** | **String** |  | [optional] |
| **validation_errors** | [**Array&lt;ValidationError&gt;**](ValidationError.md) |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **state_and_local_withholding** | [**StateAndLocalWithholding**](StateAndLocalWithholding.md) |  | [optional] |

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
  e_delivery_status: null,
  reference_id: null,
  email: null,
  tin_type: null,
  tin: null,
  no_tin: null,
  second_tin_notice: null,
  recipient_name: null,
  recipient_second_name: null,
  address: null,
  address2: null,
  city: null,
  state: null,
  zip: null,
  non_us_province: null,
  country_code: null,
  account_number: null,
  office_code: null,
  validation_errors: null,
  created_at: null,
  updated_at: null,
  state_and_local_withholding: null
)
```

