=begin
#Avalara 1099 & W-9 API Definition

### 🔐 Authentication  Generate a **license key** from: *[Avalara Portal](https://www.avalara.com/us/en/signin.html) → Settings → License and API Keys*.  [More on authentication methods](https://developer.avalara.com/avatax-dm-combined-erp/common-setup/authentication/authentication-methods/)  [Test your credentials](https://developer.avalara.com/avatax/test-credentials/)  ## 📘 API & SDK Documentation  [Avalara SDK (.NET) on GitHub](https://github.com/avadev/Avalara-SDK-DotNet#avalarasdk--the-unified-c-library-for-next-gen-avalara-services)  [Code Examples – 1099 API](https://github.com/avadev/Avalara-SDK-DotNet/blob/main/docs/A1099/V2/Class1099IssuersApi.md#call1099issuersget)


=end

require 'date'
require 'time'

module AvalaraSdk::A1099::V2
      class W9FormResponse < W9FormBaseResponse
    # The name of the individual or entity associated with the form.
    attr_accessor :name

    # The name of the business associated with the form.
    attr_accessor :business_name

    # The classification of the business.
    attr_accessor :business_classification

    # The classification description when \"businessClassification\" is \"Other\".
    attr_accessor :business_other

    # Indicates whether the individual is a foreign partner, owner, or beneficiary.
    attr_accessor :foreign_partner_owner_or_beneficiary

    # The exempt payee code.
    attr_accessor :exempt_payee_code

    # The exemption from FATCA reporting code.
    attr_accessor :exempt_fatca_code

    # Indicates whether the individual or entity is in a foreign country.
    attr_accessor :foreign_country_indicator

    # The address of the individual or entity.
    attr_accessor :address

    # The foreign address of the individual or entity.
    attr_accessor :foreign_address

    # The city of the address.
    attr_accessor :city

    # The state of the address.
    attr_accessor :state

    # The ZIP code of the address.
    attr_accessor :zip

    # The account number associated with the form.
    attr_accessor :account_number

    # The type of TIN provided.
    attr_accessor :tin_type

    # The taxpayer identification number (TIN).
    attr_accessor :tin

    # Indicates whether backup withholding applies.
    attr_accessor :backup_withholding

    # Indicates whether the individual or entity should be issued a 1099 form.
    attr_accessor :is1099able

    # The TIN Match status from IRS.
    attr_accessor :tin_match_status

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'business_name' => :'businessName',
        :'business_classification' => :'businessClassification',
        :'business_other' => :'businessOther',
        :'foreign_partner_owner_or_beneficiary' => :'foreignPartnerOwnerOrBeneficiary',
        :'exempt_payee_code' => :'exemptPayeeCode',
        :'exempt_fatca_code' => :'exemptFatcaCode',
        :'foreign_country_indicator' => :'foreignCountryIndicator',
        :'address' => :'address',
        :'foreign_address' => :'foreignAddress',
        :'city' => :'city',
        :'state' => :'state',
        :'zip' => :'zip',
        :'account_number' => :'accountNumber',
        :'tin_type' => :'tinType',
        :'tin' => :'tin',
        :'backup_withholding' => :'backupWithholding',
        :'is1099able' => :'is1099able',
        :'tin_match_status' => :'tinMatchStatus'
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
        :'business_name' => :'String',
        :'business_classification' => :'String',
        :'business_other' => :'String',
        :'foreign_partner_owner_or_beneficiary' => :'Boolean',
        :'exempt_payee_code' => :'String',
        :'exempt_fatca_code' => :'String',
        :'foreign_country_indicator' => :'Boolean',
        :'address' => :'String',
        :'foreign_address' => :'String',
        :'city' => :'String',
        :'state' => :'String',
        :'zip' => :'String',
        :'account_number' => :'String',
        :'tin_type' => :'String',
        :'tin' => :'String',
        :'backup_withholding' => :'Boolean',
        :'is1099able' => :'Boolean',
        :'tin_match_status' => :'TinMatchStatusResponse'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'business_name',
        :'business_other',
        :'exempt_payee_code',
        :'exempt_fatca_code',
        :'foreign_address',
        :'city',
        :'state',
        :'zip',
        :'account_number',
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `AvalaraSdk::A1099::V2::W9FormResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AvalaraSdk::A1099::V2::W9FormResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'business_name')
        self.business_name = attributes[:'business_name']
      end

      if attributes.key?(:'business_classification')
        self.business_classification = attributes[:'business_classification']
      end

      if attributes.key?(:'business_other')
        self.business_other = attributes[:'business_other']
      end

      if attributes.key?(:'foreign_partner_owner_or_beneficiary')
        self.foreign_partner_owner_or_beneficiary = attributes[:'foreign_partner_owner_or_beneficiary']
      end

      if attributes.key?(:'exempt_payee_code')
        self.exempt_payee_code = attributes[:'exempt_payee_code']
      end

      if attributes.key?(:'exempt_fatca_code')
        self.exempt_fatca_code = attributes[:'exempt_fatca_code']
      end

      if attributes.key?(:'foreign_country_indicator')
        self.foreign_country_indicator = attributes[:'foreign_country_indicator']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'foreign_address')
        self.foreign_address = attributes[:'foreign_address']
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

      if attributes.key?(:'account_number')
        self.account_number = attributes[:'account_number']
      end

      if attributes.key?(:'tin_type')
        self.tin_type = attributes[:'tin_type']
      end

      if attributes.key?(:'tin')
        self.tin = attributes[:'tin']
      end

      if attributes.key?(:'backup_withholding')
        self.backup_withholding = attributes[:'backup_withholding']
      end

      if attributes.key?(:'is1099able')
        self.is1099able = attributes[:'is1099able']
      end

      if attributes.key?(:'tin_match_status')
        self.tin_match_status = attributes[:'tin_match_status']
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
          business_name == o.business_name &&
          business_classification == o.business_classification &&
          business_other == o.business_other &&
          foreign_partner_owner_or_beneficiary == o.foreign_partner_owner_or_beneficiary &&
          exempt_payee_code == o.exempt_payee_code &&
          exempt_fatca_code == o.exempt_fatca_code &&
          foreign_country_indicator == o.foreign_country_indicator &&
          address == o.address &&
          foreign_address == o.foreign_address &&
          city == o.city &&
          state == o.state &&
          zip == o.zip &&
          account_number == o.account_number &&
          tin_type == o.tin_type &&
          tin == o.tin &&
          backup_withholding == o.backup_withholding &&
          is1099able == o.is1099able &&
          tin_match_status == o.tin_match_status && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, business_name, business_classification, business_other, foreign_partner_owner_or_beneficiary, exempt_payee_code, exempt_fatca_code, foreign_country_indicator, address, foreign_address, city, state, zip, account_number, tin_type, tin, backup_withholding, is1099able, tin_match_status].hash
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
