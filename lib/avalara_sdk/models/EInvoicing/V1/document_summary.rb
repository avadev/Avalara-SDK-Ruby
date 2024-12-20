=begin
#Avalara E-Invoicing API

#An API that supports sending data for an E-Invoicing compliance use-case.

SDK Version : 


=end

require 'date'
require 'time'

module AvalaraSdk::EInvoicing
    module AvalaraSdk::EInvoicing::V1
      # Displays a summary of information about the document
  class DocumentSummary
    # The unique ID for this document
    attr_accessor :id

    # The date and time when the document was processed, displayed in the format YYYY-MM-DDThh:mm:ss
    attr_accessor :process_date_time

    # The Document status
    attr_accessor :status

    # The name of the supplier in the transaction
    attr_accessor :supplier_name

    # The name of the customer in the transaction
    attr_accessor :customer_name

    # The document type
    attr_accessor :document_type

    # The document version
    attr_accessor :document_version

    # The document number
    attr_accessor :document_number

    # The document issue date
    attr_accessor :document_date

    # The document direction, where issued = `out` and received = `in`
    attr_accessor :flow

    # The two-letter ISO-3166 country code for the country where the document is being submitted
    attr_accessor :country_code

    # The e-invoicing mandate for the specified country
    attr_accessor :country_mandate

    # The interface where the document is sent
    attr_accessor :interface

    # The document recipient based on the interface
    attr_accessor :receiver

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'process_date_time' => :'processDateTime',
        :'status' => :'status',
        :'supplier_name' => :'supplierName',
        :'customer_name' => :'customerName',
        :'document_type' => :'documentType',
        :'document_version' => :'documentVersion',
        :'document_number' => :'documentNumber',
        :'document_date' => :'documentDate',
        :'flow' => :'flow',
        :'country_code' => :'countryCode',
        :'country_mandate' => :'countryMandate',
        :'interface' => :'interface',
        :'receiver' => :'receiver'
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
        :'process_date_time' => :'String',
        :'status' => :'String',
        :'supplier_name' => :'String',
        :'customer_name' => :'String',
        :'document_type' => :'String',
        :'document_version' => :'String',
        :'document_number' => :'String',
        :'document_date' => :'String',
        :'flow' => :'String',
        :'country_code' => :'String',
        :'country_mandate' => :'String',
        :'interface' => :'String',
        :'receiver' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `AvalaraSdk::EInvoicing::V1::DocumentSummary` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AvalaraSdk::EInvoicing::V1::DocumentSummary`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'process_date_time')
        self.process_date_time = attributes[:'process_date_time']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'supplier_name')
        self.supplier_name = attributes[:'supplier_name']
      end

      if attributes.key?(:'customer_name')
        self.customer_name = attributes[:'customer_name']
      end

      if attributes.key?(:'document_type')
        self.document_type = attributes[:'document_type']
      end

      if attributes.key?(:'document_version')
        self.document_version = attributes[:'document_version']
      end

      if attributes.key?(:'document_number')
        self.document_number = attributes[:'document_number']
      end

      if attributes.key?(:'document_date')
        self.document_date = attributes[:'document_date']
      end

      if attributes.key?(:'flow')
        self.flow = attributes[:'flow']
      end

      if attributes.key?(:'country_code')
        self.country_code = attributes[:'country_code']
      end

      if attributes.key?(:'country_mandate')
        self.country_mandate = attributes[:'country_mandate']
      end

      if attributes.key?(:'interface')
        self.interface = attributes[:'interface']
      end

      if attributes.key?(:'receiver')
        self.receiver = attributes[:'receiver']
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
          process_date_time == o.process_date_time &&
          status == o.status &&
          supplier_name == o.supplier_name &&
          customer_name == o.customer_name &&
          document_type == o.document_type &&
          document_version == o.document_version &&
          document_number == o.document_number &&
          document_date == o.document_date &&
          flow == o.flow &&
          country_code == o.country_code &&
          country_mandate == o.country_mandate &&
          interface == o.interface &&
          receiver == o.receiver
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, process_date_time, status, supplier_name, customer_name, document_type, document_version, document_number, document_date, flow, country_code, country_mandate, interface, receiver].hash
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
