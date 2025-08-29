# AvalaraSdk::A1099::V2::CompanyCreateUpdateRequestModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Legal name. Not the DBA name. |  |
| **dba_name** | **String** | Doing Business As (DBA) name or continuation of a long legal name. | [optional] |
| **email** | **String** | Contact email address. For inquiries by vendors/employees. |  |
| **address** | **String** | Address. |  |
| **city** | **String** | City. |  |
| **state** | **String** | Two-letter US state or Canadian province code (required for US/CA addresses). | [optional] |
| **zip** | **String** | ZIP/postal code. |  |
| **telephone** | **String** | Contact phone number (must contain at least 10 digits, max 15 characters). |  |
| **tin** | **String** | Federal Tax Identification Number (TIN). EIN/Tax ID (required for US companies). |  |
| **reference_id** | **String** | Internal reference ID. Never shown to any agency or recipient. | [optional] |
| **do_tin_match** | **Boolean** | Indicates whether the company authorizes IRS TIN matching. | [optional] |
| **group_name** | **String** | Group name for organizing companies (creates or finds group by name). | [optional] |
| **foreign_province** | **String** | Province or region for non-US/CA addresses. | [optional] |
| **country_code** | **String** | Two-letter IRS country code (e.g., &#39;US&#39;, &#39;CA&#39;), as defined at https://www.irs.gov/e-file-providers/country-codes. |  |
| **resend_requests** | **Boolean** | Boolean to enable automatic reminder emails (default: false). | [optional] |
| **resend_interval_days** | **Integer** | Days between reminder emails (7-365, required if resendRequests is true). | [optional] |
| **max_reminder_attempts** | **Integer** | Maximum number of reminder attempts (1-52, required if resendRequests is true). | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::CompanyCreateUpdateRequestModel.new(
  name: null,
  dba_name: null,
  email: null,
  address: null,
  city: null,
  state: null,
  zip: null,
  telephone: null,
  tin: null,
  reference_id: null,
  do_tin_match: null,
  group_name: null,
  foreign_province: null,
  country_code: null,
  resend_requests: null,
  resend_interval_days: null,
  max_reminder_attempts: null
)
```

