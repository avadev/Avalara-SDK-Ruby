# AvalaraSdk::A1099::V2::Form1042SRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unique_form_id** | **String** | Unique form identifier | [optional] |
| **no_tin** | **Boolean** | No TIN indicator | [optional] |
| **recipient_date_of_birth** | **Time** | Recipient&#39;s date of birth | [optional] |
| **recipient_giin** | **String** | Recipient&#39;s GIIN (Global Intermediary Identification Number) | [optional] |
| **recipient_foreign_tin** | **String** | Recipient&#39;s foreign TIN | [optional] |
| **lob_code** | **String** | Limitation on benefits code | [optional] |
| **income_code** | **String** | Income code | [optional] |
| **gross_income** | **Float** | Gross income | [optional] |
| **withholding_indicator** | **String** | Withholding indicator | [optional] |
| **tax_country_code** | **String** | Country code | [optional] |
| **exemption_code_chap3** | **String** | Exemption code (Chapter 3) | [optional] |
| **exemption_code_chap4** | **String** | Exemption code (Chapter 4) | [optional] |
| **tax_rate_chap3** | **String** | Tax rate (Chapter 3) | [optional] |
| **withholding_allowance** | **Float** | Withholding allowance | [optional] |
| **federal_tax_withheld** | **Float** | Federal tax withheld | [optional] |
| **tax_not_deposited_indicator** | **Boolean** | Tax not deposited indicator | [optional] |
| **academic_indicator** | **Boolean** | Academic indicator | [optional] |
| **tax_withheld_other_agents** | **Float** | Tax withheld by other agents | [optional] |
| **amount_repaid** | **Float** | Amount repaid to recipient | [optional] |
| **tax_paid_agent** | **Float** | Tax paid by withholding agent | [optional] |
| **chap3_status_code** | **String** | Chapter 3 status code | [optional] |
| **chap4_status_code** | **String** | Chapter 4 status code | [optional] |
| **primary_withholding_agent** | [**PrimaryWithholdingAgentRequest**](PrimaryWithholdingAgentRequest.md) | Primary withholding agent information | [optional] |
| **intermediary_or_flow_through** | [**IntermediaryOrFlowThroughRequest**](IntermediaryOrFlowThroughRequest.md) | Intermediary or flow-through entity information | [optional] |
| **state_and_local_withholding** | [**StateAndLocalWithholdingRequest**](StateAndLocalWithholdingRequest.md) | State and local withholding information | [optional] |
| **type** | **String** |  | [optional] |
| **issuer_id** | **String** | Issuer ID | [optional] |
| **reference_id** | **String** | Reference ID | [optional] |
| **recipient_tin** | **String** | Recipient Tax ID Number | [optional] |
| **recipient_name** | **String** | Recipient name |  |
| **tin_type** | **String** | Type of TIN (Tax ID Number). Will be one of:  * SSN  * EIN  * ITIN  * ATIN | [optional] |
| **recipient_second_name** | **String** | Recipient second name | [optional] |
| **address** | **String** | Address |  |
| **address2** | **String** | Address line 2 | [optional] |
| **city** | **String** | City |  |
| **state** | **String** | US state. Required if CountryCode is \&quot;US\&quot;. | [optional] |
| **zip** | **String** | Zip/postal code | [optional] |
| **recipient_email** | **String** | Recipient email address | [optional] |
| **account_number** | **String** | Account number | [optional] |
| **office_code** | **String** | Office code | [optional] |
| **recipient_non_us_province** | **String** | Foreign province | [optional] |
| **country_code** | **String** | Country code, as defined at https://www.irs.gov/e-file-providers/country-codes |  |
| **federal_e_file** | **Boolean** | Boolean indicating that federal e-filing should be scheduled for this form | [optional] |
| **postal_mail** | **Boolean** | Boolean indicating that postal mailing to the recipient should be scheduled for this form | [optional] |
| **state_e_file** | **Boolean** | Boolean indicating that state e-filing should be scheduled for this form | [optional] |
| **tin_match** | **Boolean** | Boolean indicating that TIN Matching should be scheduled for this form | [optional] |
| **address_verification** | **Boolean** | Boolean indicating that address verification should be scheduled for this form | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::Form1042SRequest.new(
  unique_form_id: null,
  no_tin: null,
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
  state_and_local_withholding: null,
  type: 1099-NEC,
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
  recipient_email: null,
  account_number: null,
  office_code: null,
  recipient_non_us_province: null,
  country_code: null,
  federal_e_file: null,
  postal_mail: null,
  state_e_file: null,
  tin_match: null,
  address_verification: null
)
```

