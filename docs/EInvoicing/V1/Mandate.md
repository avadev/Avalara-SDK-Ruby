# AvalaraSdk::EInvoicing::V1::Mandate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mandate_id** | **String** | The &#x60;mandateId&#x60; is comprised of the country code, mandate type, and the network or regulation type (for example, AU-B2G-PEPPOL). Keep in mind the following when specifying a &#x60;mandateId&#x60;. - A country can have multiple mandate types (B2C, B2B, B2G). - A entity/company can opt in for multiple mandates. - A &#x60;mandateId&#x60; is the combination of country + mandate type + network/regulation. | [optional] |
| **country_mandate** | **String** | **[LEGACY]** This field is retained for backward compatibility. It is recommended to use &#x60;mandateId&#x60; instead. The &#x60;countryMandate&#x60; similar to the &#x60;mandateId&#x60; is comprised of the country code, mandate type, and the network or regulation type (for example, AU-B2G-PEPPOL).  | [optional] |
| **country_code** | **String** | Country code | [optional] |
| **description** | **String** | Mandate description | [optional] |
| **supported_by_partner_api** | **Boolean** | Indicates whether this mandate supported by the partner API | [optional] |
| **mandate_format** | **String** | Mandate format | [optional] |
| **input_data_formats** | [**Array&lt;InputDataFormats&gt;**](InputDataFormats.md) | Format and version used when inputting the data | [optional] |
| **workflow_ids** | [**Array&lt;WorkflowIds&gt;**](WorkflowIds.md) | Workflow ID list | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::Mandate.new(
  mandate_id: AU-B2G-PEPPOL,
  country_mandate: AU-B2G-PEPPOL,
  country_code: AU,
  description: The mandate supporting B2G eInvoicing in Australia. This function will create a Peppol BIS 3.0 file and sends the invoice to the related recipient via the Peppol network,
  supported_by_partner_api: true,
  mandate_format: xml,
  input_data_formats: null,
  workflow_ids: null
)
```

