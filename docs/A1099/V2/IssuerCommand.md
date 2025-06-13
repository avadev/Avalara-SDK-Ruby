# AvalaraSdk::A1099::V2::IssuerCommand

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Legal name, not DBA | [optional] |
| **name_dba** | **String** | Optional DBA name or continuation of a long legal name | [optional] |
| **tin** | **String** | Tax identification number | [optional] |
| **reference_id** | **String** | Optional identifier for your reference, never shown to any agency or recipient.  We will also prefix download filenames with this value, if present.  Can only include letters, numbers, dashes, underscores and spaces. | [optional] |
| **telephone** | **String** | Telephone number | [optional] |
| **tax_year** | **Integer** | Tax year | [optional] |
| **country_code** | **String** | If there is a transfer agent, use the shipping address of the transfer agent. | [optional] |
| **email** | **String** | Email address | [optional] |
| **address** | **String** | Address | [optional] |
| **city** | **String** | City | [optional] |
| **state** | **String** | State | [optional] |
| **zip** | **String** | Zip code | [optional] |
| **foreign_province** | **String** | Foreign province | [optional] |
| **transfer_agent_name** | **String** | Transfer Agent&#39;s Name | [optional] |
| **last_filing** | **Boolean** | Last year of filing for this payer | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::IssuerCommand.new(
  name: null,
  name_dba: null,
  tin: null,
  reference_id: null,
  telephone: null,
  tax_year: null,
  country_code: null,
  email: null,
  address: null,
  city: null,
  state: null,
  zip: null,
  foreign_province: null,
  transfer_agent_name: null,
  last_filing: null
)
```

