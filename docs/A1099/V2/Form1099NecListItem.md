# AvalaraSdk::A1099::V2::Form1099NecListItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **state_and_local_withholding** | [**StateAndLocalWithholding**](StateAndLocalWithholding.md) |  | [optional] |
| **second_tin_notice** | **Boolean** |  | [optional] |
| **nonemployee_compensation** | **Float** |  | [optional] |
| **payer_made_direct_sales** | **Boolean** |  | [optional] |
| **federal_income_tax_withheld** | **Float** |  | [optional] |
| **issuer_id** | **String** |  | [optional] |
| **issuer_reference_id** | **String** |  | [optional] |
| **issuer_tin** | **String** |  | [optional] |
| **tax_year** | **Integer** |  | [optional] |
| **reference_id** | **String** |  | [optional] |
| **recipient_name** | **String** |  | [optional] |
| **recipient_tin** | **String** |  | [optional] |
| **tin_type** | **Integer** |  | [optional] |
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
| **federal_e_file** | **Boolean** |  | [optional] |
| **postal_mail** | **Boolean** |  | [optional] |
| **state_e_file** | **Boolean** |  | [optional] |
| **tin_match** | **Boolean** |  | [optional] |
| **address_verification** | **Boolean** |  | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::Form1099NecListItem.new(
  state_and_local_withholding: null,
  second_tin_notice: null,
  nonemployee_compensation: null,
  payer_made_direct_sales: null,
  federal_income_tax_withheld: null,
  issuer_id: null,
  issuer_reference_id: null,
  issuer_tin: null,
  tax_year: null,
  reference_id: null,
  recipient_name: null,
  recipient_tin: null,
  tin_type: null,
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
  country_code: null,
  federal_e_file: null,
  postal_mail: null,
  state_e_file: null,
  tin_match: null,
  address_verification: null
)
```

