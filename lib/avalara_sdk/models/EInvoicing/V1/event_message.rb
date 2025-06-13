=begin
#Avalara E-Invoicing API

#An API that supports sending data for an E-Invoicing compliance use-case.


=end

require 'date'
require 'time'

module AvalaraSdk::EInvoicing::V1
      class EventMessage
    # Event-specific information
    attr_accessor :message

    attr_accessor :signature

    # Tenant ID of the event
    attr_accessor :tenant_id

    # The correlation ID used by Avalara to aid in tracing through to provenance of this event massage.
    attr_accessor :correlation_id

    # The Avalara registered code for the system. See <a href=\"https://avalara.atlassian.net/wiki/spaces/AIM/pages/637250338966/Taxonomy+Avalara+Systems\">Taxonomy&#58; Avalara Systems</a>
    attr_accessor :system_code

    # Type of the event
    attr_accessor :event_name

    # Version of the included payload.
    attr_accessor :event_version

    # Timestamp when the event was received by the dispatch service.
    attr_accessor :receipt_timestamp

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'message' => :'message',
        :'signature' => :'signature',
        :'tenant_id' => :'tenantId',
        :'correlation_id' => :'correlationId',
        :'system_code' => :'systemCode',
        :'event_name' => :'eventName',
        :'event_version' => :'eventVersion',
        :'receipt_timestamp' => :'receiptTimestamp'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'message' => :'Object',
        :'signature' => :'SignatureValueSignature',
        :'tenant_id' => :'String',
        :'correlation_id' => :'String',
        :'system_code' => :'String',
        :'event_name' => :'String',
        :'event_version' => :'String',
        :'receipt_timestamp' => :'Time'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'EventPayload'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `AvalaraSdk::EInvoicing::V1::EventMessage` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AvalaraSdk::EInvoicing::V1::EventMessage`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'message')
        self.message = attributes[:'message']
      else
        self.message = nil
      end

      if attributes.key?(:'signature')
        self.signature = attributes[:'signature']
      else
        self.signature = nil
      end

      if attributes.key?(:'tenant_id')
        self.tenant_id = attributes[:'tenant_id']
      else
        self.tenant_id = nil
      end

      if attributes.key?(:'correlation_id')
        self.correlation_id = attributes[:'correlation_id']
      end

      if attributes.key?(:'system_code')
        self.system_code = attributes[:'system_code']
      else
        self.system_code = nil
      end

      if attributes.key?(:'event_name')
        self.event_name = attributes[:'event_name']
      else
        self.event_name = nil
      end

      if attributes.key?(:'event_version')
        self.event_version = attributes[:'event_version']
      end

      if attributes.key?(:'receipt_timestamp')
        self.receipt_timestamp = attributes[:'receipt_timestamp']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @message.nil?
        invalid_properties.push('invalid value for "message", message cannot be nil.')
      end

      if @signature.nil?
        invalid_properties.push('invalid value for "signature", signature cannot be nil.')
      end

      if @tenant_id.nil?
        invalid_properties.push('invalid value for "tenant_id", tenant_id cannot be nil.')
      end

      if @system_code.nil?
        invalid_properties.push('invalid value for "system_code", system_code cannot be nil.')
      end

      if @event_name.nil?
        invalid_properties.push('invalid value for "event_name", event_name cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @message.nil?
      return false if @signature.nil?
      return false if @tenant_id.nil?
      return false if @system_code.nil?
      return false if @event_name.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          message == o.message &&
          signature == o.signature &&
          tenant_id == o.tenant_id &&
          correlation_id == o.correlation_id &&
          system_code == o.system_code &&
          event_name == o.event_name &&
          event_version == o.event_version &&
          receipt_timestamp == o.receipt_timestamp
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [message, signature, tenant_id, correlation_id, system_code, event_name, event_version, receipt_timestamp].hash
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
