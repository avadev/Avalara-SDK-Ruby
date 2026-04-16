=begin
#Avalara E-Invoicing API

#An API that supports sending data for an E-Invoicing compliance use-case.


=end

require 'date'
require 'time'

module AvalaraSdk::EInvoicing::V1
      # Represents a single report with full details including metadata and associated transaction IDs.
  class ReportItem
    # The unique ID for this report.
    attr_accessor :report_id

    # The unique ID of the job that generated this report.
    attr_accessor :job_id

    # The date and time when the report was generated.
    attr_accessor :report_generate_date

    # The start date of the reporting period.
    attr_accessor :report_from

    # The end date of the reporting period.
    attr_accessor :report_to

    # The two-letter ISO-3166 country code for which this report was generated.
    attr_accessor :country_code

    # The e-invoicing mandate for the specified country.
    attr_accessor :country_mandate

    # The type of document covered by this report.
    attr_accessor :document_type

    # The sub-type of the document.
    attr_accessor :document_sub_type

    # An internal reference path for the report.
    attr_accessor :report_reference

    # The name of the report file.
    attr_accessor :report_name

    # The current status of the report. Possible values include: PENDING, PROCESSING, COMPLETED, FAILED, SENT_TO_PPF, ERROR.
    attr_accessor :status

    # The MIME type of the report file.
    attr_accessor :report_format_mimetypes

    # The tenant identifier associated with this report.
    attr_accessor :tenant_id

    # The name of the tax authority for this report.
    attr_accessor :ta_name

    # The total invoice amount covered by this report.
    attr_accessor :tax_invoice_amount

    # The total tax amount covered by this report.
    attr_accessor :total_tax_amount

    # Additional report metadata (free-form JSON). Contents vary by country mandate.
    attr_accessor :metadata

    # List of transaction IDs associated with this report.
    attr_accessor :transaction_ids

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'report_id' => :'reportId',
        :'job_id' => :'jobId',
        :'report_generate_date' => :'reportGenerateDate',
        :'report_from' => :'reportFrom',
        :'report_to' => :'reportTo',
        :'country_code' => :'countryCode',
        :'country_mandate' => :'countryMandate',
        :'document_type' => :'documentType',
        :'document_sub_type' => :'documentSubType',
        :'report_reference' => :'reportReference',
        :'report_name' => :'reportName',
        :'status' => :'status',
        :'report_format_mimetypes' => :'reportFormatMimetypes',
        :'tenant_id' => :'tenantId',
        :'ta_name' => :'taName',
        :'tax_invoice_amount' => :'taxInvoiceAmount',
        :'total_tax_amount' => :'totalTaxAmount',
        :'metadata' => :'metadata',
        :'transaction_ids' => :'transactionIds'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'report_id' => :'String',
        :'job_id' => :'String',
        :'report_generate_date' => :'Time',
        :'report_from' => :'Date',
        :'report_to' => :'Date',
        :'country_code' => :'String',
        :'country_mandate' => :'String',
        :'document_type' => :'String',
        :'document_sub_type' => :'String',
        :'report_reference' => :'String',
        :'report_name' => :'String',
        :'status' => :'String',
        :'report_format_mimetypes' => :'String',
        :'tenant_id' => :'String',
        :'ta_name' => :'String',
        :'tax_invoice_amount' => :'Float',
        :'total_tax_amount' => :'Float',
        :'metadata' => :'Object',
        :'transaction_ids' => :'Array<String>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'job_id',
        :'report_from',
        :'report_to',
        :'document_type',
        :'document_sub_type',
        :'report_reference',
        :'tax_invoice_amount',
        :'total_tax_amount',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `AvalaraSdk::EInvoicing::V1::ReportItem` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AvalaraSdk::EInvoicing::V1::ReportItem`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'report_id')
        self.report_id = attributes[:'report_id']
      end

      if attributes.key?(:'job_id')
        self.job_id = attributes[:'job_id']
      end

      if attributes.key?(:'report_generate_date')
        self.report_generate_date = attributes[:'report_generate_date']
      end

      if attributes.key?(:'report_from')
        self.report_from = attributes[:'report_from']
      end

      if attributes.key?(:'report_to')
        self.report_to = attributes[:'report_to']
      end

      if attributes.key?(:'country_code')
        self.country_code = attributes[:'country_code']
      end

      if attributes.key?(:'country_mandate')
        self.country_mandate = attributes[:'country_mandate']
      end

      if attributes.key?(:'document_type')
        self.document_type = attributes[:'document_type']
      end

      if attributes.key?(:'document_sub_type')
        self.document_sub_type = attributes[:'document_sub_type']
      end

      if attributes.key?(:'report_reference')
        self.report_reference = attributes[:'report_reference']
      end

      if attributes.key?(:'report_name')
        self.report_name = attributes[:'report_name']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'report_format_mimetypes')
        self.report_format_mimetypes = attributes[:'report_format_mimetypes']
      end

      if attributes.key?(:'tenant_id')
        self.tenant_id = attributes[:'tenant_id']
      end

      if attributes.key?(:'ta_name')
        self.ta_name = attributes[:'ta_name']
      end

      if attributes.key?(:'tax_invoice_amount')
        self.tax_invoice_amount = attributes[:'tax_invoice_amount']
      end

      if attributes.key?(:'total_tax_amount')
        self.total_tax_amount = attributes[:'total_tax_amount']
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.key?(:'transaction_ids')
        if (value = attributes[:'transaction_ids']).is_a?(Array)
          self.transaction_ids = value
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
          report_id == o.report_id &&
          job_id == o.job_id &&
          report_generate_date == o.report_generate_date &&
          report_from == o.report_from &&
          report_to == o.report_to &&
          country_code == o.country_code &&
          country_mandate == o.country_mandate &&
          document_type == o.document_type &&
          document_sub_type == o.document_sub_type &&
          report_reference == o.report_reference &&
          report_name == o.report_name &&
          status == o.status &&
          report_format_mimetypes == o.report_format_mimetypes &&
          tenant_id == o.tenant_id &&
          ta_name == o.ta_name &&
          tax_invoice_amount == o.tax_invoice_amount &&
          total_tax_amount == o.total_tax_amount &&
          metadata == o.metadata &&
          transaction_ids == o.transaction_ids
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [report_id, job_id, report_generate_date, report_from, report_to, country_code, country_mandate, document_type, document_sub_type, report_reference, report_name, status, report_format_mimetypes, tenant_id, ta_name, tax_invoice_amount, total_tax_amount, metadata, transaction_ids].hash
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
