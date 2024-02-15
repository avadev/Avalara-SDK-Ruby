# AvalaraSdk::EInvoicing::V1::WorkflowIds

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of this workflow | [optional] |
| **description** | **String** | Workflow description | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::WorkflowIds.new(
  name: partner-einvoicing,
  description: The standard value for the metadata object in POST /einvoicing/documents 
)
```

