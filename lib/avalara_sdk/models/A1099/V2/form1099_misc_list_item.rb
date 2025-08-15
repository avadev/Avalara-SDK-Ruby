=begin
#Avalara 1099 & W-9 API Definition

### 🔐 Authentication  Generate a **license key** from: *[Avalara Portal](https://www.avalara.com/us/en/signin.html) → Settings → License and API Keys*.  [More on authentication methods](https://developer.avalara.com/avatax-dm-combined-erp/common-setup/authentication/authentication-methods/)  [Test your credentials](https://developer.avalara.com/avatax/test-credentials/)  ## 📘 API & SDK Documentation  [Avalara SDK (.NET) on GitHub](https://github.com/avadev/Avalara-SDK-DotNet#avalarasdk--the-unified-c-library-for-next-gen-avalara-services)  [Code Examples – 1099 API](https://github.com/avadev/Avalara-SDK-DotNet/blob/main/docs/A1099/V2/Class1099IssuersApi.md#call1099issuersget)


=end

require 'date'
require 'time'

module AvalaraSdk::A1099::V2
      class Form1099MiscListItem
    # Rents
    attr_accessor :rents

    # Royalties
    attr_accessor :royalties

    # Other income
    attr_accessor :other_income

    # Federal income tax withheld
    attr_accessor :fed_income_tax_withheld

    # Fishing boat proceeds
    attr_accessor :fishing_boat_proceeds

    # Medical and health care payments
    attr_accessor :medical_and_health_care_payments

    # Payer made direct sales totaling $5,000 or more of consumer products to recipient for resale
    attr_accessor :direct_sales_indicator

    # Substitute payments in lieu of dividends or interest
    attr_accessor :substitute_payments

    # Crop insurance proceeds
    attr_accessor :crop_insurance_proceeds

    # Gross proceeds paid to an attorney
    attr_accessor :gross_proceeds_paid_to_attorney

    # Fish purchased for resale
    attr_accessor :fish_purchased_for_resale

    # Section 409A deferrals
    attr_accessor :section409_a_deferrals

    # FATCA filing requirement
    attr_accessor :fatca_filing_requirement

    # (Legacy field) Excess golden parachute payments
    attr_accessor :excess_golden_parachute_payments

    # Nonqualified deferred compensation
    attr_accessor :nonqualified_deferred_compensation

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
        :'rents' => :'rents',
        :'royalties' => :'royalties',
        :'other_income' => :'otherIncome',
        :'fed_income_tax_withheld' => :'fedIncomeTaxWithheld',
        :'fishing_boat_proceeds' => :'fishingBoatProceeds',
        :'medical_and_health_care_payments' => :'medicalAndHealthCarePayments',
        :'direct_sales_indicator' => :'directSalesIndicator',
        :'substitute_payments' => :'substitutePayments',
        :'crop_insurance_proceeds' => :'cropInsuranceProceeds',
        :'gross_proceeds_paid_to_attorney' => :'grossProceedsPaidToAttorney',
        :'fish_purchased_for_resale' => :'fishPurchasedForResale',
        :'section409_a_deferrals' => :'section409ADeferrals',
        :'fatca_filing_requirement' => :'fatcaFilingRequirement',
        :'excess_golden_parachute_payments' => :'excessGoldenParachutePayments',
        :'nonqualified_deferred_compensation' => :'nonqualifiedDeferredCompensation',
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
        :'rents' => :'Float',
        :'royalties' => :'Float',
        :'other_income' => :'Float',
        :'fed_income_tax_withheld' => :'Float',
        :'fishing_boat_proceeds' => :'Float',
        :'medical_and_health_care_payments' => :'Float',
        :'direct_sales_indicator' => :'Boolean',
        :'substitute_payments' => :'Float',
        :'crop_insurance_proceeds' => :'Float',
        :'gross_proceeds_paid_to_attorney' => :'Float',
        :'fish_purchased_for_resale' => :'Float',
        :'section409_a_deferrals' => :'Float',
        :'fatca_filing_requirement' => :'Boolean',
        :'excess_golden_parachute_payments' => :'Float',
        :'nonqualified_deferred_compensation' => :'Float',
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `AvalaraSdk::A1099::V2::Form1099MiscListItem` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AvalaraSdk::A1099::V2::Form1099MiscListItem`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'rents')
        self.rents = attributes[:'rents']
      end

      if attributes.key?(:'royalties')
        self.royalties = attributes[:'royalties']
      end

      if attributes.key?(:'other_income')
        self.other_income = attributes[:'other_income']
      end

      if attributes.key?(:'fed_income_tax_withheld')
        self.fed_income_tax_withheld = attributes[:'fed_income_tax_withheld']
      end

      if attributes.key?(:'fishing_boat_proceeds')
        self.fishing_boat_proceeds = attributes[:'fishing_boat_proceeds']
      end

      if attributes.key?(:'medical_and_health_care_payments')
        self.medical_and_health_care_payments = attributes[:'medical_and_health_care_payments']
      end

      if attributes.key?(:'direct_sales_indicator')
        self.direct_sales_indicator = attributes[:'direct_sales_indicator']
      end

      if attributes.key?(:'substitute_payments')
        self.substitute_payments = attributes[:'substitute_payments']
      end

      if attributes.key?(:'crop_insurance_proceeds')
        self.crop_insurance_proceeds = attributes[:'crop_insurance_proceeds']
      end

      if attributes.key?(:'gross_proceeds_paid_to_attorney')
        self.gross_proceeds_paid_to_attorney = attributes[:'gross_proceeds_paid_to_attorney']
      end

      if attributes.key?(:'fish_purchased_for_resale')
        self.fish_purchased_for_resale = attributes[:'fish_purchased_for_resale']
      end

      if attributes.key?(:'section409_a_deferrals')
        self.section409_a_deferrals = attributes[:'section409_a_deferrals']
      end

      if attributes.key?(:'fatca_filing_requirement')
        self.fatca_filing_requirement = attributes[:'fatca_filing_requirement']
      end

      if attributes.key?(:'excess_golden_parachute_payments')
        self.excess_golden_parachute_payments = attributes[:'excess_golden_parachute_payments']
      end

      if attributes.key?(:'nonqualified_deferred_compensation')
        self.nonqualified_deferred_compensation = attributes[:'nonqualified_deferred_compensation']
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
      return false if @tax_year.nil?
      tin_type_validator = EnumAttributeValidator.new('String', ["EIN", "SSN", "ITIN", "ATIN"])
      return false unless tin_type_validator.valid?(@tin_type)
      true
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
          rents == o.rents &&
          royalties == o.royalties &&
          other_income == o.other_income &&
          fed_income_tax_withheld == o.fed_income_tax_withheld &&
          fishing_boat_proceeds == o.fishing_boat_proceeds &&
          medical_and_health_care_payments == o.medical_and_health_care_payments &&
          direct_sales_indicator == o.direct_sales_indicator &&
          substitute_payments == o.substitute_payments &&
          crop_insurance_proceeds == o.crop_insurance_proceeds &&
          gross_proceeds_paid_to_attorney == o.gross_proceeds_paid_to_attorney &&
          fish_purchased_for_resale == o.fish_purchased_for_resale &&
          section409_a_deferrals == o.section409_a_deferrals &&
          fatca_filing_requirement == o.fatca_filing_requirement &&
          excess_golden_parachute_payments == o.excess_golden_parachute_payments &&
          nonqualified_deferred_compensation == o.nonqualified_deferred_compensation &&
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
      [rents, royalties, other_income, fed_income_tax_withheld, fishing_boat_proceeds, medical_and_health_care_payments, direct_sales_indicator, substitute_payments, crop_insurance_proceeds, gross_proceeds_paid_to_attorney, fish_purchased_for_resale, section409_a_deferrals, fatca_filing_requirement, excess_golden_parachute_payments, nonqualified_deferred_compensation, issuer_reference_id, issuer_tin, tax_year, issuer_id, reference_id, recipient_tin, recipient_name, tin_type, recipient_second_name, address, address2, city, state, zip, email, account_number, office_code, non_us_province, country_code, federal_e_file, postal_mail, state_e_file, tin_match, no_tin, second_tin_notice, address_verification, state_and_local_withholding].hash
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
