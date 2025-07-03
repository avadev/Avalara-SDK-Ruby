# AvalaraSdk::A1099::V2::Form1099Misc

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rents** | **Float** |  | [optional] |
| **royalties** | **Float** |  | [optional] |
| **other_income** | **Float** |  | [optional] |
| **fed_income_tax_withheld** | **Float** |  | [optional] |
| **fishing_boat_proceeds** | **Float** |  | [optional] |
| **medical_and_health_care** | **Float** |  | [optional] |
| **nonemployee_compensation** | **Float** |  | [optional] |
| **substitute_payments** | **Float** |  | [optional] |
| **direct_sales_indicator** | **Boolean** |  | [optional] |
| **crop_insurance_proceeds** | **Float** |  | [optional] |
| **excess_golden_parachute** | **Float** |  | [optional] |
| **gross_amount_paid_attorney** | **Float** |  | [optional] |
| **section409_a_deferrals** | **Float** |  | [optional] |
| **section409_a_income** | **Float** |  | [optional] |
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
| **reference_id** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **tin_type** | **String** |  | [optional] |
| **tin** | **String** |  | [optional] |
| **recipient_name** | **String** |  | [optional] |
| **recipient_second_name** | **String** |  | [optional] |
| **address** | **String** |  | [optional] |
| **address2** | **String** |  | [optional] |
| **city** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **zip** | **String** |  | [optional] |
| **foreign_province** | **String** |  | [optional] |
| **country_code** | **String** |  | [optional] |
| **validation_errors** | [**Array&lt;ValidationError&gt;**](ValidationError.md) |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **state_and_local_withholding** | [**StateAndLocalWithholding**](StateAndLocalWithholding.md) |  | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::Form1099Misc.new(
  rents: null,
  royalties: null,
  other_income: null,
  fed_income_tax_withheld: null,
  fishing_boat_proceeds: null,
  medical_and_health_care: null,
  nonemployee_compensation: null,
  substitute_payments: null,
  direct_sales_indicator: null,
  crop_insurance_proceeds: null,
  excess_golden_parachute: null,
  gross_amount_paid_attorney: null,
  section409_a_deferrals: null,
  section409_a_income: null,
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
  reference_id: null,
  email: null,
  tin_type: null,
  tin: null,
  recipient_name: null,
  recipient_second_name: null,
  address: null,
  address2: null,
  city: null,
  state: null,
  zip: null,
  foreign_province: null,
  country_code: null,
  validation_errors: null,
  created_at: null,
  updated_at: null,
  state_and_local_withholding: null
)
```

