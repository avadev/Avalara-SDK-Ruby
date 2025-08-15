=begin
#Avalara 1099 & W-9 API Definition

### 🔐 Authentication  Generate a **license key** from: *[Avalara Portal](https://www.avalara.com/us/en/signin.html) → Settings → License and API Keys*.  [More on authentication methods](https://developer.avalara.com/avatax-dm-combined-erp/common-setup/authentication/authentication-methods/)  [Test your credentials](https://developer.avalara.com/avatax/test-credentials/)  ## 📘 API & SDK Documentation  [Avalara SDK (.NET) on GitHub](https://github.com/avadev/Avalara-SDK-DotNet#avalarasdk--the-unified-c-library-for-next-gen-avalara-services)  [Code Examples – 1099 API](https://github.com/avadev/Avalara-SDK-DotNet/blob/main/docs/A1099/V2/Class1099IssuersApi.md#call1099issuersget)


=end

require 'date'
require 'time'

module AvalaraSdk::A1099::V2
      class W8BenEFormResponse < W9FormBaseResponse
    # The name of the individual or entity associated with the form.
    attr_accessor :name

    # The country of citizenship.
    attr_accessor :citizenship_country

    # The name of the disregarded entity receiving the payment (if applicable).
    attr_accessor :disregarded_entity

    # The entity type.
    attr_accessor :entity_type

    # Indicates whether the entity is making a treaty claim.
    attr_accessor :making_treaty_claim

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

    # The type of TIN provided.
    attr_accessor :tin_type

    # The taxpayer identification number (TIN).
    attr_accessor :tin

    # The global intermediary identification number (GIIN).
    attr_accessor :giin

    # Indicates whether a foreign TIN is not required.
    attr_accessor :foreign_tin_not_required

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

    # Certifies the beneficial owner's country under the U.S. tax treaty.
    attr_accessor :treaty_country_certification

    # The treaty country of the beneficial owner.
    attr_accessor :treaty_country

    # Certifies that the beneficial owner is eligible for treaty benefits and meets any limitation on benefits requirements.
    attr_accessor :benefit_limitation_certification

    # The benefit limitation for tax treaty claims.
    attr_accessor :benefit_limitation

    # Certifies that the beneficial owner claims treaty benefits and meets the qualified resident status for specific U.S. source income.
    attr_accessor :qualified_resident_status_certification

    # Indicates the specific article and paragraph of the tax treaty under which the beneficial owner is claiming benefits.
    attr_accessor :treaty_article

    # Specifies the reduced withholding rate claimed under the applicable tax treaty.
    attr_accessor :withholding_rate

    # Specifies the type of income for which the reduced treaty withholding rate is being claimed.
    attr_accessor :income_type

    # The additional conditions in the article the beneficial owner meets to be eligible for the rate of withholding.
    attr_accessor :treaty_reasons

    # The name of the entity that sponsors the foreign financial institution (FFI).
    attr_accessor :ffi_sponsoring_entity

    # Certifies that the entity is an investment entity, not a QI, WP, or WT, and has an agreement with a sponsoring entity.
    attr_accessor :investment_entity_certification

    # Certifies that the entity is a controlled foreign corporation sponsored by a U.S. financial institution, not a QI, WP, or WT,  and shares a common electronic account system for full transparency.
    attr_accessor :controlled_foreign_corporation_certification

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

    # Certifies that the FFI meets all requirements to qualify as an owner-documented FFI, including restrictions on activities,  ownership, and account relationships.
    attr_accessor :owner_documented_ffi_certification

    # Certifies that the FFI will provide a complete owner reporting statement  and required documentation for each relevant owner or debt holder.
    attr_accessor :owner_documented_ffi_reporting_statement_certification

    # Certifies that the FFI will provide an auditor’s letter and required owner reporting documentation  to confirm its status as an owner-documented FFI.
    attr_accessor :owner_documented_ffi_auditor_letter_certification

    # Certifies that the trust has no contingent or unidentified beneficiaries or designated classes of beneficiaries.
    attr_accessor :owner_documented_ffi_trust_beneficiaries_certification

    # Certifies that the entity qualifies as a restricted distributor based on its operations, customer base, regulatory compliance,  and financial and geographic limitations.
    attr_accessor :restricted_distributor_certification

    # Certifies that the entity is, and has been, bound by distribution agreements prohibiting sales of fund interests to  specified U.S. persons and certain non-U.S. entities.
    attr_accessor :restricted_distributor_agreement_certification

    # Certifies that the entity complies with distribution restrictions for U.S.-linked investors  and has addressed any preexisting sales in accordance with FATCA regulations.
    attr_accessor :restricted_distributor_preexisting_sales_compliance_certification

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

    # Certifies that the entity is the beneficial owner and is not engaged in commercial financial activities related  to the specified payments, accounts or obligations for which this form is submitted.
    attr_accessor :non_commercial_financial_activity_certification

    # Certifies that the entity is an international organization described in section 7701(a)(18).
    attr_accessor :internation_organization_certification

    # Certifies that the entity is an intergovernmental or supranational organization primarily comprised of foreign governments,  is the beneficial owner, and is not engaged in commercial financial activities.
    attr_accessor :intergovernmental_organization_certification

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

    # Certifies that the entity is an investment entity wholly owned by exempt beneficial owners and has provided complete ownership  and documentation details as required under FATCA regulations.
    attr_accessor :exempt_beneficial_owner_owned_investment_entity_certification

    # Certifies that the entity is a financial institution (other than an investment entity) that is incorporated  or organized under the laws of a possession of the United States.
    attr_accessor :territory_financial_institution_certification

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

    # Certifies that the entity is a section 501(c) organization based on a valid IRS determination letter  or a legal opinion from U.S. counsel.
    attr_accessor :section501_c_organization_certification

    # The date of the IRS determination letter confirming the entity’s section 501(c) status.
    attr_accessor :determination_letter_date

    # Certifies that the entity is a nonprofit organization established for charitable or similar purposes, exempt from income tax,  and restricted in the use and distribution of its assets under applicable law.
    attr_accessor :nonprofit_organization_certification

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

    # Certifies that the passive NFFE has no substantial U.S. owners or controlling U.S. persons.
    attr_accessor :passive_nffe_no_substantial_us_owners_certification

    # Certifies that the passive NFFE has provided the name, address, and TIN of each substantial U.S. owner or controlling U.S. person.
    attr_accessor :passive_nffe_substantial_us_owners_provided_certification

    # Certifies that the entity is an inter-affiliate FFI meeting all conditions for exemption,  including limited account activity and payment interactions within its expanded affiliated group.
    attr_accessor :excepted_inter_affiliate_ffi_certification

    # Certifies that the entity is a sponsored direct reporting NFFE.
    attr_accessor :sponsored_direct_reporting_nffe_certification

    # The name of the entity that sponsors the direct reporting NFFE.
    attr_accessor :direct_reporting_nffe_sponsoring_entity

    # The list of substantial U.S. owners of passive NFFE.
    attr_accessor :substantial_us_owners

    # The name of the signer.
    attr_accessor :signer_name

    # Certifies signer has the capacity to sign for the beneficial owner.
    attr_accessor :capacity_to_sign_certification

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'citizenship_country' => :'citizenshipCountry',
        :'disregarded_entity' => :'disregardedEntity',
        :'entity_type' => :'entityType',
        :'making_treaty_claim' => :'makingTreatyClaim',
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
        :'foreign_tin_not_required' => :'foreignTinNotRequired',
        :'foreign_tin' => :'foreignTin',
        :'reference_number' => :'referenceNumber',
        :'disregarded_entity_fatca_status' => :'disregardedEntityFatcaStatus',
        :'disregarded_address' => :'disregardedAddress',
        :'disregarded_city' => :'disregardedCity',
        :'disregarded_state' => :'disregardedState',
        :'disregarded_zip' => :'disregardedZip',
        :'disregarded_country' => :'disregardedCountry',
        :'disregarded_entity_giin' => :'disregardedEntityGiin',
        :'treaty_country_certification' => :'treatyCountryCertification',
        :'treaty_country' => :'treatyCountry',
        :'benefit_limitation_certification' => :'benefitLimitationCertification',
        :'benefit_limitation' => :'benefitLimitation',
        :'qualified_resident_status_certification' => :'qualifiedResidentStatusCertification',
        :'treaty_article' => :'treatyArticle',
        :'withholding_rate' => :'withholdingRate',
        :'income_type' => :'incomeType',
        :'treaty_reasons' => :'treatyReasons',
        :'ffi_sponsoring_entity' => :'ffiSponsoringEntity',
        :'investment_entity_certification' => :'investmentEntityCertification',
        :'controlled_foreign_corporation_certification' => :'controlledForeignCorporationCertification',
        :'compliant_nonregistering_local_bank_certification' => :'compliantNonregisteringLocalBankCertification',
        :'compliant_ffi_low_value_accounts_certification' => :'compliantFfiLowValueAccountsCertification',
        :'sponsored_closely_held_entity_sponsoring_entity' => :'sponsoredCloselyHeldEntitySponsoringEntity',
        :'sponsored_closely_held_investment_vehicle_certification' => :'sponsoredCloselyHeldInvestmentVehicleCertification',
        :'compliant_limited_life_debt_entity_certification' => :'compliantLimitedLifeDebtEntityCertification',
        :'investment_entity_no_financial_accounts_certification' => :'investmentEntityNoFinancialAccountsCertification',
        :'owner_documented_ffi_certification' => :'ownerDocumentedFfiCertification',
        :'owner_documented_ffi_reporting_statement_certification' => :'ownerDocumentedFfiReportingStatementCertification',
        :'owner_documented_ffi_auditor_letter_certification' => :'ownerDocumentedFfiAuditorLetterCertification',
        :'owner_documented_ffi_trust_beneficiaries_certification' => :'ownerDocumentedFfiTrustBeneficiariesCertification',
        :'restricted_distributor_certification' => :'restrictedDistributorCertification',
        :'restricted_distributor_agreement_certification' => :'restrictedDistributorAgreementCertification',
        :'restricted_distributor_preexisting_sales_compliance_certification' => :'restrictedDistributorPreexistingSalesComplianceCertification',
        :'nonreporting_iga_ffi_certification' => :'nonreportingIgaFfiCertification',
        :'iga_country' => :'igaCountry',
        :'iga_model' => :'igaModel',
        :'iga_legal_status_treatment' => :'igaLegalStatusTreatment',
        :'iga_ffi_trustee_or_sponsor' => :'igaFfiTrusteeOrSponsor',
        :'iga_ffi_trustee_is_foreign' => :'igaFfiTrusteeIsForeign',
        :'non_commercial_financial_activity_certification' => :'nonCommercialFinancialActivityCertification',
        :'internation_organization_certification' => :'internationOrganizationCertification',
        :'intergovernmental_organization_certification' => :'intergovernmentalOrganizationCertification',
        :'treaty_qualified_pension_fund_certification' => :'treatyQualifiedPensionFundCertification',
        :'qualified_retirement_fund_certification' => :'qualifiedRetirementFundCertification',
        :'narrow_participation_retirement_fund_certification' => :'narrowParticipationRetirementFundCertification',
        :'section401_a_equivalent_pension_plan_certification' => :'section401AEquivalentPensionPlanCertification',
        :'investment_entity_for_retirement_funds_certification' => :'investmentEntityForRetirementFundsCertification',
        :'exempt_beneficial_owner_sponsored_retirement_fund_certification' => :'exemptBeneficialOwnerSponsoredRetirementFundCertification',
        :'exempt_beneficial_owner_owned_investment_entity_certification' => :'exemptBeneficialOwnerOwnedInvestmentEntityCertification',
        :'territory_financial_institution_certification' => :'territoryFinancialInstitutionCertification',
        :'excepted_nonfinancial_group_entity_certification' => :'exceptedNonfinancialGroupEntityCertification',
        :'excepted_nonfinancial_start_up_certification' => :'exceptedNonfinancialStartUpCertification',
        :'startup_formation_or_resolution_date' => :'startupFormationOrResolutionDate',
        :'excepted_nonfinancial_entity_in_liquidation_or_bankruptcy_certification' => :'exceptedNonfinancialEntityInLiquidationOrBankruptcyCertification',
        :'nonfinancial_entity_filing_date' => :'nonfinancialEntityFilingDate',
        :'section501_c_organization_certification' => :'section501COrganizationCertification',
        :'determination_letter_date' => :'determinationLetterDate',
        :'nonprofit_organization_certification' => :'nonprofitOrganizationCertification',
        :'publicly_traded_nffe_certification' => :'publiclyTradedNffeCertification',
        :'publicly_traded_nffe_securities_market' => :'publiclyTradedNffeSecuritiesMarket',
        :'nffe_affiliate_of_publicly_traded_entity_certification' => :'nffeAffiliateOfPubliclyTradedEntityCertification',
        :'publicly_traded_entity' => :'publiclyTradedEntity',
        :'nffe_affiliate_of_publicly_traded_entity_securities_market' => :'nffeAffiliateOfPubliclyTradedEntitySecuritiesMarket',
        :'excepted_territory_nffe_certification' => :'exceptedTerritoryNffeCertification',
        :'active_nffe_certification' => :'activeNffeCertification',
        :'passive_nffe_certification' => :'passiveNffeCertification',
        :'passive_nffe_no_substantial_us_owners_certification' => :'passiveNffeNoSubstantialUsOwnersCertification',
        :'passive_nffe_substantial_us_owners_provided_certification' => :'passiveNffeSubstantialUsOwnersProvidedCertification',
        :'excepted_inter_affiliate_ffi_certification' => :'exceptedInterAffiliateFfiCertification',
        :'sponsored_direct_reporting_nffe_certification' => :'sponsoredDirectReportingNffeCertification',
        :'direct_reporting_nffe_sponsoring_entity' => :'directReportingNffeSponsoringEntity',
        :'substantial_us_owners' => :'substantialUsOwners',
        :'signer_name' => :'signerName',
        :'capacity_to_sign_certification' => :'capacityToSignCertification'
      }
    end

    # Returns all the JSON keys this model knows about, including the ones defined in its parent(s)
    def self.acceptable_attributes
      attribute_map.values.concat(superclass.acceptable_attributes)
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'name' => :'String',
        :'citizenship_country' => :'String',
        :'disregarded_entity' => :'String',
        :'entity_type' => :'String',
        :'making_treaty_claim' => :'Boolean',
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
        :'foreign_tin_not_required' => :'Boolean',
        :'foreign_tin' => :'String',
        :'reference_number' => :'String',
        :'disregarded_entity_fatca_status' => :'String',
        :'disregarded_address' => :'String',
        :'disregarded_city' => :'String',
        :'disregarded_state' => :'String',
        :'disregarded_zip' => :'String',
        :'disregarded_country' => :'String',
        :'disregarded_entity_giin' => :'String',
        :'treaty_country_certification' => :'Boolean',
        :'treaty_country' => :'String',
        :'benefit_limitation_certification' => :'Boolean',
        :'benefit_limitation' => :'String',
        :'qualified_resident_status_certification' => :'Boolean',
        :'treaty_article' => :'String',
        :'withholding_rate' => :'String',
        :'income_type' => :'String',
        :'treaty_reasons' => :'String',
        :'ffi_sponsoring_entity' => :'String',
        :'investment_entity_certification' => :'Boolean',
        :'controlled_foreign_corporation_certification' => :'Boolean',
        :'compliant_nonregistering_local_bank_certification' => :'Boolean',
        :'compliant_ffi_low_value_accounts_certification' => :'Boolean',
        :'sponsored_closely_held_entity_sponsoring_entity' => :'String',
        :'sponsored_closely_held_investment_vehicle_certification' => :'Boolean',
        :'compliant_limited_life_debt_entity_certification' => :'Boolean',
        :'investment_entity_no_financial_accounts_certification' => :'Boolean',
        :'owner_documented_ffi_certification' => :'Boolean',
        :'owner_documented_ffi_reporting_statement_certification' => :'Boolean',
        :'owner_documented_ffi_auditor_letter_certification' => :'Boolean',
        :'owner_documented_ffi_trust_beneficiaries_certification' => :'Boolean',
        :'restricted_distributor_certification' => :'Boolean',
        :'restricted_distributor_agreement_certification' => :'Boolean',
        :'restricted_distributor_preexisting_sales_compliance_certification' => :'Boolean',
        :'nonreporting_iga_ffi_certification' => :'Boolean',
        :'iga_country' => :'String',
        :'iga_model' => :'String',
        :'iga_legal_status_treatment' => :'String',
        :'iga_ffi_trustee_or_sponsor' => :'String',
        :'iga_ffi_trustee_is_foreign' => :'Boolean',
        :'non_commercial_financial_activity_certification' => :'Boolean',
        :'internation_organization_certification' => :'Boolean',
        :'intergovernmental_organization_certification' => :'Boolean',
        :'treaty_qualified_pension_fund_certification' => :'Boolean',
        :'qualified_retirement_fund_certification' => :'Boolean',
        :'narrow_participation_retirement_fund_certification' => :'Boolean',
        :'section401_a_equivalent_pension_plan_certification' => :'Boolean',
        :'investment_entity_for_retirement_funds_certification' => :'Boolean',
        :'exempt_beneficial_owner_sponsored_retirement_fund_certification' => :'Boolean',
        :'exempt_beneficial_owner_owned_investment_entity_certification' => :'Boolean',
        :'territory_financial_institution_certification' => :'Boolean',
        :'excepted_nonfinancial_group_entity_certification' => :'Boolean',
        :'excepted_nonfinancial_start_up_certification' => :'Boolean',
        :'startup_formation_or_resolution_date' => :'Date',
        :'excepted_nonfinancial_entity_in_liquidation_or_bankruptcy_certification' => :'Boolean',
        :'nonfinancial_entity_filing_date' => :'Date',
        :'section501_c_organization_certification' => :'Boolean',
        :'determination_letter_date' => :'Date',
        :'nonprofit_organization_certification' => :'Boolean',
        :'publicly_traded_nffe_certification' => :'Boolean',
        :'publicly_traded_nffe_securities_market' => :'String',
        :'nffe_affiliate_of_publicly_traded_entity_certification' => :'Boolean',
        :'publicly_traded_entity' => :'String',
        :'nffe_affiliate_of_publicly_traded_entity_securities_market' => :'String',
        :'excepted_territory_nffe_certification' => :'Boolean',
        :'active_nffe_certification' => :'Boolean',
        :'passive_nffe_certification' => :'Boolean',
        :'passive_nffe_no_substantial_us_owners_certification' => :'Boolean',
        :'passive_nffe_substantial_us_owners_provided_certification' => :'Boolean',
        :'excepted_inter_affiliate_ffi_certification' => :'Boolean',
        :'sponsored_direct_reporting_nffe_certification' => :'Boolean',
        :'direct_reporting_nffe_sponsoring_entity' => :'String',
        :'substantial_us_owners' => :'Array<SubstantialUsOwnerResponse>',
        :'signer_name' => :'String',
        :'capacity_to_sign_certification' => :'Boolean'
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
        :'treaty_country',
        :'benefit_limitation',
        :'treaty_article',
        :'withholding_rate',
        :'income_type',
        :'treaty_reasons',
        :'ffi_sponsoring_entity',
        :'sponsored_closely_held_entity_sponsoring_entity',
        :'iga_country',
        :'iga_model',
        :'iga_legal_status_treatment',
        :'iga_ffi_trustee_or_sponsor',
        :'iga_ffi_trustee_is_foreign',
        :'startup_formation_or_resolution_date',
        :'nonfinancial_entity_filing_date',
        :'determination_letter_date',
        :'publicly_traded_nffe_securities_market',
        :'publicly_traded_entity',
        :'nffe_affiliate_of_publicly_traded_entity_securities_market',
        :'direct_reporting_nffe_sponsoring_entity',
        :'signer_name',
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `AvalaraSdk::A1099::V2::W8BenEFormResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AvalaraSdk::A1099::V2::W8BenEFormResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

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

      if attributes.key?(:'making_treaty_claim')
        self.making_treaty_claim = attributes[:'making_treaty_claim']
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

      if attributes.key?(:'foreign_tin_not_required')
        self.foreign_tin_not_required = attributes[:'foreign_tin_not_required']
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

      if attributes.key?(:'treaty_country_certification')
        self.treaty_country_certification = attributes[:'treaty_country_certification']
      end

      if attributes.key?(:'treaty_country')
        self.treaty_country = attributes[:'treaty_country']
      end

      if attributes.key?(:'benefit_limitation_certification')
        self.benefit_limitation_certification = attributes[:'benefit_limitation_certification']
      end

      if attributes.key?(:'benefit_limitation')
        self.benefit_limitation = attributes[:'benefit_limitation']
      end

      if attributes.key?(:'qualified_resident_status_certification')
        self.qualified_resident_status_certification = attributes[:'qualified_resident_status_certification']
      end

      if attributes.key?(:'treaty_article')
        self.treaty_article = attributes[:'treaty_article']
      end

      if attributes.key?(:'withholding_rate')
        self.withholding_rate = attributes[:'withholding_rate']
      end

      if attributes.key?(:'income_type')
        self.income_type = attributes[:'income_type']
      end

      if attributes.key?(:'treaty_reasons')
        self.treaty_reasons = attributes[:'treaty_reasons']
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

      if attributes.key?(:'owner_documented_ffi_certification')
        self.owner_documented_ffi_certification = attributes[:'owner_documented_ffi_certification']
      end

      if attributes.key?(:'owner_documented_ffi_reporting_statement_certification')
        self.owner_documented_ffi_reporting_statement_certification = attributes[:'owner_documented_ffi_reporting_statement_certification']
      end

      if attributes.key?(:'owner_documented_ffi_auditor_letter_certification')
        self.owner_documented_ffi_auditor_letter_certification = attributes[:'owner_documented_ffi_auditor_letter_certification']
      end

      if attributes.key?(:'owner_documented_ffi_trust_beneficiaries_certification')
        self.owner_documented_ffi_trust_beneficiaries_certification = attributes[:'owner_documented_ffi_trust_beneficiaries_certification']
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

      if attributes.key?(:'non_commercial_financial_activity_certification')
        self.non_commercial_financial_activity_certification = attributes[:'non_commercial_financial_activity_certification']
      end

      if attributes.key?(:'internation_organization_certification')
        self.internation_organization_certification = attributes[:'internation_organization_certification']
      end

      if attributes.key?(:'intergovernmental_organization_certification')
        self.intergovernmental_organization_certification = attributes[:'intergovernmental_organization_certification']
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

      if attributes.key?(:'exempt_beneficial_owner_owned_investment_entity_certification')
        self.exempt_beneficial_owner_owned_investment_entity_certification = attributes[:'exempt_beneficial_owner_owned_investment_entity_certification']
      end

      if attributes.key?(:'territory_financial_institution_certification')
        self.territory_financial_institution_certification = attributes[:'territory_financial_institution_certification']
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

      if attributes.key?(:'section501_c_organization_certification')
        self.section501_c_organization_certification = attributes[:'section501_c_organization_certification']
      end

      if attributes.key?(:'determination_letter_date')
        self.determination_letter_date = attributes[:'determination_letter_date']
      end

      if attributes.key?(:'nonprofit_organization_certification')
        self.nonprofit_organization_certification = attributes[:'nonprofit_organization_certification']
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

      if attributes.key?(:'passive_nffe_no_substantial_us_owners_certification')
        self.passive_nffe_no_substantial_us_owners_certification = attributes[:'passive_nffe_no_substantial_us_owners_certification']
      end

      if attributes.key?(:'passive_nffe_substantial_us_owners_provided_certification')
        self.passive_nffe_substantial_us_owners_provided_certification = attributes[:'passive_nffe_substantial_us_owners_provided_certification']
      end

      if attributes.key?(:'excepted_inter_affiliate_ffi_certification')
        self.excepted_inter_affiliate_ffi_certification = attributes[:'excepted_inter_affiliate_ffi_certification']
      end

      if attributes.key?(:'sponsored_direct_reporting_nffe_certification')
        self.sponsored_direct_reporting_nffe_certification = attributes[:'sponsored_direct_reporting_nffe_certification']
      end

      if attributes.key?(:'direct_reporting_nffe_sponsoring_entity')
        self.direct_reporting_nffe_sponsoring_entity = attributes[:'direct_reporting_nffe_sponsoring_entity']
      end

      if attributes.key?(:'substantial_us_owners')
        if (value = attributes[:'substantial_us_owners']).is_a?(Array)
          self.substantial_us_owners = value
        end
      end

      if attributes.key?(:'signer_name')
        self.signer_name = attributes[:'signer_name']
      end

      if attributes.key?(:'capacity_to_sign_certification')
        self.capacity_to_sign_certification = attributes[:'capacity_to_sign_certification']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = super
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true && super
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          citizenship_country == o.citizenship_country &&
          disregarded_entity == o.disregarded_entity &&
          entity_type == o.entity_type &&
          making_treaty_claim == o.making_treaty_claim &&
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
          foreign_tin_not_required == o.foreign_tin_not_required &&
          foreign_tin == o.foreign_tin &&
          reference_number == o.reference_number &&
          disregarded_entity_fatca_status == o.disregarded_entity_fatca_status &&
          disregarded_address == o.disregarded_address &&
          disregarded_city == o.disregarded_city &&
          disregarded_state == o.disregarded_state &&
          disregarded_zip == o.disregarded_zip &&
          disregarded_country == o.disregarded_country &&
          disregarded_entity_giin == o.disregarded_entity_giin &&
          treaty_country_certification == o.treaty_country_certification &&
          treaty_country == o.treaty_country &&
          benefit_limitation_certification == o.benefit_limitation_certification &&
          benefit_limitation == o.benefit_limitation &&
          qualified_resident_status_certification == o.qualified_resident_status_certification &&
          treaty_article == o.treaty_article &&
          withholding_rate == o.withholding_rate &&
          income_type == o.income_type &&
          treaty_reasons == o.treaty_reasons &&
          ffi_sponsoring_entity == o.ffi_sponsoring_entity &&
          investment_entity_certification == o.investment_entity_certification &&
          controlled_foreign_corporation_certification == o.controlled_foreign_corporation_certification &&
          compliant_nonregistering_local_bank_certification == o.compliant_nonregistering_local_bank_certification &&
          compliant_ffi_low_value_accounts_certification == o.compliant_ffi_low_value_accounts_certification &&
          sponsored_closely_held_entity_sponsoring_entity == o.sponsored_closely_held_entity_sponsoring_entity &&
          sponsored_closely_held_investment_vehicle_certification == o.sponsored_closely_held_investment_vehicle_certification &&
          compliant_limited_life_debt_entity_certification == o.compliant_limited_life_debt_entity_certification &&
          investment_entity_no_financial_accounts_certification == o.investment_entity_no_financial_accounts_certification &&
          owner_documented_ffi_certification == o.owner_documented_ffi_certification &&
          owner_documented_ffi_reporting_statement_certification == o.owner_documented_ffi_reporting_statement_certification &&
          owner_documented_ffi_auditor_letter_certification == o.owner_documented_ffi_auditor_letter_certification &&
          owner_documented_ffi_trust_beneficiaries_certification == o.owner_documented_ffi_trust_beneficiaries_certification &&
          restricted_distributor_certification == o.restricted_distributor_certification &&
          restricted_distributor_agreement_certification == o.restricted_distributor_agreement_certification &&
          restricted_distributor_preexisting_sales_compliance_certification == o.restricted_distributor_preexisting_sales_compliance_certification &&
          nonreporting_iga_ffi_certification == o.nonreporting_iga_ffi_certification &&
          iga_country == o.iga_country &&
          iga_model == o.iga_model &&
          iga_legal_status_treatment == o.iga_legal_status_treatment &&
          iga_ffi_trustee_or_sponsor == o.iga_ffi_trustee_or_sponsor &&
          iga_ffi_trustee_is_foreign == o.iga_ffi_trustee_is_foreign &&
          non_commercial_financial_activity_certification == o.non_commercial_financial_activity_certification &&
          internation_organization_certification == o.internation_organization_certification &&
          intergovernmental_organization_certification == o.intergovernmental_organization_certification &&
          treaty_qualified_pension_fund_certification == o.treaty_qualified_pension_fund_certification &&
          qualified_retirement_fund_certification == o.qualified_retirement_fund_certification &&
          narrow_participation_retirement_fund_certification == o.narrow_participation_retirement_fund_certification &&
          section401_a_equivalent_pension_plan_certification == o.section401_a_equivalent_pension_plan_certification &&
          investment_entity_for_retirement_funds_certification == o.investment_entity_for_retirement_funds_certification &&
          exempt_beneficial_owner_sponsored_retirement_fund_certification == o.exempt_beneficial_owner_sponsored_retirement_fund_certification &&
          exempt_beneficial_owner_owned_investment_entity_certification == o.exempt_beneficial_owner_owned_investment_entity_certification &&
          territory_financial_institution_certification == o.territory_financial_institution_certification &&
          excepted_nonfinancial_group_entity_certification == o.excepted_nonfinancial_group_entity_certification &&
          excepted_nonfinancial_start_up_certification == o.excepted_nonfinancial_start_up_certification &&
          startup_formation_or_resolution_date == o.startup_formation_or_resolution_date &&
          excepted_nonfinancial_entity_in_liquidation_or_bankruptcy_certification == o.excepted_nonfinancial_entity_in_liquidation_or_bankruptcy_certification &&
          nonfinancial_entity_filing_date == o.nonfinancial_entity_filing_date &&
          section501_c_organization_certification == o.section501_c_organization_certification &&
          determination_letter_date == o.determination_letter_date &&
          nonprofit_organization_certification == o.nonprofit_organization_certification &&
          publicly_traded_nffe_certification == o.publicly_traded_nffe_certification &&
          publicly_traded_nffe_securities_market == o.publicly_traded_nffe_securities_market &&
          nffe_affiliate_of_publicly_traded_entity_certification == o.nffe_affiliate_of_publicly_traded_entity_certification &&
          publicly_traded_entity == o.publicly_traded_entity &&
          nffe_affiliate_of_publicly_traded_entity_securities_market == o.nffe_affiliate_of_publicly_traded_entity_securities_market &&
          excepted_territory_nffe_certification == o.excepted_territory_nffe_certification &&
          active_nffe_certification == o.active_nffe_certification &&
          passive_nffe_certification == o.passive_nffe_certification &&
          passive_nffe_no_substantial_us_owners_certification == o.passive_nffe_no_substantial_us_owners_certification &&
          passive_nffe_substantial_us_owners_provided_certification == o.passive_nffe_substantial_us_owners_provided_certification &&
          excepted_inter_affiliate_ffi_certification == o.excepted_inter_affiliate_ffi_certification &&
          sponsored_direct_reporting_nffe_certification == o.sponsored_direct_reporting_nffe_certification &&
          direct_reporting_nffe_sponsoring_entity == o.direct_reporting_nffe_sponsoring_entity &&
          substantial_us_owners == o.substantial_us_owners &&
          signer_name == o.signer_name &&
          capacity_to_sign_certification == o.capacity_to_sign_certification && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, citizenship_country, disregarded_entity, entity_type, making_treaty_claim, fatca_status, residence_address, residence_city, residence_state, residence_zip, residence_country, residence_is_mailing, mailing_address, mailing_city, mailing_state, mailing_zip, mailing_country, tin_type, tin, giin, foreign_tin_not_required, foreign_tin, reference_number, disregarded_entity_fatca_status, disregarded_address, disregarded_city, disregarded_state, disregarded_zip, disregarded_country, disregarded_entity_giin, treaty_country_certification, treaty_country, benefit_limitation_certification, benefit_limitation, qualified_resident_status_certification, treaty_article, withholding_rate, income_type, treaty_reasons, ffi_sponsoring_entity, investment_entity_certification, controlled_foreign_corporation_certification, compliant_nonregistering_local_bank_certification, compliant_ffi_low_value_accounts_certification, sponsored_closely_held_entity_sponsoring_entity, sponsored_closely_held_investment_vehicle_certification, compliant_limited_life_debt_entity_certification, investment_entity_no_financial_accounts_certification, owner_documented_ffi_certification, owner_documented_ffi_reporting_statement_certification, owner_documented_ffi_auditor_letter_certification, owner_documented_ffi_trust_beneficiaries_certification, restricted_distributor_certification, restricted_distributor_agreement_certification, restricted_distributor_preexisting_sales_compliance_certification, nonreporting_iga_ffi_certification, iga_country, iga_model, iga_legal_status_treatment, iga_ffi_trustee_or_sponsor, iga_ffi_trustee_is_foreign, non_commercial_financial_activity_certification, internation_organization_certification, intergovernmental_organization_certification, treaty_qualified_pension_fund_certification, qualified_retirement_fund_certification, narrow_participation_retirement_fund_certification, section401_a_equivalent_pension_plan_certification, investment_entity_for_retirement_funds_certification, exempt_beneficial_owner_sponsored_retirement_fund_certification, exempt_beneficial_owner_owned_investment_entity_certification, territory_financial_institution_certification, excepted_nonfinancial_group_entity_certification, excepted_nonfinancial_start_up_certification, startup_formation_or_resolution_date, excepted_nonfinancial_entity_in_liquidation_or_bankruptcy_certification, nonfinancial_entity_filing_date, section501_c_organization_certification, determination_letter_date, nonprofit_organization_certification, publicly_traded_nffe_certification, publicly_traded_nffe_securities_market, nffe_affiliate_of_publicly_traded_entity_certification, publicly_traded_entity, nffe_affiliate_of_publicly_traded_entity_securities_market, excepted_territory_nffe_certification, active_nffe_certification, passive_nffe_certification, passive_nffe_no_substantial_us_owners_certification, passive_nffe_substantial_us_owners_provided_certification, excepted_inter_affiliate_ffi_certification, sponsored_direct_reporting_nffe_certification, direct_reporting_nffe_sponsoring_entity, substantial_us_owners, signer_name, capacity_to_sign_certification].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      super(attributes)
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
      hash = super
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
