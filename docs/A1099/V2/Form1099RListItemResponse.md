# AvalaraSdk::A1099::V2::Form1099RListItemResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gross_distributions** | **Float** | Gross distribution | [optional] |
| **taxable_amount** | **Float** | Taxable amount | [optional] |
| **taxable_amount_not_determined** | **Boolean** | Taxable amount not determined | [optional] |
| **total_distribution_indicator** | **Boolean** | Total distribution | [optional] |
| **capital_gain** | **Float** | Capital gain (included in Box 2a) | [optional] |
| **fed_income_tax_withheld** | **Float** | Federal income tax withheld | [optional] |
| **employee_contributions** | **Float** | Employee contributions/Designated Roth contributions or insurance premiums | [optional] |
| **net_unrealized_appreciation** | **Float** | Net unrealized appreciation in employer&#39;s securities | [optional] |
| **distribution_code_required** | **String** | Distribution code | [optional] |
| **distribution_code_optional** | **String** | Second distribution code | [optional] |
| **ira_sep_simple_indicator** | **Boolean** | IRA/SEP/SIMPLE | [optional] |
| **total_ira_sep_simple_distribution** | **Float** | Traditional IRA/SEP/SIMPLE or Roth conversion amount | [optional] |
| **other** | **Float** | Other amount | [optional] |
| **other_percent** | **String** | Other percentage | [optional] |
| **percentage_total_distribution** | **String** | Total distribution percentage | [optional] |
| **total_employee_contributions** | **Float** | Total employee contributions | [optional] |
| **amount_allocable_to_irr** | **Float** | Amount allocable to IRR within 5 years | [optional] |
| **first_year_designated_roth_contrib** | **String** | First year of designated Roth contribution | [optional] |
| **fatca_requirement_indicator** | **Boolean** | FATCA filing requirement | [optional] |
| **date_of_payment** | **String** | Date of payment | [optional] |
| **id** | **String** | ID of the form | [readonly] |
| **type** | **String** | Type of the form. Will be one of:  * 940  * 941  * 943  * 944  * 945  * 1042  * 1042-S  * 1095-B  * 1095-C  * 1097-BTC  * 1098  * 1098-C  * 1098-E  * 1098-Q  * 1098-T  * 3921  * 3922  * 5498  * 5498-ESA  * 5498-SA  * 1099-MISC  * 1099-A  * 1099-B  * 1099-C  * 1099-CAP  * 1099-DIV  * 1099-G  * 1099-INT  * 1099-K  * 1099-LS  * 1099-LTC  * 1099-NEC  * 1099-OID  * 1099-PATR  * 1099-Q  * 1099-R  * 1099-S  * 1099-SA  * T4A  * W-2  * W-2G  * 1099-HC |  |
| **issuer_id** | **Integer** | Issuer ID |  |
| **issuer_reference_id** | **String** | Issuer Reference ID | [optional] |
| **issuer_tin** | **String** | Issuer TIN | [optional] |
| **tax_year** | **Integer** | Tax year | [optional] |
| **federal_efile** | **Boolean** | Boolean indicating that federal e-filing has been scheduled for this form |  |
| **federal_efile_status** | [**Form1099StatusDetailResponse**](Form1099StatusDetailResponse.md) | Federal e-file status | [optional][readonly] |
| **state_efile** | **Boolean** | Boolean indicating that state e-filing has been scheduled for this form |  |
| **state_efile_status** | [**Array&lt;StateEfileStatusDetailResponse&gt;**](StateEfileStatusDetailResponse.md) | State e-file status | [optional][readonly] |
| **postal_mail** | **Boolean** | Boolean indicating that postal mailing to the recipient has been scheduled for this form |  |
| **postal_mail_status** | [**Form1099StatusDetailResponse**](Form1099StatusDetailResponse.md) | Postal mail to recipient status | [optional][readonly] |
| **tin_match** | **Boolean** | Boolean indicating that TIN Matching has been scheduled for this form |  |
| **tin_match_status** | [**Form1099StatusDetailResponse**](Form1099StatusDetailResponse.md) | TIN Match status | [optional][readonly] |
| **address_verification** | **Boolean** | Boolean indicating that address verification has been scheduled for this form |  |
| **address_verification_status** | [**Form1099StatusDetailResponse**](Form1099StatusDetailResponse.md) | Address verification status | [optional][readonly] |
| **reference_id** | **String** | Reference ID | [optional] |
| **email** | **String** | Recipient email address | [optional] |
| **tin_type** | **String** | Type of TIN (Tax ID Number). Will be one of:  * SSN  * EIN  * ITIN  * ATIN | [optional] |
| **tin** | **String** | Recipient Tax ID Number | [optional] |
| **recipient_name** | **String** | Recipient name | [optional] |
| **recipient_second_name** | **String** | Recipient second name | [optional] |
| **address** | **String** | Address | [optional] |
| **address2** | **String** | Address line 2 | [optional] |
| **city** | **String** | City | [optional] |
| **state** | **String** | US state | [optional] |
| **zip** | **String** | Zip/postal code | [optional] |
| **foreign_province** | **String** | Foreign province | [optional] |
| **country_code** | **String** | Country code, as defined at https://www.irs.gov/e-file-providers/country-codes | [optional] |
| **validation_errors** | [**Array&lt;ValidationErrorResponse&gt;**](ValidationErrorResponse.md) | Validation errors | [optional][readonly] |
| **created_at** | **Time** | Creation time | [optional][readonly] |
| **updated_at** | **Time** | Update time | [optional][readonly] |
| **state_and_local_withholding** | [**StateAndLocalWithholdingResponse**](StateAndLocalWithholdingResponse.md) |  | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::Form1099RListItemResponse.new(
  gross_distributions: 8004.12,
  taxable_amount: null,
  taxable_amount_not_determined: null,
  total_distribution_indicator: null,
  capital_gain: null,
  fed_income_tax_withheld: null,
  employee_contributions: null,
  net_unrealized_appreciation: null,
  distribution_code_required: 7,
  distribution_code_optional: null,
  ira_sep_simple_indicator: null,
  total_ira_sep_simple_distribution: null,
  other: null,
  other_percent: null,
  percentage_total_distribution: null,
  total_employee_contributions: null,
  amount_allocable_to_irr: null,
  first_year_designated_roth_contrib: null,
  fatca_requirement_indicator: null,
  date_of_payment: null,
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
  reference_id: 1891810-9819891,
  email: roadrunner@acmecorp.com,
  tin_type: null,
  tin: null,
  recipient_name: null,
  recipient_second_name: null,
  address: 1234 Meep Meep Blvd,
  address2: null,
  city: Tucson,
  state: AZ,
  zip: 35004,
  foreign_province: ,
  country_code: US,
  validation_errors: null,
  created_at: 2025-07-29T15:26:03.302645900Z,
  updated_at: 2025-07-29T15:26:03.302646500Z,
  state_and_local_withholding: null
)
```

