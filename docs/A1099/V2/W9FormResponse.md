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
  tin_match_status: null
)
```

