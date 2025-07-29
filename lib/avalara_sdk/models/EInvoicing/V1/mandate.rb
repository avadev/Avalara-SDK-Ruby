=begin
#Avalara E-Invoicing API

#An API that supports sending data for an E-Invoicing compliance use-case.


=end

require 'date'
require 'time'

module AvalaraSdk::EInvoicing::V1
      class Mandate
    # The `mandateId` is comprised of the country code, mandate type, and the network or regulation type (for example, AU-B2G-PEPPOL). Keep in mind the following when specifying a `mandateId`. - A country can have multiple mandate types (B2C, B2B, B2G). - A entity/company can opt in for multiple mandates. - A `mandateId` is the combination of country + mandate type + network/regulation.
    attr_accessor :mandate_id

    # **[LEGACY]** This field is retained for backward compatibility. It is recommended to use `mandateId` instead. The `countryMandate` similar to the `mandateId` is comprised of the country code, mandate type, and the network or regulation type (for example, AU-B2G-PEPPOL). 
    attr_accessor :country_mandate

    # Country code
    attr_accessor :country_code

    # Mandate description
    attr_accessor :description

    # Indicates whether this mandate supported by the ELR API
    attr_accessor :supported_by_elrapi

    # Mandate format
    attr_accessor :mandate_format

    # The type of e-invoicing flow for this mandate
    attr_accessor :e_invoicing_flow

    # Link to the documentation for this mandate's e-invoicing flow
    attr_accessor :e_invoicing_flow_documentation_link

    # List of available media types for downloading invoices for this mandate
    attr_accessor :get_invoice_available_media_type

    # Indicates whether this mandate supports inbound digital documents
    attr_accessor :supports_inbound_digital_document

    # Format and version used when inputting the data
    attr_accessor :input_data_formats

    # Lists the supported output document formats for the country mandate. For countries where specifying an output document format is required (e.g., France), this array will contain the applicable formats. For other countries where output format selection is not necessary, the array will be empty.
    attr_accessor :output_data_formats

    # Workflow ID list
    attr_accessor :workflow_ids

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'mandate_id' => :'mandateId',
        :'country_mandate' => :'countryMandate',
        :'country_code' => :'countryCode',
        :'description' => :'description',
        :'supported_by_elrapi' => :'supportedByELRAPI',
        :'mandate_format' => :'mandateFormat',
        :'e_invoicing_flow' => :'eInvoicingFlow',
        :'e_invoicing_flow_documentation_link' => :'eInvoicingFlowDocumentationLink',
        :'get_invoice_available_media_type' => :'getInvoiceAvailableMediaType',
        :'supports_inbound_digital_document' => :'supportsInboundDigitalDocument',
        :'input_data_formats' => :'inputDataFormats',
        :'output_data_formats' => :'outputDataFormats',
        :'workflow_ids' => :'workflowIds'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'mandate_id' => :'String',
        :'country_mandate' => :'String',
        :'country_code' => :'String',
        :'description' => :'String',
        :'supported_by_elrapi' => :'Boolean',
        :'mandate_format' => :'String',
        :'e_invoicing_flow' => :'String',
        :'e_invoicing_flow_documentation_link' => :'String',
        :'get_invoice_available_media_type' => :'Array<String>',
        :'supports_inbound_digital_document' => :'String',
        :'input_data_formats' => :'Array<InputDataFormats>',
        :'output_data_formats' => :'Array<OutputDataFormats>',
        :'workflow_ids' => :'Array<WorkflowIds>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `AvalaraSdk::EInvoicing::V1::Mandate` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AvalaraSdk::EInvoicing::V1::Mandate`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'mandate_id')
        self.mandate_id = attributes[:'mandate_id']
      end

      if attributes.key?(:'country_mandate')
        self.country_mandate = attributes[:'country_mandate']
      end

      if attributes.key?(:'country_code')
        self.country_code = attributes[:'country_code']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'supported_by_elrapi')
        self.supported_by_elrapi = attributes[:'supported_by_elrapi']
      end

      if attributes.key?(:'mandate_format')
        self.mandate_format = attributes[:'mandate_format']
      end

      if attributes.key?(:'e_invoicing_flow')
        self.e_invoicing_flow = attributes[:'e_invoicing_flow']
      end

      if attributes.key?(:'e_invoicing_flow_documentation_link')
        self.e_invoicing_flow_documentation_link = attributes[:'e_invoicing_flow_documentation_link']
      end

      if attributes.key?(:'get_invoice_available_media_type')
        if (value = attributes[:'get_invoice_available_media_type']).is_a?(Array)
          self.get_invoice_available_media_type = value
        end
      end

      if attributes.key?(:'supports_inbound_digital_document')
        self.supports_inbound_digital_document = attributes[:'supports_inbound_digital_document']
      end

      if attributes.key?(:'input_data_formats')
        if (value = attributes[:'input_data_formats']).is_a?(Array)
          self.input_data_formats = value
        end
      end

      if attributes.key?(:'output_data_formats')
        if (value = attributes[:'output_data_formats']).is_a?(Array)
          self.output_data_formats = value
        end
      end

      if attributes.key?(:'workflow_ids')
        if (value = attributes[:'workflow_ids']).is_a?(Array)
          self.workflow_ids = value
        end
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
          mandate_id == o.mandate_id &&
          country_mandate == o.country_mandate &&
          country_code == o.country_code &&
          description == o.description &&
          supported_by_elrapi == o.supported_by_elrapi &&
          mandate_format == o.mandate_format &&
          e_invoicing_flow == o.e_invoicing_flow &&
          e_invoicing_flow_documentation_link == o.e_invoicing_flow_documentation_link &&
          get_invoice_available_media_type == o.get_invoice_available_media_type &&
          supports_inbound_digital_document == o.supports_inbound_digital_document &&
          input_data_formats == o.input_data_formats &&
          output_data_formats == o.output_data_formats &&
          workflow_ids == o.workflow_ids
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [mandate_id, country_mandate, country_code, description, supported_by_elrapi, mandate_format, e_invoicing_flow, e_invoicing_flow_documentation_link, get_invoice_available_media_type, supports_inbound_digital_document, input_data_formats, output_data_formats, workflow_ids].hash
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
