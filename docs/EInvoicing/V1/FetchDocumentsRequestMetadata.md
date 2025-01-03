# AvalaraSdk::EInvoicing::V1::FetchDocumentsRequestMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workflow_id** | **String** | Specifies a unique ID for this workflow. |  |
| **data_format** | **String** | Specifies the data format for this workflow |  |
| **data_format_version** | **Float** | Specifies the data format version number |  |
| **country_code** | **String** | The two-letter ISO-3166 country code for the country for which document is being retrieved |  |
| **country_mandate** | **String** | The e-invoicing mandate for the specified country |  |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::FetchDocumentsRequestMetadata.new(
  workflow_id: partner-einvoicing,
  data_format: ubl-invoice,
  data_format_version: 2.1,
  country_code: IL,
  country_mandate: IL-B2B-CLEARANCE
)
```

