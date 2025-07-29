# AvalaraSdk::A1099::V2::W8ImyFormResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the individual or entity associated with the form. | [optional] |
| **citizenship_country** | **String** | The country of citizenship. | [optional] |
| **disregarded_entity** | **String** | The name of the disregarded entity receiving the payment (if applicable). | [optional] |
| **entity_type** | **String** | The entity type. | [optional] |
| **fatca_status** | **String** | The FATCA status. | [optional] |
| **residence_address** | **String** | The residential address of the individual or entity. | [optional] |
| **residence_city** | **String** | The city of residence. | [optional] |
| **residence_state** | **String** | The state of residence. | [optional] |
| **residence_zip** | **String** | The ZIP code of the residence. | [optional] |
| **residence_country** | **String** | The country of residence. | [optional] |
| **residence_is_mailing** | **Boolean** | Indicates whether the residence address is also the mailing address. | [optional] |
| **mailing_address** | **String** | The mailing address. | [optional] |
| **mailing_city** | **String** | The city of the mailing address. | [optional] |
| **mailing_state** | **String** | The state of the mailing address. | [optional] |
| **mailing_zip** | **String** | The ZIP code of the mailing address. | [optional] |
| **mailing_country** | **String** | The country of the mailing address. | [optional] |
| **tin_type** | **String** | The type of TIN provided. | [optional] |
| **tin** | **String** | The taxpayer identification number (TIN). | [optional] |
| **giin** | **String** | The global intermediary identification number (GIIN). | [optional] |
| **foreign_tin** | **String** | The foreign taxpayer identification number (TIN). | [optional] |
| **reference_number** | **String** | A reference number for the form. | [optional] |
| **disregarded_entity_fatca_status** | **String** | The FATCA status of disregarded entity or branch receiving payment. | [optional] |
| **disregarded_address** | **String** | The address for disregarded entities. | [optional] |
| **disregarded_city** | **String** | The city for disregarded entities. | [optional] |
| **disregarded_state** | **String** | The state for disregarded entities. | [optional] |
| **disregarded_zip** | **String** | The ZIP code for disregarded entities. | [optional] |
| **disregarded_country** | **String** | The country for disregarded entities. | [optional] |
| **disregarded_entity_giin** | **String** | The GIIN for disregarded entities. | [optional] |
| **qualified_intermediary_certification** | **Boolean** | Certifies that the entity is a Qualified Intermediary (QI) acting in accordance with its QI Agreement,  providing required withholding statements and documentation for relevant tax withholding purposes. | [optional] |
| **qi_primary_withholding_responsibility_certification** | **Boolean** | Certifies that the Qualified Intermediary assumes primary withholding responsibility  under chapters 3 and 4 for the specified accounts. | [optional] |
| **qi_withholding_responsibility_for_ptp_sales_certification** | **Boolean** | Certifies that the Qualified Intermediary assumes primary withholding and reporting responsibility under section 1446(f)  for amounts realized from sales of interests in publicly traded partnerships. | [optional] |
| **qi_nominee_withholding_responsibility_for_ptp_distributions_certification** | **Boolean** | Certifies that the Qualified Intermediary assumes primary withholding responsibility as a nominee  under Regulations section 1.1446-4(b)(3) for publicly traded partnership distributions. | [optional] |
| **qi_securities_lender_substitute_dividend_withholding_certification** | **Boolean** | Certifies that the Qualified Intermediary is acting as a qualified securities lender and assumes primary withholding  and reporting responsibilities for U.S. source substitute dividend payments. | [optional] |
| **qi_withholding_and1099_reporting_responsibility_certification** | **Boolean** | Certifies that the Qualified Intermediary assumes primary withholding under chapters 3 and 4, and primary Form 1099 reporting  and backup withholding responsibility for U.S. source interest and substitute interest payments. | [optional] |
| **qi_form1099_or_fatca_reporting_responsibility_certification** | **Boolean** | Certifies that the Qualified Intermediary assumes Form 1099 reporting and backup withholding responsibility,  or FATCA reporting responsibility as a participating or registered deemed-compliant FFI,  for accounts held by specified U.S. persons. | [optional] |
| **qi_opt_out_of_form1099_reporting_certification** | **Boolean** | Certifies that the Qualified Intermediary does not assume primary Form 1099 reporting  and backup withholding responsibility for the accounts associated with this form. | [optional] |
| **qi_withholding_rate_pool_certification** | **Boolean** | Certifies that the Qualified Intermediary meets the requirements for allocating payments  to a chapter 4 withholding rate pool of U.S. payees under Regulations section 1.6049-4(c)(4)(iii). | [optional] |
| **qi_intermediary_or_flow_through_entity_documentation_certification** | **Boolean** | Certifies that the Qualified Intermediary has obtained or will obtain documentation confirming the status of any intermediary  or flow-through entity as a participating FFI, registered deemed-compliant FFI,  or QI for U.S. payees in a chapter 4 withholding rate pool. | [optional] |
| **qualified_derivatives_dealer_certification** | **Boolean** | Certifies that the Qualified Derivatives Dealer (QDD) is approved by the IRS and assumes primary withholding  and reporting responsibilities for payments related to potential section 871(m) transactions. | [optional] |
| **qdd_corporation** | **Boolean** | Indicates QDD classification is Corporation. | [optional] |
| **qdd_partnership** | **Boolean** | Indicates QDD classification is Partnership. | [optional] |
| **qdd_disregarded_entity** | **Boolean** | Indicates QDD classification is Disregarded Entity. | [optional] |
| **nonqualified_intermediary_certification** | **Boolean** | Certifies that the entity is not acting as a Qualified Intermediary  and is not acting for its own account for the accounts covered by this form. | [optional] |
| **nqi_withholding_statement_transmission_certification** | **Boolean** | Certifies that the nonqualified intermediary is submitting this form to transmit withholding certificates  and/or other required documentation along with a withholding statement. | [optional] |
| **nqi_withholding_rate_pool_compliance_certification** | **Boolean** | Certifies that the nonqualified intermediary meets the requirements of Regulations section 1.6049-4(c)(4)(iii)  for U.S. payees included in a withholding rate pool, excluding publicly traded partnership distributions. | [optional] |
| **nqi_qualified_securities_lender_certification** | **Boolean** | Certifies that the nonqualified intermediary is acting as a qualified securities lender (not as a QI)  and assumes primary withholding and reporting responsibilities for U.S. source substitute dividend payments. | [optional] |
| **nqi_alternative_withholding_statement_verification_certification** | **Boolean** | Certifies that the nonqualified intermediary has verified, or will verify,  all information on alternative withholding statements for consistency with account data to determine the correct withholding rate,  as required under sections 1441 or 1471. | [optional] |
| **territory_financial_institution_certification** | **Boolean** | Certifies that the entity is a financial institution (other than an investment entity) that is incorporated  or organized under the laws of a possession of the United States. | [optional] |
| **tfi_treated_as_us_person_certification** | **Boolean** | Certifies that the territory financial institution agrees to be treated as a U.S. person  for chapters 3 and 4 purposes concerning reportable amounts and withholdable payments. | [optional] |
| **tfi_withholding_statement_transmission_certification** | **Boolean** | Certifies that the territory financial institution is transmitting withholding certificates or other required documentation  and has provided or will provide a withholding statement for reportable or withholdable payments. | [optional] |
| **tfi_treated_as_us_person_for_ptp_sales_certification** | **Boolean** | Certifies that the territory financial institution agrees to be treated as a U.S. person  under Regulations section 1.1446(f)-4(a)(2)(i)(B) for amounts realized from sales of publicly traded partnership interests. | [optional] |
| **tfi_nominee_us_person_for_ptp_distributions_certification** | **Boolean** | Certifies that the territory financial institution agrees to be treated as a U.S. person  and as a nominee for purposes of publicly traded partnership distributions under the applicable regulations. | [optional] |
| **tfi_not_nominee_for_ptp_distributions_certification** | **Boolean** | Certifies that the territory financial institution is not acting as a nominee for publicly traded partnership distributions  and is providing withholding statements for those distributions. | [optional] |
| **us_branch_non_effectively_connected_income_certification** | **Boolean** | Certifies that the U.S. branch is receiving reportable or withholdable payments  that are not effectively connected income, PTP distributions, or proceeds from PTP sales. | [optional] |
| **us_branch_agreement_to_be_treated_as_us_person_certification** | **Boolean** | Certifies that the U.S. branch of a foreign bank or insurance company agrees to be treated as a U.S. person  for reportable amounts or withholdable payments under the applicable regulations. | [optional] |
| **us_branch_withholding_statement_and_compliance_certification** | **Boolean** | Certifies that the U.S. branch is transmitting required documentation  and withholding statements for reportable or withholdable payments and is applying the appropriate FATCA regulations. | [optional] |
| **us_branch_acting_as_us_person_for_ptp_sales_certification** | **Boolean** | Certifies that the U.S. branch is acting as a U.S. person  for purposes of amounts realized from sales of publicly traded partnership interests under the applicable regulations. | [optional] |
| **us_branch_nominee_for_ptp_distributions_certification** | **Boolean** | Certifies that the U.S. branch is treated as a U.S. person  and as a nominee for publicly traded partnership distributions under the applicable regulations. | [optional] |
| **us_branch_not_nominee_for_ptp_distributions_certification** | **Boolean** | Certifies that the U.S. branch is not acting as a nominee for publicly traded partnership distributions  and is providing the required withholding statements. | [optional] |
| **withholding_foreign_partnership_or_trust_certification** | **Boolean** | Certifies that the entity is a withholding foreign partnership (WP) or a withholding foreign trust (WT)  that is compliant with the terms of its WP or WT agreement. | [optional] |
| **nonwithholding_foreign_entity_withholding_statement_certification** | **Boolean** | Certifies that the entity is a nonwithholding foreign partnership or trust,  providing the form for non-effectively connected payments and transmitting required withholding documentation for chapters 3 and 4. | [optional] |
| **foreign_entity_partner_in_lower_tier_partnership_certification** | **Boolean** | Certifies that the entity is a foreign partnership or grantor trust acting as a partner in a lower-tier partnership  and is submitting the form for purposes of section 1446(a). | [optional] |
| **foreign_partnership_amount_realized_section1446_f_certification** | **Boolean** | Certifies that the entity is a foreign partnership receiving an amount realized  from the transfer of a partnership interest for purposes of section 1446(f). | [optional] |
| **foreign_partnership_modified_amount_realized_certification** | **Boolean** | Certifies that the foreign partnership is providing a withholding statement for a modified amount realized  from the transfer of a partnership interest, when applicable. | [optional] |
| **foreign_grantor_trust_amount_realized_allocation_certification** | **Boolean** | Certifies that the foreign grantor trust is submitting the form on behalf of each grantor or owner  and providing a withholding statement to allocate the amount realized in accordance with the regulations. | [optional] |
| **alternative_withholding_statement_reliance_certification** | **Boolean** | Certifies that the entity may rely on the information in all associated withholding certificates  under the applicable standards of knowledge in sections 1441 or 1471 when providing an alternative withholding statement. | [optional] |
| **np_ffi_with_exempt_beneficial_owners_certification** | **Boolean** | Certifies that the nonparticipating FFI is transmitting withholding documentation  and providing a statement allocating payment portions to exempt beneficial owners. | [optional] |
| **ffi_sponsoring_entity** | **String** | The name of the entity that sponsors the foreign financial institution (FFI). | [optional] |
| **investment_entity_certification** | **Boolean** | Certifies that the entity is an investment entity, not a QI, WP, or WT, and has an agreement with a sponsoring entity. | [optional] |
| **controlled_foreign_corporation_certification** | **Boolean** | Certifies that the entity is a controlled foreign corporation sponsored by a U.S. financial institution, not a QI, WP, or WT,  and shares a common electronic account system for full transparency. | [optional] |
| **owner_documented_ffi_certification** | **Boolean** | Certifies that the FFI meets all requirements to qualify as an owner-documented FFI, including restrictions on activities,  ownership, and account relationships. | [optional] |
| **owner_documented_ffi_reporting_statement_certification** | **Boolean** | Certifies that the FFI will provide a complete owner reporting statement  and required documentation for each relevant owner or debt holder. | [optional] |
| **owner_documented_ffi_auditor_letter_certification** | **Boolean** | Certifies that the FFI has provided or will provide an auditor’s letter and required owner documentation,  including a reporting statement and Form W-9s, to meet owner-documented FFI requirements under the regulations. | [optional] |
| **compliant_nonregistering_local_bank_certification** | **Boolean** | Certifies that the FFI operates solely as a limited bank or credit union within its country, meets asset thresholds,  and has no foreign operations or affiliations outside its country of organization. | [optional] |
| **compliant_ffi_low_value_accounts_certification** | **Boolean** | Certifies that the FFI is not primarily engaged in investment activities, maintains only low-value accounts,  and has limited total assets within its group. | [optional] |
| **sponsored_closely_held_entity_sponsoring_entity** | **String** | The name of sponsoring entity for a certified deemed-compliant, closely held investment vehicle. | [optional] |
| **sponsored_closely_held_investment_vehicle_certification** | **Boolean** | Certifies that the entity is a sponsored investment entity with 20 or fewer individual owners,  and that all compliance obligations are fulfilled by the sponsoring entity. | [optional] |
| **compliant_limited_life_debt_entity_certification** | **Boolean** | Certifies that the entity qualifies as a limited life debt investment entity based on its formation date, issuance terms,  and compliance with regulatory requirements. | [optional] |
| **investment_entity_no_financial_accounts_certification** | **Boolean** | Certifies that the entity is a financial institution solely because it is an investment entity under regulations  and the entity does not maintain financial accounts. | [optional] |
| **restricted_distributor_certification** | **Boolean** | Certifies that the entity qualifies as a restricted distributor based on its operations, customer base, regulatory compliance,  and financial and geographic limitations. | [optional] |
| **restricted_distributor_agreement_certification** | **Boolean** | Certifies that the entity is, and has been, bound by distribution agreements prohibiting sales of fund interests to  specified U.S. persons and certain non-U.S. entities. | [optional] |
| **restricted_distributor_preexisting_sales_compliance_certification** | **Boolean** | Certifies that the entity complies with distribution restrictions for U.S.-linked investors  and has addressed any preexisting sales in accordance with FATCA regulations. | [optional] |
| **foreign_central_bank_of_issue_certification** | **Boolean** | Certifies that the entity is treated as the beneficial owner of the payment solely  for purposes of chapter 4 under Regulations section 1.1471-6(d)(4). | [optional] |
| **nonreporting_iga_ffi_certification** | **Boolean** | Certifies that the entity meets the requirements to be considered a nonreporting financial institution to an applicable IGA. | [optional] |
| **iga_country** | **String** | The country for the applicable IGA with the United States. | [optional] |
| **iga_model** | **String** | The applicable IGA model. | [optional] |
| **iga_legal_status_treatment** | **String** | Specifies how the applicable IGA is treated under the IGA provisions or Treasury regulations. | [optional] |
| **iga_ffi_trustee_or_sponsor** | **String** | The trustee or sponsor name for the nonreporting IGA FFI. | [optional] |
| **iga_ffi_trustee_is_foreign** | **Boolean** | Indicates whether the trustee for the nonreporting IGA FFI is foreign. | [optional] |
| **treaty_qualified_pension_fund_certification** | **Boolean** | Certifies that the entity is a pension or retirement fund established in a treaty country  and is entitled to treaty benefits on U.S. source income. | [optional] |
| **qualified_retirement_fund_certification** | **Boolean** | Certifies that the entity is a government-regulated retirement fund meeting specific requirements for contributions, tax exemption,  beneficiary limits, and distribution restrictions. | [optional] |
| **narrow_participation_retirement_fund_certification** | **Boolean** | Certifies that the entity is a government-regulated retirement fund with fewer than 50 participants, limited foreign ownership,  and employer sponsorship that is not from investment entities or passive NFFEs. | [optional] |
| **section401_a_equivalent_pension_plan_certification** | **Boolean** | Certifies that the entity is formed under a pension plan meeting section 401(a) requirements, except for being U.S.-trust funded. | [optional] |
| **investment_entity_for_retirement_funds_certification** | **Boolean** | Certifies that the entity is established solely to earn income for the benefit of qualifying retirement funds  or accounts under applicable FATCA regulations or IGAs. | [optional] |
| **exempt_beneficial_owner_sponsored_retirement_fund_certification** | **Boolean** | Certifies that the entity is established and sponsored by a qualifying exempt beneficial owner to provide retirement, disability,  or death benefits to individuals based on services performed for the sponsor. | [optional] |
| **excepted_nonfinancial_group_entity_certification** | **Boolean** | Certifies that the entity is a holding company, treasury center, or captive finance company operating within a nonfinancial group  and not functioning as an investment or financial institution. | [optional] |
| **excepted_nonfinancial_start_up_certification** | **Boolean** | Certifies that the entity is a recently formed startup NFFE investing in a non-financial business  and is not operating as or presenting itself as an investment fund. | [optional] |
| **startup_formation_or_resolution_date** | **Date** | The date the start-up company was formed on (or, in case of new line of business, the date of board resolution approving the  new line of business). | [optional] |
| **excepted_nonfinancial_entity_in_liquidation_or_bankruptcy_certification** | **Boolean** | Certifies that the entity is in liquidation, reorganization, or bankruptcy and intends to operate as a nonfinancial entity,  with supporting documentation available if the process exceeds three years. | [optional] |
| **nonfinancial_entity_filing_date** | **Date** | The filed date for a plan of reorganization, liquidation or bankruptcy. | [optional] |
| **publicly_traded_nffe_certification** | **Boolean** | Certifies that the entity is a foreign corporation that is not a financial institution  and whose stock is regularly traded on an established securities market. | [optional] |
| **publicly_traded_nffe_securities_market** | **String** | The name of the securities market where the corporation&#39;s stock is regularly traded. | [optional] |
| **nffe_affiliate_of_publicly_traded_entity_certification** | **Boolean** | Certifies that the entity is a foreign corporation that is not a financial institution  and is affiliated with a publicly traded entity within the same expanded affiliated group. | [optional] |
| **publicly_traded_entity** | **String** | The name of the affiliated entity whose stock is regularly traded on an established securities market. | [optional] |
| **nffe_affiliate_of_publicly_traded_entity_securities_market** | **String** | The name of the established securities market where the affiliated entity&#39;s stock is traded. | [optional] |
| **excepted_territory_nffe_certification** | **Boolean** | Certifies that the entity is organized in a U.S. possession, is not engaged in financial activities,  and is entirely owned by bona fide residents of that possession. | [optional] |
| **active_nffe_certification** | **Boolean** | Certifies that the entity is a foreign non-financial institution with less than 50% passive income  and less than 50% of its assets producing or held to produce passive income. | [optional] |
| **passive_nffe_certification** | **Boolean** | Certifies that the entity is a foreign non-financial entity that does not qualify for any other NFFE category  and is not a financial institution. | [optional] |
| **sponsored_direct_reporting_nffe_certification** | **Boolean** | Certifies that the entity is a sponsored direct reporting NFFE. | [optional] |
| **direct_reporting_nffe_sponsoring_entity** | **String** | The name of the entity that sponsors the direct reporting NFFE. | [optional] |
| **signer_name** | **String** | The name of the signer. | [optional] |
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

instance = AvalaraSdk::A1099::V2::W8ImyFormResponse.new(
  name: Global Financials LLC,
  citizenship_country: USA,
  disregarded_entity: null,
  entity_type: Partnership,
  fatca_status: Compliant,
  residence_address: 321 Wealth Ave,
  residence_city: Finance City,
  residence_state: TX,
  residence_zip: 75001,
  residence_country: USA,
  residence_is_mailing: false,
  mailing_address: P.O. Box 789,
  mailing_city: Finance City,
  mailing_state: TX,
  mailing_zip: 75002,
  mailing_country: USA,
  tin_type: EIN,
  tin: 123-45-6789,
  giin: GIIN12345678,
  foreign_tin: null,
  reference_number: W8IMY56789,
  disregarded_entity_fatca_status: null,
  disregarded_address: null,
  disregarded_city: null,
  disregarded_state: null,
  disregarded_zip: null,
  disregarded_country: null,
  disregarded_entity_giin: null,
  qualified_intermediary_certification: false,
  qi_primary_withholding_responsibility_certification: false,
  qi_withholding_responsibility_for_ptp_sales_certification: false,
  qi_nominee_withholding_responsibility_for_ptp_distributions_certification: false,
  qi_securities_lender_substitute_dividend_withholding_certification: false,
  qi_withholding_and1099_reporting_responsibility_certification: false,
  qi_form1099_or_fatca_reporting_responsibility_certification: false,
  qi_opt_out_of_form1099_reporting_certification: false,
  qi_withholding_rate_pool_certification: false,
  qi_intermediary_or_flow_through_entity_documentation_certification: false,
  qualified_derivatives_dealer_certification: false,
  qdd_corporation: false,
  qdd_partnership: false,
  qdd_disregarded_entity: false,
  nonqualified_intermediary_certification: false,
  nqi_withholding_statement_transmission_certification: false,
  nqi_withholding_rate_pool_compliance_certification: false,
  nqi_qualified_securities_lender_certification: false,
  nqi_alternative_withholding_statement_verification_certification: false,
  territory_financial_institution_certification: false,
  tfi_treated_as_us_person_certification: false,
  tfi_withholding_statement_transmission_certification: false,
  tfi_treated_as_us_person_for_ptp_sales_certification: false,
  tfi_nominee_us_person_for_ptp_distributions_certification: false,
  tfi_not_nominee_for_ptp_distributions_certification: false,
  us_branch_non_effectively_connected_income_certification: false,
  us_branch_agreement_to_be_treated_as_us_person_certification: false,
  us_branch_withholding_statement_and_compliance_certification: false,
  us_branch_acting_as_us_person_for_ptp_sales_certification: false,
  us_branch_nominee_for_ptp_distributions_certification: false,
  us_branch_not_nominee_for_ptp_distributions_certification: false,
  withholding_foreign_partnership_or_trust_certification: false,
  nonwithholding_foreign_entity_withholding_statement_certification: false,
  foreign_entity_partner_in_lower_tier_partnership_certification: false,
  foreign_partnership_amount_realized_section1446_f_certification: false,
  foreign_partnership_modified_amount_realized_certification: false,
  foreign_grantor_trust_amount_realized_allocation_certification: false,
  alternative_withholding_statement_reliance_certification: false,
  np_ffi_with_exempt_beneficial_owners_certification: false,
  ffi_sponsoring_entity: null,
  investment_entity_certification: false,
  controlled_foreign_corporation_certification: false,
  owner_documented_ffi_certification: false,
  owner_documented_ffi_reporting_statement_certification: false,
  owner_documented_ffi_auditor_letter_certification: false,
  compliant_nonregistering_local_bank_certification: false,
  compliant_ffi_low_value_accounts_certification: false,
  sponsored_closely_held_entity_sponsoring_entity: null,
  sponsored_closely_held_investment_vehicle_certification: false,
  compliant_limited_life_debt_entity_certification: false,
  investment_entity_no_financial_accounts_certification: false,
  restricted_distributor_certification: false,
  restricted_distributor_agreement_certification: false,
  restricted_distributor_preexisting_sales_compliance_certification: false,
  foreign_central_bank_of_issue_certification: false,
  nonreporting_iga_ffi_certification: false,
  iga_country: null,
  iga_model: null,
  iga_legal_status_treatment: null,
  iga_ffi_trustee_or_sponsor: null,
  iga_ffi_trustee_is_foreign: null,
  treaty_qualified_pension_fund_certification: false,
  qualified_retirement_fund_certification: false,
  narrow_participation_retirement_fund_certification: false,
  section401_a_equivalent_pension_plan_certification: false,
  investment_entity_for_retirement_funds_certification: false,
  exempt_beneficial_owner_sponsored_retirement_fund_certification: false,
  excepted_nonfinancial_group_entity_certification: false,
  excepted_nonfinancial_start_up_certification: false,
  startup_formation_or_resolution_date: null,
  excepted_nonfinancial_entity_in_liquidation_or_bankruptcy_certification: false,
  nonfinancial_entity_filing_date: null,
  publicly_traded_nffe_certification: false,
  publicly_traded_nffe_securities_market: null,
  nffe_affiliate_of_publicly_traded_entity_certification: false,
  publicly_traded_entity: null,
  nffe_affiliate_of_publicly_traded_entity_securities_market: null,
  excepted_territory_nffe_certification: false,
  active_nffe_certification: false,
  passive_nffe_certification: false,
  sponsored_direct_reporting_nffe_certification: false,
  direct_reporting_nffe_sponsoring_entity: null,
  signer_name: null,
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

