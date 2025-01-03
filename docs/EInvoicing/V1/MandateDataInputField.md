# AvalaraSdk::EInvoicing::V1::MandateDataInputField

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field_id** | **String** | Field ID | [optional] |
| **document_type** | **String** | The document type | [optional] |
| **document_version** | **String** | The document version | [optional] |
| **path** | **String** | Path to this field | [optional] |
| **path_type** | **String** | The type of path | [optional] |
| **field_name** | **String** | Field name | [optional] |
| **namespace** | [**MandateDataInputFieldNamespace**](MandateDataInputFieldNamespace.md) |  | [optional] |
| **example_or_fixed_value** | **String** | An example of the content for this field | [optional] |
| **accepted_values** | **Array&lt;String&gt;** | An Array representing the acceptable values for this field | [optional] |
| **documentation_link** | **String** | An example of the content for this field | [optional] |
| **data_type** | **String** | The data type of this field. | [optional] |
| **description** | **String** | A description of this field | [optional] |
| **optionality** | **String** | Determines if the field if Required/Conditional/Optional or not required. | [optional] |
| **cardinality** | **String** | Represents the number of times an element can appear within the document | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::MandateDataInputField.new(
  field_id: 1,
  document_type: ubl-inovice,
  document_version: 2.1,
  path: Invoice/cbc:CustomizationID,
  path_type: xpath,
  field_name: cbc:CustomizationID,
  namespace: null,
  example_or_fixed_value: urn:cen.eu:en16931:2017#compliant#urn:fdc:peppol.eu:2017:poacc:billing:3.0,
  accepted_values: null,
  documentation_link: https://docs.peppol.eu/poacc/billing/3.0/syntax/ubl-invoice/cbc-CustomizationID,
  data_type: object,
  description: Specification identifier: An identification of the specification containing the total set of rules regarding semantic content, cardinalities and business rules to which the data contained in the instance document conforms.,
  optionality: Required,
  cardinality: 1..1
)
```

