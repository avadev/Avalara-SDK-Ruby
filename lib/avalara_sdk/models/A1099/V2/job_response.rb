=begin
#Avalara 1099 & W-9 API Definition

### 🔐 Authentication  Generate a **license key** from: *[Avalara Portal](https://www.avalara.com/us/en/signin.html) → Settings → License and API Keys*.  [More on authentication methods](https://developer.avalara.com/avatax-dm-combined-erp/common-setup/authentication/authentication-methods/)  [Test your credentials](https://developer.avalara.com/avatax/test-credentials/)  ## 📘 API & SDK Documentation  [Avalara SDK (.NET) on GitHub](https://github.com/avadev/Avalara-SDK-DotNet#avalarasdk--the-unified-c-library-for-next-gen-avalara-services)  [Code Examples – 1099 API](https://github.com/avadev/Avalara-SDK-DotNet/blob/main/docs/A1099/V2/Class1099IssuersApi.md#call1099issuersget)


=end

require 'date'
require 'time'

module AvalaraSdk::A1099::V2
      # Response model for job operations
  class JobResponse
    # Unique identifier for the job
    attr_accessor :id

    # Job type identifier. Will always be \"update_job\" for bulk upsert operations
    attr_accessor :type

    # Current status of the job (e.g., Success, Failed, InProgress)
    attr_accessor :status

    # Error message if the job failed, null otherwise
    attr_accessor :error_message

    # Total number of forms processed. Value can be 0 or another value based on what the job has available
    attr_accessor :total_processed

    # Total number of forms in the request. Value can be 0 or another value based on what the job has available
    attr_accessor :total_rows

    # Number of forms updated and valid for e-filing and e-delivery. Value can be 0 or another value based on what the job has available
    attr_accessor :updated_valid

    # Number of forms updated and valid for e-filing but missing email or email is undeliverable. Value can be 0 or another value based on what the job has available
    attr_accessor :updated_no_email

    # Number of forms updated but invalid for e-filing. Value can be 0 or another value based on what the job has available
    attr_accessor :updated_invalid

    # Number of forms skipped because they would have updated a record already updated once in the request. Value can be 0 or another value based on what the job has available
    attr_accessor :skipped_duplicate

    # Number of forms skipped because they would have made a form invalid and the form is already e-filed or scheduled for e-filing. Value can be 0 or another value based on what the job has available
    attr_accessor :skipped_invalid

    # Number of forms skipped because they matched multiple forms. Value can be 0 or another value based on what the job has available
    attr_accessor :skipped_multiple_matches

    # Number of forms skipped because no matching form or issuer could be found. Value can be 0 or another value based on what the job has available
    attr_accessor :not_found

    # Number of new forms created because no matching form could be found (and `upsert` was true) - with errors. Value can be 0 or another value based on what the job has available
    attr_accessor :created_invalid

    # Number of new forms created because no matching form could be found (and `upsert` was true) - valid for e-filing but missing email or email is undeliverable. Value can be 0 or another value based on what the job has available
    attr_accessor :created_no_email

    # Number of new forms created because no matching form could be found (and `upsert` was true) - valid for e-filing and e-delivery. Value can be 0 or another value based on what the job has available
    attr_accessor :created_valid

    # Dry run. If `true`, this job only simulates the changes but doesn't actually persist them.
    attr_accessor :dry_run

    # Upsert. If `true`, this job will first attempt to update existing records if matches can be found. Matches are done in the following order: Form ID, Form Reference ID and tax year, Form TIN and tax year.
    attr_accessor :upsert

    # Link to access the job details
    attr_accessor :link

    # List of processed forms returned when bulk-upsert processes ≤1000 records. Same format as GET /1099/forms response. Only available in bulk-upsert endpoint responses.
    attr_accessor :processed_forms

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'type' => :'type',
        :'status' => :'status',
        :'error_message' => :'errorMessage',
        :'total_processed' => :'totalProcessed',
        :'total_rows' => :'totalRows',
        :'updated_valid' => :'updatedValid',
        :'updated_no_email' => :'updatedNoEmail',
        :'updated_invalid' => :'updatedInvalid',
        :'skipped_duplicate' => :'skippedDuplicate',
        :'skipped_invalid' => :'skippedInvalid',
        :'skipped_multiple_matches' => :'skippedMultipleMatches',
        :'not_found' => :'notFound',
        :'created_invalid' => :'createdInvalid',
        :'created_no_email' => :'createdNoEmail',
        :'created_valid' => :'createdValid',
        :'dry_run' => :'dryRun',
        :'upsert' => :'upsert',
        :'link' => :'link',
        :'processed_forms' => :'processedForms'
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
        :'status' => :'String',
        :'error_message' => :'String',
        :'total_processed' => :'Integer',
        :'total_rows' => :'Integer',
        :'updated_valid' => :'Integer',
        :'updated_no_email' => :'Integer',
        :'updated_invalid' => :'Integer',
        :'skipped_duplicate' => :'Integer',
        :'skipped_invalid' => :'Integer',
        :'skipped_multiple_matches' => :'Integer',
        :'not_found' => :'Integer',
        :'created_invalid' => :'Integer',
        :'created_no_email' => :'Integer',
        :'created_valid' => :'Integer',
        :'dry_run' => :'Boolean',
        :'upsert' => :'Boolean',
        :'link' => :'String',
        :'processed_forms' => :'Array<Get1099Form200Response>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'error_message',
        :'link',
        :'processed_forms'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `AvalaraSdk::A1099::V2::JobResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AvalaraSdk::A1099::V2::JobResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'error_message')
        self.error_message = attributes[:'error_message']
      end

      if attributes.key?(:'total_processed')
        self.total_processed = attributes[:'total_processed']
      end

      if attributes.key?(:'total_rows')
        self.total_rows = attributes[:'total_rows']
      end

      if attributes.key?(:'updated_valid')
        self.updated_valid = attributes[:'updated_valid']
      end

      if attributes.key?(:'updated_no_email')
        self.updated_no_email = attributes[:'updated_no_email']
      end

      if attributes.key?(:'updated_invalid')
        self.updated_invalid = attributes[:'updated_invalid']
      end

      if attributes.key?(:'skipped_duplicate')
        self.skipped_duplicate = attributes[:'skipped_duplicate']
      end

      if attributes.key?(:'skipped_invalid')
        self.skipped_invalid = attributes[:'skipped_invalid']
      end

      if attributes.key?(:'skipped_multiple_matches')
        self.skipped_multiple_matches = attributes[:'skipped_multiple_matches']
      end

      if attributes.key?(:'not_found')
        self.not_found = attributes[:'not_found']
      end

      if attributes.key?(:'created_invalid')
        self.created_invalid = attributes[:'created_invalid']
      end

      if attributes.key?(:'created_no_email')
        self.created_no_email = attributes[:'created_no_email']
      end

      if attributes.key?(:'created_valid')
        self.created_valid = attributes[:'created_valid']
      end

      if attributes.key?(:'dry_run')
        self.dry_run = attributes[:'dry_run']
      end

      if attributes.key?(:'upsert')
        self.upsert = attributes[:'upsert']
      end

      if attributes.key?(:'link')
        self.link = attributes[:'link']
      end

      if attributes.key?(:'processed_forms')
        if (value = attributes[:'processed_forms']).is_a?(Array)
          self.processed_forms = value
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
      status_validator = EnumAttributeValidator.new('String', ["InProgress", "Success", "Failed"])
      return false unless status_validator.valid?(@status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["InProgress", "Success", "Failed"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method with validation
    # @param [Object] processed_forms Value to be assigned
    def processed_forms=(processed_forms)
      @processed_forms = processed_forms
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          type == o.type &&
          status == o.status &&
          error_message == o.error_message &&
          total_processed == o.total_processed &&
          total_rows == o.total_rows &&
          updated_valid == o.updated_valid &&
          updated_no_email == o.updated_no_email &&
          updated_invalid == o.updated_invalid &&
          skipped_duplicate == o.skipped_duplicate &&
          skipped_invalid == o.skipped_invalid &&
          skipped_multiple_matches == o.skipped_multiple_matches &&
          not_found == o.not_found &&
          created_invalid == o.created_invalid &&
          created_no_email == o.created_no_email &&
          created_valid == o.created_valid &&
          dry_run == o.dry_run &&
          upsert == o.upsert &&
          link == o.link &&
          processed_forms == o.processed_forms
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, type, status, error_message, total_processed, total_rows, updated_valid, updated_no_email, updated_invalid, skipped_duplicate, skipped_invalid, skipped_multiple_matches, not_found, created_invalid, created_no_email, created_valid, dry_run, upsert, link, processed_forms].hash
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
