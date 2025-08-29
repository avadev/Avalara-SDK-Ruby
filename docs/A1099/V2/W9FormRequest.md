# AvalaraSdk::A1099::V2::W9FormRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The form type (always \&quot;w9\&quot; for this model). | [optional][readonly] |
| **name** | **String** | The name of the individual or entity associated with the form. | [optional] |
| **business_name** | **String** | The name of the business associated with the form. | [optional] |
| **business_classification** | **String** | The classification of the business. | [optional] |
| **business_other** | **String** | The classification description when \&quot;businessClassification\&quot; is \&quot;Other\&quot;. | [optional] |
| **foreign_partner_owner_or_beneficiary** | **Boolean** | Indicates whether the individual is a foreign partner, owner, or beneficiary. | [optional] |
| **exempt_payee_code** | **String** | The exempt payee code. | [optional] |
| **exempt_fatca_code** | **String** | The exemption from FATCA reporting code. | [optional] |
| **foreign_country_indicator** | **Boolean** | Indicates whether the individual or entity is in a foreign country. | [optional] |
| **address** | **String** | The address of the individual or entity. | [optional] |
| **foreign_address** | **String** | The foreign address of the individual or entity. | [optional] |
| **city** | **String** | The city of the address. | [optional] |
| **state** | **String** | The state of the address. | [optional] |
| **zip** | **String** | The ZIP code of the address. | [optional] |
| **account_number** | **String** | The account number associated with the form. | [optional] |
| **tin_type** | **String** | The type of TIN provided. | [optional] |
| **tin** | **String** | The taxpayer identification number (TIN). | [optional] |
| **backup_withholding** | **Boolean** | Indicates whether backup withholding applies. | [optional] |
| **is1099able** | **Boolean** | Indicates whether the individual or entity should be issued a 1099 form. | [optional] |
| **e_delivery_consented_at** | **Time** | The date when e-delivery was consented. | [optional] |
| **signature** | **String** | The signature of the form. | [optional] |
| **company_id** | **String** | The ID of the associated company. |  |
| **reference_id** | **String** | A reference identifier for the form. | [optional] |
| **email** | **String** | The email address of the individual associated with the form. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::W9FormRequest.new(
  type: W4,
  name: null,
  business_name: null,
  business_classification: null,
  business_other: null,
  foreign_partner_owner_or_beneficiary: null,
  exempt_payee_code: null,
  exempt_fatca_code: null,
  foreign_country_indicator: null,
  address: null,
  foreign_address: null,
  city: null,
  state: null,
  zip: null,
  account_number: null,
  tin_type: null,
  tin: null,
  backup_withholding: null,
  is1099able: null,
  e_delivery_consented_at: null,
  signature: null,
  company_id: null,
  reference_id: null,
  email: null
)
```

