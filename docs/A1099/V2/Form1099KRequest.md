# AvalaraSdk::A1099::V2::Form1099KRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filer_type** | **String** | Filer type (PSE or EPF) | [optional] |
| **payment_type** | **String** | Payment type (payment card or third party network) | [optional] |
| **payment_settlement_entity_name_phone_number** | **String** | Payment settlement entity name and phone number | [optional] |
| **gross_amount_payment_card** | **Float** | Gross amount of payment card/third party network transactions | [optional] |
| **card_not_present_transactions** | **Float** | Card not present transactions | [optional] |
| **merchant_category_code** | **String** | Merchant category code | [optional] |
| **payment_transaction_number** | **Float** | Number of payment transactions | [optional] |
| **federal_income_tax_withheld** | **Float** | Federal income tax withheld | [optional] |
| **january** | **Float** | January gross payments | [optional] |
| **february** | **Float** | February gross payments | [optional] |
| **march** | **Float** | March gross payments | [optional] |
| **april** | **Float** | April gross payments | [optional] |
| **may** | **Float** | May gross payments | [optional] |
| **june** | **Float** | June gross payments | [optional] |
| **july** | **Float** | July gross payments | [optional] |
| **august** | **Float** | August gross payments | [optional] |
| **sept** | **Float** | September gross payments | [optional] |
| **october** | **Float** | October gross payments | [optional] |
| **november** | **Float** | November gross payments | [optional] |
| **december** | **Float** | December gross payments | [optional] |
| **type** | **String** |  | [optional] |
| **issuer_id** | **String** | Issuer ID | [optional] |
| **reference_id** | **String** | Reference ID | [optional] |
| **recipient_tin** | **String** | Recipient Tax ID Number | [optional] |
| **recipient_name** | **String** | Recipient name | [optional] |
| **tin_type** | **String** | Type of TIN (Tax ID Number). Will be one of:  * SSN  * EIN  * ITIN  * ATIN | [optional] |
| **recipient_second_name** | **String** | Recipient second name | [optional] |
| **address** | **String** | Address | [optional] |
| **address2** | **String** | Address line 2 | [optional] |
| **city** | **String** | City | [optional] |
| **state** | **String** | US state. Required if CountryCode is \&quot;US\&quot;. | [optional] |
| **zip** | **String** | Zip/postal code | [optional] |
| **email** | **String** | Recipient email address | [optional] |
| **account_number** | **String** | Account number | [optional] |
| **office_code** | **String** | Office code | [optional] |
| **non_us_province** | **String** | Foreign province | [optional] |
| **country_code** | **String** | Country code, as defined at https://www.irs.gov/e-file-providers/country-codes | [optional] |
| **federal_e_file** | **Boolean** | Boolean indicating that federal e-filing should be scheduled for this form | [optional] |
| **postal_mail** | **Boolean** | Boolean indicating that postal mailing to the recipient should be scheduled for this form | [optional] |
| **state_e_file** | **Boolean** | Boolean indicating that state e-filing should be scheduled for this form | [optional] |
| **tin_match** | **Boolean** | Boolean indicating that TIN Matching should be scheduled for this form | [optional] |
| **no_tin** | **Boolean** | Indicates whether the recipient has no TIN | [optional] |
| **second_tin_notice** | **Boolean** | Second TIN notice in three years | [optional] |
| **fatca_filing_requirement** | **Boolean** | Fatca filing requirement | [optional] |
| **address_verification** | **Boolean** | Boolean indicating that address verification should be scheduled for this form | [optional] |
| **state_and_local_withholding** | [**StateAndLocalWithholdingRequest**](StateAndLocalWithholdingRequest.md) | State and local withholding information | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::Form1099KRequest.new(
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
  issuer_id: null,
  reference_id: null,
  recipient_tin: null,
  recipient_name: null,
  tin_type: EIN,
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
  fatca_filing_requirement: null,
  address_verification: null,
  state_and_local_withholding: null
)
```

