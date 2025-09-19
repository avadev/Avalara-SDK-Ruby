=begin
#Avalara 1099 & W-9 API Definition

### 🔐 Authentication  Generate a **license key** from: *[Avalara Portal](https://www.avalara.com/us/en/signin.html) → Settings → License and API Keys*.  [More on authentication methods](https://developer.avalara.com/avatax-dm-combined-erp/common-setup/authentication/authentication-methods/)  [Test your credentials](https://developer.avalara.com/avatax/test-credentials/)  ## 📘 API & SDK Documentation  [Avalara SDK (.NET) on GitHub](https://github.com/avadev/Avalara-SDK-DotNet#avalarasdk--the-unified-c-library-for-next-gen-avalara-services)  [Code Examples – 1099 API](https://github.com/avadev/Avalara-SDK-DotNet/blob/main/docs/A1099/V2/Class1099IssuersApi.md#call1099issuersget)


=end

require 'date'
require 'time'

module AvalaraSdk::A1099::V2
      class CompanyResponse
    # Unique identifier set when the record is created.
    attr_accessor :id

    # Date time when the record was created.
    attr_accessor :created_at

    # Date time when the record was last updated.
    attr_accessor :updated_at

    # Legal name. Not the DBA name.
    attr_accessor :name

    # Doing Business As (DBA) name or continuation of a long legal name.
    attr_accessor :dba_name

    # Contact email address. For inquiries by vendors/employees.
    attr_accessor :email

    # Address.
    attr_accessor :address

    # City.
    attr_accessor :city

    # Two-letter US state or Canadian province code (required for US/CA addresses).
    attr_accessor :state

    # ZIP/postal code.
    attr_accessor :zip

    # Contact phone number (must contain at least 10 digits, max 15 characters).
    attr_accessor :telephone

    # Federal Tax Identification Number (TIN). EIN/Tax ID (required for US companies).
    attr_accessor :tin

    # Internal reference ID. Never shown to any agency or recipient.
    attr_accessor :reference_id

    # Indicates whether the company authorizes IRS TIN matching.
    attr_accessor :do_tin_match

    # Group name for organizing companies (creates or finds group by name).
    attr_accessor :group_name

    # Province or region for non-US/CA addresses.
    attr_accessor :foreign_province

    # Two-letter IRS country code (e.g., 'US', 'CA'), as defined at https://www.irs.gov/e-file-providers/country-codes.
    attr_accessor :country_code

    # Boolean to enable automatic reminder emails (default: false).
    attr_accessor :resend_requests

    # Days between reminder emails (7-365, required if resendRequests is true).
    attr_accessor :resend_interval_days

    # Maximum number of reminder attempts (1-52, required if resendRequests is true).
    attr_accessor :max_reminder_attempts

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'created_at' => :'createdAt',
        :'updated_at' => :'updatedAt',
        :'name' => :'name',
        :'dba_name' => :'dbaName',
        :'email' => :'email',
        :'address' => :'address',
        :'city' => :'city',
        :'state' => :'state',
        :'zip' => :'zip',
        :'telephone' => :'telephone',
        :'tin' => :'tin',
        :'reference_id' => :'referenceId',
        :'do_tin_match' => :'doTinMatch',
        :'group_name' => :'groupName',
        :'foreign_province' => :'foreignProvince',
        :'country_code' => :'countryCode',
        :'resend_requests' => :'resendRequests',
        :'resend_interval_days' => :'resendIntervalDays',
        :'max_reminder_attempts' => :'maxReminderAttempts'
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
        :'email' => :'String',
        :'address' => :'String',
        :'city' => :'String',
        :'state' => :'String',
        :'zip' => :'String',
        :'telephone' => :'String',
        :'tin' => :'String',
        :'reference_id' => :'String',
        :'do_tin_match' => :'Boolean',
        :'group_name' => :'String',
        :'foreign_province' => :'String',
        :'country_code' => :'String',
        :'resend_requests' => :'Boolean',
        :'resend_interval_days' => :'Integer',
        :'max_reminder_attempts' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'name',
        :'dba_name',
        :'email',
        :'address',
        :'city',
        :'state',
        :'zip',
        :'telephone',
        :'tin',
        :'reference_id',
        :'do_tin_match',
        :'group_name',
        :'foreign_province',
        :'country_code',
        :'resend_requests',
        :'resend_interval_days',
        :'max_reminder_attempts'
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'CompanyBase'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `AvalaraSdk::A1099::V2::CompanyResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AvalaraSdk::A1099::V2::CompanyResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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
      end

      if attributes.key?(:'zip')
        self.zip = attributes[:'zip']
      else
        self.zip = nil
      end

      if attributes.key?(:'telephone')
        self.telephone = attributes[:'telephone']
      else
        self.telephone = nil
      end

      if attributes.key?(:'tin')
        self.tin = attributes[:'tin']
      else
        self.tin = nil
      end

      if attributes.key?(:'reference_id')
        self.reference_id = attributes[:'reference_id']
      end

      if attributes.key?(:'do_tin_match')
        self.do_tin_match = attributes[:'do_tin_match']
      end

      if attributes.key?(:'group_name')
        self.group_name = attributes[:'group_name']
      end

      if attributes.key?(:'foreign_province')
        self.foreign_province = attributes[:'foreign_province']
      end

      if attributes.key?(:'country_code')
        self.country_code = attributes[:'country_code']
      else
        self.country_code = nil
      end

      if attributes.key?(:'resend_requests')
        self.resend_requests = attributes[:'resend_requests']
      end

      if attributes.key?(:'resend_interval_days')
        self.resend_interval_days = attributes[:'resend_interval_days']
      end

      if attributes.key?(:'max_reminder_attempts')
        self.max_reminder_attempts = attributes[:'max_reminder_attempts']
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
          email == o.email &&
          address == o.address &&
          city == o.city &&
          state == o.state &&
          zip == o.zip &&
          telephone == o.telephone &&
          tin == o.tin &&
          reference_id == o.reference_id &&
          do_tin_match == o.do_tin_match &&
          group_name == o.group_name &&
          foreign_province == o.foreign_province &&
          country_code == o.country_code &&
          resend_requests == o.resend_requests &&
          resend_interval_days == o.resend_interval_days &&
          max_reminder_attempts == o.max_reminder_attempts
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, created_at, updated_at, name, dba_name, email, address, city, state, zip, telephone, tin, reference_id, do_tin_match, group_name, foreign_province, country_code, resend_requests, resend_interval_days, max_reminder_attempts].hash
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
