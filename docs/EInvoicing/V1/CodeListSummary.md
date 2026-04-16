# AvalaraSdk::EInvoicing::V1::CodeListSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country_code** | **String** | Two-letter ISO 3166-1 alpha-2 country code indicating the jurisdiction this code list applies to. | [optional] |
| **code_list_id** | **String** | System-generated unique identifier of the code list definition. Typically a UUID used to reference this code list internally or via APIs. | [optional] |
| **code_list_name** | **String** | Human-readable name of the code list, usually describing what the codes represent (for example, document types, tax categories, currencies). | [optional] |
| **description** | **String** | Textual description of the code list, including what it is used for and whether it represents a global standard (e.g., UN/CEFACT, ISO, EN16931) or a jurisdiction-specific/local extension of that standard. | [optional] |
| **standard** | **String** | Identifier of the underlying standard or authoritative source for this code list. This may be a formal code list name (e.g., UNCL1001), a standard reference (e.g., EN16931), or an internal standard identifier. | [optional] |
| **versions** | [**Array&lt;CodeListVersion&gt;**](CodeListVersion.md) | Array of versioned definitions of this code list for the given jurisdiction. Each entry represents a version that is valid for a specific effective/sunset date range, optionally per locale. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::CodeListSummary.new(
  country_code: FR,
  code_list_id: ab123343-3432-423c-ac3f-53453scs9999,
  code_list_name: DocumentType,
  description: Code list of document type identifiers for France, based on UN/CEFACT document type codes, with national (local) extensions where applicable.,
  standard: UNCL1001,
  versions: null
)
```

