=begin
#Avalara 1099 & W-9 API Definition

### 🔐 Authentication  Generate a **license key** from: *[Avalara Portal](https://www.avalara.com/us/en/signin.html) → Settings → License and API Keys*.  [More on authentication methods](https://developer.avalara.com/avatax-dm-combined-erp/common-setup/authentication/authentication-methods/)  [Test your credentials](https://developer.avalara.com/avatax/test-credentials/)  ## 📘 API & SDK Documentation  [Avalara SDK (.NET) on GitHub](https://github.com/avadev/Avalara-SDK-DotNet#avalarasdk--the-unified-c-library-for-next-gen-avalara-services)  [Code Examples – 1099 API](https://github.com/avadev/Avalara-SDK-DotNet/blob/main/docs/A1099/V2/Class1099IssuersApi.md#call1099issuersget)


=end

require 'date'
require 'time'

module AvalaraSdk::A1099::V2
      class Form1099DivRequest
    # Total ordinary dividends
    attr_accessor :total_ordinary_dividends

    # Qualified dividends
    attr_accessor :qualified_dividends

    # Total capital gain distributions
    attr_accessor :total_capital_gain_distributions

    # Unrecaptured Section 1250 gain
    attr_accessor :unrecaptured_section1250_gain

    # Section 1202 gain
    attr_accessor :section1202_gain

    # Collectibles (28%) gain
    attr_accessor :collectibles_gain

    # Section 897 ordinary dividends
    attr_accessor :section897_ordinary_dividends

    # Section 897 capital gain
    attr_accessor :section897_capital_gain

    # Nondividend distributions
    attr_accessor :nondividend_distributions

    # Federal income tax withheld
    attr_accessor :federal_income_tax_withheld

    # Section 199A dividends
    attr_accessor :section199_a_dividends

    # Investment expenses
    attr_accessor :investment_expenses

    # Foreign tax paid
    attr_accessor :foreign_tax_paid

    # Foreign country or U.S. possession
    attr_accessor :foreign_country_or_us_possession

    # Cash liquidation distributions
    attr_accessor :cash_liquidation_distributions

    # Noncash liquidation distributions
    attr_accessor :noncash_liquidation_distributions

    # Exempt-interest dividends
    attr_accessor :exempt_interest_dividends

    # Specified private activity bond interest dividends
    attr_accessor :specified_private_activity_bond_interest_dividends

    # FATCA filing requirement
    attr_accessor :fatca_filing_requirement

    attr_accessor :type

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
        :'total_ordinary_dividends' => :'totalOrdinaryDividends',
        :'qualified_dividends' => :'qualifiedDividends',
        :'total_capital_gain_distributions' => :'totalCapitalGainDistributions',
        :'unrecaptured_section1250_gain' => :'unrecapturedSection1250Gain',
        :'section1202_gain' => :'section1202Gain',
        :'collectibles_gain' => :'collectiblesGain',
        :'section897_ordinary_dividends' => :'section897OrdinaryDividends',
        :'section897_capital_gain' => :'section897CapitalGain',
        :'nondividend_distributions' => :'nondividendDistributions',
        :'federal_income_tax_withheld' => :'federalIncomeTaxWithheld',
        :'section199_a_dividends' => :'section199ADividends',
        :'investment_expenses' => :'investmentExpenses',
        :'foreign_tax_paid' => :'foreignTaxPaid',
        :'foreign_country_or_us_possession' => :'foreignCountryOrUSPossession',
        :'cash_liquidation_distributions' => :'cashLiquidationDistributions',
        :'noncash_liquidation_distributions' => :'noncashLiquidationDistributions',
        :'exempt_interest_dividends' => :'exemptInterestDividends',
        :'specified_private_activity_bond_interest_dividends' => :'specifiedPrivateActivityBondInterestDividends',
        :'fatca_filing_requirement' => :'fatcaFilingRequirement',
        :'type' => :'type',
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
        :'total_ordinary_dividends' => :'String',
        :'qualified_dividends' => :'String',
        :'total_capital_gain_distributions' => :'String',
        :'unrecaptured_section1250_gain' => :'String',
        :'section1202_gain' => :'String',
        :'collectibles_gain' => :'String',
        :'section897_ordinary_dividends' => :'String',
        :'section897_capital_gain' => :'String',
        :'nondividend_distributions' => :'String',
        :'federal_income_tax_withheld' => :'String',
        :'section199_a_dividends' => :'String',
        :'investment_expenses' => :'String',
        :'foreign_tax_paid' => :'String',
        :'foreign_country_or_us_possession' => :'String',
        :'cash_liquidation_distributions' => :'String',
        :'noncash_liquidation_distributions' => :'String',
        :'exempt_interest_dividends' => :'String',
        :'specified_private_activity_bond_interest_dividends' => :'String',
        :'fatca_filing_requirement' => :'Boolean',
        :'type' => :'String',
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
        :'total_ordinary_dividends',
        :'qualified_dividends',
        :'total_capital_gain_distributions',
        :'unrecaptured_section1250_gain',
        :'section1202_gain',
        :'collectibles_gain',
        :'section897_ordinary_dividends',
        :'section897_capital_gain',
        :'nondividend_distributions',
        :'federal_income_tax_withheld',
        :'section199_a_dividends',
        :'investment_expenses',
        :'foreign_tax_paid',
        :'foreign_country_or_us_possession',
        :'cash_liquidation_distributions',
        :'noncash_liquidation_distributions',
        :'exempt_interest_dividends',
        :'specified_private_activity_bond_interest_dividends',
        :'fatca_filing_requirement',
        :'issuer_id',
        :'reference_id',
        :'recipient_name',
        :'recipient_second_name',
        :'address2',
        :'email',
        :'account_number',
        :'office_code',
        :'non_us_province',
        :'second_tin_notice',
        :'state_and_local_withholding'
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'FormSingleRequestBase'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `AvalaraSdk::A1099::V2::Form1099DivRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AvalaraSdk::A1099::V2::Form1099DivRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'total_ordinary_dividends')
        self.total_ordinary_dividends = attributes[:'total_ordinary_dividends']
      end

      if attributes.key?(:'qualified_dividends')
        self.qualified_dividends = attributes[:'qualified_dividends']
      end

      if attributes.key?(:'total_capital_gain_distributions')
        self.total_capital_gain_distributions = attributes[:'total_capital_gain_distributions']
      end

      if attributes.key?(:'unrecaptured_section1250_gain')
        self.unrecaptured_section1250_gain = attributes[:'unrecaptured_section1250_gain']
      end

      if attributes.key?(:'section1202_gain')
        self.section1202_gain = attributes[:'section1202_gain']
      end

      if attributes.key?(:'collectibles_gain')
        self.collectibles_gain = attributes[:'collectibles_gain']
      end

      if attributes.key?(:'section897_ordinary_dividends')
        self.section897_ordinary_dividends = attributes[:'section897_ordinary_dividends']
      end

      if attributes.key?(:'section897_capital_gain')
        self.section897_capital_gain = attributes[:'section897_capital_gain']
      end

      if attributes.key?(:'nondividend_distributions')
        self.nondividend_distributions = attributes[:'nondividend_distributions']
      end

      if attributes.key?(:'federal_income_tax_withheld')
        self.federal_income_tax_withheld = attributes[:'federal_income_tax_withheld']
      end

      if attributes.key?(:'section199_a_dividends')
        self.section199_a_dividends = attributes[:'section199_a_dividends']
      end

      if attributes.key?(:'investment_expenses')
        self.investment_expenses = attributes[:'investment_expenses']
      end

      if attributes.key?(:'foreign_tax_paid')
        self.foreign_tax_paid = attributes[:'foreign_tax_paid']
      end

      if attributes.key?(:'foreign_country_or_us_possession')
        self.foreign_country_or_us_possession = attributes[:'foreign_country_or_us_possession']
      end

      if attributes.key?(:'cash_liquidation_distributions')
        self.cash_liquidation_distributions = attributes[:'cash_liquidation_distributions']
      end

      if attributes.key?(:'noncash_liquidation_distributions')
        self.noncash_liquidation_distributions = attributes[:'noncash_liquidation_distributions']
      end

      if attributes.key?(:'exempt_interest_dividends')
        self.exempt_interest_dividends = attributes[:'exempt_interest_dividends']
      end

      if attributes.key?(:'specified_private_activity_bond_interest_dividends')
        self.specified_private_activity_bond_interest_dividends = attributes[:'specified_private_activity_bond_interest_dividends']
      end

      if attributes.key?(:'fatca_filing_requirement')
        self.fatca_filing_requirement = attributes[:'fatca_filing_requirement']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
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
      if @address.nil?
        invalid_properties.push('invalid value for "address", address cannot be nil.')
      end

      if @address.to_s.length < 1
        invalid_properties.push('invalid value for "address", the character length must be great than or equal to 1.')
      end

      if @city.nil?
        invalid_properties.push('invalid value for "city", city cannot be nil.')
      end

      if @city.to_s.length < 1
        invalid_properties.push('invalid value for "city", the character length must be great than or equal to 1.')
      end

      if @country_code.nil?
        invalid_properties.push('invalid value for "country_code", country_code cannot be nil.')
      end

      if @country_code.to_s.length < 1
        invalid_properties.push('invalid value for "country_code", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      type_validator = EnumAttributeValidator.new('String', ["1099-NEC", "1099-MISC", "1099-DIV", "1099-R", "1099-K", "1095-B", "1042-S", "1095-C"])
      return false unless type_validator.valid?(@type)
      tin_type_validator = EnumAttributeValidator.new('String', ["EIN", "SSN", "ITIN", "ATIN"])
      return false unless tin_type_validator.valid?(@tin_type)
      return false if @address.nil?
      return false if @address.to_s.length < 1
      return false if @city.nil?
      return false if @city.to_s.length < 1
      return false if @country_code.nil?
      return false if @country_code.to_s.length < 1
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["1099-NEC", "1099-MISC", "1099-DIV", "1099-R", "1099-K", "1095-B", "1042-S", "1095-C"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
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

    # Custom attribute writer method with validation
    # @param [Object] address Value to be assigned
    def address=(address)
      if address.nil?
        fail ArgumentError, 'address cannot be nil'
      end

      if address.to_s.length < 1
        fail ArgumentError, 'invalid value for "address", the character length must be great than or equal to 1.'
      end

      @address = address
    end

    # Custom attribute writer method with validation
    # @param [Object] city Value to be assigned
    def city=(city)
      if city.nil?
        fail ArgumentError, 'city cannot be nil'
      end

      if city.to_s.length < 1
        fail ArgumentError, 'invalid value for "city", the character length must be great than or equal to 1.'
      end

      @city = city
    end

    # Custom attribute writer method with validation
    # @param [Object] country_code Value to be assigned
    def country_code=(country_code)
      if country_code.nil?
        fail ArgumentError, 'country_code cannot be nil'
      end

      if country_code.to_s.length < 1
        fail ArgumentError, 'invalid value for "country_code", the character length must be great than or equal to 1.'
      end

      @country_code = country_code
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          total_ordinary_dividends == o.total_ordinary_dividends &&
          qualified_dividends == o.qualified_dividends &&
          total_capital_gain_distributions == o.total_capital_gain_distributions &&
          unrecaptured_section1250_gain == o.unrecaptured_section1250_gain &&
          section1202_gain == o.section1202_gain &&
          collectibles_gain == o.collectibles_gain &&
          section897_ordinary_dividends == o.section897_ordinary_dividends &&
          section897_capital_gain == o.section897_capital_gain &&
          nondividend_distributions == o.nondividend_distributions &&
          federal_income_tax_withheld == o.federal_income_tax_withheld &&
          section199_a_dividends == o.section199_a_dividends &&
          investment_expenses == o.investment_expenses &&
          foreign_tax_paid == o.foreign_tax_paid &&
          foreign_country_or_us_possession == o.foreign_country_or_us_possession &&
          cash_liquidation_distributions == o.cash_liquidation_distributions &&
          noncash_liquidation_distributions == o.noncash_liquidation_distributions &&
          exempt_interest_dividends == o.exempt_interest_dividends &&
          specified_private_activity_bond_interest_dividends == o.specified_private_activity_bond_interest_dividends &&
          fatca_filing_requirement == o.fatca_filing_requirement &&
          type == o.type &&
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
      [total_ordinary_dividends, qualified_dividends, total_capital_gain_distributions, unrecaptured_section1250_gain, section1202_gain, collectibles_gain, section897_ordinary_dividends, section897_capital_gain, nondividend_distributions, federal_income_tax_withheld, section199_a_dividends, investment_expenses, foreign_tax_paid, foreign_country_or_us_possession, cash_liquidation_distributions, noncash_liquidation_distributions, exempt_interest_dividends, specified_private_activity_bond_interest_dividends, fatca_filing_requirement, type, issuer_id, reference_id, recipient_tin, recipient_name, tin_type, recipient_second_name, address, address2, city, state, zip, email, account_number, office_code, non_us_province, country_code, federal_e_file, postal_mail, state_e_file, tin_match, no_tin, second_tin_notice, address_verification, state_and_local_withholding].hash
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
