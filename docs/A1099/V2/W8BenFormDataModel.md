# AvalaraSdk::A1099::V2::W8BenFormDataModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Type of the form, always W8ben for this model. | [optional][readonly] |
| **signed_date** | **Time** | The date the form was signed. | [optional] |
| **birthday** | **String** | The birthday of the individual associated with the form. | [optional] |
| **foreign_tin_not_required** | **Boolean** | Indicates whether a foreign TIN is not required. | [optional] |
| **archived** | **Boolean** | Indicates whether the form is archived. | [optional] |
| **reference_id** | **String** | A reference identifier for the form. | [optional] |
| **company_id** | **Integer** | The ID of the associated company. | [optional] |
| **display_name** | **String** | The display name associated with the form. | [optional] |
| **email** | **String** | The email address of the individual associated with the form. | [optional] |
| **type_of_tin** | **String** | The type of TIN provided. | [optional] |
| **name** | **String** | The name of the individual or entity associated with the form. | [optional] |
| **residence_address** | **String** | The residential address of the individual or entity. | [optional] |
| **residence_city** | **String** | The city of residence. | [optional] |
| **residence_state** | **String** | The state of residence. | [optional] |
| **residence_postal_code** | **String** | The postal code of the residence. | [optional] |
| **residence_country** | **String** | The country of residence. | [optional] |
| **residence_is_mailing** | **Boolean** |  | [optional] |
| **mailing_address** | **String** | The mailing address. | [optional] |
| **mailing_city** | **String** | The city of the mailing address. | [optional] |
| **mailing_state** | **String** | The state of the mailing address. | [optional] |
| **mailing_postal_code** | **String** | The postal code of the mailing address. | [optional] |
| **mailing_country** | **String** | The country of the mailing address. | [optional] |
| **tin** | **String** | The taxpayer identification number (TIN). | [optional] |
| **foreign_tin** | **String** | The foreign taxpayer identification number (TIN). | [optional] |
| **reference_number** | **String** | A reference number for the form. | [optional] |
| **citizenship_country** | **String** | The country of citizenship. | [optional] |
| **treaty_country** | **String** | The country for which the treaty applies. | [optional] |
| **treaty_article** | **String** | The specific article of the treaty being claimed. | [optional] |
| **withholding_rate** | **String** | The withholding rate applied as per the treaty. | [optional] |
| **income_type** | **String** | The type of income covered by the treaty. | [optional] |
| **treaty_reasons** | **String** | The reasons for claiming treaty benefits. | [optional] |
| **signer_name** | **String** | The name of the signer of the form. | [optional] |
| **signer_capacity** | **String** | The capacity in which the signer is signing the form. | [optional] |
| **e_delivery_consented_at** | **Time** | The date when e-delivery was consented. | [optional] |
| **created_at** | **Time** | The creation date of the form. | [optional] |
| **updated_at** | **Time** | The last updated date of the form. | [optional] |
| **employee_first_name** | **String** | The first name of the employee. | [optional] |
| **employee_middle_name** | **String** | The middle name of the employee. | [optional] |
| **employee_last_name** | **String** | The last name of the employee. | [optional] |
| **employee_name_suffix** | **String** | The name suffix of the employee. | [optional] |
| **address** | **String** | The address of the individual or entity. | [optional] |
| **city** | **String** | The city of the address. | [optional] |
| **state** | **String** | The state of the address. | [optional] |
| **zip** | **String** | The ZIP code of the address. | [optional] |
| **box3_marital_status** | **String** | The marital status of the employee. | [optional] |
| **box4_last_name_differs** | **Boolean** | Indicates whether the last name differs from prior records. | [optional] |
| **box5_num_allowances** | **Integer** | The number of allowances claimed by the employee. | [optional] |
| **other_dependents** | **Integer** | The number of dependents other than allowances. | [optional] |
| **non_job_income** | **Float** | The amount of non-job income. | [optional] |
| **deductions** | **Float** | The amount of deductions claimed. | [optional] |
| **box6_additional_withheld** | **Float** | The additional amount withheld. | [optional] |
| **box7_exempt_from_withholding** | **Boolean** | Indicates whether the employee is exempt from withholding. | [optional] |
| **office_code** | **String** | The office code associated with the form. | [optional] |
| **disregarded_entity_chapter4_fatca_status** | **String** | The FATCA status for disregarded entities under Chapter 4. | [optional] |
| **disregarded_address** | **String** | The address for disregarded entities. | [optional] |
| **disregarded_city** | **String** | The city for disregarded entities. | [optional] |
| **disregarded_state** | **String** | The state for disregarded entities. | [optional] |
| **disregarded_postal_code** | **String** | The postal code for disregarded entities. | [optional] |
| **disregarded_country** | **String** | The country for disregarded entities. | [optional] |
| **ftin_not_required** | **Boolean** | Indicates whether a foreign TIN is not required. | [optional] |
| **giin** | **String** | The global intermediary identification number (GIIN). | [optional] |
| **chapter3_entity_type** | **String** | The Chapter 3 entity type. | [optional] |
| **chapter4_fatca_status** | **String** | The Chapter 4 FATCA status. | [optional] |
| **disregarded_entity** | **String** | The disregarded entity information. | [optional] |
| **disregarded_entity_giin** | **String** | The GIIN for disregarded entities. | [optional] |
| **benefit_limitation** | **String** | The benefit limitation for tax treaty claims. | [optional] |
| **part4_sponsoring_entity** | **String** | The sponsoring entity information for Part 4. | [optional] |
| **part4_sponsoring_entity_giin** | **String** | The GIIN for the sponsoring entity in Part 4. | [optional] |
| **part7_sponsoring_entity** | **String** | The sponsoring entity information for Part 7. | [optional] |
| **part12_iga_country** | **String** | The IGA country information for Part 12. | [optional] |
| **part12_iga_type** | **String** | The IGA type information for Part 12. | [optional] |
| **part12_fatca_status_under_iga_annex_ii** | **String** | The FATCA status under IGA Annex II for Part 12. | [optional] |
| **part12_trustee_name** | **String** | The trustee name for Part 12. | [optional] |
| **part12_trustee_is_foreign** | **Boolean** | Indicates whether the trustee is foreign for Part 12. | [optional] |
| **part12_model2_iga_giin** | **String** | The GIIN for Model 2 IGA in Part 12. | [optional] |
| **box37_a_exchange** | **String** | The exchange information for Box 37A. | [optional] |
| **box37_b_exchange** | **String** | The exchange information for Box 37B. | [optional] |
| **box37_b_entity** | **String** | The entity information for Box 37B. | [optional] |
| **part28_sponsoring_entity** | **String** | The sponsoring entity information for Part 28. | [optional] |
| **part28_sponsoring_entity_giin** | **String** | The GIIN for the sponsoring entity in Part 28. | [optional] |
| **making_treaty_claim** | **Boolean** |  | [optional] |
| **certify_box14_a** | **Boolean** |  | [optional] |
| **certify_box14_b** | **Boolean** |  | [optional] |
| **certify_box14_c** | **Boolean** |  | [optional] |
| **certify_box17_1** | **Boolean** |  | [optional] |
| **certify_box17_2** | **Boolean** |  | [optional] |
| **certify_box18** | **Boolean** |  | [optional] |
| **certify_box19** | **Boolean** |  | [optional] |
| **certify_box21** | **Boolean** |  | [optional] |
| **certify_box22** | **Boolean** | Indicates certification for box 22. | [optional] |
| **certify_box23** | **Boolean** |  | [optional] |
| **certify_box24_a** | **Boolean** | Indicates certification for box 24A. | [optional] |
| **certify_box24_b** | **Boolean** | Indicates certification for box 24B. | [optional] |
| **certify_box24_c** | **Boolean** | Indicates certification for box 24C. | [optional] |
| **certify_box24_d** | **Boolean** |  | [optional] |
| **certify_box25_a** | **Boolean** |  | [optional] |
| **certify_box25_b** | **Boolean** |  | [optional] |
| **certify_box25_c** | **Boolean** |  | [optional] |
| **certify_box26** | **Boolean** | Indicates certification for box 26. | [optional] |
| **certify_box27** | **Boolean** |  | [optional] |
| **certify_box28_a** | **Boolean** |  | [optional] |
| **certify_box28_b** | **Boolean** |  | [optional] |
| **certify_box29_a** | **Boolean** |  | [optional] |
| **certify_box29_b** | **Boolean** |  | [optional] |
| **certify_box29_c** | **Boolean** |  | [optional] |
| **certify_box29_d** | **Boolean** |  | [optional] |
| **certify_box29_e** | **Boolean** |  | [optional] |
| **certify_box29_f** | **Boolean** |  | [optional] |
| **certify_box30** | **Boolean** |  | [optional] |
| **certify_box31** | **Boolean** | Indicates certification for box 31. | [optional] |
| **certify_box32** | **Boolean** | Indicates certification for box 32. | [optional] |
| **certify_box33** | **Boolean** |  | [optional] |
| **certify_box34** | **Boolean** | Indicates certification for box 34. | [optional] |
| **certify_box35** | **Boolean** | Indicates certification for box 35. | [optional] |
| **certify_box36** | **Boolean** | Indicates certification for box 36. | [optional] |
| **certify_box37_a** | **Boolean** | Indicates certification for box 37A. | [optional] |
| **certify_box37_b** | **Boolean** | Indicates certification for box 37B. | [optional] |
| **certify_box38** | **Boolean** | Indicates certification for box 38. | [optional] |
| **certify_box39** | **Boolean** | Indicates certification for box 39. | [optional] |
| **certify_box40_a** | **Boolean** |  | [optional] |
| **certify_box40_b** | **Boolean** |  | [optional] |
| **certify_box40_c** | **Boolean** |  | [optional] |
| **certify_box41** | **Boolean** |  | [optional] |
| **certify_box43** | **Boolean** |  | [optional] |
| **certify_part29_signature** | **Boolean** |  | [optional] |
| **part19_formation_or_resolution_date** | **Date** |  | [optional] |
| **part20_filing_date** | **Date** |  | [optional] |
| **part21_determination_date** | **Date** |  | [optional] |
| **substantial_us_owners** | [**Array&lt;W8BenESubstantialUsOwnerDataModel&gt;**](W8BenESubstantialUsOwnerDataModel.md) |  | [optional] |
| **ein** | **String** | The employer identification number (EIN). | [optional] |
| **ein_type** | **String** | The type of employer identification number (EIN). | [optional] |
| **certify_box14** | **Boolean** | Indicates certification for box 14. | [optional] |
| **certify_box15_a** | **Boolean** | Indicates certification for box 15A. | [optional] |
| **certify_box15_b** | **Boolean** | Indicates certification for box 15B. | [optional] |
| **certify_box15_c** | **Boolean** | Indicates certification for box 15C. | [optional] |
| **certify_box15_d** | **Boolean** | Indicates certification for box 15D. | [optional] |
| **certify_box15_e** | **Boolean** | Indicates certification for box 15E. | [optional] |
| **certify_box15_f** | **Boolean** | Indicates certification for box 15F. | [optional] |
| **certify_box15_g** | **Boolean** | Indicates certification for box 15G. | [optional] |
| **certify_box15_h** | **Boolean** | Indicates certification for box 15H. | [optional] |
| **certify_box15_i** | **Boolean** | Indicates certification for box 15I. | [optional] |
| **certify_box16_a** | **Boolean** | Indicates certification for box 16A. | [optional] |
| **box16_b_qdd_corporate** | **Boolean** | Indicates certification for box 16B as a QDD corporate entity. | [optional] |
| **box16_b_qdd_partnership** | **Boolean** | Indicates certification for box 16B as a QDD partnership. | [optional] |
| **box16_b_qdd_disregarded_entity** | **Boolean** | Indicates certification for box 16B as a QDD disregarded entity. | [optional] |
| **certify_box17_a** | **Boolean** | Indicates certification for box 17A. | [optional] |
| **certify_box17_b** | **Boolean** | Indicates certification for box 17B. | [optional] |
| **certify_box17_c** | **Boolean** | Indicates certification for box 17C. | [optional] |
| **certify_box17_d** | **Boolean** | Indicates certification for box 17D. | [optional] |
| **certify_box17_e** | **Boolean** | Indicates certification for box 17E. | [optional] |
| **certify_box18_a** | **Boolean** | Indicates certification for box 18A. | [optional] |
| **certify_box18_b** | **Boolean** | Indicates certification for box 18B. | [optional] |
| **certify_box18_c** | **Boolean** | Indicates certification for box 18C. | [optional] |
| **certify_box18_d** | **Boolean** | Indicates certification for box 18D. | [optional] |
| **certify_box18_e** | **Boolean** | Indicates certification for box 18E. | [optional] |
| **certify_box18_f** | **Boolean** | Indicates certification for box 18F. | [optional] |
| **certify_box19_a** | **Boolean** | Indicates certification for box 19A. | [optional] |
| **certify_box19_b** | **Boolean** | Indicates certification for box 19B. | [optional] |
| **certify_box19_c** | **Boolean** | Indicates certification for box 19C. | [optional] |
| **certify_box19_d** | **Boolean** | Indicates certification for box 19D. | [optional] |
| **certify_box19_e** | **Boolean** | Indicates certification for box 19E. | [optional] |
| **certify_box19_f** | **Boolean** | Indicates certification for box 19F. | [optional] |
| **certify_box20** | **Boolean** | Indicates certification for box 20. | [optional] |
| **certify_box21_a** | **Boolean** | Indicates certification for box 21A. | [optional] |
| **certify_box21_b** | **Boolean** | Indicates certification for box 21B. | [optional] |
| **certify_box21_c** | **Boolean** | Indicates certification for box 21C. | [optional] |
| **certify_box21_d** | **Boolean** | Indicates certification for box 21D. | [optional] |
| **certify_box21_e** | **Boolean** | Indicates certification for box 21E. | [optional] |
| **certify_box21_f** | **Boolean** | Indicates certification for box 21F. | [optional] |
| **box23_a_name_sponsoring_entity** | **String** | The name of the sponsoring entity for box 23A. | [optional] |
| **certify_box23_b** | **Boolean** | Indicates certification for box 23B. | [optional] |
| **certify_box23_c** | **Boolean** | Indicates certification for box 23C. | [optional] |
| **certify_box25** | **Boolean** | Indicates certification for box 25. | [optional] |
| **box27_a_name_sponsoring_entity** | **String** | The name of the sponsoring entity for box 27A. | [optional] |
| **certify_box27_b** | **Boolean** | Indicates certification for box 27B. | [optional] |
| **certify_box28** | **Boolean** | Indicates certification for box 28. | [optional] |
| **certify_box29** | **Boolean** | Indicates certification for box 29. | [optional] |
| **certify_box30_a** | **Boolean** | Indicates certification for box 30A. | [optional] |
| **certify_box30_b** | **Boolean** | Indicates certification for box 30B. | [optional] |
| **certify_box30_c** | **Boolean** | Indicates certification for box 30C. | [optional] |
| **box32_iga_country** | **String** | The IGA country information for box 32. | [optional] |
| **box32_iga_type** | **String** | The IGA type information for box 32. | [optional] |
| **box32_iga_treated_as** | **String** | The IGA treatment information for box 32. | [optional] |
| **box32_trustee_or_sponsor** | **String** | The trustee or sponsor information for box 32. | [optional] |
| **box32_trustee_is_foreign** | **Boolean** | Indicates whether the trustee is foreign for box 32. | [optional] |
| **certify_box33_a** | **Boolean** | Indicates certification for box 33A. | [optional] |
| **certify_box33_b** | **Boolean** | Indicates certification for box 33B. | [optional] |
| **certify_box33_c** | **Boolean** | Indicates certification for box 33C. | [optional] |
| **certify_box33_d** | **Boolean** | Indicates certification for box 33D. | [optional] |
| **certify_box33_e** | **Boolean** | Indicates certification for box 33E. | [optional] |
| **certify_box33_f** | **Boolean** | Indicates certification for box 33F. | [optional] |
| **box37_a_securities_market** | **String** | The securities market information for box 37A. | [optional] |
| **box37_b_name_of_entity** | **String** | The name of the entity for box 37B. | [optional] |
| **box37_b_securities_market** | **String** | The securities market information for box 37B. | [optional] |
| **certify_box40** | **Boolean** | Indicates certification for box 40. | [optional] |
| **box41_sponsoring_entity** | **String** | The sponsoring entity information for box 41. | [optional] |
| **certify_box42** | **Boolean** | Indicates certification for box 42. | [optional] |
| **box35_formed_on_date** | **Date** |  | [optional] |
| **box36_filed_on_date** | **Date** |  | [optional] |
| **tin_match_status** | **String** | The status of the TIN match. | [optional] |
| **signature** | **String** | The signature itself | [optional] |
| **business_classification** | **String** | The classification of the business. | [optional] |
| **business_name** | **String** | The name of the business associated with the form. | [optional] |
| **business_other** | **String** |  | [optional] |
| **exempt_payee_code** | **String** |  | [optional] |
| **exempt_fatca_code** | **String** |  | [optional] |
| **account_number** | **String** | The account number associated with the form. | [optional] |
| **foreign_country_indicator** | **Boolean** | Indicates whether the individual or entity is in a foreign country. | [optional] |
| **foreign_address** | **String** | The foreign address of the individual or entity. | [optional] |
| **backup_withholding** | **Boolean** | Indicates whether backup withholding applies. | [optional] |
| **is1099able** | **Boolean** |  | [optional] |
| **foreign_partner_owner_or_beneficiary** | **Boolean** | Indicates whether the individual is a foreign partner, owner, or beneficiary. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::W8BenFormDataModel.new(
  type: w8ben,
  signed_date: 2023-01-15T00:00Z,
  birthday: null,
  foreign_tin_not_required: null,
  archived: false,
  reference_id: REF67890,
  company_id: 4004,
  display_name: International Trading,
  email: info@internationaltrading.com,
  type_of_tin: null,
  name: International Trading Co.,
  residence_address: 789 Global St,
  residence_city: Capital City,
  residence_state: DC,
  residence_postal_code: 20001,
  residence_country: USA,
  residence_is_mailing: false,
  mailing_address: P.O. Box 456,
  mailing_city: Capital City,
  mailing_state: DC,
  mailing_postal_code: 20002,
  mailing_country: USA,
  tin: 34-5678901,
  foreign_tin: FTIN56789,
  reference_number: W8BEN45678,
  citizenship_country: USA,
  treaty_country: Canada,
  treaty_article: Article 12,
  withholding_rate: 15%,
  income_type: Dividend,
  treaty_reasons: Reduced withholding,
  signer_name: Alice Johnson,
  signer_capacity: Authorized Representative,
  e_delivery_consented_at: 2023-01-15T10:00Z,
  created_at: 2023-01-10T08:00Z,
  updated_at: 2023-02-05T09:30Z,
  employee_first_name: Jane,
  employee_middle_name: A.,
  employee_last_name: Smith,
  employee_name_suffix: Jr.,
  address: 123 Main St,
  city: Anytown,
  state: CA,
  zip: 90210,
  box3_marital_status: Married,
  box4_last_name_differs: false,
  box5_num_allowances: 3,
  other_dependents: 1,
  non_job_income: 5000.0,
  deductions: 2000.0,
  box6_additional_withheld: 150.0,
  box7_exempt_from_withholding: false,
  office_code: OC12345,
  disregarded_entity_chapter4_fatca_status: null,
  disregarded_address: null,
  disregarded_city: null,
  disregarded_state: null,
  disregarded_postal_code: null,
  disregarded_country: null,
  ftin_not_required: null,
  giin: null,
  chapter3_entity_type: Partnership,
  chapter4_fatca_status: Compliant,
  disregarded_entity: Subsidiary Finance,
  disregarded_entity_giin: GIIN78901234,
  benefit_limitation: Treaty Benefit,
  part4_sponsoring_entity: Parent Company,
  part4_sponsoring_entity_giin: GIIN11223344,
  part7_sponsoring_entity: Affiliated Organization,
  part12_iga_country: USA,
  part12_iga_type: Model 1,
  part12_fatca_status_under_iga_annex_ii: Registered Deemed Compliant,
  part12_trustee_name: Trustee Inc.,
  part12_trustee_is_foreign: false,
  part12_model2_iga_giin: GIIN33445566,
  box37_a_exchange: NYSE,
  box37_b_exchange: NASDAQ,
  box37_b_entity: Trading Partner,
  part28_sponsoring_entity: Global Trust,
  part28_sponsoring_entity_giin: GIIN99887766,
  making_treaty_claim: false,
  certify_box14_a: false,
  certify_box14_b: false,
  certify_box14_c: false,
  certify_box17_1: false,
  certify_box17_2: false,
  certify_box18: false,
  certify_box19: false,
  certify_box21: false,
  certify_box22: false,
  certify_box23: false,
  certify_box24_a: false,
  certify_box24_b: false,
  certify_box24_c: false,
  certify_box24_d: false,
  certify_box25_a: false,
  certify_box25_b: false,
  certify_box25_c: false,
  certify_box26: false,
  certify_box27: false,
  certify_box28_a: false,
  certify_box28_b: false,
  certify_box29_a: false,
  certify_box29_b: false,
  certify_box29_c: false,
  certify_box29_d: false,
  certify_box29_e: false,
  certify_box29_f: false,
  certify_box30: false,
  certify_box31: false,
  certify_box32: false,
  certify_box33: false,
  certify_box34: false,
  certify_box35: false,
  certify_box36: false,
  certify_box37_a: false,
  certify_box37_b: false,
  certify_box38: false,
  certify_box39: false,
  certify_box40_a: false,
  certify_box40_b: false,
  certify_box40_c: false,
  certify_box41: false,
  certify_box43: false,
  certify_part29_signature: false,
  part19_formation_or_resolution_date: null,
  part20_filing_date: null,
  part21_determination_date: null,
  substantial_us_owners: [],
  ein: null,
  ein_type: null,
  certify_box14: false,
  certify_box15_a: false,
  certify_box15_b: false,
  certify_box15_c: false,
  certify_box15_d: false,
  certify_box15_e: false,
  certify_box15_f: false,
  certify_box15_g: false,
  certify_box15_h: false,
  certify_box15_i: false,
  certify_box16_a: false,
  box16_b_qdd_corporate: false,
  box16_b_qdd_partnership: false,
  box16_b_qdd_disregarded_entity: false,
  certify_box17_a: false,
  certify_box17_b: false,
  certify_box17_c: false,
  certify_box17_d: false,
  certify_box17_e: false,
  certify_box18_a: false,
  certify_box18_b: false,
  certify_box18_c: false,
  certify_box18_d: false,
  certify_box18_e: false,
  certify_box18_f: false,
  certify_box19_a: false,
  certify_box19_b: false,
  certify_box19_c: false,
  certify_box19_d: false,
  certify_box19_e: false,
  certify_box19_f: false,
  certify_box20: false,
  certify_box21_a: false,
  certify_box21_b: false,
  certify_box21_c: false,
  certify_box21_d: false,
  certify_box21_e: false,
  certify_box21_f: false,
  box23_a_name_sponsoring_entity: null,
  certify_box23_b: false,
  certify_box23_c: false,
  certify_box25: false,
  box27_a_name_sponsoring_entity: null,
  certify_box27_b: false,
  certify_box28: false,
  certify_box29: false,
  certify_box30_a: false,
  certify_box30_b: false,
  certify_box30_c: false,
  box32_iga_country: null,
  box32_iga_type: null,
  box32_iga_treated_as: null,
  box32_trustee_or_sponsor: null,
  box32_trustee_is_foreign: false,
  certify_box33_a: false,
  certify_box33_b: false,
  certify_box33_c: false,
  certify_box33_d: false,
  certify_box33_e: false,
  certify_box33_f: false,
  box37_a_securities_market: null,
  box37_b_name_of_entity: null,
  box37_b_securities_market: null,
  certify_box40: false,
  box41_sponsoring_entity: null,
  certify_box42: false,
  box35_formed_on_date: null,
  box36_filed_on_date: null,
  tin_match_status: Match,
  signature: null,
  business_classification: LLC,
  business_name: Doe Enterprises,
  business_other: null,
  exempt_payee_code: null,
  exempt_fatca_code: null,
  account_number: ACC123456,
  foreign_country_indicator: false,
  foreign_address: null,
  backup_withholding: false,
  is1099able: null,
  foreign_partner_owner_or_beneficiary: false
)
```

