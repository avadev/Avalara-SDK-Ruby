# AvalaraSdk::A1099::V2::Form1099KRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filer_type** | **Integer** |  | [optional] |
| **payment_type** | **Integer** |  | [optional] |
| **payment_settlement_entity_name_phone_number** | **String** |  | [optional] |
| **gross_amount_payment_card** | **Float** |  | [optional] |
| **card_not_present_transactions** | **Float** |  | [optional] |
| **merchant_category_code** | **String** |  | [optional] |
| **payment_transaction_number** | **Float** |  | [optional] |
| **federal_income_tax_withheld** | **Float** |  | [optional] |
| **january** | **Float** |  | [optional] |
| **february** | **Float** |  | [optional] |
| **march** | **Float** |  | [optional] |
| **april** | **Float** |  | [optional] |
| **may** | **Float** |  | [optional] |
| **june** | **Float** |  | [optional] |
| **july** | **Float** |  | [optional] |
| **august** | **Float** |  | [optional] |
| **sept** | **Float** |  | [optional] |
| **october** | **Float** |  | [optional] |
| **november** | **Float** |  | [optional] |
| **december** | **Float** |  | [optional] |
| **type** | **String** |  | [optional][readonly] |
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

instance = AvalaraSdk::A1099::V2::Form1099KRequest.new(
  filer_type: null,
  payment_type: null,
  payment_settlement_entity_name_phone_number: null,
  gross_amount_payment_card: null,
  card_not_present_transactions: null,
  merchant_category_code: null,
  payment_transaction_number: null,
  federal_income_tax_withheld: null,
  january: null,
  february: null,
  march: null,
  april: null,
  may: null,
  june: null,
  july: null,
  august: null,
  sept: null,
  october: null,
  november: null,
  december: null,
  type: Form1099Nec,
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

