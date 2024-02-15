# AvalaraSdk::EInvoicing::V1::Mandate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mandate_id** | **String** | Mandate UUID | [optional] |
| **country_mandate** | **String** | Country mandate name | [optional] |
| **country_code** | **String** | Country code | [optional] |
| **description** | **String** | Mandate description | [optional] |
| **supported_by_partner_api** | **Boolean** | Indicates whether this mandate supported by the partner API | [optional] |
| **mandate_format** | **String** | Mandate format | [optional] |
| **input_data_formats** | [**Array&lt;InputDataFormats&gt;**](InputDataFormats.md) | Format and version used when inputting the data | [optional] |
| **workflow_ids** | [**Array&lt;WorkflowIds&gt;**](WorkflowIds.md) | Workflow ID list | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::Mandate.new(
  mandate_id: f1768981-7025-468b-9f87-8a8982cd6984,
  country_mandate: PT-B2C-PDF,
  country_code: PT,
  description: The mandate supporting B2B clearance in Germany. This function will return a PDF invoice with the required QR-Codes, ATCUD (as of Jan 2023) and a legal Stamp. The invoice will not be sent to the buyer.,
  supported_by_partner_api: true,
  mandate_format: pdf,
  input_data_formats: null,
  workflow_ids: null
)
```

