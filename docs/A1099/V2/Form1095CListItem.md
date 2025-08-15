# AvalaraSdk::A1099::V2::Form1095CListItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **employee_first_name** | **String** | Employee&#39;s first name | [optional] |
| **employee_middle_name** | **String** | Employee&#39;s middle name | [optional] |
| **employee_last_name** | **String** | Employee&#39;s last name | [optional] |
| **employee_name_suffix** | **String** | Employee&#39;s name suffix | [optional] |
| **recipient_date_of_birth** | **Time** | Recipient&#39;s date of birth | [optional] |
| **plan_start_month** | **String** | Plan start month | [optional] |
| **offer_and_coverages** | [**Array&lt;OfferAndCoverageRequest&gt;**](OfferAndCoverageRequest.md) | Offer and coverage information | [optional] |
| **employer_provided_si_coverage** | **Boolean** | Employer provided self-insured coverage | [optional] |
| **covered_individuals** | [**Array&lt;CoveredIndividualRequest&gt;**](CoveredIndividualRequest.md) | Covered individuals information | [optional] |
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

instance = AvalaraSdk::A1099::V2::Form1095CListItem.new(
  employee_first_name: null,
  employee_middle_name: null,
  employee_last_name: null,
  employee_name_suffix: null,
  recipient_date_of_birth: null,
  plan_start_month: null,
  offer_and_coverages: null,
  employer_provided_si_coverage: null,
  covered_individuals: null,
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

