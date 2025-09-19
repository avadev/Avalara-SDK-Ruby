=begin
#Avalara 1099 & W-9 API Definition

### 🔐 Authentication  Generate a **license key** from: *[Avalara Portal](https://www.avalara.com/us/en/signin.html) → Settings → License and API Keys*.  [More on authentication methods](https://developer.avalara.com/avatax-dm-combined-erp/common-setup/authentication/authentication-methods/)  [Test your credentials](https://developer.avalara.com/avatax/test-credentials/)  ## 📘 API & SDK Documentation  [Avalara SDK (.NET) on GitHub](https://github.com/avadev/Avalara-SDK-DotNet#avalarasdk--the-unified-c-library-for-next-gen-avalara-services)  [Code Examples – 1099 API](https://github.com/avadev/Avalara-SDK-DotNet/blob/main/docs/A1099/V2/Class1099IssuersApi.md#call1099issuersget)


=end

require 'date'
require 'time'

module AvalaraSdk::A1099::V2
      # Intermediary or flow-through entity information for tax forms
  class IntermediaryOrFlowThrough
    # EIN (Employer Identification Number) of the intermediary or flow-through entity
    attr_accessor :ein

    # Chapter 3 status code for the intermediary or flow-through entity. Available values: - 01: U.S. Withholding Agent - FI (Deprecated - valid only for tax years prior to 2020) - 02: U.S. Withholding Agent - Other (Deprecated - valid only for tax years prior to 2020) - 03: Territory FI - treated as U.S. Person - 04: Territory FI - not treated as U.S. Person - 05: U.S. branch - treated as U.S. Person - 06: U.S. branch - not treated as U.S. Person - 07: U.S. branch - ECI presumption applied - 08: Partnership other than Withholding Foreign Partnership - 09: Withholding Foreign Partnership - 10: Trust other than Withholding Foreign Trust - 11: Withholding Foreign Trust - 12: Qualified Intermediary - 13: Qualified Securities Lender - Qualified Intermediary - 14: Qualified Securities Lender - Other - 15: Corporation - 16: Individual - 17: Estate - 18: Private Foundation - 19: Government or International Organization - 20: Tax Exempt Organization (Section 501(c) entities) - 21: Unknown Recipient - 22: Artist or Athlete - 23: Pension - 24: Foreign Central Bank of Issue - 25: Nonqualified Intermediary - 26: Hybrid entity making Treaty Claim - 27: Withholding Rate Pool - General - 28: Withholding Rate Pool - Exempt Organization - 29: PAI Withholding Rate Pool - General - 30: PAI Withholding Rate Pool - Exempt Organization - 31: Agency Withholding Rate Pool - General - 32: Agency Withholding Rate Pool - Exempt Organization - 34: U.S. Withholding Agent-Foreign branch of FI (Deprecated - valid only for tax years prior to 2020) - 35: Qualified Derivatives Dealer - 36: Foreign Government - Integral Part - 37: Foreign Government - Controlled Entity - 38: Publicly Traded Partnership - 39: Disclosing Qualified Intermediary
    attr_accessor :chap3_status_code

    # Chapter 4 status code for the intermediary or flow-through entity. Available values: - 01: U.S. Withholding Agent - FI - 02: U.S. Withholding Agent - Other - 03: Territory FI - not treated as U.S. Person - 04: Territory FI - treated as U.S. Person - 05: Participating FFI - Other - 06: Participating FFI - Reporting Model 2 FFI - 07: Registered Deemed - Compliant FFI-Reporting Model 1 FFI - 08: Registered Deemed - Compliant FFI-Sponsored Entity - 09: Registered Deemed - Compliant FFI-Other - 10: Certified Deemed - Compliant FFI-Other - 11: Certified Deemed - Compliant FFI-FFI with Low Value Accounts - 12: Certified Deemed - Compliant FFI-Non-Registering Local Bank - 13: Certified Deemed - Compliant FFI-Sponsored Entity - 14: Certified Deemed - Compliant FFI-Investment Advisor or Investment Manager - 15: Nonparticipating FFI - 16: Owner-Documented FFI - 17: U.S. Branch - treated as U.S. person - 18: U.S. Branch - not treated as U.S. person (reporting under section 1471) - 19: Passive NFFE identifying Substantial U.S. Owners - 20: Passive NFFE with no Substantial U.S. Owners - 21: Publicly Traded NFFE or Affiliate of Publicly Traded NFFE - 22: Active NFFE - 23: Individual - 24: Section 501(c) Entities - 25: Excepted Territory NFFE - 26: Excepted NFFE - Other - 27: Exempt Beneficial Owner - 28: Entity Wholly Owned by Exempt Beneficial Owners - 29: Unknown Recipient - 30: Recalcitrant Account Holder - 31: Nonreporting IGA FFI - 32: Direct reporting NFFE - 33: U.S. reportable account - 34: Non-consenting U.S. account - 35: Sponsored direct reporting NFFE - 36: Excepted Inter-affiliate FFI - 37: Undocumented Preexisting Obligation - 38: U.S. Branch - ECI presumption applied - 39: Account Holder of Excluded Financial Account - 40: Passive NFFE reported by FFI - 41: NFFE subject to 1472 withholding - 42: Recalcitrant Pool - No U.S. Indicia - 43: Recalcitrant Pool - U.S. Indicia - 44: Recalcitrant Pool - Dormant Account - 45: Recalcitrant Pool - U.S. Persons - 46: Recalcitrant Pool - Passive NFFEs - 47: Nonparticipating FFI Pool - 48: U.S. Payees Pool - 49: QI - Recalcitrant Pool-General - 50: U.S. Withholding Agent-Foreign branch of FI
    attr_accessor :chap4_status_code

    # Name of the intermediary or flow-through entity
    attr_accessor :name

    # GIIN (Global Intermediary Identification Number) of the intermediary or flow-through entity
    attr_accessor :giin

    # Country code for the intermediary or flow-through entity
    attr_accessor :country_code

    # Foreign TIN of the intermediary or flow-through entity
    attr_accessor :foreign_tin

    # Address of the intermediary or flow-through entity
    attr_accessor :address

    # City of the intermediary or flow-through entity
    attr_accessor :city

    # State of the intermediary or flow-through entity
    attr_accessor :state

    # Zip code of the intermediary or flow-through entity
    attr_accessor :zip

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
        :'ein' => :'ein',
        :'chap3_status_code' => :'chap3StatusCode',
        :'chap4_status_code' => :'chap4StatusCode',
        :'name' => :'name',
        :'giin' => :'giin',
        :'country_code' => :'countryCode',
        :'foreign_tin' => :'foreignTin',
        :'address' => :'address',
        :'city' => :'city',
        :'state' => :'state',
        :'zip' => :'zip'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'ein' => :'String',
        :'chap3_status_code' => :'String',
        :'chap4_status_code' => :'String',
        :'name' => :'String',
        :'giin' => :'String',
        :'country_code' => :'String',
        :'foreign_tin' => :'String',
        :'address' => :'String',
        :'city' => :'String',
        :'state' => :'String',
        :'zip' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'ein',
        :'chap3_status_code',
        :'chap4_status_code',
        :'name',
        :'giin',
        :'country_code',
        :'foreign_tin',
        :'address',
        :'city',
        :'state',
        :'zip'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `AvalaraSdk::A1099::V2::IntermediaryOrFlowThrough` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AvalaraSdk::A1099::V2::IntermediaryOrFlowThrough`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'ein')
        self.ein = attributes[:'ein']
      end

      if attributes.key?(:'chap3_status_code')
        self.chap3_status_code = attributes[:'chap3_status_code']
      end

      if attributes.key?(:'chap4_status_code')
        self.chap4_status_code = attributes[:'chap4_status_code']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'giin')
        self.giin = attributes[:'giin']
      end

      if attributes.key?(:'country_code')
        self.country_code = attributes[:'country_code']
      end

      if attributes.key?(:'foreign_tin')
        self.foreign_tin = attributes[:'foreign_tin']
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
      chap3_status_code_validator = EnumAttributeValidator.new('String', ["01", "02", "34", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "35", "36", "37", "38", "39"])
      return false unless chap3_status_code_validator.valid?(@chap3_status_code)
      chap4_status_code_validator = EnumAttributeValidator.new('String', ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50"])
      return false unless chap4_status_code_validator.valid?(@chap4_status_code)
      true
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          ein == o.ein &&
          chap3_status_code == o.chap3_status_code &&
          chap4_status_code == o.chap4_status_code &&
          name == o.name &&
          giin == o.giin &&
          country_code == o.country_code &&
          foreign_tin == o.foreign_tin &&
          address == o.address &&
          city == o.city &&
          state == o.state &&
          zip == o.zip
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [ein, chap3_status_code, chap4_status_code, name, giin, country_code, foreign_tin, address, city, state, zip].hash
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
