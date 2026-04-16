# AvalaraSdk::EInvoicing::V1::CodeListVersion

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version_reasons** | **Array&lt;String&gt;** | List of free-text reasons explaining why this version of the code list exists (for example, initial introduction, regulatory update, addition/deprecation of codes). Useful for audit and change tracking. | [optional] |
| **juris_effective_date** | **Date** | Date from which this version of the code list becomes legally or operationally effective in the jurisdiction. Typically corresponds to a go-live, mandate, or release date. | [optional] |
| **juris_sunset_date** | **Date** | Date after which this version of the code list must no longer be used in the jurisdiction. Use a far-future date (e.g., 9999-12-31) when the sunset is not yet known. | [optional] |
| **locale** | **String** | Language–region locale identifier indicating the language and regional variant for descriptions in this version of the code list. Follows BCP-47 format such as en-US, fr-FR, de-DE. | [optional] |
| **values** | [**Array&lt;CodeListValue&gt;**](CodeListValue.md) | Array of code entries defined in this version of the code list. Each entry contains the machine-readable code value and its human-readable description in the given locale. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::CodeListVersion.new(
  version_reasons: [&quot;Initial adoption of EN16931 document type codes&quot;,&quot;Alignment with French e-invoicing mandate 2026&quot;],
  juris_effective_date: Tue Dec 31 16:00:00 PST 2024,
  juris_sunset_date: Thu Dec 30 16:00:00 PST 9999,
  locale: fr-FR,
  values: null
)
```

