# AvalaraSdk::A1099::V2::Form1099DivResponse

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

instance = AvalaraSdk::A1099::V2::Form1099DivResponse.new(
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

