# AvalaraSdk::EInvoicing::V1::ReportItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report_id** | **String** | The unique ID for this report. | [optional] |
| **job_id** | **String** | The unique ID of the job that generated this report. | [optional] |
| **report_generate_date** | **Time** | The date and time when the report was generated. | [optional] |
| **report_from** | **Date** | The start date of the reporting period. | [optional] |
| **report_to** | **Date** | The end date of the reporting period. | [optional] |
| **country_code** | **String** | The two-letter ISO-3166 country code for which this report was generated. | [optional] |
| **country_mandate** | **String** | The e-invoicing mandate for the specified country. | [optional] |
| **document_type** | **String** | The type of document covered by this report. | [optional] |
| **document_sub_type** | **String** | The sub-type of the document. | [optional] |
| **report_reference** | **String** | An internal reference path for the report. | [optional] |
| **report_name** | **String** | The name of the report file. | [optional] |
| **status** | **String** | The current status of the report. Possible values include: PENDING, PROCESSING, COMPLETED, FAILED, SENT_TO_PPF, ERROR. | [optional] |
| **report_format_mimetypes** | **String** | The MIME type of the report file. | [optional] |
| **tenant_id** | **String** | The tenant identifier associated with this report. | [optional] |
| **ta_name** | **String** | The name of the tax authority for this report. | [optional] |
| **tax_invoice_amount** | **Float** | The total invoice amount covered by this report. | [optional] |
| **total_tax_amount** | **Float** | The total tax amount covered by this report. | [optional] |
| **metadata** | **Object** | Additional report metadata (free-form JSON). Contents vary by country mandate. | [optional] |
| **transaction_ids** | **Array&lt;String&gt;** | List of transaction IDs associated with this report. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::ReportItem.new(
  report_id: bd82c787-c163-44f1-a784-c45a6c6ded61,
  job_id: db8914ce-fbf4-3d60-96d7-95a6464eec43,
  report_generate_date: 2026-03-02T12:40:14.529894Z,
  report_from: Sat Jan 31 16:00:00 PST 2026,
  report_to: Fri Feb 27 16:00:00 PST 2026,
  country_code: FR,
  country_mandate: FR-B2B-REPORTING,
  document_type: TAX_REPORT,
  document_sub_type: MONTHLY_SALES_TAX,
  report_reference: /document-exchange/pv/tr-consolidated-reports/fc63d180/output/fc63d180.xml,
  report_name: FFE1025A_PPF070_PPF0702026000000000000002,
  status: SENT_TO_PPF,
  report_format_mimetypes: application/xml,
  tenant_id: 64e46c39b55286c29d5b1693,
  ta_name: DGFiP,
  tax_invoice_amount: 210.0,
  total_tax_amount: 0.0,
  metadata: {&quot;source&quot;:&quot;ERP&quot;,&quot;issuerId&quot;:&quot;100000009&quot;,&quot;typeCode&quot;:&quot;IN&quot;,&quot;xsdValid&quot;:true,&quot;isInitial&quot;:true,&quot;reportCode&quot;:&quot;2026000000000000002&quot;,&quot;reportType&quot;:&quot;B2B_PURCHASE&quot;,&quot;validationTraceId&quot;:&quot;4029daef-315d-4e20-bb7b-2b2f7b5445ac&quot;},
  transaction_ids: [&quot;4555746c-98d1-4509-92fd-f677eee18040&quot;]
)
```

