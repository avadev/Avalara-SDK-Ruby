# AvalaraSdk::EInvoicing::V1::DocumentStatusResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID for this document | [optional] |
| **status** | **String** | Document status. See the &#x60;supportedDocumentStatuses&#x60; field in the GET /mandates response for full status definitions. | [optional] |
| **business_status** | **String** | Represents the document&#39;s business lifecycle state based on responses from external actors (Tax Authority, PDP, or ERP), such as acceptance, rejection, or validation. | [optional] |
| **events** | [**Array&lt;StatusEvent&gt;**](StatusEvent.md) |  | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::DocumentStatusResponse.new(
  id: 52f60401-44d0-4667-ad47-4afe519abb53,
  status: Fully Paid,
  business_status: Approved,
  events: null
)
```

