=begin
#Avalara 1099 & W-9 API Definition

### 🔐 Authentication  Generate a **license key** from: *[Avalara Portal](https://www.avalara.com/us/en/signin.html) → Settings → License and API Keys*.  [More on authentication methods](https://developer.avalara.com/avatax-dm-combined-erp/common-setup/authentication/authentication-methods/)  [Test your credentials](https://developer.avalara.com/avatax/test-credentials/)  ## 📘 API & SDK Documentation  [Avalara SDK (.NET) on GitHub](https://github.com/avadev/Avalara-SDK-DotNet#avalarasdk--the-unified-c-library-for-next-gen-avalara-services)  [Code Examples – 1099 API](https://github.com/avadev/Avalara-SDK-DotNet/blob/main/docs/A1099/V2/Class1099IssuersApi.md#call1099issuersget)


=end

require 'date'
require 'time'

module AvalaraSdk::A1099::V2
      class W8ImyFormResponse
    # The form type (always \"W8Imy\" for this model).
    attr_accessor :type

    # The name of the individual or entity associated with the form.
    attr_accessor :name

    # The country of citizenship.
    attr_accessor :citizenship_country

    # The name of the disregarded entity receiving the payment (if applicable).
    attr_accessor :disregarded_entity

    # The entity type.
    attr_accessor :entity_type

    # The FATCA status.
    attr_accessor :fatca_status

    # The residential address of the individual or entity.
    attr_accessor :residence_address

    # The city of residence.
    attr_accessor :residence_city

    # The state of residence.
    attr_accessor :residence_state

    # The ZIP code of the residence.
    attr_accessor :residence_zip

    # The country of residence.
    attr_accessor :residence_country

    # Indicates whether the residence address is also the mailing address.
    attr_accessor :residence_is_mailing

    # The mailing address.
    attr_accessor :mailing_address

    # The city of the mailing address.
    attr_accessor :mailing_city

    # The state of the mailing address.
    attr_accessor :mailing_state

    # The ZIP code of the mailing address.
    attr_accessor :mailing_zip

    # The country of the mailing address.
    attr_accessor :mailing_country

    # Tax Identification Number (TIN) type.
    attr_accessor :tin_type

    # The taxpayer identification number (TIN).
    attr_accessor :tin

    # The global intermediary identification number (GIIN).
    attr_accessor :giin

    # The foreign taxpayer identification number (TIN).
    attr_accessor :foreign_tin

    # A reference number for the form.
    attr_accessor :reference_number

    # The FATCA status of disregarded entity or branch receiving payment.
    attr_accessor :disregarded_entity_fatca_status

    # The address for disregarded entities.
    attr_accessor :disregarded_address

    # The city for disregarded entities.
    attr_accessor :disregarded_city

    # The state for disregarded entities.
    attr_accessor :disregarded_state

    # The ZIP code for disregarded entities.
    attr_accessor :disregarded_zip

    # The country for disregarded entities.
    attr_accessor :disregarded_country

    # The GIIN for disregarded entities.
    attr_accessor :disregarded_entity_giin

    # Certifies that the entity is a Qualified Intermediary (QI) acting in accordance with its QI Agreement,  providing required withholding statements and documentation for relevant tax withholding purposes.
    attr_accessor :qualified_intermediary_certification

    # Certifies that the Qualified Intermediary assumes primary withholding responsibility  under chapters 3 and 4 for the specified accounts.
    attr_accessor :qi_primary_withholding_responsibility_certification

    # Certifies that the Qualified Intermediary assumes primary withholding and reporting responsibility under section 1446(f)  for amounts realized from sales of interests in publicly traded partnerships.
    attr_accessor :qi_withholding_responsibility_for_ptp_sales_certification

    # Certifies that the Qualified Intermediary assumes primary withholding responsibility as a nominee  under Regulations section 1.1446-4(b)(3) for publicly traded partnership distributions.
    attr_accessor :qi_nominee_withholding_responsibility_for_ptp_distributions_certification

    # Certifies that the Qualified Intermediary is acting as a qualified securities lender and assumes primary withholding  and reporting responsibilities for U.S. source substitute dividend payments.
    attr_accessor :qi_securities_lender_substitute_dividend_withholding_certification

    # Certifies that the Qualified Intermediary assumes primary withholding under chapters 3 and 4, and primary Form 1099 reporting  and backup withholding responsibility for U.S. source interest and substitute interest payments.
    attr_accessor :qi_withholding_and1099_reporting_responsibility_certification

    # Certifies that the Qualified Intermediary assumes Form 1099 reporting and backup withholding responsibility,  or FATCA reporting responsibility as a participating or registered deemed-compliant FFI,  for accounts held by specified U.S. persons.
    attr_accessor :qi_form1099_or_fatca_reporting_responsibility_certification

    # Certifies that the Qualified Intermediary does not assume primary Form 1099 reporting  and backup withholding responsibility for the accounts associated with this form.
    attr_accessor :qi_opt_out_of_form1099_reporting_certification

    # Certifies that the Qualified Intermediary meets the requirements for allocating payments  to a chapter 4 withholding rate pool of U.S. payees under Regulations section 1.6049-4(c)(4)(iii).
    attr_accessor :qi_withholding_rate_pool_certification

    # Certifies that the Qualified Intermediary has obtained or will obtain documentation confirming the status of any intermediary  or flow-through entity as a participating FFI, registered deemed-compliant FFI,  or QI for U.S. payees in a chapter 4 withholding rate pool.
    attr_accessor :qi_intermediary_or_flow_through_entity_documentation_certification

    # Certifies that the Qualified Derivatives Dealer (QDD) is approved by the IRS and assumes primary withholding  and reporting responsibilities for payments related to potential section 871(m) transactions.
    attr_accessor :qualified_derivatives_dealer_certification

    # Indicates QDD classification is Corporation.
    attr_accessor :qdd_corporation

    # Indicates QDD classification is Partnership.
    attr_accessor :qdd_partnership

    # Indicates QDD classification is Disregarded Entity.
    attr_accessor :qdd_disregarded_entity

    # Certifies that the entity is not acting as a Qualified Intermediary  and is not acting for its own account for the accounts covered by this form.
    attr_accessor :nonqualified_intermediary_certification

    # Certifies that the nonqualified intermediary is submitting this form to transmit withholding certificates  and/or other required documentation along with a withholding statement.
    attr_accessor :nqi_withholding_statement_transmission_certification

    # Certifies that the nonqualified intermediary meets the requirements of Regulations section 1.6049-4(c)(4)(iii)  for U.S. payees included in a withholding rate pool, excluding publicly traded partnership distributions.
    attr_accessor :nqi_withholding_rate_pool_compliance_certification

    # Certifies that the nonqualified intermediary is acting as a qualified securities lender (not as a QI)  and assumes primary withholding and reporting responsibilities for U.S. source substitute dividend payments.
    attr_accessor :nqi_qualified_securities_lender_certification

    # Certifies that the nonqualified intermediary has verified, or will verify,  all information on alternative withholding statements for consistency with account data to determine the correct withholding rate,  as required under sections 1441 or 1471.
    attr_accessor :nqi_alternative_withholding_statement_verification_certification

    # Certifies that the entity is a financial institution (other than an investment entity) that is incorporated  or organized under the laws of a possession of the United States.
    attr_accessor :territory_financial_institution_certification

    # Certifies that the territory financial institution agrees to be treated as a U.S. person  for chapters 3 and 4 purposes concerning reportable amounts and withholdable payments.
    attr_accessor :tfi_treated_as_us_person_certification

    # Certifies that the territory financial institution is transmitting withholding certificates or other required documentation  and has provided or will provide a withholding statement for reportable or withholdable payments.
    attr_accessor :tfi_withholding_statement_transmission_certification

    # Certifies that the territory financial institution agrees to be treated as a U.S. person  under Regulations section 1.1446(f)-4(a)(2)(i)(B) for amounts realized from sales of publicly traded partnership interests.
    attr_accessor :tfi_treated_as_us_person_for_ptp_sales_certification

    # Certifies that the territory financial institution agrees to be treated as a U.S. person  and as a nominee for purposes of publicly traded partnership distributions under the applicable regulations.
    attr_accessor :tfi_nominee_us_person_for_ptp_distributions_certification

    # Certifies that the territory financial institution is not acting as a nominee for publicly traded partnership distributions  and is providing withholding statements for those distributions.
    attr_accessor :tfi_not_nominee_for_ptp_distributions_certification

    # Certifies that the U.S. branch is receiving reportable or withholdable payments  that are not effectively connected income, PTP distributions, or proceeds from PTP sales.
    attr_accessor :us_branch_non_effectively_connected_income_certification

    # Certifies that the U.S. branch of a foreign bank or insurance company agrees to be treated as a U.S. person  for reportable amounts or withholdable payments under the applicable regulations.
    attr_accessor :us_branch_agreement_to_be_treated_as_us_person_certification

    # Certifies that the U.S. branch is transmitting required documentation  and withholding statements for reportable or withholdable payments and is applying the appropriate FATCA regulations.
    attr_accessor :us_branch_withholding_statement_and_compliance_certification

    # Certifies that the U.S. branch is acting as a U.S. person  for purposes of amounts realized from sales of publicly traded partnership interests under the applicable regulations.
    attr_accessor :us_branch_acting_as_us_person_for_ptp_sales_certification

    # Certifies that the U.S. branch is treated as a U.S. person  and as a nominee for publicly traded partnership distributions under the applicable regulations.
    attr_accessor :us_branch_nominee_for_ptp_distributions_certification

    # Certifies that the U.S. branch is not acting as a nominee for publicly traded partnership distributions  and is providing the required withholding statements.
    attr_accessor :us_branch_not_nominee_for_ptp_distributions_certification

    # Certifies that the entity is a withholding foreign partnership (WP) or a withholding foreign trust (WT)  that is compliant with the terms of its WP or WT agreement.
    attr_accessor :withholding_foreign_partnership_or_trust_certification

    # Certifies that the entity is a nonwithholding foreign partnership or trust,  providing the form for non-effectively connected payments and transmitting required withholding documentation for chapters 3 and 4.
    attr_accessor :nonwithholding_foreign_entity_withholding_statement_certification

    # Certifies that the entity is a foreign partnership or grantor trust acting as a partner in a lower-tier partnership  and is submitting the form for purposes of section 1446(a).
    attr_accessor :foreign_entity_partner_in_lower_tier_partnership_certification

    # Certifies that the entity is a foreign partnership receiving an amount realized  from the transfer of a partnership interest for purposes of section 1446(f).
    attr_accessor :foreign_partnership_amount_realized_section1446_f_certification

    # Certifies that the foreign partnership is providing a withholding statement for a modified amount realized  from the transfer of a partnership interest, when applicable.
    attr_accessor :foreign_partnership_modified_amount_realized_certification

    # Certifies that the foreign grantor trust is submitting the form on behalf of each grantor or owner  and providing a withholding statement to allocate the amount realized in accordance with the regulations.
    attr_accessor :foreign_grantor_trust_amount_realized_allocation_certification

    # Certifies that the entity may rely on the information in all associated withholding certificates  under the applicable standards of knowledge in sections 1441 or 1471 when providing an alternative withholding statement.
    attr_accessor :alternative_withholding_statement_reliance_certification

    # Certifies that the nonparticipating FFI is transmitting withholding documentation  and providing a statement allocating payment portions to exempt beneficial owners.
    attr_accessor :np_ffi_with_exempt_beneficial_owners_certification

    # The name of the entity that sponsors the foreign financial institution (FFI).
    attr_accessor :ffi_sponsoring_entity

    # Certifies that the entity is an investment entity, not a QI, WP, or WT, and has an agreement with a sponsoring entity.
    attr_accessor :investment_entity_certification

    # Certifies that the entity is a controlled foreign corporation sponsored by a U.S. financial institution, not a QI, WP, or WT,  and shares a common electronic account system for full transparency.
    attr_accessor :controlled_foreign_corporation_certification

    # Certifies that the FFI meets all requirements to qualify as an owner-documented FFI, including restrictions on activities,  ownership, and account relationships.
    attr_accessor :owner_documented_ffi_certification

    # Certifies that the FFI will provide a complete owner reporting statement  and required documentation for each relevant owner or debt holder.
    attr_accessor :owner_documented_ffi_reporting_statement_certification

    # Certifies that the FFI has provided or will provide an auditor’s letter and required owner documentation,  including a reporting statement and Form W-9s, to meet owner-documented FFI requirements under the regulations.
    attr_accessor :owner_documented_ffi_auditor_letter_certification

    # Certifies that the FFI operates solely as a limited bank or credit union within its country, meets asset thresholds,  and has no foreign operations or affiliations outside its country of organization.
    attr_accessor :compliant_nonregistering_local_bank_certification

    # Certifies that the FFI is not primarily engaged in investment activities, maintains only low-value accounts,  and has limited total assets within its group.
    attr_accessor :compliant_ffi_low_value_accounts_certification

    # The name of sponsoring entity for a certified deemed-compliant, closely held investment vehicle.
    attr_accessor :sponsored_closely_held_entity_sponsoring_entity

    # Certifies that the entity is a sponsored investment entity with 20 or fewer individual owners,  and that all compliance obligations are fulfilled by the sponsoring entity.
    attr_accessor :sponsored_closely_held_investment_vehicle_certification

    # Certifies that the entity qualifies as a limited life debt investment entity based on its formation date, issuance terms,  and compliance with regulatory requirements.
    attr_accessor :compliant_limited_life_debt_entity_certification

    # Certifies that the entity is a financial institution solely because it is an investment entity under regulations  and the entity does not maintain financial accounts.
    attr_accessor :investment_entity_no_financial_accounts_certification

    # Certifies that the entity qualifies as a restricted distributor based on its operations, customer base, regulatory compliance,  and financial and geographic limitations.
    attr_accessor :restricted_distributor_certification

    # Certifies that the entity is, and has been, bound by distribution agreements prohibiting sales of fund interests to  specified U.S. persons and certain non-U.S. entities.
    attr_accessor :restricted_distributor_agreement_certification

    # Certifies that the entity complies with distribution restrictions for U.S.-linked investors  and has addressed any preexisting sales in accordance with FATCA regulations.
    attr_accessor :restricted_distributor_preexisting_sales_compliance_certification

    # Certifies that the entity is treated as the beneficial owner of the payment solely  for purposes of chapter 4 under Regulations section 1.1471-6(d)(4).
    attr_accessor :foreign_central_bank_of_issue_certification

    # Certifies that the entity meets the requirements to be considered a nonreporting financial institution to an applicable IGA.
    attr_accessor :nonreporting_iga_ffi_certification

    # The country for the applicable IGA with the United States.
    attr_accessor :iga_country

    # The applicable IGA model.
    attr_accessor :iga_model

    # Specifies how the applicable IGA is treated under the IGA provisions or Treasury regulations.
    attr_accessor :iga_legal_status_treatment

    # The trustee or sponsor name for the nonreporting IGA FFI.
    attr_accessor :iga_ffi_trustee_or_sponsor

    # Indicates whether the trustee for the nonreporting IGA FFI is foreign.
    attr_accessor :iga_ffi_trustee_is_foreign

    # Certifies that the entity is a pension or retirement fund established in a treaty country  and is entitled to treaty benefits on U.S. source income.
    attr_accessor :treaty_qualified_pension_fund_certification

    # Certifies that the entity is a government-regulated retirement fund meeting specific requirements for contributions, tax exemption,  beneficiary limits, and distribution restrictions.
    attr_accessor :qualified_retirement_fund_certification

    # Certifies that the entity is a government-regulated retirement fund with fewer than 50 participants, limited foreign ownership,  and employer sponsorship that is not from investment entities or passive NFFEs.
    attr_accessor :narrow_participation_retirement_fund_certification

    # Certifies that the entity is formed under a pension plan meeting section 401(a) requirements, except for being U.S.-trust funded.
    attr_accessor :section401_a_equivalent_pension_plan_certification

    # Certifies that the entity is established solely to earn income for the benefit of qualifying retirement funds  or accounts under applicable FATCA regulations or IGAs.
    attr_accessor :investment_entity_for_retirement_funds_certification

    # Certifies that the entity is established and sponsored by a qualifying exempt beneficial owner to provide retirement, disability,  or death benefits to individuals based on services performed for the sponsor.
    attr_accessor :exempt_beneficial_owner_sponsored_retirement_fund_certification

    # Certifies that the entity is a holding company, treasury center, or captive finance company operating within a nonfinancial group  and not functioning as an investment or financial institution.
    attr_accessor :excepted_nonfinancial_group_entity_certification

    # Certifies that the entity is a recently formed startup NFFE investing in a non-financial business  and is not operating as or presenting itself as an investment fund.
    attr_accessor :excepted_nonfinancial_start_up_certification

    # The date the start-up company was formed on (or, in case of new line of business, the date of board resolution approving the  new line of business).
    attr_accessor :startup_formation_or_resolution_date

    # Certifies that the entity is in liquidation, reorganization, or bankruptcy and intends to operate as a nonfinancial entity,  with supporting documentation available if the process exceeds three years.
    attr_accessor :excepted_nonfinancial_entity_in_liquidation_or_bankruptcy_certification

    # The filed date for a plan of reorganization, liquidation or bankruptcy.
    attr_accessor :nonfinancial_entity_filing_date

    # Certifies that the entity is a foreign corporation that is not a financial institution  and whose stock is regularly traded on an established securities market.
    attr_accessor :publicly_traded_nffe_certification

    # The name of the securities market where the corporation's stock is regularly traded.
    attr_accessor :publicly_traded_nffe_securities_market

    # Certifies that the entity is a foreign corporation that is not a financial institution  and is affiliated with a publicly traded entity within the same expanded affiliated group.
    attr_accessor :nffe_affiliate_of_publicly_traded_entity_certification

    # The name of the affiliated entity whose stock is regularly traded on an established securities market.
    attr_accessor :publicly_traded_entity

    # The name of the established securities market where the affiliated entity's stock is traded.
    attr_accessor :nffe_affiliate_of_publicly_traded_entity_securities_market

    # Certifies that the entity is organized in a U.S. possession, is not engaged in financial activities,  and is entirely owned by bona fide residents of that possession.
    attr_accessor :excepted_territory_nffe_certification

    # Certifies that the entity is a foreign non-financial institution with less than 50% passive income  and less than 50% of its assets producing or held to produce passive income.
    attr_accessor :active_nffe_certification

    # Certifies that the entity is a foreign non-financial entity that does not qualify for any other NFFE category  and is not a financial institution.
    attr_accessor :passive_nffe_certification

    # Certifies that the entity is a sponsored direct reporting NFFE.
    attr_accessor :sponsored_direct_reporting_nffe_certification

    # The name of the entity that sponsors the direct reporting NFFE.
    attr_accessor :direct_reporting_nffe_sponsoring_entity

    # The name of the signer.
    attr_accessor :signer_name

    # The unique identifier for the form.
    attr_accessor :id

    # The entry status information for the form.
    attr_accessor :entry_status

    # A reference identifier for the form.
    attr_accessor :reference_id

    # The ID of the associated company.
    attr_accessor :company_id

    # The display name associated with the form.
    attr_accessor :display_name

    # The email address of the individual associated with the form.
    attr_accessor :email

    # Indicates whether the form is archived.
    attr_accessor :archived

    # Form ID of previous version.
    attr_accessor :ancestor_id

    # The signature of the form.
    attr_accessor :signature

    # The date the form was signed.
    attr_accessor :signed_date

    # The date when e-delivery was consented.
    attr_accessor :e_delivery_consented_at

    # The creation date of the form.
    attr_accessor :created_at

    # The last updated date of the form.
    attr_accessor :updated_at

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'type' => :'type',
        :'name' => :'name',
        :'citizenship_country' => :'citizenshipCountry',
        :'disregarded_entity' => :'disregardedEntity',
        :'entity_type' => :'entityType',
        :'fatca_status' => :'fatcaStatus',
        :'residence_address' => :'residenceAddress',
        :'residence_city' => :'residenceCity',
        :'residence_state' => :'residenceState',
        :'residence_zip' => :'residenceZip',
        :'residence_country' => :'residenceCountry',
        :'residence_is_mailing' => :'residenceIsMailing',
        :'mailing_address' => :'mailingAddress',
        :'mailing_city' => :'mailingCity',
        :'mailing_state' => :'mailingState',
        :'mailing_zip' => :'mailingZip',
        :'mailing_country' => :'mailingCountry',
        :'tin_type' => :'tinType',
        :'tin' => :'tin',
        :'giin' => :'giin',
        :'foreign_tin' => :'foreignTin',
        :'reference_number' => :'referenceNumber',
        :'disregarded_entity_fatca_status' => :'disregardedEntityFatcaStatus',
        :'disregarded_address' => :'disregardedAddress',
        :'disregarded_city' => :'disregardedCity',
        :'disregarded_state' => :'disregardedState',
        :'disregarded_zip' => :'disregardedZip',
        :'disregarded_country' => :'disregardedCountry',
        :'disregarded_entity_giin' => :'disregardedEntityGiin',
        :'qualified_intermediary_certification' => :'qualifiedIntermediaryCertification',
        :'qi_primary_withholding_responsibility_certification' => :'qiPrimaryWithholdingResponsibilityCertification',
        :'qi_withholding_responsibility_for_ptp_sales_certification' => :'qiWithholdingResponsibilityForPtpSalesCertification',
        :'qi_nominee_withholding_responsibility_for_ptp_distributions_certification' => :'qiNomineeWithholdingResponsibilityForPtpDistributionsCertification',
        :'qi_securities_lender_substitute_dividend_withholding_certification' => :'qiSecuritiesLenderSubstituteDividendWithholdingCertification',
        :'qi_withholding_and1099_reporting_responsibility_certification' => :'qiWithholdingAnd1099ReportingResponsibilityCertification',
        :'qi_form1099_or_fatca_reporting_responsibility_certification' => :'qiForm1099OrFatcaReportingResponsibilityCertification',
        :'qi_opt_out_of_form1099_reporting_certification' => :'qiOptOutOfForm1099ReportingCertification',
        :'qi_withholding_rate_pool_certification' => :'qiWithholdingRatePoolCertification',
        :'qi_intermediary_or_flow_through_entity_documentation_certification' => :'qiIntermediaryOrFlowThroughEntityDocumentationCertification',
        :'qualified_derivatives_dealer_certification' => :'qualifiedDerivativesDealerCertification',
        :'qdd_corporation' => :'qddCorporation',
        :'qdd_partnership' => :'qddPartnership',
        :'qdd_disregarded_entity' => :'qddDisregardedEntity',
        :'nonqualified_intermediary_certification' => :'nonqualifiedIntermediaryCertification',
        :'nqi_withholding_statement_transmission_certification' => :'nqiWithholdingStatementTransmissionCertification',
        :'nqi_withholding_rate_pool_compliance_certification' => :'nqiWithholdingRatePoolComplianceCertification',
        :'nqi_qualified_securities_lender_certification' => :'nqiQualifiedSecuritiesLenderCertification',
        :'nqi_alternative_withholding_statement_verification_certification' => :'nqiAlternativeWithholdingStatementVerificationCertification',
        :'territory_financial_institution_certification' => :'territoryFinancialInstitutionCertification',
        :'tfi_treated_as_us_person_certification' => :'tfiTreatedAsUsPersonCertification',
        :'tfi_withholding_statement_transmission_certification' => :'tfiWithholdingStatementTransmissionCertification',
        :'tfi_treated_as_us_person_for_ptp_sales_certification' => :'tfiTreatedAsUsPersonForPtpSalesCertification',
        :'tfi_nominee_us_person_for_ptp_distributions_certification' => :'tfiNomineeUsPersonForPtpDistributionsCertification',
        :'tfi_not_nominee_for_ptp_distributions_certification' => :'tfiNotNomineeForPtpDistributionsCertification',
        :'us_branch_non_effectively_connected_income_certification' => :'usBranchNonEffectivelyConnectedIncomeCertification',
        :'us_branch_agreement_to_be_treated_as_us_person_certification' => :'usBranchAgreementToBeTreatedAsUsPersonCertification',
        :'us_branch_withholding_statement_and_compliance_certification' => :'usBranchWithholdingStatementAndComplianceCertification',
        :'us_branch_acting_as_us_person_for_ptp_sales_certification' => :'usBranchActingAsUsPersonForPtpSalesCertification',
        :'us_branch_nominee_for_ptp_distributions_certification' => :'usBranchNomineeForPtpDistributionsCertification',
        :'us_branch_not_nominee_for_ptp_distributions_certification' => :'usBranchNotNomineeForPtpDistributionsCertification',
        :'withholding_foreign_partnership_or_trust_certification' => :'withholdingForeignPartnershipOrTrustCertification',
        :'nonwithholding_foreign_entity_withholding_statement_certification' => :'nonwithholdingForeignEntityWithholdingStatementCertification',
        :'foreign_entity_partner_in_lower_tier_partnership_certification' => :'foreignEntityPartnerInLowerTierPartnershipCertification',
        :'foreign_partnership_amount_realized_section1446_f_certification' => :'foreignPartnershipAmountRealizedSection1446FCertification',
        :'foreign_partnership_modified_amount_realized_certification' => :'foreignPartnershipModifiedAmountRealizedCertification',
        :'foreign_grantor_trust_amount_realized_allocation_certification' => :'foreignGrantorTrustAmountRealizedAllocationCertification',
        :'alternative_withholding_statement_reliance_certification' => :'alternativeWithholdingStatementRelianceCertification',
        :'np_ffi_with_exempt_beneficial_owners_certification' => :'npFfiWithExemptBeneficialOwnersCertification',
        :'ffi_sponsoring_entity' => :'ffiSponsoringEntity',
        :'investment_entity_certification' => :'investmentEntityCertification',
        :'controlled_foreign_corporation_certification' => :'controlledForeignCorporationCertification',
        :'owner_documented_ffi_certification' => :'ownerDocumentedFfiCertification',
        :'owner_documented_ffi_reporting_statement_certification' => :'ownerDocumentedFfiReportingStatementCertification',
        :'owner_documented_ffi_auditor_letter_certification' => :'ownerDocumentedFfiAuditorLetterCertification',
        :'compliant_nonregistering_local_bank_certification' => :'compliantNonregisteringLocalBankCertification',
        :'compliant_ffi_low_value_accounts_certification' => :'compliantFfiLowValueAccountsCertification',
        :'sponsored_closely_held_entity_sponsoring_entity' => :'sponsoredCloselyHeldEntitySponsoringEntity',
        :'sponsored_closely_held_investment_vehicle_certification' => :'sponsoredCloselyHeldInvestmentVehicleCertification',
        :'compliant_limited_life_debt_entity_certification' => :'compliantLimitedLifeDebtEntityCertification',
        :'investment_entity_no_financial_accounts_certification' => :'investmentEntityNoFinancialAccountsCertification',
        :'restricted_distributor_certification' => :'restrictedDistributorCertification',
        :'restricted_distributor_agreement_certification' => :'restrictedDistributorAgreementCertification',
        :'restricted_distributor_preexisting_sales_compliance_certification' => :'restrictedDistributorPreexistingSalesComplianceCertification',
        :'foreign_central_bank_of_issue_certification' => :'foreignCentralBankOfIssueCertification',
        :'nonreporting_iga_ffi_certification' => :'nonreportingIgaFfiCertification',
        :'iga_country' => :'igaCountry',
        :'iga_model' => :'igaModel',
        :'iga_legal_status_treatment' => :'igaLegalStatusTreatment',
        :'iga_ffi_trustee_or_sponsor' => :'igaFfiTrusteeOrSponsor',
        :'iga_ffi_trustee_is_foreign' => :'igaFfiTrusteeIsForeign',
        :'treaty_qualified_pension_fund_certification' => :'treatyQualifiedPensionFundCertification',
        :'qualified_retirement_fund_certification' => :'qualifiedRetirementFundCertification',
        :'narrow_participation_retirement_fund_certification' => :'narrowParticipationRetirementFundCertification',
        :'section401_a_equivalent_pension_plan_certification' => :'section401AEquivalentPensionPlanCertification',
        :'investment_entity_for_retirement_funds_certification' => :'investmentEntityForRetirementFundsCertification',
        :'exempt_beneficial_owner_sponsored_retirement_fund_certification' => :'exemptBeneficialOwnerSponsoredRetirementFundCertification',
        :'excepted_nonfinancial_group_entity_certification' => :'exceptedNonfinancialGroupEntityCertification',
        :'excepted_nonfinancial_start_up_certification' => :'exceptedNonfinancialStartUpCertification',
        :'startup_formation_or_resolution_date' => :'startupFormationOrResolutionDate',
        :'excepted_nonfinancial_entity_in_liquidation_or_bankruptcy_certification' => :'exceptedNonfinancialEntityInLiquidationOrBankruptcyCertification',
        :'nonfinancial_entity_filing_date' => :'nonfinancialEntityFilingDate',
        :'publicly_traded_nffe_certification' => :'publiclyTradedNffeCertification',
        :'publicly_traded_nffe_securities_market' => :'publiclyTradedNffeSecuritiesMarket',
        :'nffe_affiliate_of_publicly_traded_entity_certification' => :'nffeAffiliateOfPubliclyTradedEntityCertification',
        :'publicly_traded_entity' => :'publiclyTradedEntity',
        :'nffe_affiliate_of_publicly_traded_entity_securities_market' => :'nffeAffiliateOfPubliclyTradedEntitySecuritiesMarket',
        :'excepted_territory_nffe_certification' => :'exceptedTerritoryNffeCertification',
        :'active_nffe_certification' => :'activeNffeCertification',
        :'passive_nffe_certification' => :'passiveNffeCertification',
        :'sponsored_direct_reporting_nffe_certification' => :'sponsoredDirectReportingNffeCertification',
        :'direct_reporting_nffe_sponsoring_entity' => :'directReportingNffeSponsoringEntity',
        :'signer_name' => :'signerName',
        :'id' => :'id',
        :'entry_status' => :'entryStatus',
        :'reference_id' => :'referenceId',
        :'company_id' => :'companyId',
        :'display_name' => :'displayName',
        :'email' => :'email',
        :'archived' => :'archived',
        :'ancestor_id' => :'ancestorId',
        :'signature' => :'signature',
        :'signed_date' => :'signedDate',
        :'e_delivery_consented_at' => :'eDeliveryConsentedAt',
        :'created_at' => :'createdAt',
        :'updated_at' => :'updatedAt'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'type' => :'String',
        :'name' => :'String',
        :'citizenship_country' => :'String',
        :'disregarded_entity' => :'String',
        :'entity_type' => :'String',
        :'fatca_status' => :'String',
        :'residence_address' => :'String',
        :'residence_city' => :'String',
        :'residence_state' => :'String',
        :'residence_zip' => :'String',
        :'residence_country' => :'String',
        :'residence_is_mailing' => :'Boolean',
        :'mailing_address' => :'String',
        :'mailing_city' => :'String',
        :'mailing_state' => :'String',
        :'mailing_zip' => :'String',
        :'mailing_country' => :'String',
        :'tin_type' => :'String',
        :'tin' => :'String',
        :'giin' => :'String',
        :'foreign_tin' => :'String',
        :'reference_number' => :'String',
        :'disregarded_entity_fatca_status' => :'String',
        :'disregarded_address' => :'String',
        :'disregarded_city' => :'String',
        :'disregarded_state' => :'String',
        :'disregarded_zip' => :'String',
        :'disregarded_country' => :'String',
        :'disregarded_entity_giin' => :'String',
        :'qualified_intermediary_certification' => :'Boolean',
        :'qi_primary_withholding_responsibility_certification' => :'Boolean',
        :'qi_withholding_responsibility_for_ptp_sales_certification' => :'Boolean',
        :'qi_nominee_withholding_responsibility_for_ptp_distributions_certification' => :'Boolean',
        :'qi_securities_lender_substitute_dividend_withholding_certification' => :'Boolean',
        :'qi_withholding_and1099_reporting_responsibility_certification' => :'Boolean',
        :'qi_form1099_or_fatca_reporting_responsibility_certification' => :'Boolean',
        :'qi_opt_out_of_form1099_reporting_certification' => :'Boolean',
        :'qi_withholding_rate_pool_certification' => :'Boolean',
        :'qi_intermediary_or_flow_through_entity_documentation_certification' => :'Boolean',
        :'qualified_derivatives_dealer_certification' => :'Boolean',
        :'qdd_corporation' => :'Boolean',
        :'qdd_partnership' => :'Boolean',
        :'qdd_disregarded_entity' => :'Boolean',
        :'nonqualified_intermediary_certification' => :'Boolean',
        :'nqi_withholding_statement_transmission_certification' => :'Boolean',
        :'nqi_withholding_rate_pool_compliance_certification' => :'Boolean',
        :'nqi_qualified_securities_lender_certification' => :'Boolean',
        :'nqi_alternative_withholding_statement_verification_certification' => :'Boolean',
        :'territory_financial_institution_certification' => :'Boolean',
        :'tfi_treated_as_us_person_certification' => :'Boolean',
        :'tfi_withholding_statement_transmission_certification' => :'Boolean',
        :'tfi_treated_as_us_person_for_ptp_sales_certification' => :'Boolean',
        :'tfi_nominee_us_person_for_ptp_distributions_certification' => :'Boolean',
        :'tfi_not_nominee_for_ptp_distributions_certification' => :'Boolean',
        :'us_branch_non_effectively_connected_income_certification' => :'Boolean',
        :'us_branch_agreement_to_be_treated_as_us_person_certification' => :'Boolean',
        :'us_branch_withholding_statement_and_compliance_certification' => :'Boolean',
        :'us_branch_acting_as_us_person_for_ptp_sales_certification' => :'Boolean',
        :'us_branch_nominee_for_ptp_distributions_certification' => :'Boolean',
        :'us_branch_not_nominee_for_ptp_distributions_certification' => :'Boolean',
        :'withholding_foreign_partnership_or_trust_certification' => :'Boolean',
        :'nonwithholding_foreign_entity_withholding_statement_certification' => :'Boolean',
        :'foreign_entity_partner_in_lower_tier_partnership_certification' => :'Boolean',
        :'foreign_partnership_amount_realized_section1446_f_certification' => :'Boolean',
        :'foreign_partnership_modified_amount_realized_certification' => :'Boolean',
        :'foreign_grantor_trust_amount_realized_allocation_certification' => :'Boolean',
        :'alternative_withholding_statement_reliance_certification' => :'Boolean',
        :'np_ffi_with_exempt_beneficial_owners_certification' => :'Boolean',
        :'ffi_sponsoring_entity' => :'String',
        :'investment_entity_certification' => :'Boolean',
        :'controlled_foreign_corporation_certification' => :'Boolean',
        :'owner_documented_ffi_certification' => :'Boolean',
        :'owner_documented_ffi_reporting_statement_certification' => :'Boolean',
        :'owner_documented_ffi_auditor_letter_certification' => :'Boolean',
        :'compliant_nonregistering_local_bank_certification' => :'Boolean',
        :'compliant_ffi_low_value_accounts_certification' => :'Boolean',
        :'sponsored_closely_held_entity_sponsoring_entity' => :'String',
        :'sponsored_closely_held_investment_vehicle_certification' => :'Boolean',
        :'compliant_limited_life_debt_entity_certification' => :'Boolean',
        :'investment_entity_no_financial_accounts_certification' => :'Boolean',
        :'restricted_distributor_certification' => :'Boolean',
        :'restricted_distributor_agreement_certification' => :'Boolean',
        :'restricted_distributor_preexisting_sales_compliance_certification' => :'Boolean',
        :'foreign_central_bank_of_issue_certification' => :'Boolean',
        :'nonreporting_iga_ffi_certification' => :'Boolean',
        :'iga_country' => :'String',
        :'iga_model' => :'String',
        :'iga_legal_status_treatment' => :'String',
        :'iga_ffi_trustee_or_sponsor' => :'String',
        :'iga_ffi_trustee_is_foreign' => :'Boolean',
        :'treaty_qualified_pension_fund_certification' => :'Boolean',
        :'qualified_retirement_fund_certification' => :'Boolean',
        :'narrow_participation_retirement_fund_certification' => :'Boolean',
        :'section401_a_equivalent_pension_plan_certification' => :'Boolean',
        :'investment_entity_for_retirement_funds_certification' => :'Boolean',
        :'exempt_beneficial_owner_sponsored_retirement_fund_certification' => :'Boolean',
        :'excepted_nonfinancial_group_entity_certification' => :'Boolean',
        :'excepted_nonfinancial_start_up_certification' => :'Boolean',
        :'startup_formation_or_resolution_date' => :'Date',
        :'excepted_nonfinancial_entity_in_liquidation_or_bankruptcy_certification' => :'Boolean',
        :'nonfinancial_entity_filing_date' => :'Date',
        :'publicly_traded_nffe_certification' => :'Boolean',
        :'publicly_traded_nffe_securities_market' => :'String',
        :'nffe_affiliate_of_publicly_traded_entity_certification' => :'Boolean',
        :'publicly_traded_entity' => :'String',
        :'nffe_affiliate_of_publicly_traded_entity_securities_market' => :'String',
        :'excepted_territory_nffe_certification' => :'Boolean',
        :'active_nffe_certification' => :'Boolean',
        :'passive_nffe_certification' => :'Boolean',
        :'sponsored_direct_reporting_nffe_certification' => :'Boolean',
        :'direct_reporting_nffe_sponsoring_entity' => :'String',
        :'signer_name' => :'String',
        :'id' => :'String',
        :'entry_status' => :'EntryStatusResponse',
        :'reference_id' => :'String',
        :'company_id' => :'String',
        :'display_name' => :'String',
        :'email' => :'String',
        :'archived' => :'Boolean',
        :'ancestor_id' => :'String',
        :'signature' => :'String',
        :'signed_date' => :'Time',
        :'e_delivery_consented_at' => :'Time',
        :'created_at' => :'Time',
        :'updated_at' => :'Time'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'disregarded_entity',
        :'residence_state',
        :'mailing_address',
        :'mailing_city',
        :'mailing_state',
        :'mailing_zip',
        :'mailing_country',
        :'tin_type',
        :'tin',
        :'giin',
        :'foreign_tin',
        :'reference_number',
        :'disregarded_entity_fatca_status',
        :'disregarded_address',
        :'disregarded_city',
        :'disregarded_state',
        :'disregarded_zip',
        :'disregarded_country',
        :'disregarded_entity_giin',
        :'ffi_sponsoring_entity',
        :'sponsored_closely_held_entity_sponsoring_entity',
        :'iga_country',
        :'iga_model',
        :'iga_legal_status_treatment',
        :'iga_ffi_trustee_or_sponsor',
        :'iga_ffi_trustee_is_foreign',
        :'startup_formation_or_resolution_date',
        :'nonfinancial_entity_filing_date',
        :'publicly_traded_nffe_securities_market',
        :'publicly_traded_entity',
        :'nffe_affiliate_of_publicly_traded_entity_securities_market',
        :'direct_reporting_nffe_sponsoring_entity',
        :'signer_name',
        :'reference_id',
        :'email',
        :'ancestor_id',
        :'signature',
        :'signed_date',
        :'e_delivery_consented_at',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'W9FormBaseResponse'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `AvalaraSdk::A1099::V2::W8ImyFormResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AvalaraSdk::A1099::V2::W8ImyFormResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'citizenship_country')
        self.citizenship_country = attributes[:'citizenship_country']
      end

      if attributes.key?(:'disregarded_entity')
        self.disregarded_entity = attributes[:'disregarded_entity']
      end

      if attributes.key?(:'entity_type')
        self.entity_type = attributes[:'entity_type']
      end

      if attributes.key?(:'fatca_status')
        self.fatca_status = attributes[:'fatca_status']
      end

      if attributes.key?(:'residence_address')
        self.residence_address = attributes[:'residence_address']
      end

      if attributes.key?(:'residence_city')
        self.residence_city = attributes[:'residence_city']
      end

      if attributes.key?(:'residence_state')
        self.residence_state = attributes[:'residence_state']
      end

      if attributes.key?(:'residence_zip')
        self.residence_zip = attributes[:'residence_zip']
      end

      if attributes.key?(:'residence_country')
        self.residence_country = attributes[:'residence_country']
      end

      if attributes.key?(:'residence_is_mailing')
        self.residence_is_mailing = attributes[:'residence_is_mailing']
      end

      if attributes.key?(:'mailing_address')
        self.mailing_address = attributes[:'mailing_address']
      end

      if attributes.key?(:'mailing_city')
        self.mailing_city = attributes[:'mailing_city']
      end

      if attributes.key?(:'mailing_state')
        self.mailing_state = attributes[:'mailing_state']
      end

      if attributes.key?(:'mailing_zip')
        self.mailing_zip = attributes[:'mailing_zip']
      end

      if attributes.key?(:'mailing_country')
        self.mailing_country = attributes[:'mailing_country']
      end

      if attributes.key?(:'tin_type')
        self.tin_type = attributes[:'tin_type']
      end

      if attributes.key?(:'tin')
        self.tin = attributes[:'tin']
      end

      if attributes.key?(:'giin')
        self.giin = attributes[:'giin']
      end

      if attributes.key?(:'foreign_tin')
        self.foreign_tin = attributes[:'foreign_tin']
      end

      if attributes.key?(:'reference_number')
        self.reference_number = attributes[:'reference_number']
      end

      if attributes.key?(:'disregarded_entity_fatca_status')
        self.disregarded_entity_fatca_status = attributes[:'disregarded_entity_fatca_status']
      end

      if attributes.key?(:'disregarded_address')
        self.disregarded_address = attributes[:'disregarded_address']
      end

      if attributes.key?(:'disregarded_city')
        self.disregarded_city = attributes[:'disregarded_city']
      end

      if attributes.key?(:'disregarded_state')
        self.disregarded_state = attributes[:'disregarded_state']
      end

      if attributes.key?(:'disregarded_zip')
        self.disregarded_zip = attributes[:'disregarded_zip']
      end

      if attributes.key?(:'disregarded_country')
        self.disregarded_country = attributes[:'disregarded_country']
      end

      if attributes.key?(:'disregarded_entity_giin')
        self.disregarded_entity_giin = attributes[:'disregarded_entity_giin']
      end

      if attributes.key?(:'qualified_intermediary_certification')
        self.qualified_intermediary_certification = attributes[:'qualified_intermediary_certification']
      end

      if attributes.key?(:'qi_primary_withholding_responsibility_certification')
        self.qi_primary_withholding_responsibility_certification = attributes[:'qi_primary_withholding_responsibility_certification']
      end

      if attributes.key?(:'qi_withholding_responsibility_for_ptp_sales_certification')
        self.qi_withholding_responsibility_for_ptp_sales_certification = attributes[:'qi_withholding_responsibility_for_ptp_sales_certification']
      end

      if attributes.key?(:'qi_nominee_withholding_responsibility_for_ptp_distributions_certification')
        self.qi_nominee_withholding_responsibility_for_ptp_distributions_certification = attributes[:'qi_nominee_withholding_responsibility_for_ptp_distributions_certification']
      end

      if attributes.key?(:'qi_securities_lender_substitute_dividend_withholding_certification')
        self.qi_securities_lender_substitute_dividend_withholding_certification = attributes[:'qi_securities_lender_substitute_dividend_withholding_certification']
      end

      if attributes.key?(:'qi_withholding_and1099_reporting_responsibility_certification')
        self.qi_withholding_and1099_reporting_responsibility_certification = attributes[:'qi_withholding_and1099_reporting_responsibility_certification']
      end

      if attributes.key?(:'qi_form1099_or_fatca_reporting_responsibility_certification')
        self.qi_form1099_or_fatca_reporting_responsibility_certification = attributes[:'qi_form1099_or_fatca_reporting_responsibility_certification']
      end

      if attributes.key?(:'qi_opt_out_of_form1099_reporting_certification')
        self.qi_opt_out_of_form1099_reporting_certification = attributes[:'qi_opt_out_of_form1099_reporting_certification']
      end

      if attributes.key?(:'qi_withholding_rate_pool_certification')
        self.qi_withholding_rate_pool_certification = attributes[:'qi_withholding_rate_pool_certification']
      end

      if attributes.key?(:'qi_intermediary_or_flow_through_entity_documentation_certification')
        self.qi_intermediary_or_flow_through_entity_documentation_certification = attributes[:'qi_intermediary_or_flow_through_entity_documentation_certification']
      end

      if attributes.key?(:'qualified_derivatives_dealer_certification')
        self.qualified_derivatives_dealer_certification = attributes[:'qualified_derivatives_dealer_certification']
      end

      if attributes.key?(:'qdd_corporation')
        self.qdd_corporation = attributes[:'qdd_corporation']
      end

      if attributes.key?(:'qdd_partnership')
        self.qdd_partnership = attributes[:'qdd_partnership']
      end

      if attributes.key?(:'qdd_disregarded_entity')
        self.qdd_disregarded_entity = attributes[:'qdd_disregarded_entity']
      end

      if attributes.key?(:'nonqualified_intermediary_certification')
        self.nonqualified_intermediary_certification = attributes[:'nonqualified_intermediary_certification']
      end

      if attributes.key?(:'nqi_withholding_statement_transmission_certification')
        self.nqi_withholding_statement_transmission_certification = attributes[:'nqi_withholding_statement_transmission_certification']
      end

      if attributes.key?(:'nqi_withholding_rate_pool_compliance_certification')
        self.nqi_withholding_rate_pool_compliance_certification = attributes[:'nqi_withholding_rate_pool_compliance_certification']
      end

      if attributes.key?(:'nqi_qualified_securities_lender_certification')
        self.nqi_qualified_securities_lender_certification = attributes[:'nqi_qualified_securities_lender_certification']
      end

      if attributes.key?(:'nqi_alternative_withholding_statement_verification_certification')
        self.nqi_alternative_withholding_statement_verification_certification = attributes[:'nqi_alternative_withholding_statement_verification_certification']
      end

      if attributes.key?(:'territory_financial_institution_certification')
        self.territory_financial_institution_certification = attributes[:'territory_financial_institution_certification']
      end

      if attributes.key?(:'tfi_treated_as_us_person_certification')
        self.tfi_treated_as_us_person_certification = attributes[:'tfi_treated_as_us_person_certification']
      end

      if attributes.key?(:'tfi_withholding_statement_transmission_certification')
        self.tfi_withholding_statement_transmission_certification = attributes[:'tfi_withholding_statement_transmission_certification']
      end

      if attributes.key?(:'tfi_treated_as_us_person_for_ptp_sales_certification')
        self.tfi_treated_as_us_person_for_ptp_sales_certification = attributes[:'tfi_treated_as_us_person_for_ptp_sales_certification']
      end

      if attributes.key?(:'tfi_nominee_us_person_for_ptp_distributions_certification')
        self.tfi_nominee_us_person_for_ptp_distributions_certification = attributes[:'tfi_nominee_us_person_for_ptp_distributions_certification']
      end

      if attributes.key?(:'tfi_not_nominee_for_ptp_distributions_certification')
        self.tfi_not_nominee_for_ptp_distributions_certification = attributes[:'tfi_not_nominee_for_ptp_distributions_certification']
      end

      if attributes.key?(:'us_branch_non_effectively_connected_income_certification')
        self.us_branch_non_effectively_connected_income_certification = attributes[:'us_branch_non_effectively_connected_income_certification']
      end

      if attributes.key?(:'us_branch_agreement_to_be_treated_as_us_person_certification')
        self.us_branch_agreement_to_be_treated_as_us_person_certification = attributes[:'us_branch_agreement_to_be_treated_as_us_person_certification']
      end

      if attributes.key?(:'us_branch_withholding_statement_and_compliance_certification')
        self.us_branch_withholding_statement_and_compliance_certification = attributes[:'us_branch_withholding_statement_and_compliance_certification']
      end

      if attributes.key?(:'us_branch_acting_as_us_person_for_ptp_sales_certification')
        self.us_branch_acting_as_us_person_for_ptp_sales_certification = attributes[:'us_branch_acting_as_us_person_for_ptp_sales_certification']
      end

      if attributes.key?(:'us_branch_nominee_for_ptp_distributions_certification')
        self.us_branch_nominee_for_ptp_distributions_certification = attributes[:'us_branch_nominee_for_ptp_distributions_certification']
      end

      if attributes.key?(:'us_branch_not_nominee_for_ptp_distributions_certification')
        self.us_branch_not_nominee_for_ptp_distributions_certification = attributes[:'us_branch_not_nominee_for_ptp_distributions_certification']
      end

      if attributes.key?(:'withholding_foreign_partnership_or_trust_certification')
        self.withholding_foreign_partnership_or_trust_certification = attributes[:'withholding_foreign_partnership_or_trust_certification']
      end

      if attributes.key?(:'nonwithholding_foreign_entity_withholding_statement_certification')
        self.nonwithholding_foreign_entity_withholding_statement_certification = attributes[:'nonwithholding_foreign_entity_withholding_statement_certification']
      end

      if attributes.key?(:'foreign_entity_partner_in_lower_tier_partnership_certification')
        self.foreign_entity_partner_in_lower_tier_partnership_certification = attributes[:'foreign_entity_partner_in_lower_tier_partnership_certification']
      end

      if attributes.key?(:'foreign_partnership_amount_realized_section1446_f_certification')
        self.foreign_partnership_amount_realized_section1446_f_certification = attributes[:'foreign_partnership_amount_realized_section1446_f_certification']
      end

      if attributes.key?(:'foreign_partnership_modified_amount_realized_certification')
        self.foreign_partnership_modified_amount_realized_certification = attributes[:'foreign_partnership_modified_amount_realized_certification']
      end

      if attributes.key?(:'foreign_grantor_trust_amount_realized_allocation_certification')
        self.foreign_grantor_trust_amount_realized_allocation_certification = attributes[:'foreign_grantor_trust_amount_realized_allocation_certification']
      end

      if attributes.key?(:'alternative_withholding_statement_reliance_certification')
        self.alternative_withholding_statement_reliance_certification = attributes[:'alternative_withholding_statement_reliance_certification']
      end

      if attributes.key?(:'np_ffi_with_exempt_beneficial_owners_certification')
        self.np_ffi_with_exempt_beneficial_owners_certification = attributes[:'np_ffi_with_exempt_beneficial_owners_certification']
      end

      if attributes.key?(:'ffi_sponsoring_entity')
        self.ffi_sponsoring_entity = attributes[:'ffi_sponsoring_entity']
      end

      if attributes.key?(:'investment_entity_certification')
        self.investment_entity_certification = attributes[:'investment_entity_certification']
      end

      if attributes.key?(:'controlled_foreign_corporation_certification')
        self.controlled_foreign_corporation_certification = attributes[:'controlled_foreign_corporation_certification']
      end

      if attributes.key?(:'owner_documented_ffi_certification')
        self.owner_documented_ffi_certification = attributes[:'owner_documented_ffi_certification']
      end

      if attributes.key?(:'owner_documented_ffi_reporting_statement_certification')
        self.owner_documented_ffi_reporting_statement_certification = attributes[:'owner_documented_ffi_reporting_statement_certification']
      end

      if attributes.key?(:'owner_documented_ffi_auditor_letter_certification')
        self.owner_documented_ffi_auditor_letter_certification = attributes[:'owner_documented_ffi_auditor_letter_certification']
      end

      if attributes.key?(:'compliant_nonregistering_local_bank_certification')
        self.compliant_nonregistering_local_bank_certification = attributes[:'compliant_nonregistering_local_bank_certification']
      end

      if attributes.key?(:'compliant_ffi_low_value_accounts_certification')
        self.compliant_ffi_low_value_accounts_certification = attributes[:'compliant_ffi_low_value_accounts_certification']
      end

      if attributes.key?(:'sponsored_closely_held_entity_sponsoring_entity')
        self.sponsored_closely_held_entity_sponsoring_entity = attributes[:'sponsored_closely_held_entity_sponsoring_entity']
      end

      if attributes.key?(:'sponsored_closely_held_investment_vehicle_certification')
        self.sponsored_closely_held_investment_vehicle_certification = attributes[:'sponsored_closely_held_investment_vehicle_certification']
      end

      if attributes.key?(:'compliant_limited_life_debt_entity_certification')
        self.compliant_limited_life_debt_entity_certification = attributes[:'compliant_limited_life_debt_entity_certification']
      end

      if attributes.key?(:'investment_entity_no_financial_accounts_certification')
        self.investment_entity_no_financial_accounts_certification = attributes[:'investment_entity_no_financial_accounts_certification']
      end

      if attributes.key?(:'restricted_distributor_certification')
        self.restricted_distributor_certification = attributes[:'restricted_distributor_certification']
      end

      if attributes.key?(:'restricted_distributor_agreement_certification')
        self.restricted_distributor_agreement_certification = attributes[:'restricted_distributor_agreement_certification']
      end

      if attributes.key?(:'restricted_distributor_preexisting_sales_compliance_certification')
        self.restricted_distributor_preexisting_sales_compliance_certification = attributes[:'restricted_distributor_preexisting_sales_compliance_certification']
      end

      if attributes.key?(:'foreign_central_bank_of_issue_certification')
        self.foreign_central_bank_of_issue_certification = attributes[:'foreign_central_bank_of_issue_certification']
      end

      if attributes.key?(:'nonreporting_iga_ffi_certification')
        self.nonreporting_iga_ffi_certification = attributes[:'nonreporting_iga_ffi_certification']
      end

      if attributes.key?(:'iga_country')
        self.iga_country = attributes[:'iga_country']
      end

      if attributes.key?(:'iga_model')
        self.iga_model = attributes[:'iga_model']
      end

      if attributes.key?(:'iga_legal_status_treatment')
        self.iga_legal_status_treatment = attributes[:'iga_legal_status_treatment']
      end

      if attributes.key?(:'iga_ffi_trustee_or_sponsor')
        self.iga_ffi_trustee_or_sponsor = attributes[:'iga_ffi_trustee_or_sponsor']
      end

      if attributes.key?(:'iga_ffi_trustee_is_foreign')
        self.iga_ffi_trustee_is_foreign = attributes[:'iga_ffi_trustee_is_foreign']
      end

      if attributes.key?(:'treaty_qualified_pension_fund_certification')
        self.treaty_qualified_pension_fund_certification = attributes[:'treaty_qualified_pension_fund_certification']
      end

      if attributes.key?(:'qualified_retirement_fund_certification')
        self.qualified_retirement_fund_certification = attributes[:'qualified_retirement_fund_certification']
      end

      if attributes.key?(:'narrow_participation_retirement_fund_certification')
        self.narrow_participation_retirement_fund_certification = attributes[:'narrow_participation_retirement_fund_certification']
      end

      if attributes.key?(:'section401_a_equivalent_pension_plan_certification')
        self.section401_a_equivalent_pension_plan_certification = attributes[:'section401_a_equivalent_pension_plan_certification']
      end

      if attributes.key?(:'investment_entity_for_retirement_funds_certification')
        self.investment_entity_for_retirement_funds_certification = attributes[:'investment_entity_for_retirement_funds_certification']
      end

      if attributes.key?(:'exempt_beneficial_owner_sponsored_retirement_fund_certification')
        self.exempt_beneficial_owner_sponsored_retirement_fund_certification = attributes[:'exempt_beneficial_owner_sponsored_retirement_fund_certification']
      end

      if attributes.key?(:'excepted_nonfinancial_group_entity_certification')
        self.excepted_nonfinancial_group_entity_certification = attributes[:'excepted_nonfinancial_group_entity_certification']
      end

      if attributes.key?(:'excepted_nonfinancial_start_up_certification')
        self.excepted_nonfinancial_start_up_certification = attributes[:'excepted_nonfinancial_start_up_certification']
      end

      if attributes.key?(:'startup_formation_or_resolution_date')
        self.startup_formation_or_resolution_date = attributes[:'startup_formation_or_resolution_date']
      end

      if attributes.key?(:'excepted_nonfinancial_entity_in_liquidation_or_bankruptcy_certification')
        self.excepted_nonfinancial_entity_in_liquidation_or_bankruptcy_certification = attributes[:'excepted_nonfinancial_entity_in_liquidation_or_bankruptcy_certification']
      end

      if attributes.key?(:'nonfinancial_entity_filing_date')
        self.nonfinancial_entity_filing_date = attributes[:'nonfinancial_entity_filing_date']
      end

      if attributes.key?(:'publicly_traded_nffe_certification')
        self.publicly_traded_nffe_certification = attributes[:'publicly_traded_nffe_certification']
      end

      if attributes.key?(:'publicly_traded_nffe_securities_market')
        self.publicly_traded_nffe_securities_market = attributes[:'publicly_traded_nffe_securities_market']
      end

      if attributes.key?(:'nffe_affiliate_of_publicly_traded_entity_certification')
        self.nffe_affiliate_of_publicly_traded_entity_certification = attributes[:'nffe_affiliate_of_publicly_traded_entity_certification']
      end

      if attributes.key?(:'publicly_traded_entity')
        self.publicly_traded_entity = attributes[:'publicly_traded_entity']
      end

      if attributes.key?(:'nffe_affiliate_of_publicly_traded_entity_securities_market')
        self.nffe_affiliate_of_publicly_traded_entity_securities_market = attributes[:'nffe_affiliate_of_publicly_traded_entity_securities_market']
      end

      if attributes.key?(:'excepted_territory_nffe_certification')
        self.excepted_territory_nffe_certification = attributes[:'excepted_territory_nffe_certification']
      end

      if attributes.key?(:'active_nffe_certification')
        self.active_nffe_certification = attributes[:'active_nffe_certification']
      end

      if attributes.key?(:'passive_nffe_certification')
        self.passive_nffe_certification = attributes[:'passive_nffe_certification']
      end

      if attributes.key?(:'sponsored_direct_reporting_nffe_certification')
        self.sponsored_direct_reporting_nffe_certification = attributes[:'sponsored_direct_reporting_nffe_certification']
      end

      if attributes.key?(:'direct_reporting_nffe_sponsoring_entity')
        self.direct_reporting_nffe_sponsoring_entity = attributes[:'direct_reporting_nffe_sponsoring_entity']
      end

      if attributes.key?(:'signer_name')
        self.signer_name = attributes[:'signer_name']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'entry_status')
        self.entry_status = attributes[:'entry_status']
      end

      if attributes.key?(:'reference_id')
        self.reference_id = attributes[:'reference_id']
      end

      if attributes.key?(:'company_id')
        self.company_id = attributes[:'company_id']
      end

      if attributes.key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'archived')
        self.archived = attributes[:'archived']
      end

      if attributes.key?(:'ancestor_id')
        self.ancestor_id = attributes[:'ancestor_id']
      end

      if attributes.key?(:'signature')
        self.signature = attributes[:'signature']
      end

      if attributes.key?(:'signed_date')
        self.signed_date = attributes[:'signed_date']
      end

      if attributes.key?(:'e_delivery_consented_at')
        self.e_delivery_consented_at = attributes[:'e_delivery_consented_at']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      type_validator = EnumAttributeValidator.new('String', ["W4", "W8Ben", "W8BenE", "W8Imy", "W9"])
      return false unless type_validator.valid?(@type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["W4", "W8Ben", "W8BenE", "W8Imy", "W9"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          name == o.name &&
          citizenship_country == o.citizenship_country &&
          disregarded_entity == o.disregarded_entity &&
          entity_type == o.entity_type &&
          fatca_status == o.fatca_status &&
          residence_address == o.residence_address &&
          residence_city == o.residence_city &&
          residence_state == o.residence_state &&
          residence_zip == o.residence_zip &&
          residence_country == o.residence_country &&
          residence_is_mailing == o.residence_is_mailing &&
          mailing_address == o.mailing_address &&
          mailing_city == o.mailing_city &&
          mailing_state == o.mailing_state &&
          mailing_zip == o.mailing_zip &&
          mailing_country == o.mailing_country &&
          tin_type == o.tin_type &&
          tin == o.tin &&
          giin == o.giin &&
          foreign_tin == o.foreign_tin &&
          reference_number == o.reference_number &&
          disregarded_entity_fatca_status == o.disregarded_entity_fatca_status &&
          disregarded_address == o.disregarded_address &&
          disregarded_city == o.disregarded_city &&
          disregarded_state == o.disregarded_state &&
          disregarded_zip == o.disregarded_zip &&
          disregarded_country == o.disregarded_country &&
          disregarded_entity_giin == o.disregarded_entity_giin &&
          qualified_intermediary_certification == o.qualified_intermediary_certification &&
          qi_primary_withholding_responsibility_certification == o.qi_primary_withholding_responsibility_certification &&
          qi_withholding_responsibility_for_ptp_sales_certification == o.qi_withholding_responsibility_for_ptp_sales_certification &&
          qi_nominee_withholding_responsibility_for_ptp_distributions_certification == o.qi_nominee_withholding_responsibility_for_ptp_distributions_certification &&
          qi_securities_lender_substitute_dividend_withholding_certification == o.qi_securities_lender_substitute_dividend_withholding_certification &&
          qi_withholding_and1099_reporting_responsibility_certification == o.qi_withholding_and1099_reporting_responsibility_certification &&
          qi_form1099_or_fatca_reporting_responsibility_certification == o.qi_form1099_or_fatca_reporting_responsibility_certification &&
          qi_opt_out_of_form1099_reporting_certification == o.qi_opt_out_of_form1099_reporting_certification &&
          qi_withholding_rate_pool_certification == o.qi_withholding_rate_pool_certification &&
          qi_intermediary_or_flow_through_entity_documentation_certification == o.qi_intermediary_or_flow_through_entity_documentation_certification &&
          qualified_derivatives_dealer_certification == o.qualified_derivatives_dealer_certification &&
          qdd_corporation == o.qdd_corporation &&
          qdd_partnership == o.qdd_partnership &&
          qdd_disregarded_entity == o.qdd_disregarded_entity &&
          nonqualified_intermediary_certification == o.nonqualified_intermediary_certification &&
          nqi_withholding_statement_transmission_certification == o.nqi_withholding_statement_transmission_certification &&
          nqi_withholding_rate_pool_compliance_certification == o.nqi_withholding_rate_pool_compliance_certification &&
          nqi_qualified_securities_lender_certification == o.nqi_qualified_securities_lender_certification &&
          nqi_alternative_withholding_statement_verification_certification == o.nqi_alternative_withholding_statement_verification_certification &&
          territory_financial_institution_certification == o.territory_financial_institution_certification &&
          tfi_treated_as_us_person_certification == o.tfi_treated_as_us_person_certification &&
          tfi_withholding_statement_transmission_certification == o.tfi_withholding_statement_transmission_certification &&
          tfi_treated_as_us_person_for_ptp_sales_certification == o.tfi_treated_as_us_person_for_ptp_sales_certification &&
          tfi_nominee_us_person_for_ptp_distributions_certification == o.tfi_nominee_us_person_for_ptp_distributions_certification &&
          tfi_not_nominee_for_ptp_distributions_certification == o.tfi_not_nominee_for_ptp_distributions_certification &&
          us_branch_non_effectively_connected_income_certification == o.us_branch_non_effectively_connected_income_certification &&
          us_branch_agreement_to_be_treated_as_us_person_certification == o.us_branch_agreement_to_be_treated_as_us_person_certification &&
          us_branch_withholding_statement_and_compliance_certification == o.us_branch_withholding_statement_and_compliance_certification &&
          us_branch_acting_as_us_person_for_ptp_sales_certification == o.us_branch_acting_as_us_person_for_ptp_sales_certification &&
          us_branch_nominee_for_ptp_distributions_certification == o.us_branch_nominee_for_ptp_distributions_certification &&
          us_branch_not_nominee_for_ptp_distributions_certification == o.us_branch_not_nominee_for_ptp_distributions_certification &&
          withholding_foreign_partnership_or_trust_certification == o.withholding_foreign_partnership_or_trust_certification &&
          nonwithholding_foreign_entity_withholding_statement_certification == o.nonwithholding_foreign_entity_withholding_statement_certification &&
          foreign_entity_partner_in_lower_tier_partnership_certification == o.foreign_entity_partner_in_lower_tier_partnership_certification &&
          foreign_partnership_amount_realized_section1446_f_certification == o.foreign_partnership_amount_realized_section1446_f_certification &&
          foreign_partnership_modified_amount_realized_certification == o.foreign_partnership_modified_amount_realized_certification &&
          foreign_grantor_trust_amount_realized_allocation_certification == o.foreign_grantor_trust_amount_realized_allocation_certification &&
          alternative_withholding_statement_reliance_certification == o.alternative_withholding_statement_reliance_certification &&
          np_ffi_with_exempt_beneficial_owners_certification == o.np_ffi_with_exempt_beneficial_owners_certification &&
          ffi_sponsoring_entity == o.ffi_sponsoring_entity &&
          investment_entity_certification == o.investment_entity_certification &&
          controlled_foreign_corporation_certification == o.controlled_foreign_corporation_certification &&
          owner_documented_ffi_certification == o.owner_documented_ffi_certification &&
          owner_documented_ffi_reporting_statement_certification == o.owner_documented_ffi_reporting_statement_certification &&
          owner_documented_ffi_auditor_letter_certification == o.owner_documented_ffi_auditor_letter_certification &&
          compliant_nonregistering_local_bank_certification == o.compliant_nonregistering_local_bank_certification &&
          compliant_ffi_low_value_accounts_certification == o.compliant_ffi_low_value_accounts_certification &&
          sponsored_closely_held_entity_sponsoring_entity == o.sponsored_closely_held_entity_sponsoring_entity &&
          sponsored_closely_held_investment_vehicle_certification == o.sponsored_closely_held_investment_vehicle_certification &&
          compliant_limited_life_debt_entity_certification == o.compliant_limited_life_debt_entity_certification &&
          investment_entity_no_financial_accounts_certification == o.investment_entity_no_financial_accounts_certification &&
          restricted_distributor_certification == o.restricted_distributor_certification &&
          restricted_distributor_agreement_certification == o.restricted_distributor_agreement_certification &&
          restricted_distributor_preexisting_sales_compliance_certification == o.restricted_distributor_preexisting_sales_compliance_certification &&
          foreign_central_bank_of_issue_certification == o.foreign_central_bank_of_issue_certification &&
          nonreporting_iga_ffi_certification == o.nonreporting_iga_ffi_certification &&
          iga_country == o.iga_country &&
          iga_model == o.iga_model &&
          iga_legal_status_treatment == o.iga_legal_status_treatment &&
          iga_ffi_trustee_or_sponsor == o.iga_ffi_trustee_or_sponsor &&
          iga_ffi_trustee_is_foreign == o.iga_ffi_trustee_is_foreign &&
          treaty_qualified_pension_fund_certification == o.treaty_qualified_pension_fund_certification &&
          qualified_retirement_fund_certification == o.qualified_retirement_fund_certification &&
          narrow_participation_retirement_fund_certification == o.narrow_participation_retirement_fund_certification &&
          section401_a_equivalent_pension_plan_certification == o.section401_a_equivalent_pension_plan_certification &&
          investment_entity_for_retirement_funds_certification == o.investment_entity_for_retirement_funds_certification &&
          exempt_beneficial_owner_sponsored_retirement_fund_certification == o.exempt_beneficial_owner_sponsored_retirement_fund_certification &&
          excepted_nonfinancial_group_entity_certification == o.excepted_nonfinancial_group_entity_certification &&
          excepted_nonfinancial_start_up_certification == o.excepted_nonfinancial_start_up_certification &&
          startup_formation_or_resolution_date == o.startup_formation_or_resolution_date &&
          excepted_nonfinancial_entity_in_liquidation_or_bankruptcy_certification == o.excepted_nonfinancial_entity_in_liquidation_or_bankruptcy_certification &&
          nonfinancial_entity_filing_date == o.nonfinancial_entity_filing_date &&
          publicly_traded_nffe_certification == o.publicly_traded_nffe_certification &&
          publicly_traded_nffe_securities_market == o.publicly_traded_nffe_securities_market &&
          nffe_affiliate_of_publicly_traded_entity_certification == o.nffe_affiliate_of_publicly_traded_entity_certification &&
          publicly_traded_entity == o.publicly_traded_entity &&
          nffe_affiliate_of_publicly_traded_entity_securities_market == o.nffe_affiliate_of_publicly_traded_entity_securities_market &&
          excepted_territory_nffe_certification == o.excepted_territory_nffe_certification &&
          active_nffe_certification == o.active_nffe_certification &&
          passive_nffe_certification == o.passive_nffe_certification &&
          sponsored_direct_reporting_nffe_certification == o.sponsored_direct_reporting_nffe_certification &&
          direct_reporting_nffe_sponsoring_entity == o.direct_reporting_nffe_sponsoring_entity &&
          signer_name == o.signer_name &&
          id == o.id &&
          entry_status == o.entry_status &&
          reference_id == o.reference_id &&
          company_id == o.company_id &&
          display_name == o.display_name &&
          email == o.email &&
          archived == o.archived &&
          ancestor_id == o.ancestor_id &&
          signature == o.signature &&
          signed_date == o.signed_date &&
          e_delivery_consented_at == o.e_delivery_consented_at &&
          created_at == o.created_at &&
          updated_at == o.updated_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [type, name, citizenship_country, disregarded_entity, entity_type, fatca_status, residence_address, residence_city, residence_state, residence_zip, residence_country, residence_is_mailing, mailing_address, mailing_city, mailing_state, mailing_zip, mailing_country, tin_type, tin, giin, foreign_tin, reference_number, disregarded_entity_fatca_status, disregarded_address, disregarded_city, disregarded_state, disregarded_zip, disregarded_country, disregarded_entity_giin, qualified_intermediary_certification, qi_primary_withholding_responsibility_certification, qi_withholding_responsibility_for_ptp_sales_certification, qi_nominee_withholding_responsibility_for_ptp_distributions_certification, qi_securities_lender_substitute_dividend_withholding_certification, qi_withholding_and1099_reporting_responsibility_certification, qi_form1099_or_fatca_reporting_responsibility_certification, qi_opt_out_of_form1099_reporting_certification, qi_withholding_rate_pool_certification, qi_intermediary_or_flow_through_entity_documentation_certification, qualified_derivatives_dealer_certification, qdd_corporation, qdd_partnership, qdd_disregarded_entity, nonqualified_intermediary_certification, nqi_withholding_statement_transmission_certification, nqi_withholding_rate_pool_compliance_certification, nqi_qualified_securities_lender_certification, nqi_alternative_withholding_statement_verification_certification, territory_financial_institution_certification, tfi_treated_as_us_person_certification, tfi_withholding_statement_transmission_certification, tfi_treated_as_us_person_for_ptp_sales_certification, tfi_nominee_us_person_for_ptp_distributions_certification, tfi_not_nominee_for_ptp_distributions_certification, us_branch_non_effectively_connected_income_certification, us_branch_agreement_to_be_treated_as_us_person_certification, us_branch_withholding_statement_and_compliance_certification, us_branch_acting_as_us_person_for_ptp_sales_certification, us_branch_nominee_for_ptp_distributions_certification, us_branch_not_nominee_for_ptp_distributions_certification, withholding_foreign_partnership_or_trust_certification, nonwithholding_foreign_entity_withholding_statement_certification, foreign_entity_partner_in_lower_tier_partnership_certification, foreign_partnership_amount_realized_section1446_f_certification, foreign_partnership_modified_amount_realized_certification, foreign_grantor_trust_amount_realized_allocation_certification, alternative_withholding_statement_reliance_certification, np_ffi_with_exempt_beneficial_owners_certification, ffi_sponsoring_entity, investment_entity_certification, controlled_foreign_corporation_certification, owner_documented_ffi_certification, owner_documented_ffi_reporting_statement_certification, owner_documented_ffi_auditor_letter_certification, compliant_nonregistering_local_bank_certification, compliant_ffi_low_value_accounts_certification, sponsored_closely_held_entity_sponsoring_entity, sponsored_closely_held_investment_vehicle_certification, compliant_limited_life_debt_entity_certification, investment_entity_no_financial_accounts_certification, restricted_distributor_certification, restricted_distributor_agreement_certification, restricted_distributor_preexisting_sales_compliance_certification, foreign_central_bank_of_issue_certification, nonreporting_iga_ffi_certification, iga_country, iga_model, iga_legal_status_treatment, iga_ffi_trustee_or_sponsor, iga_ffi_trustee_is_foreign, treaty_qualified_pension_fund_certification, qualified_retirement_fund_certification, narrow_participation_retirement_fund_certification, section401_a_equivalent_pension_plan_certification, investment_entity_for_retirement_funds_certification, exempt_beneficial_owner_sponsored_retirement_fund_certification, excepted_nonfinancial_group_entity_certification, excepted_nonfinancial_start_up_certification, startup_formation_or_resolution_date, excepted_nonfinancial_entity_in_liquidation_or_bankruptcy_certification, nonfinancial_entity_filing_date, publicly_traded_nffe_certification, publicly_traded_nffe_securities_market, nffe_affiliate_of_publicly_traded_entity_certification, publicly_traded_entity, nffe_affiliate_of_publicly_traded_entity_securities_market, excepted_territory_nffe_certification, active_nffe_certification, passive_nffe_certification, sponsored_direct_reporting_nffe_certification, direct_reporting_nffe_sponsoring_entity, signer_name, id, entry_status, reference_id, company_id, display_name, email, archived, ancestor_id, signature, signed_date, e_delivery_consented_at, created_at, updated_at].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = AvalaraSdk::A1099::V2.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
