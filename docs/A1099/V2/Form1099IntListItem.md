# AvalaraSdk::A1099::V2::Form1099IntListItem

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
| **issuer_reference_id** | **String** | Issuer Reference ID. One of &#x60;issuerReferenceId&#x60; or &#x60;issuerTin&#x60; is required. | [optional] |
| **issuer_tin** | **String** | Issuer TIN. One of &#x60;issuerReferenceId&#x60; or &#x60;issuerTin&#x60; is required. | [optional] |
| **tax_year** | **Integer** | Tax year |  |
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
| **fatca_filing_requirement** | **Boolean** | Fatca filing requirement | [optional] |
| **address_verification** | **Boolean** | Boolean indicating that address verification should be scheduled for this form | [optional] |
| **state_and_local_withholding** | [**StateAndLocalWithholdingRequest**](StateAndLocalWithholdingRequest.md) | State and local withholding information | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::Form1099IntListItem.new(
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
  issuer_reference_id: null,
  issuer_tin: null,
  tax_year: null,
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
  fatca_filing_requirement: null,
  address_verification: null,
  state_and_local_withholding: null
)
```

