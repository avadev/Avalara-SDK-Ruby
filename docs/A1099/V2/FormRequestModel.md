# AvalaraSdk::A1099::V2::FormRequestModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **form_type** | **String** | \&quot;W9\&quot; is currently the only supported value | [optional] |
| **company_id** | **Integer** | Track1099&#39;s ID of your company, found in the W-9 UI | [optional] |
| **company_name** | **String** | Name of your company, set in the W-9 UI | [optional] |
| **company_email** | **String** | Contact email of your company, set in the W-9 UI | [optional] |
| **reference_id** | **String** | Your internal identifier for the vendor from whom you are requesting a form | [optional] |
| **signed_at** | **Time** | The timestamp this vendor (identified by your ReferenceId) last signed a complete W-9, null if you did not include a ReferenceId or the vendor has not yet signed a W-9 in Track1099 | [optional] |
| **tin_match_status** | **String** | Result of IRS TIN match query for name and TIN in the last signed form, null if signed_at is null | [optional] |
| **expires_at** | **Time** | Timestamp when this FormRequest will expire, ttl (or 3600) seconds from creation | [optional] |
| **signed_pdf** | **String** | URL of PDF representation of just-signed form, otherwise null. Integrations may use this value to offer a \&quot;download for your records\&quot; function after a vendor completes and signs a form. Link expires at the same time as this FormRequest. Treat the format of this URL as opaque and expect it to change in the future. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::FormRequestModel.new(
  id: d0d09a2f-619e-4e9d-aae4-3311d9e0c67c,
  type: 0,
  form_type: 0,
  company_id: 2345678,
  company_name: ACME Corp,
  company_email: roadrunner@acmecorp.com,
  reference_id: SE-02453450,
  signed_at: 2022-04-29T15:19:42Z,
  tin_match_status: 1,
  expires_at: 2022-04-29T15:19:42Z,
  signed_pdf: 
)
```

