# AvalaraSdk::A1099::V2::Form1099MiscListItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rents** | **Float** | Rents | [optional] |
| **royalties** | **Float** | Royalties | [optional] |
| **other_income** | **Float** | Other income | [optional] |
| **fed_income_tax_withheld** | **Float** | Federal income tax withheld | [optional] |
| **fishing_boat_proceeds** | **Float** | Fishing boat proceeds | [optional] |
| **medical_and_health_care_payments** | **Float** | Medical and health care payments | [optional] |
| **direct_sales_indicator** | **Boolean** | Payer made direct sales totaling $5,000 or more of consumer products to recipient for resale | [optional] |
| **substitute_payments** | **Float** | Substitute payments in lieu of dividends or interest | [optional] |
| **crop_insurance_proceeds** | **Float** | Crop insurance proceeds | [optional] |
| **gross_proceeds_paid_to_attorney** | **Float** | Gross proceeds paid to an attorney | [optional] |
| **fish_purchased_for_resale** | **Float** | Fish purchased for resale | [optional] |
| **section409_a_deferrals** | **Float** | Section 409A deferrals | [optional] |
| **fatca_filing_requirement** | **Boolean** | FATCA filing requirement | [optional] |
| **excess_golden_parachute_payments** | **Float** | (Legacy field) Excess golden parachute payments | [optional] |
| **nonqualified_deferred_compensation** | **Float** | Nonqualified deferred compensation | [optional] |
| **issuer_reference_id** | **String** | Issuer Reference ID. One of &#x60;issuerReferenceId&#x60; or &#x60;issuerTin&#x60; is required. | [optional] |
| **issuer_tin** | **String** | Issuer TIN. One of &#x60;issuerReferenceId&#x60; or &#x60;issuerTin&#x60; is required. | [optional] |
| **tax_year** | **Integer** | Tax year |  |
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

instance = AvalaraSdk::A1099::V2::Form1099MiscListItem.new(
  rents: null,
  royalties: null,
  other_income: null,
  fed_income_tax_withheld: null,
  fishing_boat_proceeds: null,
  medical_and_health_care_payments: null,
  direct_sales_indicator: null,
  substitute_payments: null,
  crop_insurance_proceeds: null,
  gross_proceeds_paid_to_attorney: null,
  fish_purchased_for_resale: null,
  section409_a_deferrals: null,
  fatca_filing_requirement: null,
  excess_golden_parachute_payments: null,
  nonqualified_deferred_compensation: null,
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
  address_verification: null,
  state_and_local_withholding: null
)
```

