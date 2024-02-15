# AvalaraSdk::EInvoicing::V1::SubmitDocumentData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | **String** | The document to be submitted, as indicated by the metadata fields &#39;dataFormat&#39; and &#39;dataFormatVersion&#39; | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::SubmitDocumentData.new(
  data: base64 encoded string
)
```

