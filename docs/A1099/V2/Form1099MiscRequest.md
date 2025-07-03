# AvalaraSdk::A1099::V2::Form1099MiscRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **second_tin_notice** | **Boolean** |  | [optional] |
| **rents** | **Float** |  | [optional] |
| **royalties** | **Float** |  | [optional] |
| **other_income** | **Float** |  | [optional] |
| **fed_income_tax_withheld** | **Float** |  | [optional] |
| **fishing_boat_proceeds** | **Float** |  | [optional] |
| **medical_health_care_payments** | **Float** |  | [optional] |
| **payer_made_direct_sales** | **Boolean** |  | [optional] |
| **substitute_payments** | **Float** |  | [optional] |
| **crop_insurance_proceeds** | **Float** |  | [optional] |
| **gross_proceeds_paid_to_attorney** | **Float** |  | [optional] |
| **fish_purchased_for_resale** | **Float** |  | [optional] |
| **section409_a_deferrals** | **Float** |  | [optional] |
| **fatca_filing_requirement** | **Boolean** |  | [optional] |
| **excess_golden_parachute_payments** | **Float** |  | [optional] |
| **nonqualified_deferred_compensation** | **Float** |  | [optional] |
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

instance = AvalaraSdk::A1099::V2::Form1099MiscRequest.new(
  second_tin_notice: null,
  rents: null,
  royalties: null,
  other_income: null,
  fed_income_tax_withheld: null,
  fishing_boat_proceeds: null,
  medical_health_care_payments: null,
  payer_made_direct_sales: null,
  substitute_payments: null,
  crop_insurance_proceeds: null,
  gross_proceeds_paid_to_attorney: null,
  fish_purchased_for_resale: null,
  section409_a_deferrals: null,
  fatca_filing_requirement: null,
  excess_golden_parachute_payments: null,
  nonqualified_deferred_compensation: null,
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

