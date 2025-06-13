=begin
#Avalara 1099 & W-9 API Definition

### 🔐 Authentication  Use **username/password** or generate a **license key** from: *Avalara Portal → Settings → License and API Keys*.  [More on authentication methods](https://developer.avalara.com/avatax-dm-combined-erp/common-setup/authentication/authentication-methods/)  [Test your credentials](https://developer.avalara.com/avatax/test-credentials/)  ## 📘 API & SDK Documentation  [Avalara SDK (.NET) on GitHub](https://github.com/avadev/Avalara-SDK-DotNet#avalarasdk--the-unified-c-library-for-next-gen-avalara-services)  [Code Examples – 1099 API](https://github.com/avadev/Avalara-SDK-DotNet/blob/main/docs/A1099/V2/Class1099IssuersApi.md#call1099issuersget)


=end

require 'date'
require 'time'

module AvalaraSdk::A1099::V2
      class FormRequestModel
    attr_accessor :id

    attr_accessor :type

    # \"W9\" is currently the only supported value
    attr_accessor :form_type

    # Track1099's ID of your company, found in the W-9 UI
    attr_accessor :company_id

    # Name of your company, set in the W-9 UI
    attr_accessor :company_name

    # Contact email of your company, set in the W-9 UI
    attr_accessor :company_email

    # Your internal identifier for the vendor from whom you are requesting a form
    attr_accessor :reference_id

    # The timestamp this vendor (identified by your ReferenceId) last signed a complete W-9, null if you did not include a ReferenceId or the vendor has not yet signed a W-9 in Track1099
    attr_accessor :signed_at

    # Result of IRS TIN match query for name and TIN in the last signed form, null if signed_at is null
    attr_accessor :tin_match_status

    # Timestamp when this FormRequest will expire, ttl (or 3600) seconds from creation
    attr_accessor :expires_at

    # URL of PDF representation of just-signed form, otherwise null. Integrations may use this value to offer a \"download for your records\" function after a vendor completes and signs a form. Link expires at the same time as this FormRequest. Treat the format of this URL as opaque and expect it to change in the future.
    attr_accessor :signed_pdf

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'type' => :'type',
        :'form_type' => :'formType',
        :'company_id' => :'companyId',
        :'company_name' => :'companyName',
        :'company_email' => :'companyEmail',
        :'reference_id' => :'referenceId',
        :'signed_at' => :'signedAt',
        :'tin_match_status' => :'tinMatchStatus',
        :'expires_at' => :'expiresAt',
        :'signed_pdf' => :'signedPdf'
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
        :'type' => :'String',
        :'form_type' => :'String',
        :'company_id' => :'Integer',
        :'company_name' => :'String',
        :'company_email' => :'String',
        :'reference_id' => :'String',
        :'signed_at' => :'Time',
        :'tin_match_status' => :'String',
        :'expires_at' => :'Time',
        :'signed_pdf' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `AvalaraSdk::A1099::V2::FormRequestModel` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AvalaraSdk::A1099::V2::FormRequestModel`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'form_type')
        self.form_type = attributes[:'form_type']
      end

      if attributes.key?(:'company_id')
        self.company_id = attributes[:'company_id']
      end

      if attributes.key?(:'company_name')
        self.company_name = attributes[:'company_name']
      end

      if attributes.key?(:'company_email')
        self.company_email = attributes[:'company_email']
      end

      if attributes.key?(:'reference_id')
        self.reference_id = attributes[:'reference_id']
      end

      if attributes.key?(:'signed_at')
        self.signed_at = attributes[:'signed_at']
      end

      if attributes.key?(:'tin_match_status')
        self.tin_match_status = attributes[:'tin_match_status']
      end

      if attributes.key?(:'expires_at')
        self.expires_at = attributes[:'expires_at']
      end

      if attributes.key?(:'signed_pdf')
        self.signed_pdf = attributes[:'signed_pdf']
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
      type_validator = EnumAttributeValidator.new('String', ["FormRequest"])
      return false unless type_validator.valid?(@type)
      form_type_validator = EnumAttributeValidator.new('String', ["W9"])
      return false unless form_type_validator.valid?(@form_type)
      tin_match_status_validator = EnumAttributeValidator.new('String', ["None", "Matched"])
      return false unless tin_match_status_validator.valid?(@tin_match_status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["FormRequest"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] form_type Object to be assigned
    def form_type=(form_type)
      validator = EnumAttributeValidator.new('String', ["W9"])
      unless validator.valid?(form_type)
        fail ArgumentError, "invalid value for \"form_type\", must be one of #{validator.allowable_values}."
      end
      @form_type = form_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tin_match_status Object to be assigned
    def tin_match_status=(tin_match_status)
      validator = EnumAttributeValidator.new('String', ["None", "Matched"])
      unless validator.valid?(tin_match_status)
        fail ArgumentError, "invalid value for \"tin_match_status\", must be one of #{validator.allowable_values}."
      end
      @tin_match_status = tin_match_status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          type == o.type &&
          form_type == o.form_type &&
          company_id == o.company_id &&
          company_name == o.company_name &&
          company_email == o.company_email &&
          reference_id == o.reference_id &&
          signed_at == o.signed_at &&
          tin_match_status == o.tin_match_status &&
          expires_at == o.expires_at &&
          signed_pdf == o.signed_pdf
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, type, form_type, company_id, company_name, company_email, reference_id, signed_at, tin_match_status, expires_at, signed_pdf].hash
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
