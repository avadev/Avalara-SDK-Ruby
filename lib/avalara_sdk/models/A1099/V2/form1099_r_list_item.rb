=begin
#Avalara 1099 & W-9 API Definition

### 🔐 Authentication  Generate a **license key** from: *[Avalara Portal](https://www.avalara.com/us/en/signin.html) → Settings → License and API Keys*.  [More on authentication methods](https://developer.avalara.com/avatax-dm-combined-erp/common-setup/authentication/authentication-methods/)  [Test your credentials](https://developer.avalara.com/avatax/test-credentials/)  ## 📘 API & SDK Documentation  [Avalara SDK (.NET) on GitHub](https://github.com/avadev/Avalara-SDK-DotNet#avalarasdk--the-unified-c-library-for-next-gen-avalara-services)  [Code Examples – 1099 API](https://github.com/avadev/Avalara-SDK-DotNet/blob/main/docs/A1099/V2/Class1099IssuersApi.md#call1099issuersget)


=end

require 'date'
require 'time'

module AvalaraSdk::A1099::V2
      class Form1099RListItem
    # Gross distribution
    attr_accessor :gross_distribution

    # Taxable amount
    attr_accessor :taxable_amount

    # Taxable amount not determined
    attr_accessor :taxable_amount_not_determined

    # Total distribution
    attr_accessor :total_distribution_determined

    # Capital gain (included in Box 2a)
    attr_accessor :capital_gain

    # Federal income tax withheld
    attr_accessor :federal_income_tax_withheld

    # Employee contributions/Designated Roth contributions or insurance premiums
    attr_accessor :employee_contributions_or_designated_roth_or_insurance_premiums

    # Net unrealized appreciation in employer's securities
    attr_accessor :net_unrealized_appreciation_in_employer_securities

    # Distribution code
    attr_accessor :distribution_code

    # Second distribution code
    attr_accessor :second_distribution_code

    # IRA/SEP/SIMPLE
    attr_accessor :ira_sep_simple

    # Traditional IRA/SEP/SIMPLE or Roth conversion amount
    attr_accessor :traditional_ira_sep_simple_or_roth_conversion_amount

    # Other amount
    attr_accessor :other_amount

    # Other percentage
    attr_accessor :other_percentage

    # Total distribution percentage
    attr_accessor :total_distribution_percentage

    # Total employee contributions
    attr_accessor :total_employee_contributions

    # Amount allocable to IRR within 5 years
    attr_accessor :amount_allocable_to_irr_within5_years

    # First year of designated Roth contribution
    attr_accessor :first_year_of_designated_roth_contribution

    # FATCA filing requirement
    attr_accessor :fatca_filing_requirement

    # Date of payment
    attr_accessor :date_of_payment

    # Issuer Reference ID. One of `issuerReferenceId` or `issuerTin` is required.
    attr_accessor :issuer_reference_id

    # Issuer TIN. One of `issuerReferenceId` or `issuerTin` is required.
    attr_accessor :issuer_tin

    # Tax year
    attr_accessor :tax_year

    # Issuer ID
    attr_accessor :issuer_id

    # Reference ID
    attr_accessor :reference_id

    # Recipient Tax ID Number
    attr_accessor :recipient_tin

    # Recipient name
    attr_accessor :recipient_name

    # Type of TIN (Tax ID Number). Will be one of:  * SSN  * EIN  * ITIN  * ATIN
    attr_accessor :tin_type

    # Recipient second name
    attr_accessor :recipient_second_name

    # Address
    attr_accessor :address

    # Address line 2
    attr_accessor :address2

    # City
    attr_accessor :city

    # US state. Required if CountryCode is \"US\".
    attr_accessor :state

    # Zip/postal code
    attr_accessor :zip

    # Recipient email address
    attr_accessor :email

    # Account number
    attr_accessor :account_number

    # Office code
    attr_accessor :office_code

    # Foreign province
    attr_accessor :non_us_province

    # Country code, as defined at https://www.irs.gov/e-file-providers/country-codes
    attr_accessor :country_code

    # Boolean indicating that federal e-filing should be scheduled for this form
    attr_accessor :federal_e_file

    # Boolean indicating that postal mailing to the recipient should be scheduled for this form
    attr_accessor :postal_mail

    # Boolean indicating that state e-filing should be scheduled for this form
    attr_accessor :state_e_file

    # Boolean indicating that TIN Matching should be scheduled for this form
    attr_accessor :tin_match

    # Indicates whether the recipient has no TIN
    attr_accessor :no_tin

    # Second TIN notice in three years
    attr_accessor :second_tin_notice

    # Boolean indicating that address verification should be scheduled for this form
    attr_accessor :address_verification

    # State and local withholding information
    attr_accessor :state_and_local_withholding

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
        :'gross_distribution' => :'grossDistribution',
        :'taxable_amount' => :'taxableAmount',
        :'taxable_amount_not_determined' => :'taxableAmountNotDetermined',
        :'total_distribution_determined' => :'totalDistributionDetermined',
        :'capital_gain' => :'capitalGain',
        :'federal_income_tax_withheld' => :'federalIncomeTaxWithheld',
        :'employee_contributions_or_designated_roth_or_insurance_premiums' => :'employeeContributionsOrDesignatedRothOrInsurancePremiums',
        :'net_unrealized_appreciation_in_employer_securities' => :'netUnrealizedAppreciationInEmployerSecurities',
        :'distribution_code' => :'distributionCode',
        :'second_distribution_code' => :'secondDistributionCode',
        :'ira_sep_simple' => :'iraSepSimple',
        :'traditional_ira_sep_simple_or_roth_conversion_amount' => :'traditionalIraSepSimpleOrRothConversionAmount',
        :'other_amount' => :'otherAmount',
        :'other_percentage' => :'otherPercentage',
        :'total_distribution_percentage' => :'totalDistributionPercentage',
        :'total_employee_contributions' => :'totalEmployeeContributions',
        :'amount_allocable_to_irr_within5_years' => :'amountAllocableToIrrWithin5Years',
        :'first_year_of_designated_roth_contribution' => :'firstYearOfDesignatedRothContribution',
        :'fatca_filing_requirement' => :'fatcaFilingRequirement',
        :'date_of_payment' => :'dateOfPayment',
        :'issuer_reference_id' => :'issuerReferenceId',
        :'issuer_tin' => :'issuerTin',
        :'tax_year' => :'taxYear',
        :'issuer_id' => :'issuerId',
        :'reference_id' => :'referenceId',
        :'recipient_tin' => :'recipientTin',
        :'recipient_name' => :'recipientName',
        :'tin_type' => :'tinType',
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
        :'federal_e_file' => :'federalEFile',
        :'postal_mail' => :'postalMail',
        :'state_e_file' => :'stateEFile',
        :'tin_match' => :'tinMatch',
        :'no_tin' => :'noTin',
        :'second_tin_notice' => :'secondTinNotice',
        :'address_verification' => :'addressVerification',
        :'state_and_local_withholding' => :'stateAndLocalWithholding'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'gross_distribution' => :'Float',
        :'taxable_amount' => :'Float',
        :'taxable_amount_not_determined' => :'Boolean',
        :'total_distribution_determined' => :'Boolean',
        :'capital_gain' => :'Float',
        :'federal_income_tax_withheld' => :'Float',
        :'employee_contributions_or_designated_roth_or_insurance_premiums' => :'Float',
        :'net_unrealized_appreciation_in_employer_securities' => :'Float',
        :'distribution_code' => :'String',
        :'second_distribution_code' => :'String',
        :'ira_sep_simple' => :'Boolean',
        :'traditional_ira_sep_simple_or_roth_conversion_amount' => :'Float',
        :'other_amount' => :'Float',
        :'other_percentage' => :'String',
        :'total_distribution_percentage' => :'String',
        :'total_employee_contributions' => :'Float',
        :'amount_allocable_to_irr_within5_years' => :'Float',
        :'first_year_of_designated_roth_contribution' => :'Integer',
        :'fatca_filing_requirement' => :'Boolean',
        :'date_of_payment' => :'Time',
        :'issuer_reference_id' => :'String',
        :'issuer_tin' => :'String',
        :'tax_year' => :'Integer',
        :'issuer_id' => :'String',
        :'reference_id' => :'String',
        :'recipient_tin' => :'String',
        :'recipient_name' => :'String',
        :'tin_type' => :'String',
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
        :'federal_e_file' => :'Boolean',
        :'postal_mail' => :'Boolean',
        :'state_e_file' => :'Boolean',
        :'tin_match' => :'Boolean',
        :'no_tin' => :'Boolean',
        :'second_tin_notice' => :'Boolean',
        :'address_verification' => :'Boolean',
        :'state_and_local_withholding' => :'StateAndLocalWithholdingRequest'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'second_distribution_code',
        :'issuer_reference_id',
        :'issuer_tin',
        :'issuer_id',
        :'reference_id',
        :'recipient_tin',
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
        :'second_tin_notice',
        :'state_and_local_withholding'
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'FormRequestListItemBase'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `AvalaraSdk::A1099::V2::Form1099RListItem` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AvalaraSdk::A1099::V2::Form1099RListItem`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'gross_distribution')
        self.gross_distribution = attributes[:'gross_distribution']
      end

      if attributes.key?(:'taxable_amount')
        self.taxable_amount = attributes[:'taxable_amount']
      end

      if attributes.key?(:'taxable_amount_not_determined')
        self.taxable_amount_not_determined = attributes[:'taxable_amount_not_determined']
      end

      if attributes.key?(:'total_distribution_determined')
        self.total_distribution_determined = attributes[:'total_distribution_determined']
      end

      if attributes.key?(:'capital_gain')
        self.capital_gain = attributes[:'capital_gain']
      end

      if attributes.key?(:'federal_income_tax_withheld')
        self.federal_income_tax_withheld = attributes[:'federal_income_tax_withheld']
      end

      if attributes.key?(:'employee_contributions_or_designated_roth_or_insurance_premiums')
        self.employee_contributions_or_designated_roth_or_insurance_premiums = attributes[:'employee_contributions_or_designated_roth_or_insurance_premiums']
      end

      if attributes.key?(:'net_unrealized_appreciation_in_employer_securities')
        self.net_unrealized_appreciation_in_employer_securities = attributes[:'net_unrealized_appreciation_in_employer_securities']
      end

      if attributes.key?(:'distribution_code')
        self.distribution_code = attributes[:'distribution_code']
      end

      if attributes.key?(:'second_distribution_code')
        self.second_distribution_code = attributes[:'second_distribution_code']
      end

      if attributes.key?(:'ira_sep_simple')
        self.ira_sep_simple = attributes[:'ira_sep_simple']
      end

      if attributes.key?(:'traditional_ira_sep_simple_or_roth_conversion_amount')
        self.traditional_ira_sep_simple_or_roth_conversion_amount = attributes[:'traditional_ira_sep_simple_or_roth_conversion_amount']
      end

      if attributes.key?(:'other_amount')
        self.other_amount = attributes[:'other_amount']
      end

      if attributes.key?(:'other_percentage')
        self.other_percentage = attributes[:'other_percentage']
      end

      if attributes.key?(:'total_distribution_percentage')
        self.total_distribution_percentage = attributes[:'total_distribution_percentage']
      end

      if attributes.key?(:'total_employee_contributions')
        self.total_employee_contributions = attributes[:'total_employee_contributions']
      end

      if attributes.key?(:'amount_allocable_to_irr_within5_years')
        self.amount_allocable_to_irr_within5_years = attributes[:'amount_allocable_to_irr_within5_years']
      end

      if attributes.key?(:'first_year_of_designated_roth_contribution')
        self.first_year_of_designated_roth_contribution = attributes[:'first_year_of_designated_roth_contribution']
      end

      if attributes.key?(:'fatca_filing_requirement')
        self.fatca_filing_requirement = attributes[:'fatca_filing_requirement']
      end

      if attributes.key?(:'date_of_payment')
        self.date_of_payment = attributes[:'date_of_payment']
      end

      if attributes.key?(:'issuer_reference_id')
        self.issuer_reference_id = attributes[:'issuer_reference_id']
      end

      if attributes.key?(:'issuer_tin')
        self.issuer_tin = attributes[:'issuer_tin']
      end

      if attributes.key?(:'tax_year')
        self.tax_year = attributes[:'tax_year']
      else
        self.tax_year = nil
      end

      if attributes.key?(:'issuer_id')
        self.issuer_id = attributes[:'issuer_id']
      end

      if attributes.key?(:'reference_id')
        self.reference_id = attributes[:'reference_id']
      end

      if attributes.key?(:'recipient_tin')
        self.recipient_tin = attributes[:'recipient_tin']
      end

      if attributes.key?(:'recipient_name')
        self.recipient_name = attributes[:'recipient_name']
      end

      if attributes.key?(:'tin_type')
        self.tin_type = attributes[:'tin_type']
      end

      if attributes.key?(:'recipient_second_name')
        self.recipient_second_name = attributes[:'recipient_second_name']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'address2')
        self.address2 = attributes[:'address2']
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
      end

      if attributes.key?(:'federal_e_file')
        self.federal_e_file = attributes[:'federal_e_file']
      end

      if attributes.key?(:'postal_mail')
        self.postal_mail = attributes[:'postal_mail']
      end

      if attributes.key?(:'state_e_file')
        self.state_e_file = attributes[:'state_e_file']
      end

      if attributes.key?(:'tin_match')
        self.tin_match = attributes[:'tin_match']
      end

      if attributes.key?(:'no_tin')
        self.no_tin = attributes[:'no_tin']
      end

      if attributes.key?(:'second_tin_notice')
        self.second_tin_notice = attributes[:'second_tin_notice']
      end

      if attributes.key?(:'address_verification')
        self.address_verification = attributes[:'address_verification']
      end

      if attributes.key?(:'state_and_local_withholding')
        self.state_and_local_withholding = attributes[:'state_and_local_withholding']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @tax_year.nil?
        invalid_properties.push('invalid value for "tax_year", tax_year cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      distribution_code_validator = EnumAttributeValidator.new('String', ["1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "U", "W"])
      return false unless distribution_code_validator.valid?(@distribution_code)
      second_distribution_code_validator = EnumAttributeValidator.new('String', ["EarlyDistributionNoException", "EarlyDistributionWithException", "Disability", "Death", "ProhibitedTransaction", "Section1035Exchange", "NormalDistribution", "ExcessContributionsCurrentYear", "CurrentLifeInsuranceProtectionCost", "TenYearTaxOption", "DesignatedRothDistribution", "ReportableDeathBenefits", "NonqualifiedAnnuityPayments", "EPCRSDistribution", "CharitableGiftAnnuity", "DirectRollover", "RothAccountToIRADirectRollover", "EarlyRothIRADistribution", "IRAAssetsNoFMV", "LoansDeemedDistributions", "QualifiedPlanLoanOffsets", "RecharacterizedIRANextYear", "ExcessContributionsPreviousYear", "QualifiedRothIRADistribution", "RecharacterizedIRAPreviousYear", "EarlySimpleIRADistribution", "RothIRADistributionException", "ESOPDistribution", "LongTermCareInsurance"])
      return false unless second_distribution_code_validator.valid?(@second_distribution_code)
      return false if @tax_year.nil?
      tin_type_validator = EnumAttributeValidator.new('String', ["EIN", "SSN", "ITIN", "ATIN"])
      return false unless tin_type_validator.valid?(@tin_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] distribution_code Object to be assigned
    def distribution_code=(distribution_code)
      validator = EnumAttributeValidator.new('String', ["1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "U", "W"])
      unless validator.valid?(distribution_code)
        fail ArgumentError, "invalid value for \"distribution_code\", must be one of #{validator.allowable_values}."
      end
      @distribution_code = distribution_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] second_distribution_code Object to be assigned
    def second_distribution_code=(second_distribution_code)
      validator = EnumAttributeValidator.new('String', ["EarlyDistributionNoException", "EarlyDistributionWithException", "Disability", "Death", "ProhibitedTransaction", "Section1035Exchange", "NormalDistribution", "ExcessContributionsCurrentYear", "CurrentLifeInsuranceProtectionCost", "TenYearTaxOption", "DesignatedRothDistribution", "ReportableDeathBenefits", "NonqualifiedAnnuityPayments", "EPCRSDistribution", "CharitableGiftAnnuity", "DirectRollover", "RothAccountToIRADirectRollover", "EarlyRothIRADistribution", "IRAAssetsNoFMV", "LoansDeemedDistributions", "QualifiedPlanLoanOffsets", "RecharacterizedIRANextYear", "ExcessContributionsPreviousYear", "QualifiedRothIRADistribution", "RecharacterizedIRAPreviousYear", "EarlySimpleIRADistribution", "RothIRADistributionException", "ESOPDistribution", "LongTermCareInsurance"])
      unless validator.valid?(second_distribution_code)
        fail ArgumentError, "invalid value for \"second_distribution_code\", must be one of #{validator.allowable_values}."
      end
      @second_distribution_code = second_distribution_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tin_type Object to be assigned
    def tin_type=(tin_type)
      validator = EnumAttributeValidator.new('String', ["EIN", "SSN", "ITIN", "ATIN"])
      unless validator.valid?(tin_type)
        fail ArgumentError, "invalid value for \"tin_type\", must be one of #{validator.allowable_values}."
      end
      @tin_type = tin_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          gross_distribution == o.gross_distribution &&
          taxable_amount == o.taxable_amount &&
          taxable_amount_not_determined == o.taxable_amount_not_determined &&
          total_distribution_determined == o.total_distribution_determined &&
          capital_gain == o.capital_gain &&
          federal_income_tax_withheld == o.federal_income_tax_withheld &&
          employee_contributions_or_designated_roth_or_insurance_premiums == o.employee_contributions_or_designated_roth_or_insurance_premiums &&
          net_unrealized_appreciation_in_employer_securities == o.net_unrealized_appreciation_in_employer_securities &&
          distribution_code == o.distribution_code &&
          second_distribution_code == o.second_distribution_code &&
          ira_sep_simple == o.ira_sep_simple &&
          traditional_ira_sep_simple_or_roth_conversion_amount == o.traditional_ira_sep_simple_or_roth_conversion_amount &&
          other_amount == o.other_amount &&
          other_percentage == o.other_percentage &&
          total_distribution_percentage == o.total_distribution_percentage &&
          total_employee_contributions == o.total_employee_contributions &&
          amount_allocable_to_irr_within5_years == o.amount_allocable_to_irr_within5_years &&
          first_year_of_designated_roth_contribution == o.first_year_of_designated_roth_contribution &&
          fatca_filing_requirement == o.fatca_filing_requirement &&
          date_of_payment == o.date_of_payment &&
          issuer_reference_id == o.issuer_reference_id &&
          issuer_tin == o.issuer_tin &&
          tax_year == o.tax_year &&
          issuer_id == o.issuer_id &&
          reference_id == o.reference_id &&
          recipient_tin == o.recipient_tin &&
          recipient_name == o.recipient_name &&
          tin_type == o.tin_type &&
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
          federal_e_file == o.federal_e_file &&
          postal_mail == o.postal_mail &&
          state_e_file == o.state_e_file &&
          tin_match == o.tin_match &&
          no_tin == o.no_tin &&
          second_tin_notice == o.second_tin_notice &&
          address_verification == o.address_verification &&
          state_and_local_withholding == o.state_and_local_withholding
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [gross_distribution, taxable_amount, taxable_amount_not_determined, total_distribution_determined, capital_gain, federal_income_tax_withheld, employee_contributions_or_designated_roth_or_insurance_premiums, net_unrealized_appreciation_in_employer_securities, distribution_code, second_distribution_code, ira_sep_simple, traditional_ira_sep_simple_or_roth_conversion_amount, other_amount, other_percentage, total_distribution_percentage, total_employee_contributions, amount_allocable_to_irr_within5_years, first_year_of_designated_roth_contribution, fatca_filing_requirement, date_of_payment, issuer_reference_id, issuer_tin, tax_year, issuer_id, reference_id, recipient_tin, recipient_name, tin_type, recipient_second_name, address, address2, city, state, zip, email, account_number, office_code, non_us_province, country_code, federal_e_file, postal_mail, state_e_file, tin_match, no_tin, second_tin_notice, address_verification, state_and_local_withholding].hash
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
