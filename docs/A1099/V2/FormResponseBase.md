# AvalaraSdk::A1099::V2::FormResponseBase

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional][readonly] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **user_id** | **String** |  | [optional] |
| **state_and_local_withholding** | [**StateAndLocalWithholdingResponse**](StateAndLocalWithholdingResponse.md) |  | [optional] |
| **tin_type** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **issuer_id** | **String** |  | [optional] |
| **issuer_reference_id** | **String** |  | [optional] |
| **issuer_tin** | **String** |  | [optional] |
| **tax_year** | **Integer** |  | [optional] |
| **reference_id** | **String** |  | [optional] |
| **recipient_name** | **String** |  | [optional] |
| **recipient_tin** | **String** |  | [optional] |
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
| **federal_efile_status** | [**StatusDetail**](StatusDetail.md) |  | [optional] |
| **state_efile_status** | [**Array&lt;StateEfileStatusDetailApp&gt;**](StateEfileStatusDetailApp.md) |  | [optional] |
| **postal_mail_status** | [**StatusDetail**](StatusDetail.md) |  | [optional] |
| **tin_match_status** | [**StatusDetail**](StatusDetail.md) |  | [optional] |
| **address_verification_status** | [**StatusDetail**](StatusDetail.md) |  | [optional] |
| **validation_errors** | [**Array&lt;ValidationErrorApp&gt;**](ValidationErrorApp.md) |  | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::FormResponseBase.new(
  type: Form1099Nec,
  created_at: null,
  updated_at: null,
  user_id: null,
  state_and_local_withholding: null,
  tin_type: EIN,
  id: null,
  issuer_id: null,
  issuer_reference_id: null,
  issuer_tin: null,
  tax_year: null,
  reference_id: null,
  recipient_name: null,
  recipient_tin: null,
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
  federal_efile_status: null,
  state_efile_status: null,
  postal_mail_status: null,
  tin_match_status: null,
  address_verification_status: null,
  validation_errors: null
)
```

