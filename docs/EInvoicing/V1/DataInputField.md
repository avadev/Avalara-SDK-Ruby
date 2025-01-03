# AvalaraSdk::EInvoicing::V1::DataInputField

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Field UUID | [optional] |
| **field_id** | **String** | Field ID | [optional] |
| **applicable_document_roots** | **Array&lt;Object&gt;** |  | [optional] |
| **path** | **String** | Path to this field | [optional] |
| **namespace** | **String** | Namespace of this field | [optional] |
| **field_name** | **String** | Field name | [optional] |
| **example_or_fixed_value** | **String** | An example of the content for this field | [optional] |
| **accepted_values** | **Object** | An object representing the acceptable values for this field | [optional] |
| **documentation_link** | **String** | An example of the content for this field | [optional] |
| **description** | **String** | A description of this field | [optional] |
| **is_segment** | **Boolean** | Is this a segment of the schema | [optional] |
| **required_for** | [**DataInputFieldRequiredFor**](DataInputFieldRequiredFor.md) |  | [optional] |
| **conditional_for** | [**Array&lt;ConditionalForField&gt;**](ConditionalForField.md) |  | [optional] |
| **not_used_for** | [**DataInputFieldNotUsedFor**](DataInputFieldNotUsedFor.md) |  | [optional] |
| **optional_for** | [**DataInputFieldOptionalFor**](DataInputFieldOptionalFor.md) |  | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::DataInputField.new(
  id: f1768981-7025-468b-9f87-8a8982cd6984,
  field_id: 1,
  applicable_document_roots: null,
  path: invoice/cbc:CustomizationID,
  namespace: cbc:,
  field_name: cbc:CustomizationID,
  example_or_fixed_value: urn:cen.eu:en16931:2017#compliant#urn:fdc:peppol.eu:2017:poacc:billing:3.0,
  accepted_values: null,
  documentation_link: https://docs.peppol.eu/poacc/billing/3.0/syntax/ubl-invoice/cbc-CustomizationID,
  description: Specification identifier: An identification of the specification containing the total set of rules regarding semantic content, cardinalities and business rules to which the data contained in the instance document conforms.,
  is_segment: false,
  required_for: null,
  conditional_for: null,
  not_used_for: null,
  optional_for: null
)
```

