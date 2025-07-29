# AvalaraSdk::A1099::V2::W8BenFormRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The form type (always \&quot;w8ben\&quot; for this model). | [optional][readonly] |
| **name** | **String** | The name of the individual or entity associated with the form. | [optional] |
| **citizenship_country** | **String** | The country of citizenship. | [optional] |
| **residence_address** | **String** | The residential address of the individual or entity. | [optional] |
| **residence_city** | **String** | The city of residence. | [optional] |
| **residence_state** | **String** | The state of residence. | [optional] |
| **residence_zip** | **String** | The ZIP code of the residence. | [optional] |
| **residence_country** | **String** | The country of residence. | [optional] |
| **residence_is_mailing** | **Boolean** | Indicates whether the residence address is the mailing address. | [optional] |
| **mailing_address** | **String** | The mailing address. | [optional] |
| **mailing_city** | **String** | The city of the mailing address. | [optional] |
| **mailing_state** | **String** | The state of the mailing address. | [optional] |
| **mailing_zip** | **String** | The ZIP code of the mailing address. | [optional] |
| **mailing_country** | **String** | The country of the mailing address. | [optional] |
| **tin** | **String** | The taxpayer identification number (TIN). | [optional] |
| **foreign_tin_not_required** | **Boolean** | Indicates whether a foreign TIN is not legally required. | [optional] |
| **foreign_tin** | **String** | The foreign taxpayer identification number (TIN). | [optional] |
| **reference_number** | **String** | A reference number for the form. | [optional] |
| **birthday** | **Date** | The birthday of the individual associated with the form. | [optional] |
| **treaty_country** | **String** | The country for which the treaty applies. | [optional] |
| **treaty_article** | **String** | The specific article of the treaty being claimed. | [optional] |
| **treaty_reasons** | **String** | The reasons for claiming treaty benefits. | [optional] |
| **withholding_rate** | **String** | The withholding rate applied as per the treaty. | [optional] |
| **income_type** | **String** | The type of income covered by the treaty. | [optional] |
| **signer_name** | **String** | The name of the signer of the form. | [optional] |
| **company_id** | **String** | The ID of the associated company. | [optional] |
| **reference_id** | **String** | A reference identifier for the form. | [optional] |
| **email** | **String** | The email address of the individual associated with the form. | [optional] |
| **e_delivery_consented_at** | **Time** | The date when e-delivery was consented. | [optional] |
| **signature** | **String** | The signature of the form. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::W8BenFormRequest.new(
  type: W4,
  name: null,
  citizenship_country: null,
  residence_address: null,
  residence_city: null,
  residence_state: null,
  residence_zip: null,
  residence_country: null,
  residence_is_mailing: null,
  mailing_address: null,
  mailing_city: null,
  mailing_state: null,
  mailing_zip: null,
  mailing_country: null,
  tin: null,
  foreign_tin_not_required: null,
  foreign_tin: null,
  reference_number: null,
  birthday: null,
  treaty_country: null,
  treaty_article: null,
  treaty_reasons: null,
  withholding_rate: null,
  income_type: null,
  signer_name: null,
  company_id: null,
  reference_id: null,
  email: null,
  e_delivery_consented_at: null,
  signature: null
)
```

