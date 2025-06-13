# AvalaraSdk::EInvoicing::V1::EventMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **Object** | Event-specific information |  |
| **signature** | [**SignatureValueSignature**](SignatureValueSignature.md) |  |  |
| **tenant_id** | **String** | Tenant ID of the event |  |
| **correlation_id** | **String** | The correlation ID used by Avalara to aid in tracing through to provenance of this event massage. | [optional] |
| **system_code** | **String** | The Avalara registered code for the system. See &lt;a href&#x3D;\&quot;https://avalara.atlassian.net/wiki/spaces/AIM/pages/637250338966/Taxonomy+Avalara+Systems\&quot;&gt;Taxonomy&amp;#58; Avalara Systems&lt;/a&gt; |  |
| **event_name** | **String** | Type of the event |  |
| **event_version** | **String** | Version of the included payload. | [optional] |
| **receipt_timestamp** | **Time** | Timestamp when the event was received by the dispatch service. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::EventMessage.new(
  message: null,
  signature: null,
  tenant_id: null,
  correlation_id: null,
  system_code: null,
  event_name: null,
  event_version: null,
  receipt_timestamp: null
)
```

