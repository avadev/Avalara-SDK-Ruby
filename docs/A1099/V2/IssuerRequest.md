# AvalaraSdk::A1099::V2::IssuerRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_name** | **String** | Business name. Required when the recipient of the form is a business; should only be used for businesses. |  |
| **business_name2** | **String** | Business name line 2. Should only be used for businesses. Use either this or &#39;transferAgentName&#39;. | [optional] |
| **name** | **String** | Legal name. Not the DBA name. Deprecated alias for &#39;businessName&#39;. | [optional] |
| **dba_name** | **String** | Doing Business As (DBA) name or continuation of a long legal name. Deprecated alias for &#39;businessName2&#39;. Use either this or &#39;transferAgentName&#39;. | [optional] |
| **tin_type** | **String** | Recipient classification.  The platform is transitioning from tax identifier classifications to recipient entity classifications. New values represent recipient entity types and should be preferred. Deprecated values represent identifier formats and remain supported for backward compatibility only.  Available values: - INDIVIDUAL: Recipient is an individual - BUSINESS: Recipient is a business - UNKNOWN: Recipient classification is unknown - EIN: (Deprecated - use BUSINESS) Employer Identification Number - SSN: (Deprecated - use INDIVIDUAL) Social Security Number - ITIN: (Deprecated - use INDIVIDUAL) Individual Taxpayer Identification Number - ATIN: (Deprecated - use INDIVIDUAL) Adoption Taxpayer Identification Number | [optional] |
| **first_name** | **String** | First name. Required when the recipient of the form is an individual; should only be used for individuals. | [optional] |
| **middle_name** | **String** | Middle name. Should only be used for individuals. | [optional] |
| **last_name** | **String** | Last name. Required when the recipient of the form is an individual; should only be used for individuals. | [optional] |
| **suffix** | **String** | Suffix name. Should only be used for individuals. | [optional] |
| **tin** | **String** | Federal Tax Identification Number (TIN). | [optional] |
| **reference_id** | **String** | Internal reference ID. Never shown to any agency or recipient. If present, it will prefix download filenames. Allowed characters: letters, numbers, dashes, underscores, and spaces. | [optional] |
| **telephone** | **String** | Contact phone number (must contain at least 10 digits, max 15 characters). For recipient inquiries. |  |
| **tax_year** | **Integer** | Tax year for which the forms are being filed (e.g., 2024). Must be within current tax year and current tax year - 4. It&#39;s only required on creation, and cannot be modified on update. |  |
| **country_code** | **String** | Two-letter IRS country code (e.g., &#39;US&#39;, &#39;CA&#39;), as defined at https://www.irs.gov/e-file-providers/country-codes. If there is a transfer agent, use the transfer agent&#39;s shipping address. |  |
| **email** | **String** | Contact email address. For recipient inquiries. Phone will be used on communications if you don&#39;t specify an email | [optional] |
| **address** | **String** | Address. |  |
| **city** | **String** | City. |  |
| **state** | **String** | Two-letter US state or Canadian province code (required for US/CA addresses). |  |
| **zip** | **String** | ZIP/postal code. |  |
| **foreign_province** | **String** | Province or region for non-US/CA addresses. | [optional] |
| **transfer_agent_name** | **String** | Name of the transfer agent, if applicable — optional; use either this or &#39;dbaName&#39;. | [optional] |
| **last_filing** | **Boolean** | Indicates if this is the issuer&#39;s final year filing. |  |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::IssuerRequest.new(
  business_name: null,
  business_name2: null,
  name: null,
  dba_name: null,
  tin_type: null,
  first_name: null,
  middle_name: null,
  last_name: null,
  suffix: null,
  tin: null,
  reference_id: null,
  telephone: null,
  tax_year: null,
  country_code: null,
  email: null,
  address: null,
  city: null,
  state: null,
  zip: null,
  foreign_province: null,
  transfer_agent_name: null,
  last_filing: null
)
```

