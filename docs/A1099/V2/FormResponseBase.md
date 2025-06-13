# AvalaraSdk::A1099::V2::FormResponseBase

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **issuer_id** | **String** |  | [optional] |
| **issuer_reference_id** | **String** |  | [optional] |
| **issuer_tin** | **String** |  | [optional] |
| **tax_year** | **Integer** |  | [optional] |
| **reference_id** | **String** |  | [optional] |
| **recipient_name** | **String** |  | [optional] |
| **recipient_federal_id** | **String** |  | [optional] |
| **federal_id_type** | **Integer** |  | [optional] |
| **recipient_second_name** | **String** |  | [optional] |
| **street_address** | **String** |  | [optional] |
| **street_address_line2** | **String** |  | [optional] |
| **city** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **zip** | **String** |  | [optional] |
| **recipient_email** | **String** |  | [optional] |
| **account_number** | **String** |  | [optional] |
| **office_code** | **String** |  | [optional] |
| **recipient_non_us_province** | **String** |  | [optional] |
| **country_code** | **String** |  | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::FormResponseBase.new(
  issuer_id: null,
  issuer_reference_id: null,
  issuer_tin: null,
  tax_year: null,
  reference_id: null,
  recipient_name: null,
  recipient_federal_id: null,
  federal_id_type: null,
  recipient_second_name: null,
  street_address: null,
  street_address_line2: null,
  city: null,
  state: null,
  zip: null,
  recipient_email: null,
  account_number: null,
  office_code: null,
  recipient_non_us_province: null,
  country_code: null
)
```

