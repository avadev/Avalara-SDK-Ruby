# AvalaraSdk::A1099::V2::W8BenFormResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
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
| **tin_type** | **String** | The type of TIN provided. | [optional] |
| **tin** | **String** | The taxpayer identification number (TIN). | [optional] |
| **foreign_tin_not_required** | **Boolean** | Indicates whether a foreign TIN is not required. | [optional] |
| **foreign_tin** | **String** | The foreign taxpayer identification number (TIN). | [optional] |
| **reference_number** | **String** | A reference number for the form. | [optional] |
| **birthday** | **Date** | The birthday of the individual associated with the form. | [optional] |
| **treaty_country** | **String** | The country for which the treaty applies. | [optional] |
| **treaty_article** | **String** | The specific article of the treaty being claimed. | [optional] |
| **treaty_reasons** | **String** | The reasons for claiming treaty benefits. | [optional] |
| **withholding_rate** | **String** | The withholding rate applied as per the treaty. | [optional] |
| **income_type** | **String** | The type of income covered by the treaty. | [optional] |
| **signer_name** | **String** | The name of the signer of the form. | [optional] |
| **signer_capacity** | **String** | The capacity in which the signer is signing the form. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::W8BenFormResponse.new(
  name: International Trading Co.,
  citizenship_country: US,
  residence_address: 789 Global St,
  residence_city: Capital City,
  residence_state: DC,
  residence_zip: 20001,
  residence_country: US,
  residence_is_mailing: false,
  mailing_address: P.O. Box 456,
  mailing_city: Capital City,
  mailing_state: DC,
  mailing_zip: 20002,
  mailing_country: USA,
  tin_type: SSN,
  tin: 123-45-6789,
  foreign_tin_not_required: false,
  foreign_tin: FTIN56789,
  reference_number: W8BEN12345,
  birthday: Mon Oct 01 17:00:00 PDT 1990,
  treaty_country: CA,
  treaty_article: Article 12,
  treaty_reasons: Reduced withholding,
  withholding_rate: 15%,
  income_type: Dividend,
  signer_name: Alice Johnson,
  signer_capacity: Authorized Representative
)
```

