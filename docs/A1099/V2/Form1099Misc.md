# AvalaraSdk::A1099::V2::Form1099Misc

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rents** | **Float** | Rents | [optional] |
| **royalties** | **Float** | Royalties | [optional] |
| **other_income** | **Float** | Other income | [optional] |
| **federal_income_tax_withheld** | **Float** | Federal income tax withheld | [optional] |
| **fishing_boat_proceeds** | **Float** | Fishing boat proceeds | [optional] |
| **medical_and_health_care_payments** | **Float** | Medical and health care payments | [optional] |
| **direct_sales_indicator** | **Boolean** | Payer made direct sales totaling $5,000 or more of consumer products to recipient for resale | [optional] |
| **substitute_payments** | **Float** | Substitute payments in lieu of dividends or interest | [optional] |
| **crop_insurance_proceeds** | **Float** | Crop insurance proceeds | [optional] |
| **gross_proceeds_paid_to_attorney** | **Float** | Gross proceeds paid to an attorney | [optional] |
| **fish_purchased_for_resale** | **Float** | Fish purchased for resale | [optional] |
| **section409_a_deferrals** | **Float** | Section 409A deferrals | [optional] |
| **excess_golden_parachute_payments** | **Float** | (Legacy field) Excess golden parachute payments | [optional] |
| **nonqualified_deferred_compensation** | **Float** | Nonqualified deferred compensation | [optional] |
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

instance = AvalaraSdk::A1099::V2::Form1099Misc.new(
  rents: null,
  royalties: null,
  other_income: null,
  federal_income_tax_withheld: null,
  fishing_boat_proceeds: null,
  medical_and_health_care_payments: null,
  direct_sales_indicator: null,
  substitute_payments: null,
  crop_insurance_proceeds: null,
  gross_proceeds_paid_to_attorney: null,
  fish_purchased_for_resale: null,
  section409_a_deferrals: null,
  excess_golden_parachute_payments: null,
  nonqualified_deferred_compensation: null,
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

