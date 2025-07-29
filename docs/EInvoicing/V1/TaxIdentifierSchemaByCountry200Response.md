# AvalaraSdk::EInvoicing::V1::TaxIdentifierSchemaByCountry200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country_code** | **String** | The two-letter ISO-3166 country code of the tax identifier. |  |
| **schema** | **Object** | The JSON Schema definition, following Draft-07 specification, used to validate tax identifier data. |  |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::TaxIdentifierSchemaByCountry200Response.new(
  country_code: null,
  schema: null
)
```

