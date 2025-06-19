# AvalaraSdk::A1099::V2::PaginatedQueryResultModelIssuerResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **recordset_count** | **Integer** |  | [optional] |
| **value** | [**Array&lt;IssuerResponse&gt;**](IssuerResponse.md) |  | [optional] |
| **next_link** | **String** |  | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::PaginatedQueryResultModelIssuerResponse.new(
  recordset_count: null,
  value: [{&quot;id&quot;:&quot;0&quot;,&quot;name&quot;:&quot;Acme Corp&quot;,&quot;nameDba&quot;:&quot;Second Name Corp&quot;,&quot;tin&quot;:&quot;23-8234555&quot;,&quot;referenceId&quot;:&quot;1891810-9819891&quot;,&quot;telephone&quot;:&quot;520-555-1234&quot;,&quot;taxYear&quot;:2024,&quot;countryCode&quot;:&quot;US&quot;,&quot;email&quot;:&quot;roadrunner@acmecorp.com&quot;,&quot;address&quot;:&quot;1234 Meep Meep Blvd&quot;,&quot;city&quot;:&quot;Tucson&quot;,&quot;state&quot;:&quot;AZ&quot;,&quot;zip&quot;:&quot;35004&quot;,&quot;foreignProvince&quot;:&quot;1981981&quot;,&quot;transferAgentName&quot;:&quot;test&quot;,&quot;lastFiling&quot;:false,&quot;createdAt&quot;:&quot;0001-01-01T00:00:00&quot;,&quot;updatedAt&quot;:&quot;0001-01-01T00:00:00&quot;}],
  next_link: null
)
```

