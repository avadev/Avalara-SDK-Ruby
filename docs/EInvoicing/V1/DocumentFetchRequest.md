# AvalaraSdk::EInvoicing::V1::DocumentFetchRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;DocumentFetchRequestDataInner&gt;**](DocumentFetchRequestDataInner.md) | Array of key-value pairs used to retrieve inbound documents from the Tax Authority | [optional] |
| **metadata** | [**DocumentFetchRequestMetadata**](DocumentFetchRequestMetadata.md) |  | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::DocumentFetchRequest.new(
  data: [{&quot;key&quot;:&quot;Confirmation_Number&quot;,&quot;value&quot;:&quot;987654321&quot;},{&quot;key&quot;:&quot;Customer_VAT_Number&quot;,&quot;value&quot;:&quot;777777715&quot;}],
  metadata: null
)
```

