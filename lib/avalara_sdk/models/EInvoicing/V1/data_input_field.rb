=begin
#Avalara E-Invoicing API

#An API that supports sending data for an E-Invoicing compliance use-case.


=end

require 'date'
require 'time'

module AvalaraSdk::EInvoicing
    module AvalaraSdk::EInvoicing::V1
      # The Data Input Field
  class DataInputField
    # Field UUID
    attr_accessor :id

    # Field ID
    attr_accessor :field_id

    attr_accessor :applicable_document_roots

    # Path to this field
    attr_accessor :path

    # Namespace of this field
    attr_accessor :namespace

    # Field name
    attr_accessor :field_name

    # An example of the content for this field
    attr_accessor :example_or_fixed_value

    # An object representing the acceptable values for this field
    attr_accessor :accepted_values

    # An example of the content for this field
    attr_accessor :documentation_link

    # A description of this field
    attr_accessor :description

    # Is this a segment of the schema
    attr_accessor :is_segment

    attr_accessor :required_for

    attr_accessor :conditional_for

    attr_accessor :not_used_for

    attr_accessor :optional_for

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'field_id' => :'fieldId',
        :'applicable_document_roots' => :'applicableDocumentRoots',
        :'path' => :'path',
        :'namespace' => :'namespace',
        :'field_name' => :'fieldName',
        :'example_or_fixed_value' => :'exampleOrFixedValue',
        :'accepted_values' => :'acceptedValues',
        :'documentation_link' => :'documentationLink',
        :'description' => :'description',
        :'is_segment' => :'isSegment',
        :'required_for' => :'requiredFor',
        :'conditional_for' => :'conditionalFor',
        :'not_used_for' => :'notUsedFor',
        :'optional_for' => :'optionalFor'
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
        :'field_id' => :'String',
        :'applicable_document_roots' => :'Array<Object>',
        :'path' => :'String',
        :'namespace' => :'String',
        :'field_name' => :'String',
        :'example_or_fixed_value' => :'String',
        :'accepted_values' => :'Object',
        :'documentation_link' => :'String',
        :'description' => :'String',
        :'is_segment' => :'Boolean',
        :'required_for' => :'DataInputFieldRequiredFor',
        :'conditional_for' => :'Array<ConditionalForField>',
        :'not_used_for' => :'DataInputFieldNotUsedFor',
        :'optional_for' => :'DataInputFieldOptionalFor'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `AvalaraSdk::EInvoicing::V1::DataInputField` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AvalaraSdk::EInvoicing::V1::DataInputField`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'field_id')
        self.field_id = attributes[:'field_id']
      end

      if attributes.key?(:'applicable_document_roots')
        if (value = attributes[:'applicable_document_roots']).is_a?(Array)
          self.applicable_document_roots = value
        end
      end

      if attributes.key?(:'path')
        self.path = attributes[:'path']
      end

      if attributes.key?(:'namespace')
        self.namespace = attributes[:'namespace']
      end

      if attributes.key?(:'field_name')
        self.field_name = attributes[:'field_name']
      end

      if attributes.key?(:'example_or_fixed_value')
        self.example_or_fixed_value = attributes[:'example_or_fixed_value']
      end

      if attributes.key?(:'accepted_values')
        self.accepted_values = attributes[:'accepted_values']
      end

      if attributes.key?(:'documentation_link')
        self.documentation_link = attributes[:'documentation_link']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'is_segment')
        self.is_segment = attributes[:'is_segment']
      end

      if attributes.key?(:'required_for')
        self.required_for = attributes[:'required_for']
      end

      if attributes.key?(:'conditional_for')
        if (value = attributes[:'conditional_for']).is_a?(Array)
          self.conditional_for = value
        end
      end

      if attributes.key?(:'not_used_for')
        self.not_used_for = attributes[:'not_used_for']
      end

      if attributes.key?(:'optional_for')
        self.optional_for = attributes[:'optional_for']
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
          field_id == o.field_id &&
          applicable_document_roots == o.applicable_document_roots &&
          path == o.path &&
          namespace == o.namespace &&
          field_name == o.field_name &&
          example_or_fixed_value == o.example_or_fixed_value &&
          accepted_values == o.accepted_values &&
          documentation_link == o.documentation_link &&
          description == o.description &&
          is_segment == o.is_segment &&
          required_for == o.required_for &&
          conditional_for == o.conditional_for &&
          not_used_for == o.not_used_for &&
          optional_for == o.optional_for
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, field_id, applicable_document_roots, path, namespace, field_name, example_or_fixed_value, accepted_values, documentation_link, description, is_segment, required_for, conditional_for, not_used_for, optional_for].hash
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
end
