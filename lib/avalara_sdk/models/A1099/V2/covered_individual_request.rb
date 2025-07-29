=begin
#Avalara 1099 & W-9 API Definition

### 🔐 Authentication  Generate a **license key** from: *[Avalara Portal](https://www.avalara.com/us/en/signin.html) → Settings → License and API Keys*.  [More on authentication methods](https://developer.avalara.com/avatax-dm-combined-erp/common-setup/authentication/authentication-methods/)  [Test your credentials](https://developer.avalara.com/avatax/test-credentials/)  ## 📘 API & SDK Documentation  [Avalara SDK (.NET) on GitHub](https://github.com/avadev/Avalara-SDK-DotNet#avalarasdk--the-unified-c-library-for-next-gen-avalara-services)  [Code Examples – 1099 API](https://github.com/avadev/Avalara-SDK-DotNet/blob/main/docs/A1099/V2/Class1099IssuersApi.md#call1099issuersget)


=end

require 'date'
require 'time'

module AvalaraSdk::A1099::V2
      class CoveredIndividualRequest
    # Covered individual's first name
    attr_accessor :first_name

    # Covered individual's middle name
    attr_accessor :middle_name

    # Covered individual's last name
    attr_accessor :last_name

    # Covered individual's name suffix
    attr_accessor :name_suffix

    # Covered individual's TIN (SSN or ITIN)
    attr_accessor :tin

    # Covered individual's date of birth
    attr_accessor :birth_date

    # Coverage indicator for all 12 months
    attr_accessor :covered_month_indicator0

    # Coverage indicator for January
    attr_accessor :covered_month_indicator1

    # Coverage indicator for February
    attr_accessor :covered_month_indicator2

    # Coverage indicator for March
    attr_accessor :covered_month_indicator3

    # Coverage indicator for April
    attr_accessor :covered_month_indicator4

    # Coverage indicator for May
    attr_accessor :covered_month_indicator5

    # Coverage indicator for June
    attr_accessor :covered_month_indicator6

    # Coverage indicator for July
    attr_accessor :covered_month_indicator7

    # Coverage indicator for August
    attr_accessor :covered_month_indicator8

    # Coverage indicator for September
    attr_accessor :covered_month_indicator9

    # Coverage indicator for October
    attr_accessor :covered_month_indicator10

    # Coverage indicator for November
    attr_accessor :covered_month_indicator11

    # Coverage indicator for December
    attr_accessor :covered_month_indicator12

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'first_name' => :'firstName',
        :'middle_name' => :'middleName',
        :'last_name' => :'lastName',
        :'name_suffix' => :'nameSuffix',
        :'tin' => :'tin',
        :'birth_date' => :'birthDate',
        :'covered_month_indicator0' => :'coveredMonthIndicator0',
        :'covered_month_indicator1' => :'coveredMonthIndicator1',
        :'covered_month_indicator2' => :'coveredMonthIndicator2',
        :'covered_month_indicator3' => :'coveredMonthIndicator3',
        :'covered_month_indicator4' => :'coveredMonthIndicator4',
        :'covered_month_indicator5' => :'coveredMonthIndicator5',
        :'covered_month_indicator6' => :'coveredMonthIndicator6',
        :'covered_month_indicator7' => :'coveredMonthIndicator7',
        :'covered_month_indicator8' => :'coveredMonthIndicator8',
        :'covered_month_indicator9' => :'coveredMonthIndicator9',
        :'covered_month_indicator10' => :'coveredMonthIndicator10',
        :'covered_month_indicator11' => :'coveredMonthIndicator11',
        :'covered_month_indicator12' => :'coveredMonthIndicator12'
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
        :'covered_month_indicator0' => :'Boolean',
        :'covered_month_indicator1' => :'Boolean',
        :'covered_month_indicator2' => :'Boolean',
        :'covered_month_indicator3' => :'Boolean',
        :'covered_month_indicator4' => :'Boolean',
        :'covered_month_indicator5' => :'Boolean',
        :'covered_month_indicator6' => :'Boolean',
        :'covered_month_indicator7' => :'Boolean',
        :'covered_month_indicator8' => :'Boolean',
        :'covered_month_indicator9' => :'Boolean',
        :'covered_month_indicator10' => :'Boolean',
        :'covered_month_indicator11' => :'Boolean',
        :'covered_month_indicator12' => :'Boolean'
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

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `AvalaraSdk::A1099::V2::CoveredIndividualRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AvalaraSdk::A1099::V2::CoveredIndividualRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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

      if attributes.key?(:'covered_month_indicator0')
        self.covered_month_indicator0 = attributes[:'covered_month_indicator0']
      end

      if attributes.key?(:'covered_month_indicator1')
        self.covered_month_indicator1 = attributes[:'covered_month_indicator1']
      end

      if attributes.key?(:'covered_month_indicator2')
        self.covered_month_indicator2 = attributes[:'covered_month_indicator2']
      end

      if attributes.key?(:'covered_month_indicator3')
        self.covered_month_indicator3 = attributes[:'covered_month_indicator3']
      end

      if attributes.key?(:'covered_month_indicator4')
        self.covered_month_indicator4 = attributes[:'covered_month_indicator4']
      end

      if attributes.key?(:'covered_month_indicator5')
        self.covered_month_indicator5 = attributes[:'covered_month_indicator5']
      end

      if attributes.key?(:'covered_month_indicator6')
        self.covered_month_indicator6 = attributes[:'covered_month_indicator6']
      end

      if attributes.key?(:'covered_month_indicator7')
        self.covered_month_indicator7 = attributes[:'covered_month_indicator7']
      end

      if attributes.key?(:'covered_month_indicator8')
        self.covered_month_indicator8 = attributes[:'covered_month_indicator8']
      end

      if attributes.key?(:'covered_month_indicator9')
        self.covered_month_indicator9 = attributes[:'covered_month_indicator9']
      end

      if attributes.key?(:'covered_month_indicator10')
        self.covered_month_indicator10 = attributes[:'covered_month_indicator10']
      end

      if attributes.key?(:'covered_month_indicator11')
        self.covered_month_indicator11 = attributes[:'covered_month_indicator11']
      end

      if attributes.key?(:'covered_month_indicator12')
        self.covered_month_indicator12 = attributes[:'covered_month_indicator12']
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
          covered_month_indicator0 == o.covered_month_indicator0 &&
          covered_month_indicator1 == o.covered_month_indicator1 &&
          covered_month_indicator2 == o.covered_month_indicator2 &&
          covered_month_indicator3 == o.covered_month_indicator3 &&
          covered_month_indicator4 == o.covered_month_indicator4 &&
          covered_month_indicator5 == o.covered_month_indicator5 &&
          covered_month_indicator6 == o.covered_month_indicator6 &&
          covered_month_indicator7 == o.covered_month_indicator7 &&
          covered_month_indicator8 == o.covered_month_indicator8 &&
          covered_month_indicator9 == o.covered_month_indicator9 &&
          covered_month_indicator10 == o.covered_month_indicator10 &&
          covered_month_indicator11 == o.covered_month_indicator11 &&
          covered_month_indicator12 == o.covered_month_indicator12
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [first_name, middle_name, last_name, name_suffix, tin, birth_date, covered_month_indicator0, covered_month_indicator1, covered_month_indicator2, covered_month_indicator3, covered_month_indicator4, covered_month_indicator5, covered_month_indicator6, covered_month_indicator7, covered_month_indicator8, covered_month_indicator9, covered_month_indicator10, covered_month_indicator11, covered_month_indicator12].hash
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
