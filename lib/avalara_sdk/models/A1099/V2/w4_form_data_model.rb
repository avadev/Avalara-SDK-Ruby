=begin
#Avalara 1099 & W-9 API Definition

### 🔐 Authentication  Use **username/password** or generate a **license key** from: *Avalara Portal → Settings → License and API Keys*.  [More on authentication methods](https://developer.avalara.com/avatax-dm-combined-erp/common-setup/authentication/authentication-methods/)  [Test your credentials](https://developer.avalara.com/avatax/test-credentials/)  ## 📘 API & SDK Documentation  [Avalara SDK (.NET) on GitHub](https://github.com/avadev/Avalara-SDK-DotNet#avalarasdk--the-unified-c-library-for-next-gen-avalara-services)  [Code Examples – 1099 API](https://github.com/avadev/Avalara-SDK-DotNet/blob/main/docs/A1099/V2/Class1099IssuersApi.md#call1099issuersget)


=end

require 'date'
require 'time'

module AvalaraSdk::A1099::V2
      # W-4 Form
  class W4FormDataModel
    # Type of the form, always W4 for this model.
    attr_accessor :type

    # The date the form was signed.
    attr_accessor :signed_date

    # The creation date of the form.
    attr_accessor :created_at

    # The first name of the employee.
    attr_accessor :employee_first_name

    # The middle name of the employee.
    attr_accessor :employee_middle_name

    # The last name of the employee.
    attr_accessor :employee_last_name

    # The name suffix of the employee.
    attr_accessor :employee_name_suffix

    # The address of the employee.
    attr_accessor :address

    # The city of residence of the employee.
    attr_accessor :city

    # The state of residence of the employee.
    attr_accessor :state

    # The ZIP code of residence of the employee.
    attr_accessor :zip

    # The type of TIN provided.
    attr_accessor :type_of_tin

    # The taxpayer identification number (TIN) of the employee.
    attr_accessor :tin

    # The marital status of the employee.
    attr_accessor :box3_marital_status

    # Indicates whether the last name differs from prior records.
    attr_accessor :box4_last_name_differs

    # The number of allowances claimed by the employee.
    attr_accessor :box5_num_allowances

    # The number of dependents other than allowances.
    attr_accessor :other_dependents

    # The amount of non-job income.
    attr_accessor :non_job_income

    # The amount of deductions claimed.
    attr_accessor :deductions

    # The additional amount withheld.
    attr_accessor :box6_additional_withheld

    # Indicates whether the employee is exempt from withholding.
    attr_accessor :box7_exempt_from_withholding

    # The office code associated with the form.
    attr_accessor :office_code

    # The date when e-delivery was consented.
    attr_accessor :e_delivery_consented_at

    # The FATCA status for disregarded entities under Chapter 4.
    attr_accessor :disregarded_entity_chapter4_fatca_status

    # The name of the individual or entity associated with the form.
    attr_accessor :name

    # The residential address of the individual or entity.
    attr_accessor :residence_address

    # The city of residence.
    attr_accessor :residence_city

    # The state of residence.
    attr_accessor :residence_state

    # The postal code of the residence.
    attr_accessor :residence_postal_code

    # The country of residence.
    attr_accessor :residence_country

    # The mailing address.
    attr_accessor :mailing_address

    # The city of the mailing address.
    attr_accessor :mailing_city

    # The state of the mailing address.
    attr_accessor :mailing_state

    # The postal code of the mailing address.
    attr_accessor :mailing_postal_code

    # The country of the mailing address.
    attr_accessor :mailing_country

    # The address for disregarded entities.
    attr_accessor :disregarded_address

    # The city for disregarded entities.
    attr_accessor :disregarded_city

    # The state for disregarded entities.
    attr_accessor :disregarded_state

    # The postal code for disregarded entities.
    attr_accessor :disregarded_postal_code

    # The country for disregarded entities.
    attr_accessor :disregarded_country

    # The foreign taxpayer identification number (TIN).
    attr_accessor :foreign_tin

    # Indicates whether a foreign TIN is not required.
    attr_accessor :ftin_not_required

    # A reference number for the form.
    attr_accessor :reference_number

    # The global intermediary identification number (GIIN).
    attr_accessor :giin

    # The Chapter 3 entity type.
    attr_accessor :chapter3_entity_type

    # The Chapter 4 FATCA status.
    attr_accessor :chapter4_fatca_status

    # The disregarded entity information.
    attr_accessor :disregarded_entity

    # The GIIN for disregarded entities.
    attr_accessor :disregarded_entity_giin

    # The benefit limitation for tax treaty claims.
    attr_accessor :benefit_limitation

    # The sponsoring entity information for Part 4.
    attr_accessor :part4_sponsoring_entity

    # The GIIN for the sponsoring entity in Part 4.
    attr_accessor :part4_sponsoring_entity_giin

    # The sponsoring entity information for Part 7.
    attr_accessor :part7_sponsoring_entity

    # The IGA country information for Part 12.
    attr_accessor :part12_iga_country

    # The IGA type information for Part 12.
    attr_accessor :part12_iga_type

    # The FATCA status under IGA Annex II for Part 12.
    attr_accessor :part12_fatca_status_under_iga_annex_ii

    # The trustee name for Part 12.
    attr_accessor :part12_trustee_name

    # Indicates whether the trustee is foreign for Part 12.
    attr_accessor :part12_trustee_is_foreign

    # The GIIN for Model 2 IGA in Part 12.
    attr_accessor :part12_model2_iga_giin

    # The exchange information for Box 37A.
    attr_accessor :box37_a_exchange

    # The exchange information for Box 37B.
    attr_accessor :box37_b_exchange

    # The entity information for Box 37B.
    attr_accessor :box37_b_entity

    # The sponsoring entity information for Part 28.
    attr_accessor :part28_sponsoring_entity

    # The GIIN for the sponsoring entity in Part 28.
    attr_accessor :part28_sponsoring_entity_giin

    # The name of the signer of the form.
    attr_accessor :signer_name

    # Indicates whether the residence address is also the mailing address.
    attr_accessor :residence_is_mailing

    # The country of citizenship.
    attr_accessor :citizenship_country

    attr_accessor :making_treaty_claim

    # The country for which the treaty applies.
    attr_accessor :treaty_country

    # The specific article of the treaty being claimed.
    attr_accessor :treaty_article

    # The withholding rate applied as per the treaty.
    attr_accessor :withholding_rate

    # The type of income covered by the treaty.
    attr_accessor :income_type

    # The reasons for claiming treaty benefits.
    attr_accessor :treaty_reasons

    attr_accessor :certify_box14_a

    attr_accessor :certify_box14_b

    attr_accessor :certify_box14_c

    attr_accessor :certify_box17_1

    attr_accessor :certify_box17_2

    attr_accessor :certify_box18

    attr_accessor :certify_box19

    attr_accessor :certify_box21

    # Indicates certification for box 22.
    attr_accessor :certify_box22

    attr_accessor :certify_box23

    # Indicates certification for box 24A.
    attr_accessor :certify_box24_a

    # Indicates certification for box 24B.
    attr_accessor :certify_box24_b

    # Indicates certification for box 24C.
    attr_accessor :certify_box24_c

    attr_accessor :certify_box24_d

    attr_accessor :certify_box25_a

    attr_accessor :certify_box25_b

    attr_accessor :certify_box25_c

    # Indicates certification for box 26.
    attr_accessor :certify_box26

    attr_accessor :certify_box27

    attr_accessor :certify_box28_a

    attr_accessor :certify_box28_b

    attr_accessor :certify_box29_a

    attr_accessor :certify_box29_b

    attr_accessor :certify_box29_c

    attr_accessor :certify_box29_d

    attr_accessor :certify_box29_e

    attr_accessor :certify_box29_f

    attr_accessor :certify_box30

    # Indicates certification for box 31.
    attr_accessor :certify_box31

    # Indicates certification for box 32.
    attr_accessor :certify_box32

    attr_accessor :certify_box33

    # Indicates certification for box 34.
    attr_accessor :certify_box34

    # Indicates certification for box 35.
    attr_accessor :certify_box35

    # Indicates certification for box 36.
    attr_accessor :certify_box36

    # Indicates certification for box 37A.
    attr_accessor :certify_box37_a

    # Indicates certification for box 37B.
    attr_accessor :certify_box37_b

    # Indicates certification for box 38.
    attr_accessor :certify_box38

    # Indicates certification for box 39.
    attr_accessor :certify_box39

    attr_accessor :certify_box40_a

    attr_accessor :certify_box40_b

    attr_accessor :certify_box40_c

    attr_accessor :certify_box41

    attr_accessor :certify_box43

    attr_accessor :certify_part29_signature

    attr_accessor :part19_formation_or_resolution_date

    attr_accessor :part20_filing_date

    attr_accessor :part21_determination_date

    attr_accessor :substantial_us_owners

    # The birthday of the individual associated with the form.
    attr_accessor :birthday

    # Indicates whether a foreign TIN is not required.
    attr_accessor :foreign_tin_not_required

    # Indicates whether the form is archived.
    attr_accessor :archived

    # A reference identifier for the form.
    attr_accessor :reference_id

    # The ID of the associated company.
    attr_accessor :company_id

    # The display name associated with the form.
    attr_accessor :display_name

    # The email address of the individual associated with the form.
    attr_accessor :email

    # The capacity in which the signer is signing the form.
    attr_accessor :signer_capacity

    # The last updated date of the form.
    attr_accessor :updated_at

    # The employer identification number (EIN).
    attr_accessor :ein

    # The type of employer identification number (EIN).
    attr_accessor :ein_type

    # Indicates certification for box 14.
    attr_accessor :certify_box14

    # Indicates certification for box 15A.
    attr_accessor :certify_box15_a

    # Indicates certification for box 15B.
    attr_accessor :certify_box15_b

    # Indicates certification for box 15C.
    attr_accessor :certify_box15_c

    # Indicates certification for box 15D.
    attr_accessor :certify_box15_d

    # Indicates certification for box 15E.
    attr_accessor :certify_box15_e

    # Indicates certification for box 15F.
    attr_accessor :certify_box15_f

    # Indicates certification for box 15G.
    attr_accessor :certify_box15_g

    # Indicates certification for box 15H.
    attr_accessor :certify_box15_h

    # Indicates certification for box 15I.
    attr_accessor :certify_box15_i

    # Indicates certification for box 16A.
    attr_accessor :certify_box16_a

    # Indicates certification for box 16B as a QDD corporate entity.
    attr_accessor :box16_b_qdd_corporate

    # Indicates certification for box 16B as a QDD partnership.
    attr_accessor :box16_b_qdd_partnership

    # Indicates certification for box 16B as a QDD disregarded entity.
    attr_accessor :box16_b_qdd_disregarded_entity

    # Indicates certification for box 17A.
    attr_accessor :certify_box17_a

    # Indicates certification for box 17B.
    attr_accessor :certify_box17_b

    # Indicates certification for box 17C.
    attr_accessor :certify_box17_c

    # Indicates certification for box 17D.
    attr_accessor :certify_box17_d

    # Indicates certification for box 17E.
    attr_accessor :certify_box17_e

    # Indicates certification for box 18A.
    attr_accessor :certify_box18_a

    # Indicates certification for box 18B.
    attr_accessor :certify_box18_b

    # Indicates certification for box 18C.
    attr_accessor :certify_box18_c

    # Indicates certification for box 18D.
    attr_accessor :certify_box18_d

    # Indicates certification for box 18E.
    attr_accessor :certify_box18_e

    # Indicates certification for box 18F.
    attr_accessor :certify_box18_f

    # Indicates certification for box 19A.
    attr_accessor :certify_box19_a

    # Indicates certification for box 19B.
    attr_accessor :certify_box19_b

    # Indicates certification for box 19C.
    attr_accessor :certify_box19_c

    # Indicates certification for box 19D.
    attr_accessor :certify_box19_d

    # Indicates certification for box 19E.
    attr_accessor :certify_box19_e

    # Indicates certification for box 19F.
    attr_accessor :certify_box19_f

    # Indicates certification for box 20.
    attr_accessor :certify_box20

    # Indicates certification for box 21A.
    attr_accessor :certify_box21_a

    # Indicates certification for box 21B.
    attr_accessor :certify_box21_b

    # Indicates certification for box 21C.
    attr_accessor :certify_box21_c

    # Indicates certification for box 21D.
    attr_accessor :certify_box21_d

    # Indicates certification for box 21E.
    attr_accessor :certify_box21_e

    # Indicates certification for box 21F.
    attr_accessor :certify_box21_f

    # The name of the sponsoring entity for box 23A.
    attr_accessor :box23_a_name_sponsoring_entity

    # Indicates certification for box 23B.
    attr_accessor :certify_box23_b

    # Indicates certification for box 23C.
    attr_accessor :certify_box23_c

    # Indicates certification for box 25.
    attr_accessor :certify_box25

    # The name of the sponsoring entity for box 27A.
    attr_accessor :box27_a_name_sponsoring_entity

    # Indicates certification for box 27B.
    attr_accessor :certify_box27_b

    # Indicates certification for box 28.
    attr_accessor :certify_box28

    # Indicates certification for box 29.
    attr_accessor :certify_box29

    # Indicates certification for box 30A.
    attr_accessor :certify_box30_a

    # Indicates certification for box 30B.
    attr_accessor :certify_box30_b

    # Indicates certification for box 30C.
    attr_accessor :certify_box30_c

    # The IGA country information for box 32.
    attr_accessor :box32_iga_country

    # The IGA type information for box 32.
    attr_accessor :box32_iga_type

    # The IGA treatment information for box 32.
    attr_accessor :box32_iga_treated_as

    # The trustee or sponsor information for box 32.
    attr_accessor :box32_trustee_or_sponsor

    # Indicates whether the trustee is foreign for box 32.
    attr_accessor :box32_trustee_is_foreign

    # Indicates certification for box 33A.
    attr_accessor :certify_box33_a

    # Indicates certification for box 33B.
    attr_accessor :certify_box33_b

    # Indicates certification for box 33C.
    attr_accessor :certify_box33_c

    # Indicates certification for box 33D.
    attr_accessor :certify_box33_d

    # Indicates certification for box 33E.
    attr_accessor :certify_box33_e

    # Indicates certification for box 33F.
    attr_accessor :certify_box33_f

    # The securities market information for box 37A.
    attr_accessor :box37_a_securities_market

    # The name of the entity for box 37B.
    attr_accessor :box37_b_name_of_entity

    # The securities market information for box 37B.
    attr_accessor :box37_b_securities_market

    # Indicates certification for box 40.
    attr_accessor :certify_box40

    # The sponsoring entity information for box 41.
    attr_accessor :box41_sponsoring_entity

    # Indicates certification for box 42.
    attr_accessor :certify_box42

    attr_accessor :box35_formed_on_date

    attr_accessor :box36_filed_on_date

    # The status of the TIN match.
    attr_accessor :tin_match_status

    # The signature itself
    attr_accessor :signature

    # The classification of the business.
    attr_accessor :business_classification

    # The name of the business associated with the form.
    attr_accessor :business_name

    attr_accessor :business_other

    attr_accessor :exempt_payee_code

    attr_accessor :exempt_fatca_code

    # The account number associated with the form.
    attr_accessor :account_number

    # Indicates whether the individual or entity is in a foreign country.
    attr_accessor :foreign_country_indicator

    # The foreign address of the individual or entity.
    attr_accessor :foreign_address

    # Indicates whether backup withholding applies.
    attr_accessor :backup_withholding

    attr_accessor :is1099able

    # Indicates whether the individual is a foreign partner, owner, or beneficiary.
    attr_accessor :foreign_partner_owner_or_beneficiary

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
        :'signed_date' => :'signedDate',
        :'created_at' => :'createdAt',
        :'employee_first_name' => :'employeeFirstName',
        :'employee_middle_name' => :'employeeMiddleName',
        :'employee_last_name' => :'employeeLastName',
        :'employee_name_suffix' => :'employeeNameSuffix',
        :'address' => :'address',
        :'city' => :'city',
        :'state' => :'state',
        :'zip' => :'zip',
        :'type_of_tin' => :'typeOfTin',
        :'tin' => :'tin',
        :'box3_marital_status' => :'box3MaritalStatus',
        :'box4_last_name_differs' => :'box4LastNameDiffers',
        :'box5_num_allowances' => :'box5NumAllowances',
        :'other_dependents' => :'otherDependents',
        :'non_job_income' => :'nonJobIncome',
        :'deductions' => :'deductions',
        :'box6_additional_withheld' => :'box6AdditionalWithheld',
        :'box7_exempt_from_withholding' => :'box7ExemptFromWithholding',
        :'office_code' => :'officeCode',
        :'e_delivery_consented_at' => :'eDeliveryConsentedAt',
        :'disregarded_entity_chapter4_fatca_status' => :'disregardedEntityChapter4FatcaStatus',
        :'name' => :'name',
        :'residence_address' => :'residenceAddress',
        :'residence_city' => :'residenceCity',
        :'residence_state' => :'residenceState',
        :'residence_postal_code' => :'residencePostalCode',
        :'residence_country' => :'residenceCountry',
        :'mailing_address' => :'mailingAddress',
        :'mailing_city' => :'mailingCity',
        :'mailing_state' => :'mailingState',
        :'mailing_postal_code' => :'mailingPostalCode',
        :'mailing_country' => :'mailingCountry',
        :'disregarded_address' => :'disregardedAddress',
        :'disregarded_city' => :'disregardedCity',
        :'disregarded_state' => :'disregardedState',
        :'disregarded_postal_code' => :'disregardedPostalCode',
        :'disregarded_country' => :'disregardedCountry',
        :'foreign_tin' => :'foreignTin',
        :'ftin_not_required' => :'ftinNotRequired',
        :'reference_number' => :'referenceNumber',
        :'giin' => :'giin',
        :'chapter3_entity_type' => :'chapter3EntityType',
        :'chapter4_fatca_status' => :'chapter4FatcaStatus',
        :'disregarded_entity' => :'disregardedEntity',
        :'disregarded_entity_giin' => :'disregardedEntityGiin',
        :'benefit_limitation' => :'benefitLimitation',
        :'part4_sponsoring_entity' => :'part4SponsoringEntity',
        :'part4_sponsoring_entity_giin' => :'part4SponsoringEntityGiin',
        :'part7_sponsoring_entity' => :'part7SponsoringEntity',
        :'part12_iga_country' => :'part12IgaCountry',
        :'part12_iga_type' => :'part12IgaType',
        :'part12_fatca_status_under_iga_annex_ii' => :'part12FatcaStatusUnderIgaAnnexIi',
        :'part12_trustee_name' => :'part12TrusteeName',
        :'part12_trustee_is_foreign' => :'part12TrusteeIsForeign',
        :'part12_model2_iga_giin' => :'part12Model2IgaGiin',
        :'box37_a_exchange' => :'box37AExchange',
        :'box37_b_exchange' => :'box37BExchange',
        :'box37_b_entity' => :'box37BEntity',
        :'part28_sponsoring_entity' => :'part28SponsoringEntity',
        :'part28_sponsoring_entity_giin' => :'part28SponsoringEntityGiin',
        :'signer_name' => :'signerName',
        :'residence_is_mailing' => :'residenceIsMailing',
        :'citizenship_country' => :'citizenshipCountry',
        :'making_treaty_claim' => :'makingTreatyClaim',
        :'treaty_country' => :'treatyCountry',
        :'treaty_article' => :'treatyArticle',
        :'withholding_rate' => :'withholdingRate',
        :'income_type' => :'incomeType',
        :'treaty_reasons' => :'treatyReasons',
        :'certify_box14_a' => :'certifyBox14A',
        :'certify_box14_b' => :'certifyBox14B',
        :'certify_box14_c' => :'certifyBox14C',
        :'certify_box17_1' => :'certifyBox17_1',
        :'certify_box17_2' => :'certifyBox17_2',
        :'certify_box18' => :'certifyBox18',
        :'certify_box19' => :'certifyBox19',
        :'certify_box21' => :'certifyBox21',
        :'certify_box22' => :'certifyBox22',
        :'certify_box23' => :'certifyBox23',
        :'certify_box24_a' => :'certifyBox24A',
        :'certify_box24_b' => :'certifyBox24B',
        :'certify_box24_c' => :'certifyBox24C',
        :'certify_box24_d' => :'certifyBox24D',
        :'certify_box25_a' => :'certifyBox25A',
        :'certify_box25_b' => :'certifyBox25B',
        :'certify_box25_c' => :'certifyBox25C',
        :'certify_box26' => :'certifyBox26',
        :'certify_box27' => :'certifyBox27',
        :'certify_box28_a' => :'certifyBox28A',
        :'certify_box28_b' => :'certifyBox28B',
        :'certify_box29_a' => :'certifyBox29A',
        :'certify_box29_b' => :'certifyBox29B',
        :'certify_box29_c' => :'certifyBox29C',
        :'certify_box29_d' => :'certifyBox29D',
        :'certify_box29_e' => :'certifyBox29E',
        :'certify_box29_f' => :'certifyBox29F',
        :'certify_box30' => :'certifyBox30',
        :'certify_box31' => :'certifyBox31',
        :'certify_box32' => :'certifyBox32',
        :'certify_box33' => :'certifyBox33',
        :'certify_box34' => :'certifyBox34',
        :'certify_box35' => :'certifyBox35',
        :'certify_box36' => :'certifyBox36',
        :'certify_box37_a' => :'certifyBox37A',
        :'certify_box37_b' => :'certifyBox37B',
        :'certify_box38' => :'certifyBox38',
        :'certify_box39' => :'certifyBox39',
        :'certify_box40_a' => :'certifyBox40A',
        :'certify_box40_b' => :'certifyBox40B',
        :'certify_box40_c' => :'certifyBox40C',
        :'certify_box41' => :'certifyBox41',
        :'certify_box43' => :'certifyBox43',
        :'certify_part29_signature' => :'certifyPart29Signature',
        :'part19_formation_or_resolution_date' => :'part19FormationOrResolutionDate',
        :'part20_filing_date' => :'part20FilingDate',
        :'part21_determination_date' => :'part21DeterminationDate',
        :'substantial_us_owners' => :'substantialUsOwners',
        :'birthday' => :'birthday',
        :'foreign_tin_not_required' => :'foreignTinNotRequired',
        :'archived' => :'archived',
        :'reference_id' => :'referenceId',
        :'company_id' => :'companyId',
        :'display_name' => :'displayName',
        :'email' => :'email',
        :'signer_capacity' => :'signerCapacity',
        :'updated_at' => :'updatedAt',
        :'ein' => :'ein',
        :'ein_type' => :'einType',
        :'certify_box14' => :'certifyBox14',
        :'certify_box15_a' => :'certifyBox15A',
        :'certify_box15_b' => :'certifyBox15B',
        :'certify_box15_c' => :'certifyBox15C',
        :'certify_box15_d' => :'certifyBox15D',
        :'certify_box15_e' => :'certifyBox15E',
        :'certify_box15_f' => :'certifyBox15F',
        :'certify_box15_g' => :'certifyBox15G',
        :'certify_box15_h' => :'certifyBox15H',
        :'certify_box15_i' => :'certifyBox15I',
        :'certify_box16_a' => :'certifyBox16A',
        :'box16_b_qdd_corporate' => :'box16BQddCorporate',
        :'box16_b_qdd_partnership' => :'box16BQddPartnership',
        :'box16_b_qdd_disregarded_entity' => :'box16BQddDisregardedEntity',
        :'certify_box17_a' => :'certifyBox17A',
        :'certify_box17_b' => :'certifyBox17B',
        :'certify_box17_c' => :'certifyBox17C',
        :'certify_box17_d' => :'certifyBox17D',
        :'certify_box17_e' => :'certifyBox17E',
        :'certify_box18_a' => :'certifyBox18A',
        :'certify_box18_b' => :'certifyBox18B',
        :'certify_box18_c' => :'certifyBox18C',
        :'certify_box18_d' => :'certifyBox18D',
        :'certify_box18_e' => :'certifyBox18E',
        :'certify_box18_f' => :'certifyBox18F',
        :'certify_box19_a' => :'certifyBox19A',
        :'certify_box19_b' => :'certifyBox19B',
        :'certify_box19_c' => :'certifyBox19C',
        :'certify_box19_d' => :'certifyBox19D',
        :'certify_box19_e' => :'certifyBox19E',
        :'certify_box19_f' => :'certifyBox19F',
        :'certify_box20' => :'certifyBox20',
        :'certify_box21_a' => :'certifyBox21A',
        :'certify_box21_b' => :'certifyBox21B',
        :'certify_box21_c' => :'certifyBox21C',
        :'certify_box21_d' => :'certifyBox21D',
        :'certify_box21_e' => :'certifyBox21E',
        :'certify_box21_f' => :'certifyBox21F',
        :'box23_a_name_sponsoring_entity' => :'box23ANameSponsoringEntity',
        :'certify_box23_b' => :'certifyBox23B',
        :'certify_box23_c' => :'certifyBox23C',
        :'certify_box25' => :'certifyBox25',
        :'box27_a_name_sponsoring_entity' => :'box27ANameSponsoringEntity',
        :'certify_box27_b' => :'certifyBox27B',
        :'certify_box28' => :'certifyBox28',
        :'certify_box29' => :'certifyBox29',
        :'certify_box30_a' => :'certifyBox30A',
        :'certify_box30_b' => :'certifyBox30B',
        :'certify_box30_c' => :'certifyBox30C',
        :'box32_iga_country' => :'box32IgaCountry',
        :'box32_iga_type' => :'box32IgaType',
        :'box32_iga_treated_as' => :'box32IgaTreatedAs',
        :'box32_trustee_or_sponsor' => :'box32TrusteeOrSponsor',
        :'box32_trustee_is_foreign' => :'box32TrusteeIsForeign',
        :'certify_box33_a' => :'certifyBox33A',
        :'certify_box33_b' => :'certifyBox33B',
        :'certify_box33_c' => :'certifyBox33C',
        :'certify_box33_d' => :'certifyBox33D',
        :'certify_box33_e' => :'certifyBox33E',
        :'certify_box33_f' => :'certifyBox33F',
        :'box37_a_securities_market' => :'box37ASecuritiesMarket',
        :'box37_b_name_of_entity' => :'box37BNameOfEntity',
        :'box37_b_securities_market' => :'box37BSecuritiesMarket',
        :'certify_box40' => :'certifyBox40',
        :'box41_sponsoring_entity' => :'box41SponsoringEntity',
        :'certify_box42' => :'certifyBox42',
        :'box35_formed_on_date' => :'box35FormedOnDate',
        :'box36_filed_on_date' => :'box36FiledOnDate',
        :'tin_match_status' => :'tinMatchStatus',
        :'signature' => :'signature',
        :'business_classification' => :'businessClassification',
        :'business_name' => :'businessName',
        :'business_other' => :'businessOther',
        :'exempt_payee_code' => :'exemptPayeeCode',
        :'exempt_fatca_code' => :'exemptFatcaCode',
        :'account_number' => :'accountNumber',
        :'foreign_country_indicator' => :'foreignCountryIndicator',
        :'foreign_address' => :'foreignAddress',
        :'backup_withholding' => :'backupWithholding',
        :'is1099able' => :'is1099able',
        :'foreign_partner_owner_or_beneficiary' => :'foreignPartnerOwnerOrBeneficiary'
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
        :'signed_date' => :'Time',
        :'created_at' => :'Time',
        :'employee_first_name' => :'String',
        :'employee_middle_name' => :'String',
        :'employee_last_name' => :'String',
        :'employee_name_suffix' => :'String',
        :'address' => :'String',
        :'city' => :'String',
        :'state' => :'String',
        :'zip' => :'String',
        :'type_of_tin' => :'String',
        :'tin' => :'String',
        :'box3_marital_status' => :'String',
        :'box4_last_name_differs' => :'Boolean',
        :'box5_num_allowances' => :'Integer',
        :'other_dependents' => :'Integer',
        :'non_job_income' => :'Float',
        :'deductions' => :'Float',
        :'box6_additional_withheld' => :'Float',
        :'box7_exempt_from_withholding' => :'Boolean',
        :'office_code' => :'String',
        :'e_delivery_consented_at' => :'Time',
        :'disregarded_entity_chapter4_fatca_status' => :'String',
        :'name' => :'String',
        :'residence_address' => :'String',
        :'residence_city' => :'String',
        :'residence_state' => :'String',
        :'residence_postal_code' => :'String',
        :'residence_country' => :'String',
        :'mailing_address' => :'String',
        :'mailing_city' => :'String',
        :'mailing_state' => :'String',
        :'mailing_postal_code' => :'String',
        :'mailing_country' => :'String',
        :'disregarded_address' => :'String',
        :'disregarded_city' => :'String',
        :'disregarded_state' => :'String',
        :'disregarded_postal_code' => :'String',
        :'disregarded_country' => :'String',
        :'foreign_tin' => :'String',
        :'ftin_not_required' => :'Boolean',
        :'reference_number' => :'String',
        :'giin' => :'String',
        :'chapter3_entity_type' => :'String',
        :'chapter4_fatca_status' => :'String',
        :'disregarded_entity' => :'String',
        :'disregarded_entity_giin' => :'String',
        :'benefit_limitation' => :'String',
        :'part4_sponsoring_entity' => :'String',
        :'part4_sponsoring_entity_giin' => :'String',
        :'part7_sponsoring_entity' => :'String',
        :'part12_iga_country' => :'String',
        :'part12_iga_type' => :'String',
        :'part12_fatca_status_under_iga_annex_ii' => :'String',
        :'part12_trustee_name' => :'String',
        :'part12_trustee_is_foreign' => :'Boolean',
        :'part12_model2_iga_giin' => :'String',
        :'box37_a_exchange' => :'String',
        :'box37_b_exchange' => :'String',
        :'box37_b_entity' => :'String',
        :'part28_sponsoring_entity' => :'String',
        :'part28_sponsoring_entity_giin' => :'String',
        :'signer_name' => :'String',
        :'residence_is_mailing' => :'Boolean',
        :'citizenship_country' => :'String',
        :'making_treaty_claim' => :'Boolean',
        :'treaty_country' => :'String',
        :'treaty_article' => :'String',
        :'withholding_rate' => :'String',
        :'income_type' => :'String',
        :'treaty_reasons' => :'String',
        :'certify_box14_a' => :'Boolean',
        :'certify_box14_b' => :'Boolean',
        :'certify_box14_c' => :'Boolean',
        :'certify_box17_1' => :'Boolean',
        :'certify_box17_2' => :'Boolean',
        :'certify_box18' => :'Boolean',
        :'certify_box19' => :'Boolean',
        :'certify_box21' => :'Boolean',
        :'certify_box22' => :'Boolean',
        :'certify_box23' => :'Boolean',
        :'certify_box24_a' => :'Boolean',
        :'certify_box24_b' => :'Boolean',
        :'certify_box24_c' => :'Boolean',
        :'certify_box24_d' => :'Boolean',
        :'certify_box25_a' => :'Boolean',
        :'certify_box25_b' => :'Boolean',
        :'certify_box25_c' => :'Boolean',
        :'certify_box26' => :'Boolean',
        :'certify_box27' => :'Boolean',
        :'certify_box28_a' => :'Boolean',
        :'certify_box28_b' => :'Boolean',
        :'certify_box29_a' => :'Boolean',
        :'certify_box29_b' => :'Boolean',
        :'certify_box29_c' => :'Boolean',
        :'certify_box29_d' => :'Boolean',
        :'certify_box29_e' => :'Boolean',
        :'certify_box29_f' => :'Boolean',
        :'certify_box30' => :'Boolean',
        :'certify_box31' => :'Boolean',
        :'certify_box32' => :'Boolean',
        :'certify_box33' => :'Boolean',
        :'certify_box34' => :'Boolean',
        :'certify_box35' => :'Boolean',
        :'certify_box36' => :'Boolean',
        :'certify_box37_a' => :'Boolean',
        :'certify_box37_b' => :'Boolean',
        :'certify_box38' => :'Boolean',
        :'certify_box39' => :'Boolean',
        :'certify_box40_a' => :'Boolean',
        :'certify_box40_b' => :'Boolean',
        :'certify_box40_c' => :'Boolean',
        :'certify_box41' => :'Boolean',
        :'certify_box43' => :'Boolean',
        :'certify_part29_signature' => :'Boolean',
        :'part19_formation_or_resolution_date' => :'Time',
        :'part20_filing_date' => :'Time',
        :'part21_determination_date' => :'Time',
        :'substantial_us_owners' => :'Array<W8BenESubstantialUsOwnerDataModel>',
        :'birthday' => :'String',
        :'foreign_tin_not_required' => :'Boolean',
        :'archived' => :'Boolean',
        :'reference_id' => :'String',
        :'company_id' => :'Integer',
        :'display_name' => :'String',
        :'email' => :'String',
        :'signer_capacity' => :'String',
        :'updated_at' => :'Time',
        :'ein' => :'String',
        :'ein_type' => :'String',
        :'certify_box14' => :'Boolean',
        :'certify_box15_a' => :'Boolean',
        :'certify_box15_b' => :'Boolean',
        :'certify_box15_c' => :'Boolean',
        :'certify_box15_d' => :'Boolean',
        :'certify_box15_e' => :'Boolean',
        :'certify_box15_f' => :'Boolean',
        :'certify_box15_g' => :'Boolean',
        :'certify_box15_h' => :'Boolean',
        :'certify_box15_i' => :'Boolean',
        :'certify_box16_a' => :'Boolean',
        :'box16_b_qdd_corporate' => :'Boolean',
        :'box16_b_qdd_partnership' => :'Boolean',
        :'box16_b_qdd_disregarded_entity' => :'Boolean',
        :'certify_box17_a' => :'Boolean',
        :'certify_box17_b' => :'Boolean',
        :'certify_box17_c' => :'Boolean',
        :'certify_box17_d' => :'Boolean',
        :'certify_box17_e' => :'Boolean',
        :'certify_box18_a' => :'Boolean',
        :'certify_box18_b' => :'Boolean',
        :'certify_box18_c' => :'Boolean',
        :'certify_box18_d' => :'Boolean',
        :'certify_box18_e' => :'Boolean',
        :'certify_box18_f' => :'Boolean',
        :'certify_box19_a' => :'Boolean',
        :'certify_box19_b' => :'Boolean',
        :'certify_box19_c' => :'Boolean',
        :'certify_box19_d' => :'Boolean',
        :'certify_box19_e' => :'Boolean',
        :'certify_box19_f' => :'Boolean',
        :'certify_box20' => :'Boolean',
        :'certify_box21_a' => :'Boolean',
        :'certify_box21_b' => :'Boolean',
        :'certify_box21_c' => :'Boolean',
        :'certify_box21_d' => :'Boolean',
        :'certify_box21_e' => :'Boolean',
        :'certify_box21_f' => :'Boolean',
        :'box23_a_name_sponsoring_entity' => :'String',
        :'certify_box23_b' => :'Boolean',
        :'certify_box23_c' => :'Boolean',
        :'certify_box25' => :'Boolean',
        :'box27_a_name_sponsoring_entity' => :'String',
        :'certify_box27_b' => :'Boolean',
        :'certify_box28' => :'Boolean',
        :'certify_box29' => :'Boolean',
        :'certify_box30_a' => :'Boolean',
        :'certify_box30_b' => :'Boolean',
        :'certify_box30_c' => :'Boolean',
        :'box32_iga_country' => :'String',
        :'box32_iga_type' => :'String',
        :'box32_iga_treated_as' => :'String',
        :'box32_trustee_or_sponsor' => :'String',
        :'box32_trustee_is_foreign' => :'Boolean',
        :'certify_box33_a' => :'Boolean',
        :'certify_box33_b' => :'Boolean',
        :'certify_box33_c' => :'Boolean',
        :'certify_box33_d' => :'Boolean',
        :'certify_box33_e' => :'Boolean',
        :'certify_box33_f' => :'Boolean',
        :'box37_a_securities_market' => :'String',
        :'box37_b_name_of_entity' => :'String',
        :'box37_b_securities_market' => :'String',
        :'certify_box40' => :'Boolean',
        :'box41_sponsoring_entity' => :'String',
        :'certify_box42' => :'Boolean',
        :'box35_formed_on_date' => :'Time',
        :'box36_filed_on_date' => :'Time',
        :'tin_match_status' => :'String',
        :'signature' => :'String',
        :'business_classification' => :'String',
        :'business_name' => :'String',
        :'business_other' => :'String',
        :'exempt_payee_code' => :'String',
        :'exempt_fatca_code' => :'String',
        :'account_number' => :'String',
        :'foreign_country_indicator' => :'Boolean',
        :'foreign_address' => :'String',
        :'backup_withholding' => :'Boolean',
        :'is1099able' => :'Boolean',
        :'foreign_partner_owner_or_beneficiary' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'signed_date',
        :'created_at',
        :'employee_first_name',
        :'employee_middle_name',
        :'employee_last_name',
        :'employee_name_suffix',
        :'address',
        :'city',
        :'state',
        :'zip',
        :'type_of_tin',
        :'tin',
        :'box3_marital_status',
        :'box4_last_name_differs',
        :'box5_num_allowances',
        :'other_dependents',
        :'non_job_income',
        :'deductions',
        :'box6_additional_withheld',
        :'box7_exempt_from_withholding',
        :'office_code',
        :'e_delivery_consented_at',
        :'disregarded_entity_chapter4_fatca_status',
        :'name',
        :'residence_address',
        :'residence_city',
        :'residence_state',
        :'residence_postal_code',
        :'residence_country',
        :'mailing_address',
        :'mailing_city',
        :'mailing_state',
        :'mailing_postal_code',
        :'mailing_country',
        :'disregarded_address',
        :'disregarded_city',
        :'disregarded_state',
        :'disregarded_postal_code',
        :'disregarded_country',
        :'foreign_tin',
        :'ftin_not_required',
        :'reference_number',
        :'giin',
        :'chapter3_entity_type',
        :'chapter4_fatca_status',
        :'disregarded_entity',
        :'disregarded_entity_giin',
        :'benefit_limitation',
        :'part4_sponsoring_entity',
        :'part4_sponsoring_entity_giin',
        :'part7_sponsoring_entity',
        :'part12_iga_country',
        :'part12_iga_type',
        :'part12_fatca_status_under_iga_annex_ii',
        :'part12_trustee_name',
        :'part12_trustee_is_foreign',
        :'part12_model2_iga_giin',
        :'box37_a_exchange',
        :'box37_b_exchange',
        :'box37_b_entity',
        :'part28_sponsoring_entity',
        :'part28_sponsoring_entity_giin',
        :'signer_name',
        :'citizenship_country',
        :'making_treaty_claim',
        :'treaty_country',
        :'treaty_article',
        :'withholding_rate',
        :'income_type',
        :'treaty_reasons',
        :'part19_formation_or_resolution_date',
        :'part20_filing_date',
        :'part21_determination_date',
        :'birthday',
        :'foreign_tin_not_required',
        :'archived',
        :'reference_id',
        :'company_id',
        :'display_name',
        :'email',
        :'signer_capacity',
        :'updated_at',
        :'ein',
        :'ein_type',
        :'box23_a_name_sponsoring_entity',
        :'box27_a_name_sponsoring_entity',
        :'box32_iga_country',
        :'box32_iga_type',
        :'box32_iga_treated_as',
        :'box32_trustee_or_sponsor',
        :'box37_a_securities_market',
        :'box37_b_name_of_entity',
        :'box37_b_securities_market',
        :'box41_sponsoring_entity',
        :'box35_formed_on_date',
        :'box36_filed_on_date',
        :'tin_match_status',
        :'signature',
        :'business_classification',
        :'business_name',
        :'business_other',
        :'exempt_payee_code',
        :'exempt_fatca_code',
        :'account_number',
        :'foreign_country_indicator',
        :'foreign_address',
        :'backup_withholding',
        :'is1099able',
        :'foreign_partner_owner_or_beneficiary'
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'IW9FormDataModelsOneOf'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `AvalaraSdk::A1099::V2::W4FormDataModel` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AvalaraSdk::A1099::V2::W4FormDataModel`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'signed_date')
        self.signed_date = attributes[:'signed_date']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'employee_first_name')
        self.employee_first_name = attributes[:'employee_first_name']
      end

      if attributes.key?(:'employee_middle_name')
        self.employee_middle_name = attributes[:'employee_middle_name']
      end

      if attributes.key?(:'employee_last_name')
        self.employee_last_name = attributes[:'employee_last_name']
      end

      if attributes.key?(:'employee_name_suffix')
        self.employee_name_suffix = attributes[:'employee_name_suffix']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'zip')
        self.zip = attributes[:'zip']
      end

      if attributes.key?(:'type_of_tin')
        self.type_of_tin = attributes[:'type_of_tin']
      end

      if attributes.key?(:'tin')
        self.tin = attributes[:'tin']
      end

      if attributes.key?(:'box3_marital_status')
        self.box3_marital_status = attributes[:'box3_marital_status']
      end

      if attributes.key?(:'box4_last_name_differs')
        self.box4_last_name_differs = attributes[:'box4_last_name_differs']
      end

      if attributes.key?(:'box5_num_allowances')
        self.box5_num_allowances = attributes[:'box5_num_allowances']
      end

      if attributes.key?(:'other_dependents')
        self.other_dependents = attributes[:'other_dependents']
      end

      if attributes.key?(:'non_job_income')
        self.non_job_income = attributes[:'non_job_income']
      end

      if attributes.key?(:'deductions')
        self.deductions = attributes[:'deductions']
      end

      if attributes.key?(:'box6_additional_withheld')
        self.box6_additional_withheld = attributes[:'box6_additional_withheld']
      end

      if attributes.key?(:'box7_exempt_from_withholding')
        self.box7_exempt_from_withholding = attributes[:'box7_exempt_from_withholding']
      end

      if attributes.key?(:'office_code')
        self.office_code = attributes[:'office_code']
      end

      if attributes.key?(:'e_delivery_consented_at')
        self.e_delivery_consented_at = attributes[:'e_delivery_consented_at']
      end

      if attributes.key?(:'disregarded_entity_chapter4_fatca_status')
        self.disregarded_entity_chapter4_fatca_status = attributes[:'disregarded_entity_chapter4_fatca_status']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
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

      if attributes.key?(:'residence_postal_code')
        self.residence_postal_code = attributes[:'residence_postal_code']
      end

      if attributes.key?(:'residence_country')
        self.residence_country = attributes[:'residence_country']
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

      if attributes.key?(:'mailing_postal_code')
        self.mailing_postal_code = attributes[:'mailing_postal_code']
      end

      if attributes.key?(:'mailing_country')
        self.mailing_country = attributes[:'mailing_country']
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

      if attributes.key?(:'disregarded_postal_code')
        self.disregarded_postal_code = attributes[:'disregarded_postal_code']
      end

      if attributes.key?(:'disregarded_country')
        self.disregarded_country = attributes[:'disregarded_country']
      end

      if attributes.key?(:'foreign_tin')
        self.foreign_tin = attributes[:'foreign_tin']
      end

      if attributes.key?(:'ftin_not_required')
        self.ftin_not_required = attributes[:'ftin_not_required']
      end

      if attributes.key?(:'reference_number')
        self.reference_number = attributes[:'reference_number']
      end

      if attributes.key?(:'giin')
        self.giin = attributes[:'giin']
      end

      if attributes.key?(:'chapter3_entity_type')
        self.chapter3_entity_type = attributes[:'chapter3_entity_type']
      end

      if attributes.key?(:'chapter4_fatca_status')
        self.chapter4_fatca_status = attributes[:'chapter4_fatca_status']
      end

      if attributes.key?(:'disregarded_entity')
        self.disregarded_entity = attributes[:'disregarded_entity']
      end

      if attributes.key?(:'disregarded_entity_giin')
        self.disregarded_entity_giin = attributes[:'disregarded_entity_giin']
      end

      if attributes.key?(:'benefit_limitation')
        self.benefit_limitation = attributes[:'benefit_limitation']
      end

      if attributes.key?(:'part4_sponsoring_entity')
        self.part4_sponsoring_entity = attributes[:'part4_sponsoring_entity']
      end

      if attributes.key?(:'part4_sponsoring_entity_giin')
        self.part4_sponsoring_entity_giin = attributes[:'part4_sponsoring_entity_giin']
      end

      if attributes.key?(:'part7_sponsoring_entity')
        self.part7_sponsoring_entity = attributes[:'part7_sponsoring_entity']
      end

      if attributes.key?(:'part12_iga_country')
        self.part12_iga_country = attributes[:'part12_iga_country']
      end

      if attributes.key?(:'part12_iga_type')
        self.part12_iga_type = attributes[:'part12_iga_type']
      end

      if attributes.key?(:'part12_fatca_status_under_iga_annex_ii')
        self.part12_fatca_status_under_iga_annex_ii = attributes[:'part12_fatca_status_under_iga_annex_ii']
      end

      if attributes.key?(:'part12_trustee_name')
        self.part12_trustee_name = attributes[:'part12_trustee_name']
      end

      if attributes.key?(:'part12_trustee_is_foreign')
        self.part12_trustee_is_foreign = attributes[:'part12_trustee_is_foreign']
      end

      if attributes.key?(:'part12_model2_iga_giin')
        self.part12_model2_iga_giin = attributes[:'part12_model2_iga_giin']
      end

      if attributes.key?(:'box37_a_exchange')
        self.box37_a_exchange = attributes[:'box37_a_exchange']
      end

      if attributes.key?(:'box37_b_exchange')
        self.box37_b_exchange = attributes[:'box37_b_exchange']
      end

      if attributes.key?(:'box37_b_entity')
        self.box37_b_entity = attributes[:'box37_b_entity']
      end

      if attributes.key?(:'part28_sponsoring_entity')
        self.part28_sponsoring_entity = attributes[:'part28_sponsoring_entity']
      end

      if attributes.key?(:'part28_sponsoring_entity_giin')
        self.part28_sponsoring_entity_giin = attributes[:'part28_sponsoring_entity_giin']
      end

      if attributes.key?(:'signer_name')
        self.signer_name = attributes[:'signer_name']
      end

      if attributes.key?(:'residence_is_mailing')
        self.residence_is_mailing = attributes[:'residence_is_mailing']
      end

      if attributes.key?(:'citizenship_country')
        self.citizenship_country = attributes[:'citizenship_country']
      end

      if attributes.key?(:'making_treaty_claim')
        self.making_treaty_claim = attributes[:'making_treaty_claim']
      end

      if attributes.key?(:'treaty_country')
        self.treaty_country = attributes[:'treaty_country']
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

      if attributes.key?(:'certify_box14_a')
        self.certify_box14_a = attributes[:'certify_box14_a']
      end

      if attributes.key?(:'certify_box14_b')
        self.certify_box14_b = attributes[:'certify_box14_b']
      end

      if attributes.key?(:'certify_box14_c')
        self.certify_box14_c = attributes[:'certify_box14_c']
      end

      if attributes.key?(:'certify_box17_1')
        self.certify_box17_1 = attributes[:'certify_box17_1']
      end

      if attributes.key?(:'certify_box17_2')
        self.certify_box17_2 = attributes[:'certify_box17_2']
      end

      if attributes.key?(:'certify_box18')
        self.certify_box18 = attributes[:'certify_box18']
      end

      if attributes.key?(:'certify_box19')
        self.certify_box19 = attributes[:'certify_box19']
      end

      if attributes.key?(:'certify_box21')
        self.certify_box21 = attributes[:'certify_box21']
      end

      if attributes.key?(:'certify_box22')
        self.certify_box22 = attributes[:'certify_box22']
      end

      if attributes.key?(:'certify_box23')
        self.certify_box23 = attributes[:'certify_box23']
      end

      if attributes.key?(:'certify_box24_a')
        self.certify_box24_a = attributes[:'certify_box24_a']
      end

      if attributes.key?(:'certify_box24_b')
        self.certify_box24_b = attributes[:'certify_box24_b']
      end

      if attributes.key?(:'certify_box24_c')
        self.certify_box24_c = attributes[:'certify_box24_c']
      end

      if attributes.key?(:'certify_box24_d')
        self.certify_box24_d = attributes[:'certify_box24_d']
      end

      if attributes.key?(:'certify_box25_a')
        self.certify_box25_a = attributes[:'certify_box25_a']
      end

      if attributes.key?(:'certify_box25_b')
        self.certify_box25_b = attributes[:'certify_box25_b']
      end

      if attributes.key?(:'certify_box25_c')
        self.certify_box25_c = attributes[:'certify_box25_c']
      end

      if attributes.key?(:'certify_box26')
        self.certify_box26 = attributes[:'certify_box26']
      end

      if attributes.key?(:'certify_box27')
        self.certify_box27 = attributes[:'certify_box27']
      end

      if attributes.key?(:'certify_box28_a')
        self.certify_box28_a = attributes[:'certify_box28_a']
      end

      if attributes.key?(:'certify_box28_b')
        self.certify_box28_b = attributes[:'certify_box28_b']
      end

      if attributes.key?(:'certify_box29_a')
        self.certify_box29_a = attributes[:'certify_box29_a']
      end

      if attributes.key?(:'certify_box29_b')
        self.certify_box29_b = attributes[:'certify_box29_b']
      end

      if attributes.key?(:'certify_box29_c')
        self.certify_box29_c = attributes[:'certify_box29_c']
      end

      if attributes.key?(:'certify_box29_d')
        self.certify_box29_d = attributes[:'certify_box29_d']
      end

      if attributes.key?(:'certify_box29_e')
        self.certify_box29_e = attributes[:'certify_box29_e']
      end

      if attributes.key?(:'certify_box29_f')
        self.certify_box29_f = attributes[:'certify_box29_f']
      end

      if attributes.key?(:'certify_box30')
        self.certify_box30 = attributes[:'certify_box30']
      end

      if attributes.key?(:'certify_box31')
        self.certify_box31 = attributes[:'certify_box31']
      end

      if attributes.key?(:'certify_box32')
        self.certify_box32 = attributes[:'certify_box32']
      end

      if attributes.key?(:'certify_box33')
        self.certify_box33 = attributes[:'certify_box33']
      end

      if attributes.key?(:'certify_box34')
        self.certify_box34 = attributes[:'certify_box34']
      end

      if attributes.key?(:'certify_box35')
        self.certify_box35 = attributes[:'certify_box35']
      end

      if attributes.key?(:'certify_box36')
        self.certify_box36 = attributes[:'certify_box36']
      end

      if attributes.key?(:'certify_box37_a')
        self.certify_box37_a = attributes[:'certify_box37_a']
      end

      if attributes.key?(:'certify_box37_b')
        self.certify_box37_b = attributes[:'certify_box37_b']
      end

      if attributes.key?(:'certify_box38')
        self.certify_box38 = attributes[:'certify_box38']
      end

      if attributes.key?(:'certify_box39')
        self.certify_box39 = attributes[:'certify_box39']
      end

      if attributes.key?(:'certify_box40_a')
        self.certify_box40_a = attributes[:'certify_box40_a']
      end

      if attributes.key?(:'certify_box40_b')
        self.certify_box40_b = attributes[:'certify_box40_b']
      end

      if attributes.key?(:'certify_box40_c')
        self.certify_box40_c = attributes[:'certify_box40_c']
      end

      if attributes.key?(:'certify_box41')
        self.certify_box41 = attributes[:'certify_box41']
      end

      if attributes.key?(:'certify_box43')
        self.certify_box43 = attributes[:'certify_box43']
      end

      if attributes.key?(:'certify_part29_signature')
        self.certify_part29_signature = attributes[:'certify_part29_signature']
      end

      if attributes.key?(:'part19_formation_or_resolution_date')
        self.part19_formation_or_resolution_date = attributes[:'part19_formation_or_resolution_date']
      end

      if attributes.key?(:'part20_filing_date')
        self.part20_filing_date = attributes[:'part20_filing_date']
      end

      if attributes.key?(:'part21_determination_date')
        self.part21_determination_date = attributes[:'part21_determination_date']
      end

      if attributes.key?(:'substantial_us_owners')
        if (value = attributes[:'substantial_us_owners']).is_a?(Array)
          self.substantial_us_owners = value
        end
      end

      if attributes.key?(:'birthday')
        self.birthday = attributes[:'birthday']
      end

      if attributes.key?(:'foreign_tin_not_required')
        self.foreign_tin_not_required = attributes[:'foreign_tin_not_required']
      end

      if attributes.key?(:'archived')
        self.archived = attributes[:'archived']
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

      if attributes.key?(:'signer_capacity')
        self.signer_capacity = attributes[:'signer_capacity']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'ein')
        self.ein = attributes[:'ein']
      end

      if attributes.key?(:'ein_type')
        self.ein_type = attributes[:'ein_type']
      end

      if attributes.key?(:'certify_box14')
        self.certify_box14 = attributes[:'certify_box14']
      end

      if attributes.key?(:'certify_box15_a')
        self.certify_box15_a = attributes[:'certify_box15_a']
      end

      if attributes.key?(:'certify_box15_b')
        self.certify_box15_b = attributes[:'certify_box15_b']
      end

      if attributes.key?(:'certify_box15_c')
        self.certify_box15_c = attributes[:'certify_box15_c']
      end

      if attributes.key?(:'certify_box15_d')
        self.certify_box15_d = attributes[:'certify_box15_d']
      end

      if attributes.key?(:'certify_box15_e')
        self.certify_box15_e = attributes[:'certify_box15_e']
      end

      if attributes.key?(:'certify_box15_f')
        self.certify_box15_f = attributes[:'certify_box15_f']
      end

      if attributes.key?(:'certify_box15_g')
        self.certify_box15_g = attributes[:'certify_box15_g']
      end

      if attributes.key?(:'certify_box15_h')
        self.certify_box15_h = attributes[:'certify_box15_h']
      end

      if attributes.key?(:'certify_box15_i')
        self.certify_box15_i = attributes[:'certify_box15_i']
      end

      if attributes.key?(:'certify_box16_a')
        self.certify_box16_a = attributes[:'certify_box16_a']
      end

      if attributes.key?(:'box16_b_qdd_corporate')
        self.box16_b_qdd_corporate = attributes[:'box16_b_qdd_corporate']
      end

      if attributes.key?(:'box16_b_qdd_partnership')
        self.box16_b_qdd_partnership = attributes[:'box16_b_qdd_partnership']
      end

      if attributes.key?(:'box16_b_qdd_disregarded_entity')
        self.box16_b_qdd_disregarded_entity = attributes[:'box16_b_qdd_disregarded_entity']
      end

      if attributes.key?(:'certify_box17_a')
        self.certify_box17_a = attributes[:'certify_box17_a']
      end

      if attributes.key?(:'certify_box17_b')
        self.certify_box17_b = attributes[:'certify_box17_b']
      end

      if attributes.key?(:'certify_box17_c')
        self.certify_box17_c = attributes[:'certify_box17_c']
      end

      if attributes.key?(:'certify_box17_d')
        self.certify_box17_d = attributes[:'certify_box17_d']
      end

      if attributes.key?(:'certify_box17_e')
        self.certify_box17_e = attributes[:'certify_box17_e']
      end

      if attributes.key?(:'certify_box18_a')
        self.certify_box18_a = attributes[:'certify_box18_a']
      end

      if attributes.key?(:'certify_box18_b')
        self.certify_box18_b = attributes[:'certify_box18_b']
      end

      if attributes.key?(:'certify_box18_c')
        self.certify_box18_c = attributes[:'certify_box18_c']
      end

      if attributes.key?(:'certify_box18_d')
        self.certify_box18_d = attributes[:'certify_box18_d']
      end

      if attributes.key?(:'certify_box18_e')
        self.certify_box18_e = attributes[:'certify_box18_e']
      end

      if attributes.key?(:'certify_box18_f')
        self.certify_box18_f = attributes[:'certify_box18_f']
      end

      if attributes.key?(:'certify_box19_a')
        self.certify_box19_a = attributes[:'certify_box19_a']
      end

      if attributes.key?(:'certify_box19_b')
        self.certify_box19_b = attributes[:'certify_box19_b']
      end

      if attributes.key?(:'certify_box19_c')
        self.certify_box19_c = attributes[:'certify_box19_c']
      end

      if attributes.key?(:'certify_box19_d')
        self.certify_box19_d = attributes[:'certify_box19_d']
      end

      if attributes.key?(:'certify_box19_e')
        self.certify_box19_e = attributes[:'certify_box19_e']
      end

      if attributes.key?(:'certify_box19_f')
        self.certify_box19_f = attributes[:'certify_box19_f']
      end

      if attributes.key?(:'certify_box20')
        self.certify_box20 = attributes[:'certify_box20']
      end

      if attributes.key?(:'certify_box21_a')
        self.certify_box21_a = attributes[:'certify_box21_a']
      end

      if attributes.key?(:'certify_box21_b')
        self.certify_box21_b = attributes[:'certify_box21_b']
      end

      if attributes.key?(:'certify_box21_c')
        self.certify_box21_c = attributes[:'certify_box21_c']
      end

      if attributes.key?(:'certify_box21_d')
        self.certify_box21_d = attributes[:'certify_box21_d']
      end

      if attributes.key?(:'certify_box21_e')
        self.certify_box21_e = attributes[:'certify_box21_e']
      end

      if attributes.key?(:'certify_box21_f')
        self.certify_box21_f = attributes[:'certify_box21_f']
      end

      if attributes.key?(:'box23_a_name_sponsoring_entity')
        self.box23_a_name_sponsoring_entity = attributes[:'box23_a_name_sponsoring_entity']
      end

      if attributes.key?(:'certify_box23_b')
        self.certify_box23_b = attributes[:'certify_box23_b']
      end

      if attributes.key?(:'certify_box23_c')
        self.certify_box23_c = attributes[:'certify_box23_c']
      end

      if attributes.key?(:'certify_box25')
        self.certify_box25 = attributes[:'certify_box25']
      end

      if attributes.key?(:'box27_a_name_sponsoring_entity')
        self.box27_a_name_sponsoring_entity = attributes[:'box27_a_name_sponsoring_entity']
      end

      if attributes.key?(:'certify_box27_b')
        self.certify_box27_b = attributes[:'certify_box27_b']
      end

      if attributes.key?(:'certify_box28')
        self.certify_box28 = attributes[:'certify_box28']
      end

      if attributes.key?(:'certify_box29')
        self.certify_box29 = attributes[:'certify_box29']
      end

      if attributes.key?(:'certify_box30_a')
        self.certify_box30_a = attributes[:'certify_box30_a']
      end

      if attributes.key?(:'certify_box30_b')
        self.certify_box30_b = attributes[:'certify_box30_b']
      end

      if attributes.key?(:'certify_box30_c')
        self.certify_box30_c = attributes[:'certify_box30_c']
      end

      if attributes.key?(:'box32_iga_country')
        self.box32_iga_country = attributes[:'box32_iga_country']
      end

      if attributes.key?(:'box32_iga_type')
        self.box32_iga_type = attributes[:'box32_iga_type']
      end

      if attributes.key?(:'box32_iga_treated_as')
        self.box32_iga_treated_as = attributes[:'box32_iga_treated_as']
      end

      if attributes.key?(:'box32_trustee_or_sponsor')
        self.box32_trustee_or_sponsor = attributes[:'box32_trustee_or_sponsor']
      end

      if attributes.key?(:'box32_trustee_is_foreign')
        self.box32_trustee_is_foreign = attributes[:'box32_trustee_is_foreign']
      end

      if attributes.key?(:'certify_box33_a')
        self.certify_box33_a = attributes[:'certify_box33_a']
      end

      if attributes.key?(:'certify_box33_b')
        self.certify_box33_b = attributes[:'certify_box33_b']
      end

      if attributes.key?(:'certify_box33_c')
        self.certify_box33_c = attributes[:'certify_box33_c']
      end

      if attributes.key?(:'certify_box33_d')
        self.certify_box33_d = attributes[:'certify_box33_d']
      end

      if attributes.key?(:'certify_box33_e')
        self.certify_box33_e = attributes[:'certify_box33_e']
      end

      if attributes.key?(:'certify_box33_f')
        self.certify_box33_f = attributes[:'certify_box33_f']
      end

      if attributes.key?(:'box37_a_securities_market')
        self.box37_a_securities_market = attributes[:'box37_a_securities_market']
      end

      if attributes.key?(:'box37_b_name_of_entity')
        self.box37_b_name_of_entity = attributes[:'box37_b_name_of_entity']
      end

      if attributes.key?(:'box37_b_securities_market')
        self.box37_b_securities_market = attributes[:'box37_b_securities_market']
      end

      if attributes.key?(:'certify_box40')
        self.certify_box40 = attributes[:'certify_box40']
      end

      if attributes.key?(:'box41_sponsoring_entity')
        self.box41_sponsoring_entity = attributes[:'box41_sponsoring_entity']
      end

      if attributes.key?(:'certify_box42')
        self.certify_box42 = attributes[:'certify_box42']
      end

      if attributes.key?(:'box35_formed_on_date')
        self.box35_formed_on_date = attributes[:'box35_formed_on_date']
      end

      if attributes.key?(:'box36_filed_on_date')
        self.box36_filed_on_date = attributes[:'box36_filed_on_date']
      end

      if attributes.key?(:'tin_match_status')
        self.tin_match_status = attributes[:'tin_match_status']
      end

      if attributes.key?(:'signature')
        self.signature = attributes[:'signature']
      end

      if attributes.key?(:'business_classification')
        self.business_classification = attributes[:'business_classification']
      end

      if attributes.key?(:'business_name')
        self.business_name = attributes[:'business_name']
      end

      if attributes.key?(:'business_other')
        self.business_other = attributes[:'business_other']
      end

      if attributes.key?(:'exempt_payee_code')
        self.exempt_payee_code = attributes[:'exempt_payee_code']
      end

      if attributes.key?(:'exempt_fatca_code')
        self.exempt_fatca_code = attributes[:'exempt_fatca_code']
      end

      if attributes.key?(:'account_number')
        self.account_number = attributes[:'account_number']
      end

      if attributes.key?(:'foreign_country_indicator')
        self.foreign_country_indicator = attributes[:'foreign_country_indicator']
      end

      if attributes.key?(:'foreign_address')
        self.foreign_address = attributes[:'foreign_address']
      end

      if attributes.key?(:'backup_withholding')
        self.backup_withholding = attributes[:'backup_withholding']
      end

      if attributes.key?(:'is1099able')
        self.is1099able = attributes[:'is1099able']
      end

      if attributes.key?(:'foreign_partner_owner_or_beneficiary')
        self.foreign_partner_owner_or_beneficiary = attributes[:'foreign_partner_owner_or_beneficiary']
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
      type_validator = EnumAttributeValidator.new('String', ["w9", "w4", "w8imy", "w8ben", "w8bene"])
      return false unless type_validator.valid?(@type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["w9", "w4", "w8imy", "w8ben", "w8bene"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method with validation
    # @param [Object] substantial_us_owners Value to be assigned
    def substantial_us_owners=(substantial_us_owners)
      if substantial_us_owners.nil?
        fail ArgumentError, 'substantial_us_owners cannot be nil'
      end

      @substantial_us_owners = substantial_us_owners
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          signed_date == o.signed_date &&
          created_at == o.created_at &&
          employee_first_name == o.employee_first_name &&
          employee_middle_name == o.employee_middle_name &&
          employee_last_name == o.employee_last_name &&
          employee_name_suffix == o.employee_name_suffix &&
          address == o.address &&
          city == o.city &&
          state == o.state &&
          zip == o.zip &&
          type_of_tin == o.type_of_tin &&
          tin == o.tin &&
          box3_marital_status == o.box3_marital_status &&
          box4_last_name_differs == o.box4_last_name_differs &&
          box5_num_allowances == o.box5_num_allowances &&
          other_dependents == o.other_dependents &&
          non_job_income == o.non_job_income &&
          deductions == o.deductions &&
          box6_additional_withheld == o.box6_additional_withheld &&
          box7_exempt_from_withholding == o.box7_exempt_from_withholding &&
          office_code == o.office_code &&
          e_delivery_consented_at == o.e_delivery_consented_at &&
          disregarded_entity_chapter4_fatca_status == o.disregarded_entity_chapter4_fatca_status &&
          name == o.name &&
          residence_address == o.residence_address &&
          residence_city == o.residence_city &&
          residence_state == o.residence_state &&
          residence_postal_code == o.residence_postal_code &&
          residence_country == o.residence_country &&
          mailing_address == o.mailing_address &&
          mailing_city == o.mailing_city &&
          mailing_state == o.mailing_state &&
          mailing_postal_code == o.mailing_postal_code &&
          mailing_country == o.mailing_country &&
          disregarded_address == o.disregarded_address &&
          disregarded_city == o.disregarded_city &&
          disregarded_state == o.disregarded_state &&
          disregarded_postal_code == o.disregarded_postal_code &&
          disregarded_country == o.disregarded_country &&
          foreign_tin == o.foreign_tin &&
          ftin_not_required == o.ftin_not_required &&
          reference_number == o.reference_number &&
          giin == o.giin &&
          chapter3_entity_type == o.chapter3_entity_type &&
          chapter4_fatca_status == o.chapter4_fatca_status &&
          disregarded_entity == o.disregarded_entity &&
          disregarded_entity_giin == o.disregarded_entity_giin &&
          benefit_limitation == o.benefit_limitation &&
          part4_sponsoring_entity == o.part4_sponsoring_entity &&
          part4_sponsoring_entity_giin == o.part4_sponsoring_entity_giin &&
          part7_sponsoring_entity == o.part7_sponsoring_entity &&
          part12_iga_country == o.part12_iga_country &&
          part12_iga_type == o.part12_iga_type &&
          part12_fatca_status_under_iga_annex_ii == o.part12_fatca_status_under_iga_annex_ii &&
          part12_trustee_name == o.part12_trustee_name &&
          part12_trustee_is_foreign == o.part12_trustee_is_foreign &&
          part12_model2_iga_giin == o.part12_model2_iga_giin &&
          box37_a_exchange == o.box37_a_exchange &&
          box37_b_exchange == o.box37_b_exchange &&
          box37_b_entity == o.box37_b_entity &&
          part28_sponsoring_entity == o.part28_sponsoring_entity &&
          part28_sponsoring_entity_giin == o.part28_sponsoring_entity_giin &&
          signer_name == o.signer_name &&
          residence_is_mailing == o.residence_is_mailing &&
          citizenship_country == o.citizenship_country &&
          making_treaty_claim == o.making_treaty_claim &&
          treaty_country == o.treaty_country &&
          treaty_article == o.treaty_article &&
          withholding_rate == o.withholding_rate &&
          income_type == o.income_type &&
          treaty_reasons == o.treaty_reasons &&
          certify_box14_a == o.certify_box14_a &&
          certify_box14_b == o.certify_box14_b &&
          certify_box14_c == o.certify_box14_c &&
          certify_box17_1 == o.certify_box17_1 &&
          certify_box17_2 == o.certify_box17_2 &&
          certify_box18 == o.certify_box18 &&
          certify_box19 == o.certify_box19 &&
          certify_box21 == o.certify_box21 &&
          certify_box22 == o.certify_box22 &&
          certify_box23 == o.certify_box23 &&
          certify_box24_a == o.certify_box24_a &&
          certify_box24_b == o.certify_box24_b &&
          certify_box24_c == o.certify_box24_c &&
          certify_box24_d == o.certify_box24_d &&
          certify_box25_a == o.certify_box25_a &&
          certify_box25_b == o.certify_box25_b &&
          certify_box25_c == o.certify_box25_c &&
          certify_box26 == o.certify_box26 &&
          certify_box27 == o.certify_box27 &&
          certify_box28_a == o.certify_box28_a &&
          certify_box28_b == o.certify_box28_b &&
          certify_box29_a == o.certify_box29_a &&
          certify_box29_b == o.certify_box29_b &&
          certify_box29_c == o.certify_box29_c &&
          certify_box29_d == o.certify_box29_d &&
          certify_box29_e == o.certify_box29_e &&
          certify_box29_f == o.certify_box29_f &&
          certify_box30 == o.certify_box30 &&
          certify_box31 == o.certify_box31 &&
          certify_box32 == o.certify_box32 &&
          certify_box33 == o.certify_box33 &&
          certify_box34 == o.certify_box34 &&
          certify_box35 == o.certify_box35 &&
          certify_box36 == o.certify_box36 &&
          certify_box37_a == o.certify_box37_a &&
          certify_box37_b == o.certify_box37_b &&
          certify_box38 == o.certify_box38 &&
          certify_box39 == o.certify_box39 &&
          certify_box40_a == o.certify_box40_a &&
          certify_box40_b == o.certify_box40_b &&
          certify_box40_c == o.certify_box40_c &&
          certify_box41 == o.certify_box41 &&
          certify_box43 == o.certify_box43 &&
          certify_part29_signature == o.certify_part29_signature &&
          part19_formation_or_resolution_date == o.part19_formation_or_resolution_date &&
          part20_filing_date == o.part20_filing_date &&
          part21_determination_date == o.part21_determination_date &&
          substantial_us_owners == o.substantial_us_owners &&
          birthday == o.birthday &&
          foreign_tin_not_required == o.foreign_tin_not_required &&
          archived == o.archived &&
          reference_id == o.reference_id &&
          company_id == o.company_id &&
          display_name == o.display_name &&
          email == o.email &&
          signer_capacity == o.signer_capacity &&
          updated_at == o.updated_at &&
          ein == o.ein &&
          ein_type == o.ein_type &&
          certify_box14 == o.certify_box14 &&
          certify_box15_a == o.certify_box15_a &&
          certify_box15_b == o.certify_box15_b &&
          certify_box15_c == o.certify_box15_c &&
          certify_box15_d == o.certify_box15_d &&
          certify_box15_e == o.certify_box15_e &&
          certify_box15_f == o.certify_box15_f &&
          certify_box15_g == o.certify_box15_g &&
          certify_box15_h == o.certify_box15_h &&
          certify_box15_i == o.certify_box15_i &&
          certify_box16_a == o.certify_box16_a &&
          box16_b_qdd_corporate == o.box16_b_qdd_corporate &&
          box16_b_qdd_partnership == o.box16_b_qdd_partnership &&
          box16_b_qdd_disregarded_entity == o.box16_b_qdd_disregarded_entity &&
          certify_box17_a == o.certify_box17_a &&
          certify_box17_b == o.certify_box17_b &&
          certify_box17_c == o.certify_box17_c &&
          certify_box17_d == o.certify_box17_d &&
          certify_box17_e == o.certify_box17_e &&
          certify_box18_a == o.certify_box18_a &&
          certify_box18_b == o.certify_box18_b &&
          certify_box18_c == o.certify_box18_c &&
          certify_box18_d == o.certify_box18_d &&
          certify_box18_e == o.certify_box18_e &&
          certify_box18_f == o.certify_box18_f &&
          certify_box19_a == o.certify_box19_a &&
          certify_box19_b == o.certify_box19_b &&
          certify_box19_c == o.certify_box19_c &&
          certify_box19_d == o.certify_box19_d &&
          certify_box19_e == o.certify_box19_e &&
          certify_box19_f == o.certify_box19_f &&
          certify_box20 == o.certify_box20 &&
          certify_box21_a == o.certify_box21_a &&
          certify_box21_b == o.certify_box21_b &&
          certify_box21_c == o.certify_box21_c &&
          certify_box21_d == o.certify_box21_d &&
          certify_box21_e == o.certify_box21_e &&
          certify_box21_f == o.certify_box21_f &&
          box23_a_name_sponsoring_entity == o.box23_a_name_sponsoring_entity &&
          certify_box23_b == o.certify_box23_b &&
          certify_box23_c == o.certify_box23_c &&
          certify_box25 == o.certify_box25 &&
          box27_a_name_sponsoring_entity == o.box27_a_name_sponsoring_entity &&
          certify_box27_b == o.certify_box27_b &&
          certify_box28 == o.certify_box28 &&
          certify_box29 == o.certify_box29 &&
          certify_box30_a == o.certify_box30_a &&
          certify_box30_b == o.certify_box30_b &&
          certify_box30_c == o.certify_box30_c &&
          box32_iga_country == o.box32_iga_country &&
          box32_iga_type == o.box32_iga_type &&
          box32_iga_treated_as == o.box32_iga_treated_as &&
          box32_trustee_or_sponsor == o.box32_trustee_or_sponsor &&
          box32_trustee_is_foreign == o.box32_trustee_is_foreign &&
          certify_box33_a == o.certify_box33_a &&
          certify_box33_b == o.certify_box33_b &&
          certify_box33_c == o.certify_box33_c &&
          certify_box33_d == o.certify_box33_d &&
          certify_box33_e == o.certify_box33_e &&
          certify_box33_f == o.certify_box33_f &&
          box37_a_securities_market == o.box37_a_securities_market &&
          box37_b_name_of_entity == o.box37_b_name_of_entity &&
          box37_b_securities_market == o.box37_b_securities_market &&
          certify_box40 == o.certify_box40 &&
          box41_sponsoring_entity == o.box41_sponsoring_entity &&
          certify_box42 == o.certify_box42 &&
          box35_formed_on_date == o.box35_formed_on_date &&
          box36_filed_on_date == o.box36_filed_on_date &&
          tin_match_status == o.tin_match_status &&
          signature == o.signature &&
          business_classification == o.business_classification &&
          business_name == o.business_name &&
          business_other == o.business_other &&
          exempt_payee_code == o.exempt_payee_code &&
          exempt_fatca_code == o.exempt_fatca_code &&
          account_number == o.account_number &&
          foreign_country_indicator == o.foreign_country_indicator &&
          foreign_address == o.foreign_address &&
          backup_withholding == o.backup_withholding &&
          is1099able == o.is1099able &&
          foreign_partner_owner_or_beneficiary == o.foreign_partner_owner_or_beneficiary
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [type, signed_date, created_at, employee_first_name, employee_middle_name, employee_last_name, employee_name_suffix, address, city, state, zip, type_of_tin, tin, box3_marital_status, box4_last_name_differs, box5_num_allowances, other_dependents, non_job_income, deductions, box6_additional_withheld, box7_exempt_from_withholding, office_code, e_delivery_consented_at, disregarded_entity_chapter4_fatca_status, name, residence_address, residence_city, residence_state, residence_postal_code, residence_country, mailing_address, mailing_city, mailing_state, mailing_postal_code, mailing_country, disregarded_address, disregarded_city, disregarded_state, disregarded_postal_code, disregarded_country, foreign_tin, ftin_not_required, reference_number, giin, chapter3_entity_type, chapter4_fatca_status, disregarded_entity, disregarded_entity_giin, benefit_limitation, part4_sponsoring_entity, part4_sponsoring_entity_giin, part7_sponsoring_entity, part12_iga_country, part12_iga_type, part12_fatca_status_under_iga_annex_ii, part12_trustee_name, part12_trustee_is_foreign, part12_model2_iga_giin, box37_a_exchange, box37_b_exchange, box37_b_entity, part28_sponsoring_entity, part28_sponsoring_entity_giin, signer_name, residence_is_mailing, citizenship_country, making_treaty_claim, treaty_country, treaty_article, withholding_rate, income_type, treaty_reasons, certify_box14_a, certify_box14_b, certify_box14_c, certify_box17_1, certify_box17_2, certify_box18, certify_box19, certify_box21, certify_box22, certify_box23, certify_box24_a, certify_box24_b, certify_box24_c, certify_box24_d, certify_box25_a, certify_box25_b, certify_box25_c, certify_box26, certify_box27, certify_box28_a, certify_box28_b, certify_box29_a, certify_box29_b, certify_box29_c, certify_box29_d, certify_box29_e, certify_box29_f, certify_box30, certify_box31, certify_box32, certify_box33, certify_box34, certify_box35, certify_box36, certify_box37_a, certify_box37_b, certify_box38, certify_box39, certify_box40_a, certify_box40_b, certify_box40_c, certify_box41, certify_box43, certify_part29_signature, part19_formation_or_resolution_date, part20_filing_date, part21_determination_date, substantial_us_owners, birthday, foreign_tin_not_required, archived, reference_id, company_id, display_name, email, signer_capacity, updated_at, ein, ein_type, certify_box14, certify_box15_a, certify_box15_b, certify_box15_c, certify_box15_d, certify_box15_e, certify_box15_f, certify_box15_g, certify_box15_h, certify_box15_i, certify_box16_a, box16_b_qdd_corporate, box16_b_qdd_partnership, box16_b_qdd_disregarded_entity, certify_box17_a, certify_box17_b, certify_box17_c, certify_box17_d, certify_box17_e, certify_box18_a, certify_box18_b, certify_box18_c, certify_box18_d, certify_box18_e, certify_box18_f, certify_box19_a, certify_box19_b, certify_box19_c, certify_box19_d, certify_box19_e, certify_box19_f, certify_box20, certify_box21_a, certify_box21_b, certify_box21_c, certify_box21_d, certify_box21_e, certify_box21_f, box23_a_name_sponsoring_entity, certify_box23_b, certify_box23_c, certify_box25, box27_a_name_sponsoring_entity, certify_box27_b, certify_box28, certify_box29, certify_box30_a, certify_box30_b, certify_box30_c, box32_iga_country, box32_iga_type, box32_iga_treated_as, box32_trustee_or_sponsor, box32_trustee_is_foreign, certify_box33_a, certify_box33_b, certify_box33_c, certify_box33_d, certify_box33_e, certify_box33_f, box37_a_securities_market, box37_b_name_of_entity, box37_b_securities_market, certify_box40, box41_sponsoring_entity, certify_box42, box35_formed_on_date, box36_filed_on_date, tin_match_status, signature, business_classification, business_name, business_other, exempt_payee_code, exempt_fatca_code, account_number, foreign_country_indicator, foreign_address, backup_withholding, is1099able, foreign_partner_owner_or_beneficiary].hash
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
