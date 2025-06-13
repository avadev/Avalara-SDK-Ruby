# AvalaraSdk::EInvoicing::V1::Mandate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mandate_id** | **String** | The &#x60;mandateId&#x60; is comprised of the country code, mandate type, and the network or regulation type (for example, AU-B2G-PEPPOL). Keep in mind the following when specifying a &#x60;mandateId&#x60;. - A country can have multiple mandate types (B2C, B2B, B2G). - A entity/company can opt in for multiple mandates. - A &#x60;mandateId&#x60; is the combination of country + mandate type + network/regulation. | [optional] |
| **country_mandate** | **String** | **[LEGACY]** This field is retained for backward compatibility. It is recommended to use &#x60;mandateId&#x60; instead. The &#x60;countryMandate&#x60; similar to the &#x60;mandateId&#x60; is comprised of the country code, mandate type, and the network or regulation type (for example, AU-B2G-PEPPOL).  | [optional] |
| **country_code** | **String** | Country code | [optional] |
| **description** | **String** | Mandate description | [optional] |
| **supported_by_elrapi** | **Boolean** | Indicates whether this mandate supported by the ELR API | [optional] |
| **mandate_format** | **String** | Mandate format | [optional] |
| **e_invoicing_flow** | **String** | The type of e-invoicing flow for this mandate | [optional] |
| **e_invoicing_flow_documentation_link** | **String** | Link to the documentation for this mandate&#39;s e-invoicing flow | [optional] |
| **get_invoice_available_media_type** | **Array&lt;String&gt;** | List of available media types for downloading invoices for this mandate | [optional] |
| **supports_inbound_digital_document** | **String** | Indicates whether this mandate supports inbound digital documents | [optional] |
| **input_data_formats** | [**Array&lt;InputDataFormats&gt;**](InputDataFormats.md) | Format and version used when inputting the data | [optional] |
| **output_data_formats** | [**Array&lt;OutputDataFormats&gt;**](OutputDataFormats.md) | Lists the supported output document formats for the country mandate. For countries where specifying an output document format is required (e.g., France), this array will contain the applicable formats. For other countries where output format selection is not necessary, the array will be empty. | [optional] |
| **workflow_ids** | [**Array&lt;WorkflowIds&gt;**](WorkflowIds.md) | Workflow ID list | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::Mandate.new(
  mandate_id: AU-B2G-PEPPOL,
  country_mandate: AU-B2G-PEPPOL,
  country_code: AU,
  description: The mandate supporting B2G eInvoicing in Australia. This function will create a Peppol BIS 3.0 file and sends the invoice to the related recipient via the Peppol network,
  supported_by_elrapi: true,
  mandate_format: xml,
  e_invoicing_flow: Network,
  e_invoicing_flow_documentation_link: https://documentation.example.com/flows/pt-b2c-pdf,
  get_invoice_available_media_type: [&quot;application/pdf&quot;,&quot;application/xml&quot;],
  supports_inbound_digital_document: TRUE,
  input_data_formats: null,
  output_data_formats: null,
  workflow_ids: null
)
```

