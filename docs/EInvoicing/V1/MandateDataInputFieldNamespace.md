# AvalaraSdk::EInvoicing::V1::MandateDataInputFieldNamespace

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prefix** | **String** | The namespace prefix for the UBL Element | [optional] |
| **value** | **String** |  | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::MandateDataInputFieldNamespace.new(
  prefix: cbc,
  value: urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2
)
```

