# AvalaraSdk::A1099::V2::W9FormResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
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
| **tin_match_status** | [**TinMatchStatusResponse**](TinMatchStatusResponse.md) | The TIN Match status from IRS. | [optional] |
| **id** | **String** | The unique identifier for the form. | [optional] |
| **type** | **String** | The form type. | [optional] |
| **entry_status** | **String** | The form status. | [optional] |
| **entry_status_date** | **Time** | The timestamp for the latest status update. | [optional] |
| **reference_id** | **String** | A reference identifier for the form. | [optional] |
| **company_id** | **String** | The ID of the associated company. | [optional] |
| **display_name** | **String** | The display name associated with the form. | [optional] |
| **email** | **String** | The email address of the individual associated with the form. | [optional] |
| **archived** | **Boolean** | Indicates whether the form is archived. | [optional] |
| **signature** | **String** | The signature of the form. | [optional] |
| **signed_date** | **Time** | The date the form was signed. | [optional] |
| **e_delivery_consented_at** | **Time** | The date when e-delivery was consented. | [optional] |
| **created_at** | **Time** | The creation date of the form. | [optional] |
| **updated_at** | **Time** | The last updated date of the form. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::W9FormResponse.new(
  name: John Doe,
  business_name: Doe Enterprises,
  business_classification: LLC,
  business_other: null,
  foreign_partner_owner_or_beneficiary: false,
  exempt_payee_code: null,
  exempt_fatca_code: null,
  foreign_country_indicator: false,
  address: 123 Main St,
  foreign_address: null,
  city: Anytown,
  state: CA,
  zip: 90210,
  account_number: ACC123456,
  tin_type: EIN,
  tin: 12-3456789,
  backup_withholding: false,
  is1099able: true,
  tin_match_status: null,
  id: null,
  type: null,
  entry_status: null,
  entry_status_date: null,
  reference_id: null,
  company_id: null,
  display_name: null,
  email: null,
  archived: null,
  signature: null,
  signed_date: null,
  e_delivery_consented_at: null,
  created_at: null,
  updated_at: null
)
```

