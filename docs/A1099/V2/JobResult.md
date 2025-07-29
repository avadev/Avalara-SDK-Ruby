# AvalaraSdk::A1099::V2::JobResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **dry_run** | **Boolean** | Dry run. If &#x60;true&#x60;, this job only simulates the changes but doesn&#39;t actually persist them. | [optional] |
| **upsert** | **Boolean** | Upsert. If &#x60;true&#x60;, this job will first attempt to update existing records if matches can be found. Matches are done in the following order:  * Form ID  * Form Reference ID and tax year  * Form TIN and tax year | [optional] |
| **status** | **String** | Status of the job | [optional] |
| **error_message** | **String** |  | [optional] |
| **total_processed** | **Integer** | Total number of forms processed | [optional] |
| **total_rows** | **Integer** | Total number of forms in the request | [optional] |
| **updated_valid** | **Integer** | Number of forms updated and valid for e-filing and e-delivery | [optional] |
| **updated_no_email** | **Integer** | Number of forms updated and valid for e-filing but missing email or email is undeliverable | [optional] |
| **updated_invalid** | **Integer** | Number of forms updated but invalid for e-filing | [optional] |
| **skipped_duplicate** | **Integer** | Number of forms skipped because they would have updated a record already updated once in the request | [optional] |
| **skipped_invalid** | **Integer** | Number of forms skipped because they would have made a form invalid and the form is already e-filed or scheduled for e-filing | [optional] |
| **skipped_multiple_matches** | **Integer** | Number of forms skipped because they matched multiple forms | [optional] |
| **not_found** | **Integer** | Number of forms skipped because no matching form or issuer could be found | [optional] |
| **created_invalid** | **Integer** | Number of new forms created because no matching form could be found (and &#x60;upsert&#x60; was true) - with errors | [optional] |
| **created_no_email** | **Integer** | Number of new forms created because no matching form could be found (and &#x60;upsert&#x60; was true) - valid for e-filing but missing email or email is undeliverable | [optional] |
| **created_valid** | **Integer** | Number of new forms created because no matching form could be found (and &#x60;upsert&#x60; was true) - valid for e-filing and e-delivery | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::JobResult.new(
  id: null,
  type: null,
  dry_run: null,
  upsert: null,
  status: null,
  error_message: null,
  total_processed: null,
  total_rows: null,
  updated_valid: null,
  updated_no_email: null,
  updated_invalid: null,
  skipped_duplicate: null,
  skipped_invalid: null,
  skipped_multiple_matches: null,
  not_found: null,
  created_invalid: null,
  created_no_email: null,
  created_valid: null
)
```

