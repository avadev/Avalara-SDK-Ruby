# AvalaraSdk::EInvoicing::V1::FetchDocumentsRequestMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workflow_id** | **String** | Specifies a unique ID for this workflow. |  |
| **data_format** | **String** | Specifies the data format for this workflow |  |
| **data_format_version** | **Float** | Specifies the data format version number |  |
| **output_data_format** | **String** | Specifies the format of the output document to be generated for the recipient. This format should be chosen based on the recipient&#39;s preferences or requirements as defined by applicable e-invoicing regulations. When not specified for mandates that don&#39;t require a specific output format, the system will use the default format defined for that mandate. |  |
| **output_data_format_version** | **Float** | Specifies the version of the selected output document format |  |
| **country_code** | **String** | The two-letter ISO-3166 country code for the country for which document is being retrieved |  |
| **country_mandate** | **String** | The e-invoicing mandate for the specified country |  |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::FetchDocumentsRequestMetadata.new(
  workflow_id: partner-einvoicing,
  data_format: ubl-invoice,
  data_format_version: 2.1,
  output_data_format: ubl-invoice,
  output_data_format_version: 2.1,
  country_code: IL,
  country_mandate: IL-B2B-CLEARANCE
)
```

