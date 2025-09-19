# AvalaraSdk::A1099::V2::W9FormResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The form type (always \&quot;W9\&quot; for this model). | [optional][readonly] |
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
| **tin_type** | **String** | Tax Identification Number (TIN) type. | [optional] |
| **tin** | **String** | The taxpayer identification number (TIN). | [optional] |
| **backup_withholding** | **Boolean** | Indicates whether backup withholding applies. | [optional] |
| **is1099able** | **Boolean** | Indicates whether the individual or entity should be issued a 1099 form. | [optional] |
| **tin_match_status** | [**TinMatchStatusResponse**](TinMatchStatusResponse.md) | The TIN Match status from IRS. | [optional] |
| **id** | **String** | The unique identifier for the form. | [optional] |
| **entry_status** | [**EntryStatusResponse**](EntryStatusResponse.md) | The entry status information for the form. | [optional] |
| **reference_id** | **String** | A reference identifier for the form. | [optional] |
| **company_id** | **String** | The ID of the associated company. | [optional] |
| **display_name** | **String** | The display name associated with the form. | [optional] |
| **email** | **String** | The email address of the individual associated with the form. | [optional] |
| **archived** | **Boolean** | Indicates whether the form is archived. | [optional] |
| **ancestor_id** | **String** | Form ID of previous version. | [optional] |
| **signature** | **String** | The signature of the form. | [optional] |
| **signed_date** | **Time** | The date the form was signed. | [optional] |
| **e_delivery_consented_at** | **Time** | The date when e-delivery was consented. | [optional] |
| **created_at** | **Time** | The creation date of the form. | [optional] |
| **updated_at** | **Time** | The last updated date of the form. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::W9FormResponse.new(
  type: null,
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
  tin_match_status: null,
  id: null,
  entry_status: null,
  reference_id: null,
  company_id: null,
  display_name: null,
  email: null,
  archived: null,
  ancestor_id: null,
  signature: null,
  signed_date: null,
  e_delivery_consented_at: null,
  created_at: null,
  updated_at: null
)
```

