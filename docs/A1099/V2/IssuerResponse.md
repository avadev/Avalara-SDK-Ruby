# AvalaraSdk::A1099::V2::IssuerResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier set when the record is created | [optional][readonly] |
| **name** | **String** | Legal name, not DBA | [optional] |
| **name_dba** | **String** | Optional DBA name or continuation of a long legal name | [optional] |
| **tin** | **String** | Tax identification number | [optional] |
| **reference_id** | **String** | Optional identifier for your reference, never shown to any agency or recipient.  We will also prefix download filenames with this value, if present.  Can only include letters, numbers, dashes, underscores and spaces. | [optional] |
| **telephone** | **String** | Telephone number | [optional] |
| **tax_year** | **Integer** | Tax year | [optional] |
| **country_code** | **String** | If there is a transfer agent, use the address of the transfer agent. | [optional] |
| **email** | **String** | Email address | [optional] |
| **address** | **String** | Address | [optional] |
| **city** | **String** | City | [optional] |
| **state** | **String** | State | [optional] |
| **zip** | **String** | Zip code | [optional] |
| **foreign_province** | **String** | Foreign province | [optional] |
| **transfer_agent_name** | **String** | Transfer Agent&#39;s Name | [optional] |
| **last_filing** | **Boolean** | Last year of filing for this payer | [optional] |
| **created_at** | **Time** | Date time when the issuer was created | [optional][readonly] |
| **updated_at** | **Time** | Date time when the issuer was updated | [optional][readonly] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::IssuerResponse.new(
  id: 0,
  name: Acme Corp,
  name_dba: Second Name Corp,
  tin: 23-8234555,
  reference_id: 1891810-9819891,
  telephone: 520-555-1234,
  tax_year: 2024,
  country_code: US,
  email: roadrunner@acmecorp.com,
  address: 1234 Meep Meep Blvd,
  city: Tucson,
  state: AZ,
  zip: 35004,
  foreign_province: 1981981,
  transfer_agent_name: test,
  last_filing: false,
  created_at: null,
  updated_at: null
)
```

