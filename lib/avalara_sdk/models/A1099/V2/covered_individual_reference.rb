=begin
#Avalara 1099 & W-9 API Definition

### 🔐 Authentication  Generate a **license key** from: *[Avalara Portal](https://www.avalara.com/us/en/signin.html) → Settings → License and API Keys*.  [More on authentication methods](https://developer.avalara.com/avatax-dm-combined-erp/common-setup/authentication/authentication-methods/)  [Test your credentials](https://developer.avalara.com/avatax/test-credentials/)  ## 📘 API & SDK Documentation  [Avalara SDK (.NET) on GitHub](https://github.com/avadev/Avalara-SDK-DotNet#avalarasdk--the-unified-c-library-for-next-gen-avalara-services)  [Code Examples – 1099 API](https://github.com/avadev/Avalara-SDK-DotNet/blob/main/docs/A1099/V2/Class1099IssuersApi.md#call1099issuersget)


=end

require 'date'
require 'time'

module AvalaraSdk::A1099::V2
      class CoveredIndividualReference
    attr_accessor :first_name

    attr_accessor :middle_name

    attr_accessor :last_name

    attr_accessor :name_suffix

    attr_accessor :tin

    attr_accessor :birth_date

    attr_accessor :covered_month0

    attr_accessor :covered_month1

    attr_accessor :covered_month2

    attr_accessor :covered_month3

    attr_accessor :covered_month4

    attr_accessor :covered_month5

    attr_accessor :covered_month6

    attr_accessor :covered_month7

    attr_accessor :covered_month8

    attr_accessor :covered_month9

    attr_accessor :covered_month10

    attr_accessor :covered_month11

    attr_accessor :covered_month12

    attr_accessor :id

    attr_accessor :type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'first_name' => :'firstName',
        :'middle_name' => :'middleName',
        :'last_name' => :'lastName',
        :'name_suffix' => :'nameSuffix',
        :'tin' => :'tin',
        :'birth_date' => :'birthDate',
        :'covered_month0' => :'coveredMonth0',
        :'covered_month1' => :'coveredMonth1',
        :'covered_month2' => :'coveredMonth2',
        :'covered_month3' => :'coveredMonth3',
        :'covered_month4' => :'coveredMonth4',
        :'covered_month5' => :'coveredMonth5',
        :'covered_month6' => :'coveredMonth6',
        :'covered_month7' => :'coveredMonth7',
        :'covered_month8' => :'coveredMonth8',
        :'covered_month9' => :'coveredMonth9',
        :'covered_month10' => :'coveredMonth10',
        :'covered_month11' => :'coveredMonth11',
        :'covered_month12' => :'coveredMonth12',
        :'id' => :'id',
        :'type' => :'type'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'first_name' => :'String',
        :'middle_name' => :'String',
        :'last_name' => :'String',
        :'name_suffix' => :'String',
        :'tin' => :'String',
        :'birth_date' => :'Time',
        :'covered_month0' => :'Boolean',
        :'covered_month1' => :'Boolean',
        :'covered_month2' => :'Boolean',
        :'covered_month3' => :'Boolean',
        :'covered_month4' => :'Boolean',
        :'covered_month5' => :'Boolean',
        :'covered_month6' => :'Boolean',
        :'covered_month7' => :'Boolean',
        :'covered_month8' => :'Boolean',
        :'covered_month9' => :'Boolean',
        :'covered_month10' => :'Boolean',
        :'covered_month11' => :'Boolean',
        :'covered_month12' => :'Boolean',
        :'id' => :'String',
        :'type' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'first_name',
        :'middle_name',
        :'last_name',
        :'name_suffix',
        :'tin',
        :'birth_date',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'IncludedBase'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `AvalaraSdk::A1099::V2::CoveredIndividualReference` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AvalaraSdk::A1099::V2::CoveredIndividualReference`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'middle_name')
        self.middle_name = attributes[:'middle_name']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'name_suffix')
        self.name_suffix = attributes[:'name_suffix']
      end

      if attributes.key?(:'tin')
        self.tin = attributes[:'tin']
      end

      if attributes.key?(:'birth_date')
        self.birth_date = attributes[:'birth_date']
      end

      if attributes.key?(:'covered_month0')
        self.covered_month0 = attributes[:'covered_month0']
      end

      if attributes.key?(:'covered_month1')
        self.covered_month1 = attributes[:'covered_month1']
      end

      if attributes.key?(:'covered_month2')
        self.covered_month2 = attributes[:'covered_month2']
      end

      if attributes.key?(:'covered_month3')
        self.covered_month3 = attributes[:'covered_month3']
      end

      if attributes.key?(:'covered_month4')
        self.covered_month4 = attributes[:'covered_month4']
      end

      if attributes.key?(:'covered_month5')
        self.covered_month5 = attributes[:'covered_month5']
      end

      if attributes.key?(:'covered_month6')
        self.covered_month6 = attributes[:'covered_month6']
      end

      if attributes.key?(:'covered_month7')
        self.covered_month7 = attributes[:'covered_month7']
      end

      if attributes.key?(:'covered_month8')
        self.covered_month8 = attributes[:'covered_month8']
      end

      if attributes.key?(:'covered_month9')
        self.covered_month9 = attributes[:'covered_month9']
      end

      if attributes.key?(:'covered_month10')
        self.covered_month10 = attributes[:'covered_month10']
      end

      if attributes.key?(:'covered_month11')
        self.covered_month11 = attributes[:'covered_month11']
      end

      if attributes.key?(:'covered_month12')
        self.covered_month12 = attributes[:'covered_month12']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
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
          first_name == o.first_name &&
          middle_name == o.middle_name &&
          last_name == o.last_name &&
          name_suffix == o.name_suffix &&
          tin == o.tin &&
          birth_date == o.birth_date &&
          covered_month0 == o.covered_month0 &&
          covered_month1 == o.covered_month1 &&
          covered_month2 == o.covered_month2 &&
          covered_month3 == o.covered_month3 &&
          covered_month4 == o.covered_month4 &&
          covered_month5 == o.covered_month5 &&
          covered_month6 == o.covered_month6 &&
          covered_month7 == o.covered_month7 &&
          covered_month8 == o.covered_month8 &&
          covered_month9 == o.covered_month9 &&
          covered_month10 == o.covered_month10 &&
          covered_month11 == o.covered_month11 &&
          covered_month12 == o.covered_month12 &&
          id == o.id &&
          type == o.type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [first_name, middle_name, last_name, name_suffix, tin, birth_date, covered_month0, covered_month1, covered_month2, covered_month3, covered_month4, covered_month5, covered_month6, covered_month7, covered_month8, covered_month9, covered_month10, covered_month11, covered_month12, id, type].hash
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
