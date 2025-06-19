# AvalaraSdk::A1099::V2::Form1099K

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filer_type** | **String** |  | [optional] |
| **payment_type** | **String** |  | [optional] |
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
| **id** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **issuer_id** | **Integer** |  | [optional] |
| **issuer_reference_id** | **String** |  | [optional] |
| **issuer_tin** | **String** |  | [optional] |
| **tax_year** | **Integer** |  | [optional] |
| **federal_efile** | **Boolean** |  | [optional] |
| **federal_efile_status** | [**Form1099StatusDetail**](Form1099StatusDetail.md) |  | [optional] |
| **state_efile** | **Boolean** |  | [optional] |
| **state_efile_status** | [**Array&lt;StateEfileStatusDetail&gt;**](StateEfileStatusDetail.md) |  | [optional] |
| **postal_mail** | **Boolean** |  | [optional] |
| **postal_mail_status** | [**Form1099StatusDetail**](Form1099StatusDetail.md) |  | [optional] |
| **tin_match** | **Boolean** |  | [optional] |
| **tin_match_status** | [**Form1099StatusDetail**](Form1099StatusDetail.md) |  | [optional] |
| **address_verification** | **Boolean** |  | [optional] |
| **address_verification_status** | [**Form1099StatusDetail**](Form1099StatusDetail.md) |  | [optional] |
| **reference_id** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **type_of_tin** | **String** |  | [optional] |
| **tin** | **String** |  | [optional] |
| **first_payee_name** | **String** |  | [optional] |
| **second_payee_name** | **String** |  | [optional] |
| **address** | **String** |  | [optional] |
| **address_recipient_second** | **String** |  | [optional] |
| **city** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **zip** | **String** |  | [optional] |
| **foreign_province** | **String** |  | [optional] |
| **country_code** | **String** |  | [optional] |
| **validation_errors** | [**Array&lt;ValidationError&gt;**](ValidationError.md) |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **state_and_local_withholding** | [**StateAndLocalWithholding**](StateAndLocalWithholding.md) |  | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::Form1099K.new(
  filer_type: PSE,
  payment_type: MerchantPaymentCard,
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
  id: null,
  type: null,
  issuer_id: null,
  issuer_reference_id: null,
  issuer_tin: null,
  tax_year: null,
  federal_efile: null,
  federal_efile_status: null,
  state_efile: null,
  state_efile_status: null,
  postal_mail: null,
  postal_mail_status: null,
  tin_match: null,
  tin_match_status: null,
  address_verification: null,
  address_verification_status: null,
  reference_id: null,
  email: null,
  type_of_tin: null,
  tin: null,
  first_payee_name: null,
  second_payee_name: null,
  address: null,
  address_recipient_second: null,
  city: null,
  state: null,
  zip: null,
  foreign_province: null,
  country_code: null,
  validation_errors: null,
  created_at: null,
  updated_at: null,
  state_and_local_withholding: null
)
```

