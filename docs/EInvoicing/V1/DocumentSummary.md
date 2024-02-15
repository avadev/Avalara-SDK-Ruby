# AvalaraSdk::EInvoicing::V1::DocumentSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID for this document | [optional] |
| **process_date_time** | **String** | The date and time when the document was processed, displayed in the format YYYY-MM-DDThh:mm:ss | [optional] |
| **status** | **String** | The transaction status: &lt;br&gt; &#39;Pending&#39; &lt;br&gt; &#39;Failed&#39; &lt;br&gt; &#39;Complete&#39; | [optional] |
| **supplier_name** | **String** | The name of the supplier in the transaction | [optional] |
| **customer_name** | **String** | The name of the customer in the transaction | [optional] |
| **document_number** | **String** | The invoice document number | [optional] |
| **document_date** | **String** | The invoice issue date | [optional] |
| **flow** | **String** | The invoice direction, where issued &#x3D; &#x60;out&#x60; and received &#x3D; &#x60;in&#x60; | [optional] |
| **country_code** | **String** | The two-letter ISO-3166 country code for the country where the e-invoice is being submitted | [optional] |
| **country_mandate** | **String** | The e-invoicing mandate for the specified country | [optional] |
| **interface** | **String** | The interface where the invoice data is sent | [optional] |
| **receiver** | **String** | The invoice recipient based on the interface | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::DocumentSummary.new(
  id: 2022-01-008572,
  process_date_time: 2022-01-09T12:36:02,
  status: Complete,
  supplier_name: Inposia GmbH,
  customer_name: Avalara Inc.,
  document_number: 8042091758,
  document_date: 2022-01-09,
  flow: out,
  country_code: DE,
  country_mandate: DE-B2G-XRECHNUNG,
  interface: PEPPOL,
  receiver: 9930:AVALARATEST
)
```

