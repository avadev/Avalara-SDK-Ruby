# AvalaraSdk::A1099::V2::Form1099IntListItemResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **interest_income** | **Float** | Interest Income | [optional] |
| **early_withdrawal_penalty** | **Float** | Early withdrawal penalty | [optional] |
| **us_savings_bonds_interest** | **Float** | Interest on U.S. Savings Bonds and Treasury obligations | [optional] |
| **federal_income_tax_withheld** | **Float** | Federal income tax withheld | [optional] |
| **investment_expenses** | **Float** | Investment expenses | [optional] |
| **foreign_tax_paid** | **Float** | Foreign tax paid | [optional] |
| **foreign_country** | **String** | Foreign country or U.S. possession | [optional] |
| **tax_exempt_interest** | **Float** | Tax-exempt interest | [optional] |
| **specified_private_activity_bond_interest** | **Float** | Specified private activity bond interest | [optional] |
| **market_discount** | **Float** | Market discount | [optional] |
| **bond_premium** | **Float** | Bond premium | [optional] |
| **bond_premium_on_treasury_obligations** | **Float** | Bond premium on Treasury obligations | [optional] |
| **bond_premium_on_tax_exempt_bond** | **Float** | Bond premium on tax exempt bond | [optional] |
| **tax_exempt_bond_cusip_number** | **String** | Tax exempt bond CUSIP number | [optional] |
| **id** | **String** | ID of the form | [readonly] |
| **type** | **String** | Type of the form. Will be one of:  * 940  * 941  * 943  * 944  * 945  * 1042  * 1042-S  * 1095-B  * 1095-C  * 1097-BTC  * 1098  * 1098-C  * 1098-E  * 1098-Q  * 1098-T  * 3921  * 3922  * 5498  * 5498-ESA  * 5498-SA  * 1099-MISC  * 1099-A  * 1099-B  * 1099-C  * 1099-CAP  * 1099-DIV  * 1099-G  * 1099-INT  * 1099-K  * 1099-LS  * 1099-LTC  * 1099-NEC  * 1099-OID  * 1099-PATR  * 1099-Q  * 1099-R  * 1099-S  * 1099-SA  * T4A  * W-2  * W-2G  * 1099-HC |  |
| **issuer_id** | **Integer** | Issuer ID |  |
| **issuer_reference_id** | **String** | Issuer Reference ID | [optional] |
| **issuer_tin** | **String** | Issuer TIN | [optional] |
| **tax_year** | **Integer** | Tax year | [optional] |
| **federal_efile** | **Boolean** | Boolean indicating that federal e-filing has been scheduled for this form |  |
| **federal_efile_status** | [**StatusDetail**](StatusDetail.md) | Federal e-file status | [optional][readonly] |
| **state_efile** | **Boolean** | Boolean indicating that state e-filing has been scheduled for this form |  |
| **state_efile_status** | [**Array&lt;StateEfileStatusDetailResponse&gt;**](StateEfileStatusDetailResponse.md) | State e-file status | [optional][readonly] |
| **postal_mail** | **Boolean** | Boolean indicating that postal mailing to the recipient has been scheduled for this form |  |
| **postal_mail_status** | [**StatusDetail**](StatusDetail.md) | Postal mail to recipient status | [optional][readonly] |
| **tin_match** | **Boolean** | Boolean indicating that TIN Matching has been scheduled for this form |  |
| **tin_match_status** | [**StatusDetail**](StatusDetail.md) | TIN Match status | [optional][readonly] |
| **address_verification** | **Boolean** | Boolean indicating that address verification has been scheduled for this form |  |
| **address_verification_status** | [**StatusDetail**](StatusDetail.md) | Address verification status | [optional][readonly] |
| **e_delivery_status** | [**StatusDetail**](StatusDetail.md) | EDelivery status | [optional][readonly] |
| **reference_id** | **String** | Reference ID | [optional] |
| **email** | **String** | Recipient email address | [optional] |
| **tin_type** | **String** | Type of TIN (Tax ID Number). Will be one of:  * SSN  * EIN  * ITIN  * ATIN | [optional] |
| **tin** | **String** | Recipient Tax ID Number | [optional] |
| **no_tin** | **Boolean** | Indicates whether the recipient has no TIN | [optional] |
| **second_tin_notice** | **Boolean** | Second Tin Notice | [optional] |
| **recipient_name** | **String** | Recipient name | [optional] |
| **recipient_second_name** | **String** | Recipient second name | [optional] |
| **address** | **String** | Address | [optional] |
| **address2** | **String** | Address line 2 | [optional] |
| **city** | **String** | City | [optional] |
| **state** | **String** | US state | [optional] |
| **zip** | **String** | Zip/postal code | [optional] |
| **non_us_province** | **String** | Foreign province | [optional] |
| **country_code** | **String** | Country code, as defined at https://www.irs.gov/e-file-providers/country-codes | [optional] |
| **account_number** | **String** | Account Number | [optional] |
| **office_code** | **String** | Office Code | [optional] |
| **fatca_filing_requirement** | **Boolean** | FATCA filing requirement | [optional] |
| **validation_errors** | [**Array&lt;ValidationErrorResponse&gt;**](ValidationErrorResponse.md) | Validation errors | [optional][readonly] |
| **created_at** | **Time** | Creation time | [optional][readonly] |
| **updated_at** | **Time** | Update time | [optional][readonly] |
| **state_and_local_withholding** | [**StateAndLocalWithholdingResponse**](StateAndLocalWithholdingResponse.md) |  | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::Form1099IntListItemResponse.new(
  interest_income: 1402.71,
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
  id: 123456789,
  type: 1099-NEC,
  issuer_id: 987654321,
  issuer_reference_id: R-3898734,
  issuer_tin: 59-387274,
  tax_year: 2024,
  federal_efile: false,
  federal_efile_status: null,
  state_efile: false,
  state_efile_status: null,
  postal_mail: false,
  postal_mail_status: null,
  tin_match: false,
  tin_match_status: null,
  address_verification: false,
  address_verification_status: null,
  e_delivery_status: null,
  reference_id: 1891810-9819891,
  email: roadrunner@acmecorp.com,
  tin_type: null,
  tin: null,
  no_tin: false,
  second_tin_notice: null,
  recipient_name: null,
  recipient_second_name: null,
  address: 1234 Meep Meep Blvd,
  address2: null,
  city: Tucson,
  state: AZ,
  zip: 35004,
  non_us_province: ,
  country_code: US,
  account_number: null,
  office_code: null,
  fatca_filing_requirement: null,
  validation_errors: null,
  created_at: 2025-08-15T15:39:30.279309800Z,
  updated_at: 2025-08-15T15:39:30.279310500Z,
  state_and_local_withholding: null
)
```

