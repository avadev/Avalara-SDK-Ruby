=begin
#Avalara 1099 & W-9 API Definition

### 🔐 Authentication  Generate a **license key** from: *[Avalara Portal](https://www.avalara.com/us/en/signin.html) → Settings → License and API Keys*.  [More on authentication methods](https://developer.avalara.com/avatax-dm-combined-erp/common-setup/authentication/authentication-methods/)  [Test your credentials](https://developer.avalara.com/avatax/test-credentials/)  ## 📘 API & SDK Documentation  [Avalara SDK (.NET) on GitHub](https://github.com/avadev/Avalara-SDK-DotNet#avalarasdk--the-unified-c-library-for-next-gen-avalara-services)  [Code Examples – 1099 API](https://github.com/avadev/Avalara-SDK-DotNet/blob/main/docs/A1099/V2/Class1099IssuersApi.md#call1099issuersget)


=end

require 'date'
require 'time'

module AvalaraSdk::A1099::V2
      # Form 1042-S: Foreign Person's U.S. Source Income Subject to Withholding
  class Form1042S
    attr_accessor :tin_type

    # Unique form identifier
    attr_accessor :unique_form_id

    # Recipient's date of birth
    attr_accessor :recipient_date_of_birth

    # Recipient's Global Intermediary Identification Number (GIIN). A valid GIIN looks like 'XXXXXX.XXXXX.XX.XXX'.
    attr_accessor :recipient_giin

    # Recipient's foreign TIN. Required if email is specified, must fill either this or Chap3StatusCode.
    attr_accessor :recipient_foreign_tin

    # Limitation on Benefits (LOB) code for tax treaty purposes.  Available values:  - 01: Individual (Deprecated - valid only for tax years prior to 2019)  - 02: Government - contracting state/political subdivision/local authority  - 03: Tax exempt pension trust/Pension fund  - 04: Tax exempt/Charitable organization  - 05: Publicly-traded corporation  - 06: Subsidiary of publicly-traded corporation  - 07: Company that meets the ownership and base erosion test  - 08: Company that meets the derivative benefits test  - 09: Company with an item of income that meets the active trade or business test  - 10: Discretionary determination  - 11: Other  - 12: No LOB article in treaty
    attr_accessor :lob_code

    # Income code.  Available values:    Interest:  - 01: Interest paid by US obligors - general  - 02: Interest paid on real property mortgages  - 03: Interest paid to controlling foreign corporations  - 04: Interest paid by foreign corporations  - 05: Interest on tax-free covenant bonds  - 22: Interest paid on deposit with a foreign branch of a domestic corporation or partnership  - 29: Deposit interest  - 30: Original issue discount (OID)  - 31: Short-term OID  - 33: Substitute payment - interest  - 51: Interest paid on certain actively traded or publicly offered securities(1)  - 54: Substitute payments - interest from certain actively traded or publicly offered securities(1)    Dividend:  - 06: Dividends paid by U.S. corporations - general  - 07: Dividends qualifying for direct dividend rate  - 08: Dividends paid by foreign corporations  - 34: Substitute payment - dividends  - 40: Other dividend equivalents under IRC section 871(m) (formerly 871(l))  - 52: Dividends paid on certain actively traded or publicly offered securities(1)  - 53: Substitute payments - dividends from certain actively traded or publicly offered securities(1)  - 56: Dividend equivalents under IRC section 871(m) as a result of applying the combined transaction rules    Other:  - 09: Capital gains  - 10: Industrial royalties  - 11: Motion picture or television copyright royalties  - 12: Other royalties (for example, copyright, software, broadcasting, endorsement payments)  - 13: Royalties paid on certain publicly offered securities(1)  - 14: Real property income and natural resources royalties  - 15: Pensions, annuities, alimony, and/or insurance premiums  - 16: Scholarship or fellowship grants  - 17: Compensation for independent personal services(2)  - 18: Compensation for dependent personal services(2)  - 19: Compensation for teaching(2)  - 20: Compensation during studying and training(2)  - 23: Other income  - 24: Qualified investment entity (QIE) distributions of capital gains  - 25: Trust distributions subject to IRC section 1445  - 26: Unsevered growing crops and timber distributions by a trust subject to IRC section 1445  - 27: Publicly traded partnership distributions subject to IRC section 1446  - 28: Gambling winnings(3)  - 32: Notional principal contract income(4)  - 35: Substitute payment - other  - 36: Capital gains distributions  - 37: Return of capital  - 38: Eligible deferred compensation items subject to IRC section 877A(d)(1)  - 39: Distributions from a nongrantor trust subject to IRC section 877A(f)(1)  - 41: Guarantee of indebtedness  - 42: Earnings as an artist or athlete - no central withholding agreement(5)  - 43: Earnings as an artist or athlete - central withholding agreement(5)  - 44: Specified Federal procurement payments  - 50: Income previously reported under escrow procedure(6)  - 55: Taxable death benefits on life insurance contracts  - 57: Amount realized under IRC section 1446(f)  - 58: Publicly traded partnership distributions-undetermined
    attr_accessor :income_code

    # Gross income
    attr_accessor :gross_income

    # Withholding indicator  Available values:  - 3: Chapter 3  - 4: Chapter 4
    attr_accessor :withholding_indicator

    # Country code
    attr_accessor :tax_country_code

    # Exemption code (Chapter 3). Required if WithholdingIndicator is 3 (Chapter 3). Required when using TaxRateChap3.  Available values:  - Empty: Tax rate is due to backup withholding  - 00: Not exempt  - 01: Effectively connected income  - 02: Exempt under IRC (other than portfolio interest)  - 03: Income is not from US sources  - 04: Exempt under tax treaty  - 05: Portfolio interest exempt under IRC  - 06: QI that assumes primary withholding responsibility  - 07: WFP or WFT  - 08: U.S. branch treated as U.S. Person  - 09: Territory FI treated as U.S. Person  - 10: QI represents that income is exempt  - 11: QSL that assumes primary withholding responsibility  - 12: Payee subjected to chapter 4 withholding  - 22: QDD that assumes primary withholding responsibility  - 23: Exempt under section 897(l)  - 24: Exempt under section 892
    attr_accessor :exemption_code_chap3

    # Exemption code (Chapter 4). Required if WithholdingIndicator is 4 (Chapter 4).  Available values:  - 00: Not exempt  - 13: Grandfathered payment  - 14: Effectively connected income  - 15: Payee not subject to chapter 4 withholding  - 16: Excluded nonfinancial payment  - 17: Foreign Entity that assumes primary withholding responsibility  - 18: U.S. Payees - of participating FFI or registered deemed - compliant FFI  - 19: Exempt from withholding under IGA(6)  - 20: Dormant account(7)  - 21: Other - payment not subject to chapter 4 withholding
    attr_accessor :exemption_code_chap4

    # Tax rate (Chapter 3) - Required if WithholdingIndicator is 3 (Chapter 3).  Available values:  - 00.00: 0.00%  - 02.00: 2.00%  - 04.00: 4.00%  - 04.90: 4.90%  - 04.95: 4.95%  - 05.00: 5.00%  - 07.00: 7.00%  - 08.00: 8.00%  - 10.00: 10.00%  - 12.00: 12.00%  - 12.50: 12.50%  - 14.00: 14.00%  - 15.00: 15.00%  - 17.50: 17.50%  - 20.00: 20.00%  - 21.00: 21.00%  - 24.00: 24.00%  - 25.00: 25.00%  - 27.50: 27.50%  - 28.00: 28.00%  - 30.00: 30.00%  - 37.00: 37.00%
    attr_accessor :tax_rate_chap3

    # Withholding allowance
    attr_accessor :withholding_allowance

    # Federal tax withheld
    attr_accessor :federal_tax_withheld

    # Tax not deposited indicator
    attr_accessor :tax_not_deposited_indicator

    # Academic indicator
    attr_accessor :academic_indicator

    # Tax withheld by other agents
    attr_accessor :tax_withheld_other_agents

    # Amount repaid to recipient
    attr_accessor :amount_repaid

    # Tax paid by withholding agent
    attr_accessor :tax_paid_agent

    # Chapter 3 status code - Required if WithholdingIndicator is 3 (Chapter 3)  Available values:  - 01: U.S. Withholding Agent - FI (Deprecated - valid only for tax years prior to 2020)  - 02: U.S. Withholding Agent - Other (Deprecated - valid only for tax years prior to 2020)  - 03: Territory FI - treated as U.S. Person  - 04: Territory FI - not treated as U.S. Person  - 05: U.S. branch - treated as U.S. Person  - 06: U.S. branch - not treated as U.S. Person  - 07: U.S. branch - ECI presumption applied  - 08: Partnership other than Withholding Foreign Partnership  - 09: Withholding Foreign Partnership  - 10: Trust other than Withholding Foreign Trust  - 11: Withholding Foreign Trust  - 12: Qualified Intermediary  - 13: Qualified Securities Lender - Qualified Intermediary  - 14: Qualified Securities Lender - Other  - 15: Corporation  - 16: Individual  - 17: Estate  - 18: Private Foundation  - 19: Government or International Organization  - 20: Tax Exempt Organization (Section 501(c) entities)  - 21: Unknown Recipient  - 22: Artist or Athlete  - 23: Pension  - 24: Foreign Central Bank of Issue  - 25: Nonqualified Intermediary  - 26: Hybrid entity making Treaty Claim  - 27: Withholding Rate Pool - General  - 28: Withholding Rate Pool - Exempt Organization  - 29: PAI Withholding Rate Pool - General  - 30: PAI Withholding Rate Pool - Exempt Organization  - 31: Agency Withholding Rate Pool - General  - 32: Agency Withholding Rate Pool - Exempt Organization  - 34: U.S. Withholding Agent-Foreign branch of FI (Deprecated - valid only for tax years prior to 2020)  - 35: Qualified Derivatives Dealer  - 36: Foreign Government - Integral Part  - 37: Foreign Government - Controlled Entity  - 38: Publicly Traded Partnership  - 39: Disclosing Qualified Intermediary
    attr_accessor :chap3_status_code

    # Chapter 4 status code. Required if WithholdingIndicator is 4 (Chapter 4). Required if email is specified, must fill either this or RecipientForeignTin.  Available values:  - 01: U.S. Withholding Agent - FI  - 02: U.S. Withholding Agent - Other  - 03: Territory FI - not treated as U.S. Person  - 04: Territory FI - treated as U.S. Person  - 05: Participating FFI - Other  - 06: Participating FFI - Reporting Model 2 FFI  - 07: Registered Deemed - Compliant FFI-Reporting Model 1 FFI  - 08: Registered Deemed - Compliant FFI-Sponsored Entity  - 09: Registered Deemed - Compliant FFI-Other  - 10: Certified Deemed - Compliant FFI-Other  - 11: Certified Deemed - Compliant FFI-FFI with Low Value Accounts  - 12: Certified Deemed - Compliant FFI-Non-Registering Local Bank  - 13: Certified Deemed - Compliant FFI-Sponsored Entity  - 14: Certified Deemed - Compliant FFI-Investment Advisor or Investment Manager  - 15: Nonparticipating FFI  - 16: Owner-Documented FFI  - 17: U.S. Branch - treated as U.S. person  - 18: U.S. Branch - not treated as U.S. person (reporting under section 1471)  - 19: Passive NFFE identifying Substantial U.S. Owners  - 20: Passive NFFE with no Substantial U.S. Owners  - 21: Publicly Traded NFFE or Affiliate of Publicly Traded NFFE  - 22: Active NFFE  - 23: Individual  - 24: Section 501(c) Entities  - 25: Excepted Territory NFFE  - 26: Excepted NFFE - Other  - 27: Exempt Beneficial Owner  - 28: Entity Wholly Owned by Exempt Beneficial Owners  - 29: Unknown Recipient  - 30: Recalcitrant Account Holder  - 31: Nonreporting IGA FFI  - 32: Direct reporting NFFE  - 33: U.S. reportable account  - 34: Non-consenting U.S. account  - 35: Sponsored direct reporting NFFE  - 36: Excepted Inter-affiliate FFI  - 37: Undocumented Preexisting Obligation  - 38: U.S. Branch - ECI presumption applied  - 39: Account Holder of Excluded Financial Account  - 40: Passive NFFE reported by FFI  - 41: NFFE subject to 1472 withholding  - 42: Recalcitrant Pool - No U.S. Indicia  - 43: Recalcitrant Pool - U.S. Indicia  - 44: Recalcitrant Pool - Dormant Account  - 45: Recalcitrant Pool - U.S. Persons  - 46: Recalcitrant Pool - Passive NFFEs  - 47: Nonparticipating FFI Pool  - 48: U.S. Payees Pool  - 49: QI - Recalcitrant Pool-General  - 50: U.S. Withholding Agent-Foreign branch of FI
    attr_accessor :chap4_status_code

    # Primary withholding agent information
    attr_accessor :primary_withholding_agent

    # Intermediary or flow-through entity information
    attr_accessor :intermediary_or_flow_through

    # Form type
    attr_accessor :type

    # Form ID. Unique identifier set when the record is created.
    attr_accessor :id

    # Issuer ID - only required when creating forms
    attr_accessor :issuer_id

    # Issuer Reference ID - only required when creating forms
    attr_accessor :issuer_reference_id

    # Issuer TIN - readonly
    attr_accessor :issuer_tin

    # Tax Year - only required when creating forms
    attr_accessor :tax_year

    # Internal reference ID. Never shown to any agency or recipient.
    attr_accessor :reference_id

    # Recipient's Federal Tax Identification Number (TIN).
    attr_accessor :tin

    # Recipient name
    attr_accessor :recipient_name

    # Recipient second name
    attr_accessor :recipient_second_name

    # Address.
    attr_accessor :address

    # Address line 2.
    attr_accessor :address2

    # City.
    attr_accessor :city

    # Two-letter US state or Canadian province code (required for US/CA addresses).
    attr_accessor :state

    # ZIP/postal code.
    attr_accessor :zip

    # Recipient's Contact email address.
    attr_accessor :email

    # Account number
    attr_accessor :account_number

    # Office code
    attr_accessor :office_code

    # Province or region for non-US/CA addresses.
    attr_accessor :non_us_province

    # Two-letter IRS country code (e.g., 'US', 'CA'), as defined at https://www.irs.gov/e-file-providers/country-codes.
    attr_accessor :country_code

    # Date when federal e-filing should be scheduled for this form
    attr_accessor :federal_efile_date

    # Boolean indicating that postal mailing to the recipient should be scheduled for this form
    attr_accessor :postal_mail

    # Date when state e-filing should be scheduled for this form
    attr_accessor :state_efile_date

    # Date when recipient e-delivery should be scheduled for this form
    attr_accessor :recipient_edelivery_date

    # Boolean indicating that TIN Matching should be scheduled for this form
    attr_accessor :tin_match

    # No TIN indicator
    attr_accessor :no_tin

    # Boolean indicating that address verification should be scheduled for this form
    attr_accessor :address_verification

    # State and local withholding information
    attr_accessor :state_and_local_withholding

    # Second TIN notice
    attr_accessor :second_tin_notice

    # Federal e-file status
    attr_accessor :federal_efile_status

    # State e-file status
    attr_accessor :state_efile_status

    # Postal mail to recipient status
    attr_accessor :postal_mail_status

    # TIN Match status
    attr_accessor :tin_match_status

    # Address verification status
    attr_accessor :address_verification_status

    # EDelivery status
    attr_accessor :e_delivery_status

    # Validation errors
    attr_accessor :validation_errors

    # Date time when the record was created.
    attr_accessor :created_at

    # Date time when the record was last updated.
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
        :'tin_type' => :'tinType',
        :'unique_form_id' => :'uniqueFormId',
        :'recipient_date_of_birth' => :'recipientDateOfBirth',
        :'recipient_giin' => :'recipientGiin',
        :'recipient_foreign_tin' => :'recipientForeignTin',
        :'lob_code' => :'lobCode',
        :'income_code' => :'incomeCode',
        :'gross_income' => :'grossIncome',
        :'withholding_indicator' => :'withholdingIndicator',
        :'tax_country_code' => :'taxCountryCode',
        :'exemption_code_chap3' => :'exemptionCodeChap3',
        :'exemption_code_chap4' => :'exemptionCodeChap4',
        :'tax_rate_chap3' => :'taxRateChap3',
        :'withholding_allowance' => :'withholdingAllowance',
        :'federal_tax_withheld' => :'federalTaxWithheld',
        :'tax_not_deposited_indicator' => :'taxNotDepositedIndicator',
        :'academic_indicator' => :'academicIndicator',
        :'tax_withheld_other_agents' => :'taxWithheldOtherAgents',
        :'amount_repaid' => :'amountRepaid',
        :'tax_paid_agent' => :'taxPaidAgent',
        :'chap3_status_code' => :'chap3StatusCode',
        :'chap4_status_code' => :'chap4StatusCode',
        :'primary_withholding_agent' => :'primaryWithholdingAgent',
        :'intermediary_or_flow_through' => :'intermediaryOrFlowThrough',
        :'type' => :'type',
        :'id' => :'id',
        :'issuer_id' => :'issuerId',
        :'issuer_reference_id' => :'issuerReferenceId',
        :'issuer_tin' => :'issuerTin',
        :'tax_year' => :'taxYear',
        :'reference_id' => :'referenceId',
        :'tin' => :'tin',
        :'recipient_name' => :'recipientName',
        :'recipient_second_name' => :'recipientSecondName',
        :'address' => :'address',
        :'address2' => :'address2',
        :'city' => :'city',
        :'state' => :'state',
        :'zip' => :'zip',
        :'email' => :'email',
        :'account_number' => :'accountNumber',
        :'office_code' => :'officeCode',
        :'non_us_province' => :'nonUsProvince',
        :'country_code' => :'countryCode',
        :'federal_efile_date' => :'federalEfileDate',
        :'postal_mail' => :'postalMail',
        :'state_efile_date' => :'stateEfileDate',
        :'recipient_edelivery_date' => :'recipientEdeliveryDate',
        :'tin_match' => :'tinMatch',
        :'no_tin' => :'noTin',
        :'address_verification' => :'addressVerification',
        :'state_and_local_withholding' => :'stateAndLocalWithholding',
        :'second_tin_notice' => :'secondTinNotice',
        :'federal_efile_status' => :'federalEfileStatus',
        :'state_efile_status' => :'stateEfileStatus',
        :'postal_mail_status' => :'postalMailStatus',
        :'tin_match_status' => :'tinMatchStatus',
        :'address_verification_status' => :'addressVerificationStatus',
        :'e_delivery_status' => :'eDeliveryStatus',
        :'validation_errors' => :'validationErrors',
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
        :'tin_type' => :'String',
        :'unique_form_id' => :'String',
        :'recipient_date_of_birth' => :'Date',
        :'recipient_giin' => :'String',
        :'recipient_foreign_tin' => :'String',
        :'lob_code' => :'String',
        :'income_code' => :'String',
        :'gross_income' => :'Float',
        :'withholding_indicator' => :'String',
        :'tax_country_code' => :'String',
        :'exemption_code_chap3' => :'String',
        :'exemption_code_chap4' => :'String',
        :'tax_rate_chap3' => :'String',
        :'withholding_allowance' => :'Float',
        :'federal_tax_withheld' => :'Float',
        :'tax_not_deposited_indicator' => :'Boolean',
        :'academic_indicator' => :'Boolean',
        :'tax_withheld_other_agents' => :'Float',
        :'amount_repaid' => :'Float',
        :'tax_paid_agent' => :'Float',
        :'chap3_status_code' => :'String',
        :'chap4_status_code' => :'String',
        :'primary_withholding_agent' => :'PrimaryWithholdingAgent',
        :'intermediary_or_flow_through' => :'IntermediaryOrFlowThrough',
        :'type' => :'String',
        :'id' => :'String',
        :'issuer_id' => :'String',
        :'issuer_reference_id' => :'String',
        :'issuer_tin' => :'String',
        :'tax_year' => :'Integer',
        :'reference_id' => :'String',
        :'tin' => :'String',
        :'recipient_name' => :'String',
        :'recipient_second_name' => :'String',
        :'address' => :'String',
        :'address2' => :'String',
        :'city' => :'String',
        :'state' => :'String',
        :'zip' => :'String',
        :'email' => :'String',
        :'account_number' => :'String',
        :'office_code' => :'String',
        :'non_us_province' => :'String',
        :'country_code' => :'String',
        :'federal_efile_date' => :'Date',
        :'postal_mail' => :'Boolean',
        :'state_efile_date' => :'Date',
        :'recipient_edelivery_date' => :'Date',
        :'tin_match' => :'Boolean',
        :'no_tin' => :'Boolean',
        :'address_verification' => :'Boolean',
        :'state_and_local_withholding' => :'StateAndLocalWithholding',
        :'second_tin_notice' => :'Boolean',
        :'federal_efile_status' => :'Form1099StatusDetail',
        :'state_efile_status' => :'Array<StateEfileStatusDetail>',
        :'postal_mail_status' => :'Form1099StatusDetail',
        :'tin_match_status' => :'Form1099StatusDetail',
        :'address_verification_status' => :'Form1099StatusDetail',
        :'e_delivery_status' => :'Form1099StatusDetail',
        :'validation_errors' => :'Array<ValidationError>',
        :'created_at' => :'Time',
        :'updated_at' => :'Time'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'tin_type',
        :'unique_form_id',
        :'recipient_date_of_birth',
        :'recipient_giin',
        :'recipient_foreign_tin',
        :'lob_code',
        :'income_code',
        :'gross_income',
        :'withholding_indicator',
        :'tax_country_code',
        :'exemption_code_chap3',
        :'exemption_code_chap4',
        :'tax_rate_chap3',
        :'withholding_allowance',
        :'federal_tax_withheld',
        :'tax_not_deposited_indicator',
        :'academic_indicator',
        :'tax_withheld_other_agents',
        :'amount_repaid',
        :'tax_paid_agent',
        :'chap3_status_code',
        :'chap4_status_code',
        :'primary_withholding_agent',
        :'intermediary_or_flow_through',
        :'id',
        :'issuer_id',
        :'issuer_reference_id',
        :'issuer_tin',
        :'tax_year',
        :'reference_id',
        :'tin',
        :'recipient_name',
        :'recipient_second_name',
        :'address',
        :'address2',
        :'city',
        :'state',
        :'zip',
        :'email',
        :'account_number',
        :'office_code',
        :'non_us_province',
        :'country_code',
        :'federal_efile_date',
        :'postal_mail',
        :'state_efile_date',
        :'recipient_edelivery_date',
        :'tin_match',
        :'no_tin',
        :'address_verification',
        :'state_and_local_withholding',
        :'federal_efile_status',
        :'state_efile_status',
        :'postal_mail_status',
        :'tin_match_status',
        :'address_verification_status',
        :'e_delivery_status',
        :'validation_errors',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'Form1099Base'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `AvalaraSdk::A1099::V2::Form1042S` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AvalaraSdk::A1099::V2::Form1042S`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'tin_type')
        self.tin_type = attributes[:'tin_type']
      end

      if attributes.key?(:'unique_form_id')
        self.unique_form_id = attributes[:'unique_form_id']
      else
        self.unique_form_id = nil
      end

      if attributes.key?(:'recipient_date_of_birth')
        self.recipient_date_of_birth = attributes[:'recipient_date_of_birth']
      end

      if attributes.key?(:'recipient_giin')
        self.recipient_giin = attributes[:'recipient_giin']
      end

      if attributes.key?(:'recipient_foreign_tin')
        self.recipient_foreign_tin = attributes[:'recipient_foreign_tin']
      end

      if attributes.key?(:'lob_code')
        self.lob_code = attributes[:'lob_code']
      end

      if attributes.key?(:'income_code')
        self.income_code = attributes[:'income_code']
      else
        self.income_code = nil
      end

      if attributes.key?(:'gross_income')
        self.gross_income = attributes[:'gross_income']
      else
        self.gross_income = nil
      end

      if attributes.key?(:'withholding_indicator')
        self.withholding_indicator = attributes[:'withholding_indicator']
      else
        self.withholding_indicator = nil
      end

      if attributes.key?(:'tax_country_code')
        self.tax_country_code = attributes[:'tax_country_code']
      else
        self.tax_country_code = nil
      end

      if attributes.key?(:'exemption_code_chap3')
        self.exemption_code_chap3 = attributes[:'exemption_code_chap3']
      end

      if attributes.key?(:'exemption_code_chap4')
        self.exemption_code_chap4 = attributes[:'exemption_code_chap4']
      end

      if attributes.key?(:'tax_rate_chap3')
        self.tax_rate_chap3 = attributes[:'tax_rate_chap3']
      end

      if attributes.key?(:'withholding_allowance')
        self.withholding_allowance = attributes[:'withholding_allowance']
      end

      if attributes.key?(:'federal_tax_withheld')
        self.federal_tax_withheld = attributes[:'federal_tax_withheld']
      end

      if attributes.key?(:'tax_not_deposited_indicator')
        self.tax_not_deposited_indicator = attributes[:'tax_not_deposited_indicator']
      end

      if attributes.key?(:'academic_indicator')
        self.academic_indicator = attributes[:'academic_indicator']
      end

      if attributes.key?(:'tax_withheld_other_agents')
        self.tax_withheld_other_agents = attributes[:'tax_withheld_other_agents']
      end

      if attributes.key?(:'amount_repaid')
        self.amount_repaid = attributes[:'amount_repaid']
      end

      if attributes.key?(:'tax_paid_agent')
        self.tax_paid_agent = attributes[:'tax_paid_agent']
      end

      if attributes.key?(:'chap3_status_code')
        self.chap3_status_code = attributes[:'chap3_status_code']
      end

      if attributes.key?(:'chap4_status_code')
        self.chap4_status_code = attributes[:'chap4_status_code']
      end

      if attributes.key?(:'primary_withholding_agent')
        self.primary_withholding_agent = attributes[:'primary_withholding_agent']
      end

      if attributes.key?(:'intermediary_or_flow_through')
        self.intermediary_or_flow_through = attributes[:'intermediary_or_flow_through']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = nil
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'issuer_id')
        self.issuer_id = attributes[:'issuer_id']
      end

      if attributes.key?(:'issuer_reference_id')
        self.issuer_reference_id = attributes[:'issuer_reference_id']
      end

      if attributes.key?(:'issuer_tin')
        self.issuer_tin = attributes[:'issuer_tin']
      end

      if attributes.key?(:'tax_year')
        self.tax_year = attributes[:'tax_year']
      end

      if attributes.key?(:'reference_id')
        self.reference_id = attributes[:'reference_id']
      end

      if attributes.key?(:'tin')
        self.tin = attributes[:'tin']
      end

      if attributes.key?(:'recipient_name')
        self.recipient_name = attributes[:'recipient_name']
      else
        self.recipient_name = nil
      end

      if attributes.key?(:'recipient_second_name')
        self.recipient_second_name = attributes[:'recipient_second_name']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      else
        self.address = nil
      end

      if attributes.key?(:'address2')
        self.address2 = attributes[:'address2']
      end

      if attributes.key?(:'city')
        self.city = attributes[:'city']
      else
        self.city = nil
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'zip')
        self.zip = attributes[:'zip']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'account_number')
        self.account_number = attributes[:'account_number']
      end

      if attributes.key?(:'office_code')
        self.office_code = attributes[:'office_code']
      end

      if attributes.key?(:'non_us_province')
        self.non_us_province = attributes[:'non_us_province']
      end

      if attributes.key?(:'country_code')
        self.country_code = attributes[:'country_code']
      else
        self.country_code = nil
      end

      if attributes.key?(:'federal_efile_date')
        self.federal_efile_date = attributes[:'federal_efile_date']
      end

      if attributes.key?(:'postal_mail')
        self.postal_mail = attributes[:'postal_mail']
      end

      if attributes.key?(:'state_efile_date')
        self.state_efile_date = attributes[:'state_efile_date']
      end

      if attributes.key?(:'recipient_edelivery_date')
        self.recipient_edelivery_date = attributes[:'recipient_edelivery_date']
      end

      if attributes.key?(:'tin_match')
        self.tin_match = attributes[:'tin_match']
      end

      if attributes.key?(:'no_tin')
        self.no_tin = attributes[:'no_tin']
      end

      if attributes.key?(:'address_verification')
        self.address_verification = attributes[:'address_verification']
      end

      if attributes.key?(:'state_and_local_withholding')
        self.state_and_local_withholding = attributes[:'state_and_local_withholding']
      end

      if attributes.key?(:'second_tin_notice')
        self.second_tin_notice = attributes[:'second_tin_notice']
      end

      if attributes.key?(:'federal_efile_status')
        self.federal_efile_status = attributes[:'federal_efile_status']
      end

      if attributes.key?(:'state_efile_status')
        if (value = attributes[:'state_efile_status']).is_a?(Array)
          self.state_efile_status = value
        end
      end

      if attributes.key?(:'postal_mail_status')
        self.postal_mail_status = attributes[:'postal_mail_status']
      end

      if attributes.key?(:'tin_match_status')
        self.tin_match_status = attributes[:'tin_match_status']
      end

      if attributes.key?(:'address_verification_status')
        self.address_verification_status = attributes[:'address_verification_status']
      end

      if attributes.key?(:'e_delivery_status')
        self.e_delivery_status = attributes[:'e_delivery_status']
      end

      if attributes.key?(:'validation_errors')
        if (value = attributes[:'validation_errors']).is_a?(Array)
          self.validation_errors = value
        end
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
      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      tin_type_validator = EnumAttributeValidator.new('String', ["Empty", "EIN", "SSN", "ITIN", "ATIN"])
      return false unless tin_type_validator.valid?(@tin_type)
      lob_code_validator = EnumAttributeValidator.new('String', ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"])
      return false unless lob_code_validator.valid?(@lob_code)
      income_code_validator = EnumAttributeValidator.new('String', ["01", "02", "03", "04", "05", "22", "29", "30", "31", "33", "51", "54", "06", "07", "08", "34", "40", "52", "53", "56", "09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "23", "24", "25", "26", "27", "28", "32", "35", "36", "37", "38", "39", "41", "42", "43", "44", "50", "55", "57", "58"])
      return false unless income_code_validator.valid?(@income_code)
      withholding_indicator_validator = EnumAttributeValidator.new('String', ["3", "4"])
      return false unless withholding_indicator_validator.valid?(@withholding_indicator)
      exemption_code_chap3_validator = EnumAttributeValidator.new('String', ["00", "01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12", "22", "23", "24"])
      return false unless exemption_code_chap3_validator.valid?(@exemption_code_chap3)
      exemption_code_chap4_validator = EnumAttributeValidator.new('String', ["00", "13", "14", "15", "16", "17", "18", "19", "20", "21"])
      return false unless exemption_code_chap4_validator.valid?(@exemption_code_chap4)
      tax_rate_chap3_validator = EnumAttributeValidator.new('String', ["00.00", "02.00", "04.00", "04.90", "04.95", "05.00", "07.00", "08.00", "10.00", "12.00", "12.50", "14.00", "15.00", "17.50", "20.00", "21.00", "24.00", "25.00", "27.50", "28.00", "30.00", "37.00"])
      return false unless tax_rate_chap3_validator.valid?(@tax_rate_chap3)
      chap3_status_code_validator = EnumAttributeValidator.new('String', ["01", "02", "34", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "35", "36", "37", "38", "39"])
      return false unless chap3_status_code_validator.valid?(@chap3_status_code)
      chap4_status_code_validator = EnumAttributeValidator.new('String', ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50"])
      return false unless chap4_status_code_validator.valid?(@chap4_status_code)
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["1099-NEC", "1099-MISC", "1099-DIV", "1099-R", "1099-K", "1095-B", "1042-S", "1095-C", "1099-INT"])
      return false unless type_validator.valid?(@type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tin_type Object to be assigned
    def tin_type=(tin_type)
      validator = EnumAttributeValidator.new('String', ["Empty", "EIN", "SSN", "ITIN", "ATIN"])
      unless validator.valid?(tin_type)
        fail ArgumentError, "invalid value for \"tin_type\", must be one of #{validator.allowable_values}."
      end
      @tin_type = tin_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] lob_code Object to be assigned
    def lob_code=(lob_code)
      validator = EnumAttributeValidator.new('String', ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"])
      unless validator.valid?(lob_code)
        fail ArgumentError, "invalid value for \"lob_code\", must be one of #{validator.allowable_values}."
      end
      @lob_code = lob_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] income_code Object to be assigned
    def income_code=(income_code)
      validator = EnumAttributeValidator.new('String', ["01", "02", "03", "04", "05", "22", "29", "30", "31", "33", "51", "54", "06", "07", "08", "34", "40", "52", "53", "56", "09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "23", "24", "25", "26", "27", "28", "32", "35", "36", "37", "38", "39", "41", "42", "43", "44", "50", "55", "57", "58"])
      unless validator.valid?(income_code)
        fail ArgumentError, "invalid value for \"income_code\", must be one of #{validator.allowable_values}."
      end
      @income_code = income_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] withholding_indicator Object to be assigned
    def withholding_indicator=(withholding_indicator)
      validator = EnumAttributeValidator.new('String', ["3", "4"])
      unless validator.valid?(withholding_indicator)
        fail ArgumentError, "invalid value for \"withholding_indicator\", must be one of #{validator.allowable_values}."
      end
      @withholding_indicator = withholding_indicator
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] exemption_code_chap3 Object to be assigned
    def exemption_code_chap3=(exemption_code_chap3)
      validator = EnumAttributeValidator.new('String', ["00", "01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12", "22", "23", "24"])
      unless validator.valid?(exemption_code_chap3)
        fail ArgumentError, "invalid value for \"exemption_code_chap3\", must be one of #{validator.allowable_values}."
      end
      @exemption_code_chap3 = exemption_code_chap3
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] exemption_code_chap4 Object to be assigned
    def exemption_code_chap4=(exemption_code_chap4)
      validator = EnumAttributeValidator.new('String', ["00", "13", "14", "15", "16", "17", "18", "19", "20", "21"])
      unless validator.valid?(exemption_code_chap4)
        fail ArgumentError, "invalid value for \"exemption_code_chap4\", must be one of #{validator.allowable_values}."
      end
      @exemption_code_chap4 = exemption_code_chap4
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_rate_chap3 Object to be assigned
    def tax_rate_chap3=(tax_rate_chap3)
      validator = EnumAttributeValidator.new('String', ["00.00", "02.00", "04.00", "04.90", "04.95", "05.00", "07.00", "08.00", "10.00", "12.00", "12.50", "14.00", "15.00", "17.50", "20.00", "21.00", "24.00", "25.00", "27.50", "28.00", "30.00", "37.00"])
      unless validator.valid?(tax_rate_chap3)
        fail ArgumentError, "invalid value for \"tax_rate_chap3\", must be one of #{validator.allowable_values}."
      end
      @tax_rate_chap3 = tax_rate_chap3
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] chap3_status_code Object to be assigned
    def chap3_status_code=(chap3_status_code)
      validator = EnumAttributeValidator.new('String', ["01", "02", "34", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "35", "36", "37", "38", "39"])
      unless validator.valid?(chap3_status_code)
        fail ArgumentError, "invalid value for \"chap3_status_code\", must be one of #{validator.allowable_values}."
      end
      @chap3_status_code = chap3_status_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] chap4_status_code Object to be assigned
    def chap4_status_code=(chap4_status_code)
      validator = EnumAttributeValidator.new('String', ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50"])
      unless validator.valid?(chap4_status_code)
        fail ArgumentError, "invalid value for \"chap4_status_code\", must be one of #{validator.allowable_values}."
      end
      @chap4_status_code = chap4_status_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["1099-NEC", "1099-MISC", "1099-DIV", "1099-R", "1099-K", "1095-B", "1042-S", "1095-C", "1099-INT"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method with validation
    # @param [Object] state_efile_status Value to be assigned
    def state_efile_status=(state_efile_status)
      @state_efile_status = state_efile_status
    end

    # Custom attribute writer method with validation
    # @param [Object] validation_errors Value to be assigned
    def validation_errors=(validation_errors)
      @validation_errors = validation_errors
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          tin_type == o.tin_type &&
          unique_form_id == o.unique_form_id &&
          recipient_date_of_birth == o.recipient_date_of_birth &&
          recipient_giin == o.recipient_giin &&
          recipient_foreign_tin == o.recipient_foreign_tin &&
          lob_code == o.lob_code &&
          income_code == o.income_code &&
          gross_income == o.gross_income &&
          withholding_indicator == o.withholding_indicator &&
          tax_country_code == o.tax_country_code &&
          exemption_code_chap3 == o.exemption_code_chap3 &&
          exemption_code_chap4 == o.exemption_code_chap4 &&
          tax_rate_chap3 == o.tax_rate_chap3 &&
          withholding_allowance == o.withholding_allowance &&
          federal_tax_withheld == o.federal_tax_withheld &&
          tax_not_deposited_indicator == o.tax_not_deposited_indicator &&
          academic_indicator == o.academic_indicator &&
          tax_withheld_other_agents == o.tax_withheld_other_agents &&
          amount_repaid == o.amount_repaid &&
          tax_paid_agent == o.tax_paid_agent &&
          chap3_status_code == o.chap3_status_code &&
          chap4_status_code == o.chap4_status_code &&
          primary_withholding_agent == o.primary_withholding_agent &&
          intermediary_or_flow_through == o.intermediary_or_flow_through &&
          type == o.type &&
          id == o.id &&
          issuer_id == o.issuer_id &&
          issuer_reference_id == o.issuer_reference_id &&
          issuer_tin == o.issuer_tin &&
          tax_year == o.tax_year &&
          reference_id == o.reference_id &&
          tin == o.tin &&
          recipient_name == o.recipient_name &&
          recipient_second_name == o.recipient_second_name &&
          address == o.address &&
          address2 == o.address2 &&
          city == o.city &&
          state == o.state &&
          zip == o.zip &&
          email == o.email &&
          account_number == o.account_number &&
          office_code == o.office_code &&
          non_us_province == o.non_us_province &&
          country_code == o.country_code &&
          federal_efile_date == o.federal_efile_date &&
          postal_mail == o.postal_mail &&
          state_efile_date == o.state_efile_date &&
          recipient_edelivery_date == o.recipient_edelivery_date &&
          tin_match == o.tin_match &&
          no_tin == o.no_tin &&
          address_verification == o.address_verification &&
          state_and_local_withholding == o.state_and_local_withholding &&
          second_tin_notice == o.second_tin_notice &&
          federal_efile_status == o.federal_efile_status &&
          state_efile_status == o.state_efile_status &&
          postal_mail_status == o.postal_mail_status &&
          tin_match_status == o.tin_match_status &&
          address_verification_status == o.address_verification_status &&
          e_delivery_status == o.e_delivery_status &&
          validation_errors == o.validation_errors &&
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
      [tin_type, unique_form_id, recipient_date_of_birth, recipient_giin, recipient_foreign_tin, lob_code, income_code, gross_income, withholding_indicator, tax_country_code, exemption_code_chap3, exemption_code_chap4, tax_rate_chap3, withholding_allowance, federal_tax_withheld, tax_not_deposited_indicator, academic_indicator, tax_withheld_other_agents, amount_repaid, tax_paid_agent, chap3_status_code, chap4_status_code, primary_withholding_agent, intermediary_or_flow_through, type, id, issuer_id, issuer_reference_id, issuer_tin, tax_year, reference_id, tin, recipient_name, recipient_second_name, address, address2, city, state, zip, email, account_number, office_code, non_us_province, country_code, federal_efile_date, postal_mail, state_efile_date, recipient_edelivery_date, tin_match, no_tin, address_verification, state_and_local_withholding, second_tin_notice, federal_efile_status, state_efile_status, postal_mail_status, tin_match_status, address_verification_status, e_delivery_status, validation_errors, created_at, updated_at].hash
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
