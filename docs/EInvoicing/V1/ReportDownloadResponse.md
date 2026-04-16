# AvalaraSdk::EInvoicing::V1::ReportDownloadResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report_id** | **String** | The unique identifier of the report. | [optional] |
| **download_url** | **String** | A pre-signed URL to download the report file. This URL is time-limited. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::ReportDownloadResponse.new(
  report_id: ef96f5c1-2626-4efe-897d-b5d93fb8424b,
  download_url: https://storage.example.com/reports/ef96f5c1-2626-4efe-897d-b5d93fb8424b?signature&#x3D;xyz
)
```

