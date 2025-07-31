# AvalaraSdk::A1099::V2::Form1099KResponse

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
| **type** | **String** |  | [optional][readonly] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
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
| **email** | **String** |  | [optional] |
| **account_number** | **String** |  | [optional] |
| **office_code** | **String** |  | [optional] |
| **non_us_province** | **String** |  | [optional] |
| **country_code** | **String** |  | [optional] |
| **federal_e_file** | **Boolean** |  | [optional] |
| **postal_mail** | **Boolean** |  | [optional] |
| **state_e_file** | **Boolean** |  | [optional] |
| **tin_match** | **Boolean** |  | [optional] |
| **no_tin** | **Boolean** |  | [optional] |
| **second_tin_notice** | **Boolean** |  | [optional] |
| **address_verification** | **Boolean** |  | [optional] |
| **federal_efile_status** | [**StatusDetail**](StatusDetail.md) |  | [optional] |
| **e_delivery_status** | [**StatusDetail**](StatusDetail.md) |  | [optional] |
| **state_efile_status** | [**Array&lt;StateEfileStatusDetailResponse&gt;**](StateEfileStatusDetailResponse.md) |  | [optional] |
| **postal_mail_status** | [**StatusDetail**](StatusDetail.md) |  | [optional] |
| **tin_match_status** | [**StatusDetail**](StatusDetail.md) |  | [optional] |
| **address_verification_status** | [**StatusDetail**](StatusDetail.md) |  | [optional] |
| **validation_errors** | [**Array&lt;ValidationErrorResponse&gt;**](ValidationErrorResponse.md) |  | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::Form1099KResponse.new(
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
  type: 1099-NEC,
  created_at: null,
  updated_at: null,
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
  email: null,
  account_number: null,
  office_code: null,
  non_us_province: null,
  country_code: null,
  federal_e_file: null,
  postal_mail: null,
  state_e_file: null,
  tin_match: null,
  no_tin: null,
  second_tin_notice: null,
  address_verification: null,
  federal_efile_status: null,
  e_delivery_status: null,
  state_efile_status: null,
  postal_mail_status: null,
  tin_match_status: null,
  address_verification_status: null,
  validation_errors: null
)
```

