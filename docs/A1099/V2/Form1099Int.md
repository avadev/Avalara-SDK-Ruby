# AvalaraSdk::A1099::V2::Form1099Int

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

instance = AvalaraSdk::A1099::V2::Form1099Int.new(
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

