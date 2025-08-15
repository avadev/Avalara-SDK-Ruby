# AvalaraSdk::A1099::V2::Form1099IntResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **interest_income** | **Float** | Interest Income | [optional] |
| **early_withdrawal_penalty** | **Float** | Early Withdrawal Penalty | [optional] |
| **us_savings_bonds_interest** | **Float** | Interest on U.S. Savings Bonds and Treasury obligations | [optional] |
| **federal_income_tax_withheld** | **Float** | Federal income tax withheld | [optional] |
| **investment_expenses** | **Float** | Investment Expenses | [optional] |
| **foreign_tax_paid** | **Float** | Foreign tax paid | [optional] |
| **foreign_country** | **String** | Foreign country or U.S. possession | [optional] |
| **tax_exempt_interest** | **Float** | Tax-Exempt Interest | [optional] |
| **specified_private_activity_bond_interest** | **Float** | Specified Private activity | [optional] |
| **market_discount** | **Float** | Market Discount | [optional] |
| **bond_premium** | **Float** | Bond Premium | [optional] |
| **bond_premium_on_treasury_obligations** | **Float** | Bond Premium on Treasury obligations | [optional] |
| **bond_premium_on_tax_exempt_bond** | **Float** | Bond Premium on tax exempt bond | [optional] |
| **tax_exempt_bond_cusip_number** | **String** | Tax exempt bond CUSIP no. | [optional] |
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

instance = AvalaraSdk::A1099::V2::Form1099IntResponse.new(
  interest_income: null,
  early_withdrawal_penalty: null,
  us_savings_bonds_interest: null,
  federal_income_tax_withheld: null,
  investment_expenses: null,
  foreign_tax_paid: null,
  foreign_country: null,
  tax_exempt_interest: null,
  specified_private_activity_bond_interest: null,
  market_discount: null,
  bond_premium: null,
  bond_premium_on_treasury_obligations: null,
  bond_premium_on_tax_exempt_bond: null,
  tax_exempt_bond_cusip_number: null,
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

