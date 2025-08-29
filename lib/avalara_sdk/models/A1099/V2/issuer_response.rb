=begin
#Avalara 1099 & W-9 API Definition

### 🔐 Authentication  Generate a **license key** from: *[Avalara Portal](https://www.avalara.com/us/en/signin.html) → Settings → License and API Keys*.  [More on authentication methods](https://developer.avalara.com/avatax-dm-combined-erp/common-setup/authentication/authentication-methods/)  [Test your credentials](https://developer.avalara.com/avatax/test-credentials/)  ## 📘 API & SDK Documentation  [Avalara SDK (.NET) on GitHub](https://github.com/avadev/Avalara-SDK-DotNet#avalarasdk--the-unified-c-library-for-next-gen-avalara-services)  [Code Examples – 1099 API](https://github.com/avadev/Avalara-SDK-DotNet/blob/main/docs/A1099/V2/Class1099IssuersApi.md#call1099issuersget)


=end

require 'date'
require 'time'

module AvalaraSdk::A1099::V2
      class IssuerResponse
    # Unique identifier set when the record is created.
    attr_accessor :id

    # Date time when the record was created.
    attr_accessor :created_at

    # Date time when the record was last updated.
    attr_accessor :updated_at

    # Legal name. Not the DBA name.
    attr_accessor :name

    # Doing Business As (DBA) name or continuation of a long legal name. Use either this or 'transferAgentName'.
    attr_accessor :dba_name

    # Federal Tax Identification Number (TIN).
    attr_accessor :tin

    # Internal reference ID. Never shown to any agency or recipient. If present, it will prefix download filenames. Allowed characters: letters, numbers, dashes, underscores, and spaces.
    attr_accessor :reference_id

    # Contact phone number (must contain at least 10 digits, max 15 characters). For recipient inquiries.
    attr_accessor :telephone

    # Tax year for which the forms are being filed (e.g., 2024). Must be within current tax year and current tax year - 4.
    attr_accessor :tax_year

    # Two-letter IRS country code (e.g., 'US', 'CA'), as defined at https://www.irs.gov/e-file-providers/country-codes. If there is a transfer agent, use the transfer agent's shipping address.
    attr_accessor :country_code

    # Contact email address. For recipient inquiries.
    attr_accessor :email

    # Address.
    attr_accessor :address

    # City.
    attr_accessor :city

    # Two-letter US state or Canadian province code (required for US/CA addresses).
    attr_accessor :state

    # ZIP/postal code.
    attr_accessor :zip

    # Province or region for non-US/CA addresses.
    attr_accessor :foreign_province

    # Name of the transfer agent, if applicable — optional; use either this or 'dbaName'.
    attr_accessor :transfer_agent_name

    # Indicates if this is the issuer's final year filing.
    attr_accessor :last_filing

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'created_at' => :'createdAt',
        :'updated_at' => :'updatedAt',
        :'name' => :'name',
        :'dba_name' => :'dbaName',
        :'tin' => :'tin',
        :'reference_id' => :'referenceId',
        :'telephone' => :'telephone',
        :'tax_year' => :'taxYear',
        :'country_code' => :'countryCode',
        :'email' => :'email',
        :'address' => :'address',
        :'city' => :'city',
        :'state' => :'state',
        :'zip' => :'zip',
        :'foreign_province' => :'foreignProvince',
        :'transfer_agent_name' => :'transferAgentName',
        :'last_filing' => :'lastFiling'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'created_at' => :'Time',
        :'updated_at' => :'Time',
        :'name' => :'String',
        :'dba_name' => :'String',
        :'tin' => :'String',
        :'reference_id' => :'String',
        :'telephone' => :'String',
        :'tax_year' => :'Integer',
        :'country_code' => :'String',
        :'email' => :'String',
        :'address' => :'String',
        :'city' => :'String',
        :'state' => :'String',
        :'zip' => :'String',
        :'foreign_province' => :'String',
        :'transfer_agent_name' => :'String',
        :'last_filing' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'name',
        :'dba_name',
        :'tin',
        :'reference_id',
        :'telephone',
        :'tax_year',
        :'country_code',
        :'email',
        :'address',
        :'city',
        :'state',
        :'zip',
        :'foreign_province',
        :'transfer_agent_name',
        :'last_filing'
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'IssuerCommand'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `AvalaraSdk::A1099::V2::IssuerResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AvalaraSdk::A1099::V2::IssuerResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'dba_name')
        self.dba_name = attributes[:'dba_name']
      end

      if attributes.key?(:'tin')
        self.tin = attributes[:'tin']
      end

      if attributes.key?(:'reference_id')
        self.reference_id = attributes[:'reference_id']
      end

      if attributes.key?(:'telephone')
        self.telephone = attributes[:'telephone']
      else
        self.telephone = nil
      end

      if attributes.key?(:'tax_year')
        self.tax_year = attributes[:'tax_year']
      else
        self.tax_year = nil
      end

      if attributes.key?(:'country_code')
        self.country_code = attributes[:'country_code']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      else
        self.email = nil
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      else
        self.address = nil
      end

      if attributes.key?(:'city')
        self.city = attributes[:'city']
      else
        self.city = nil
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      else
        self.state = nil
      end

      if attributes.key?(:'zip')
        self.zip = attributes[:'zip']
      else
        self.zip = nil
      end

      if attributes.key?(:'foreign_province')
        self.foreign_province = attributes[:'foreign_province']
      end

      if attributes.key?(:'transfer_agent_name')
        self.transfer_agent_name = attributes[:'transfer_agent_name']
      end

      if attributes.key?(:'last_filing')
        self.last_filing = attributes[:'last_filing']
      else
        self.last_filing = nil
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
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          name == o.name &&
          dba_name == o.dba_name &&
          tin == o.tin &&
          reference_id == o.reference_id &&
          telephone == o.telephone &&
          tax_year == o.tax_year &&
          country_code == o.country_code &&
          email == o.email &&
          address == o.address &&
          city == o.city &&
          state == o.state &&
          zip == o.zip &&
          foreign_province == o.foreign_province &&
          transfer_agent_name == o.transfer_agent_name &&
          last_filing == o.last_filing
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, created_at, updated_at, name, dba_name, tin, reference_id, telephone, tax_year, country_code, email, address, city, state, zip, foreign_province, transfer_agent_name, last_filing].hash
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
