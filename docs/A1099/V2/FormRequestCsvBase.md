# AvalaraSdk::A1099::V2::FormRequestCsvBase

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **issuer_reference_id** | **String** |  | [optional] |
| **issuer_tin** | **String** |  | [optional] |
| **tax_year** | **Integer** |  | [optional] |
| **issuer_id** | **String** |  | [optional] |
| **reference_id** | **String** |  | [optional] |
| **recipient_name** | **String** |  | [optional] |
| **recipient_tin** | **String** |  | [optional] |
| **tin_type** | **String** |  | [optional] |
| **recipient_second_name** | **String** |  | [optional] |
| **address** | **String** |  | [optional] |
| **address2** | **String** |  | [optional] |
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
| **state_and_local_withholding** | [**StateAndLocalWithholdingRequest**](StateAndLocalWithholdingRequest.md) |  | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::FormRequestCsvBase.new(
  issuer_reference_id: null,
  issuer_tin: null,
  tax_year: null,
  issuer_id: null,
  reference_id: null,
  recipient_name: null,
  recipient_tin: null,
  tin_type: EIN,
  recipient_second_name: null,
  address: null,
  address2: null,
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
  address_verification: null,
  state_and_local_withholding: null
)
```

