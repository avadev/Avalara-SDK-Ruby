# AvalaraSdk::EInvoicing::V1::DocumentSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID for this document | [optional] |
| **company_id** | **String** | Unique identifier that represents the company within the system. | [optional] |
| **process_date_time** | **String** | The date and time when the document was processed, displayed in the format YYYY-MM-DDThh:mm:ss | [optional] |
| **status** | **String** | The Document status | [optional] |
| **supplier_name** | **String** | The name of the supplier in the transaction | [optional] |
| **customer_name** | **String** | The name of the customer in the transaction | [optional] |
| **document_type** | **String** | The document type | [optional] |
| **document_version** | **String** | The document version | [optional] |
| **document_number** | **String** | The document number | [optional] |
| **document_date** | **String** | The document issue date | [optional] |
| **flow** | **String** | The document direction, where issued &#x3D; &#x60;out&#x60; and received &#x3D; &#x60;in&#x60; | [optional] |
| **country_code** | **String** | The two-letter ISO-3166 country code for the country where the document is being submitted | [optional] |
| **country_mandate** | **String** | The e-invoicing mandate for the specified country | [optional] |
| **interface** | **String** | The interface where the document is sent | [optional] |
| **receiver** | **String** | The document recipient based on the interface | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::DocumentSummary.new(
  id: 52f60401-44d0-4667-ad47-4afe519abb53,
  company_id: a5869a7b-4d5d-4ec1-9b29-fd272aa58ab2,
  process_date_time: 2022-01-09T12:36:02,
  status: Complete,
  supplier_name: Inposia GmbH,
  customer_name: Avalara Inc.,
  document_type: ubl-invoice,
  document_version: 2.1,
  document_number: 8042091758,
  document_date: 2022-01-09,
  flow: out,
  country_code: DE,
  country_mandate: DE-B2G-XRECHNUNG,
  interface: PEPPOL,
  receiver: 9930:AVALARATEST
)
```

