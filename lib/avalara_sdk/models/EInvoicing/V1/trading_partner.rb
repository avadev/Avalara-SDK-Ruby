=begin
#Avalara E-Invoicing API

#An API that supports sending data for an E-Invoicing compliance use-case.


=end

require 'date'
require 'time'

module AvalaraSdk::EInvoicing::V1
      # Represents a participant in the Avalara directory.
  class TradingPartner
    # Avalara unique ID of the participant in the directory.
    attr_accessor :id

    # Name of the participant (typically, the name of the business entity).
    attr_accessor :name

    # The network where the participant is present. When creating or updating a trading partner, the value provided for the attribute 'network' will be ignored.
    attr_accessor :network

    # Registration date of the participant if available.
    attr_accessor :registration_date

    # A list of identifiers associated with the trading partner. Each identifier should consistently include the fields name, and value to maintain clarity and ensure consistent structure across entries. When creating or updating a trading partner, the attribute 'name' must be agreed upon with Avalara to ensure consistency. Failing to adhere to the agreed values will result in a validation error. Further, when creating or updating a trading partner, the value provided for the attribute 'displayName' will be ignored and instead retrieved from the standard set of display names maintained.
    attr_accessor :identifiers

    attr_accessor :addresses

    # A list of document types supported by the trading partner for exchange. Each document type identifier value must match the standard list maintained by Avalara, which includes Peppol and other public network document type identifier schemes and values, as well as any approved partner-specific identifiers. The 'value' field must exactly match an entry from the provided document identifier list. Any attempt to submit unsupported document types will result in a validation error. Further, when creating or updating a trading partner, the value provided for the attributes 'name' and 'supportedByAvalara' will be ignored.
    attr_accessor :supported_document_types

    attr_accessor :consents

    # Optional array used to carry additional metadata or configuration values that may be required by specific networks. When creating or updating a trading partner, the keys provided in the 'extensions' attribute must be selected from a predefined list of supported extensions. Using any unsupported keys will result in a validation error.
    attr_accessor :extensions

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'network' => :'network',
        :'registration_date' => :'registrationDate',
        :'identifiers' => :'identifiers',
        :'addresses' => :'addresses',
        :'supported_document_types' => :'supportedDocumentTypes',
        :'consents' => :'consents',
        :'extensions' => :'extensions'
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
        :'name' => :'String',
        :'network' => :'String',
        :'registration_date' => :'String',
        :'identifiers' => :'Array<Identifier>',
        :'addresses' => :'Array<Address>',
        :'supported_document_types' => :'Array<SupportedDocumentTypes>',
        :'consents' => :'Consents',
        :'extensions' => :'Array<Extension>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `AvalaraSdk::EInvoicing::V1::TradingPartner` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AvalaraSdk::EInvoicing::V1::TradingPartner`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'network')
        self.network = attributes[:'network']
      end

      if attributes.key?(:'registration_date')
        self.registration_date = attributes[:'registration_date']
      end

      if attributes.key?(:'identifiers')
        if (value = attributes[:'identifiers']).is_a?(Array)
          self.identifiers = value
        end
      else
        self.identifiers = nil
      end

      if attributes.key?(:'addresses')
        if (value = attributes[:'addresses']).is_a?(Array)
          self.addresses = value
        end
      else
        self.addresses = nil
      end

      if attributes.key?(:'supported_document_types')
        if (value = attributes[:'supported_document_types']).is_a?(Array)
          self.supported_document_types = value
        end
      else
        self.supported_document_types = nil
      end

      if attributes.key?(:'consents')
        self.consents = attributes[:'consents']
      end

      if attributes.key?(:'extensions')
        if (value = attributes[:'extensions']).is_a?(Array)
          self.extensions = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @name.to_s.length > 250
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 250.')
      end

      if @name.to_s.length < 3
        invalid_properties.push('invalid value for "name", the character length must be great than or equal to 3.')
      end

      if @identifiers.nil?
        invalid_properties.push('invalid value for "identifiers", identifiers cannot be nil.')
      end

      if @identifiers.length < 1
        invalid_properties.push('invalid value for "identifiers", number of items must be greater than or equal to 1.')
      end

      if @addresses.nil?
        invalid_properties.push('invalid value for "addresses", addresses cannot be nil.')
      end

      if @addresses.length < 1
        invalid_properties.push('invalid value for "addresses", number of items must be greater than or equal to 1.')
      end

      if @supported_document_types.nil?
        invalid_properties.push('invalid value for "supported_document_types", supported_document_types cannot be nil.')
      end

      if @supported_document_types.length < 1
        invalid_properties.push('invalid value for "supported_document_types", number of items must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @name.nil?
      return false if @name.to_s.length > 250
      return false if @name.to_s.length < 3
      return false if @identifiers.nil?
      return false if @identifiers.length < 1
      return false if @addresses.nil?
      return false if @addresses.length < 1
      return false if @supported_document_types.nil?
      return false if @supported_document_types.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, 'name cannot be nil'
      end

      if name.to_s.length > 250
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 250.'
      end

      if name.to_s.length < 3
        fail ArgumentError, 'invalid value for "name", the character length must be great than or equal to 3.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] identifiers Value to be assigned
    def identifiers=(identifiers)
      if identifiers.nil?
        fail ArgumentError, 'identifiers cannot be nil'
      end

      if identifiers.length < 1
        fail ArgumentError, 'invalid value for "identifiers", number of items must be greater than or equal to 1.'
      end

      @identifiers = identifiers
    end

    # Custom attribute writer method with validation
    # @param [Object] addresses Value to be assigned
    def addresses=(addresses)
      if addresses.nil?
        fail ArgumentError, 'addresses cannot be nil'
      end

      if addresses.length < 1
        fail ArgumentError, 'invalid value for "addresses", number of items must be greater than or equal to 1.'
      end

      @addresses = addresses
    end

    # Custom attribute writer method with validation
    # @param [Object] supported_document_types Value to be assigned
    def supported_document_types=(supported_document_types)
      if supported_document_types.nil?
        fail ArgumentError, 'supported_document_types cannot be nil'
      end

      if supported_document_types.length < 1
        fail ArgumentError, 'invalid value for "supported_document_types", number of items must be greater than or equal to 1.'
      end

      @supported_document_types = supported_document_types
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          network == o.network &&
          registration_date == o.registration_date &&
          identifiers == o.identifiers &&
          addresses == o.addresses &&
          supported_document_types == o.supported_document_types &&
          consents == o.consents &&
          extensions == o.extensions
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, name, network, registration_date, identifiers, addresses, supported_document_types, consents, extensions].hash
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
        klass = AvalaraSdk::EInvoicing::V1.const_get(type)
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
