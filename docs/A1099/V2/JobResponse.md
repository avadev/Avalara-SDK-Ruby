# AvalaraSdk::A1099::V2::JobResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the job | [optional] |
| **type** | **String** | Job type identifier. Will always be \&quot;update_job\&quot; for bulk upsert operations | [optional] |
| **status** | **String** | Current status of the job (e.g., Success, Failed, InProgress) | [optional] |
| **error_message** | **String** | Error message if the job failed, null otherwise | [optional] |
| **total_processed** | **Integer** | Total number of forms processed. Value can be 0 or another value based on what the job has available | [optional] |
| **total_rows** | **Integer** | Total number of forms in the request. Value can be 0 or another value based on what the job has available | [optional] |
| **updated_valid** | **Integer** | Number of forms updated and valid for e-filing and e-delivery. Value can be 0 or another value based on what the job has available | [optional] |
| **updated_no_email** | **Integer** | Number of forms updated and valid for e-filing but missing email or email is undeliverable. Value can be 0 or another value based on what the job has available | [optional] |
| **updated_invalid** | **Integer** | Number of forms updated but invalid for e-filing. Value can be 0 or another value based on what the job has available | [optional] |
| **skipped_duplicate** | **Integer** | Number of forms skipped because they would have updated a record already updated once in the request. Value can be 0 or another value based on what the job has available | [optional] |
| **skipped_invalid** | **Integer** | Number of forms skipped because they would have made a form invalid and the form is already e-filed or scheduled for e-filing. Value can be 0 or another value based on what the job has available | [optional] |
| **skipped_multiple_matches** | **Integer** | Number of forms skipped because they matched multiple forms. Value can be 0 or another value based on what the job has available | [optional] |
| **not_found** | **Integer** | Number of forms skipped because no matching form or issuer could be found. Value can be 0 or another value based on what the job has available | [optional] |
| **created_invalid** | **Integer** | Number of new forms created because no matching form could be found (and &#x60;upsert&#x60; was true) - with errors. Value can be 0 or another value based on what the job has available | [optional] |
| **created_no_email** | **Integer** | Number of new forms created because no matching form could be found (and &#x60;upsert&#x60; was true) - valid for e-filing but missing email or email is undeliverable. Value can be 0 or another value based on what the job has available | [optional] |
| **created_valid** | **Integer** | Number of new forms created because no matching form could be found (and &#x60;upsert&#x60; was true) - valid for e-filing and e-delivery. Value can be 0 or another value based on what the job has available | [optional] |
| **dry_run** | **Boolean** | Dry run. If &#x60;true&#x60;, this job only simulates the changes but doesn&#39;t actually persist them. | [optional] |
| **upsert** | **Boolean** | Upsert. If &#x60;true&#x60;, this job will first attempt to update existing records if matches can be found. Matches are done in the following order: Form ID, Form Reference ID and tax year, Form TIN and tax year. | [optional] |
| **link** | **String** | Link to access the job details | [optional] |
| **processed_forms** | [**Array&lt;Get1099Form200Response&gt;**](Get1099Form200Response.md) | List of processed forms returned when bulk-upsert processes ≤1000 records. Same format as GET /1099/forms response. Only available in bulk-upsert endpoint responses. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::JobResponse.new(
  id: null,
  type: null,
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
  created_valid: null,
  dry_run: null,
  upsert: null,
  link: null,
  processed_forms: null
)
```

