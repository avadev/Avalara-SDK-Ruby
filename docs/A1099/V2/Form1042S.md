# AvalaraSdk::A1099::V2::Form1042S

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unique_form_id** | **String** |  | [optional] |
| **recipient_date_of_birth** | **Time** |  | [optional] |
| **recipient_giin** | **String** |  | [optional] |
| **recipient_foreign_tin** | **String** |  | [optional] |
| **lob_code** | **String** |  | [optional] |
| **income_code** | **String** |  | [optional] |
| **gross_income** | **Float** |  | [optional] |
| **withholding_indicator** | **String** |  | [optional] |
| **tax_country_code** | **String** |  | [optional] |
| **exemption_code_chap3** | **String** |  | [optional] |
| **exemption_code_chap4** | **String** |  | [optional] |
| **tax_rate_chap3** | **String** |  | [optional] |
| **withholding_allowance** | **Float** |  | [optional] |
| **federal_tax_withheld** | **Float** |  | [optional] |
| **tax_not_deposited_indicator** | **Boolean** |  | [optional] |
| **academic_indicator** | **Boolean** |  | [optional] |
| **tax_withheld_other_agents** | **Float** |  | [optional] |
| **amount_repaid** | **Float** |  | [optional] |
| **tax_paid_agent** | **Float** |  | [optional] |
| **chap3_status_code** | **String** |  | [optional] |
| **chap4_status_code** | **String** |  | [optional] |
| **primary_withholding_agent** | [**PrimaryWithholdingAgent**](PrimaryWithholdingAgent.md) |  | [optional] |
| **intermediary_or_flow_through** | [**IntermediaryOrFlowThrough**](IntermediaryOrFlowThrough.md) |  | [optional] |
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
| **fatca_filing_requirement** | **Boolean** |  | [optional] |
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

instance = AvalaraSdk::A1099::V2::Form1042S.new(
  unique_form_id: null,
  recipient_date_of_birth: null,
  recipient_giin: null,
  recipient_foreign_tin: null,
  lob_code: null,
  income_code: null,
  gross_income: null,
  withholding_indicator: null,
  tax_country_code: null,
  exemption_code_chap3: null,
  exemption_code_chap4: null,
  tax_rate_chap3: null,
  withholding_allowance: null,
  federal_tax_withheld: null,
  tax_not_deposited_indicator: null,
  academic_indicator: null,
  tax_withheld_other_agents: null,
  amount_repaid: null,
  tax_paid_agent: null,
  chap3_status_code: null,
  chap4_status_code: null,
  primary_withholding_agent: null,
  intermediary_or_flow_through: null,
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
  fatca_filing_requirement: null,
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

