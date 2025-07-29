=begin
#Avalara 1099 & W-9 API Definition

### 🔐 Authentication  Generate a **license key** from: *[Avalara Portal](https://www.avalara.com/us/en/signin.html) → Settings → License and API Keys*.  [More on authentication methods](https://developer.avalara.com/avatax-dm-combined-erp/common-setup/authentication/authentication-methods/)  [Test your credentials](https://developer.avalara.com/avatax/test-credentials/)  ## 📘 API & SDK Documentation  [Avalara SDK (.NET) on GitHub](https://github.com/avadev/Avalara-SDK-DotNet#avalarasdk--the-unified-c-library-for-next-gen-avalara-services)  [Code Examples – 1099 API](https://github.com/avadev/Avalara-SDK-DotNet/blob/main/docs/A1099/V2/Class1099IssuersApi.md#call1099issuersget)


=end

require 'date'
require 'time'

module AvalaraSdk::A1099::V2
      class W4FormResponse
    # The first name of the employee.
    attr_accessor :employee_first_name

    # The middle name of the employee.
    attr_accessor :employee_middle_name

    # The last name of the employee.
    attr_accessor :employee_last_name

    # The name suffix of the employee.
    attr_accessor :employee_name_suffix

    # The type of TIN provided.
    attr_accessor :tin_type

    # The taxpayer identification number (TIN).
    attr_accessor :tin

    # The address of the employee.
    attr_accessor :address

    # The city of residence of the employee.
    attr_accessor :city

    # The state of residence of the employee.
    attr_accessor :state

    # The ZIP code of residence of the employee.
    attr_accessor :zip

    # The marital status of the employee.
    attr_accessor :marital_status

    # Indicates whether the last name differs from prior records.
    attr_accessor :last_name_differs

    # The number of allowances claimed by the employee.
    attr_accessor :num_allowances

    # The number of dependents other than allowances.
    attr_accessor :other_dependents

    # The amount of non-job income.
    attr_accessor :non_job_income

    # The amount of deductions claimed.
    attr_accessor :deductions

    # The additional amount withheld.
    attr_accessor :additional_withheld

    # Indicates whether the employee is exempt from withholding.
    attr_accessor :exempt_from_withholding

    # The office code associated with the form.
    attr_accessor :office_code

    # The unique identifier for the form.
    attr_accessor :id

    # The form type.
    attr_accessor :type

    # The form status.
    attr_accessor :entry_status

    # The timestamp for the latest status update.
    attr_accessor :entry_status_date

    # A reference identifier for the form.
    attr_accessor :reference_id

    # The ID of the associated company.
    attr_accessor :company_id

    # The display name associated with the form.
    attr_accessor :display_name

    # The email address of the individual associated with the form.
    attr_accessor :email

    # Indicates whether the form is archived.
    attr_accessor :archived

    # The signature of the form.
    attr_accessor :signature

    # The date the form was signed.
    attr_accessor :signed_date

    # The date when e-delivery was consented.
    attr_accessor :e_delivery_consented_at

    # The creation date of the form.
    attr_accessor :created_at

    # The last updated date of the form.
    attr_accessor :updated_at

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'employee_first_name' => :'employeeFirstName',
        :'employee_middle_name' => :'employeeMiddleName',
        :'employee_last_name' => :'employeeLastName',
        :'employee_name_suffix' => :'employeeNameSuffix',
        :'tin_type' => :'tinType',
        :'tin' => :'tin',
        :'address' => :'address',
        :'city' => :'city',
        :'state' => :'state',
        :'zip' => :'zip',
        :'marital_status' => :'maritalStatus',
        :'last_name_differs' => :'lastNameDiffers',
        :'num_allowances' => :'numAllowances',
        :'other_dependents' => :'otherDependents',
        :'non_job_income' => :'nonJobIncome',
        :'deductions' => :'deductions',
        :'additional_withheld' => :'additionalWithheld',
        :'exempt_from_withholding' => :'exemptFromWithholding',
        :'office_code' => :'officeCode',
        :'id' => :'id',
        :'type' => :'type',
        :'entry_status' => :'entryStatus',
        :'entry_status_date' => :'entryStatusDate',
        :'reference_id' => :'referenceId',
        :'company_id' => :'companyId',
        :'display_name' => :'displayName',
        :'email' => :'email',
        :'archived' => :'archived',
        :'signature' => :'signature',
        :'signed_date' => :'signedDate',
        :'e_delivery_consented_at' => :'eDeliveryConsentedAt',
        :'created_at' => :'createdAt',
        :'updated_at' => :'updatedAt'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'employee_first_name' => :'String',
        :'employee_middle_name' => :'String',
        :'employee_last_name' => :'String',
        :'employee_name_suffix' => :'String',
        :'tin_type' => :'String',
        :'tin' => :'String',
        :'address' => :'String',
        :'city' => :'String',
        :'state' => :'String',
        :'zip' => :'String',
        :'marital_status' => :'String',
        :'last_name_differs' => :'Boolean',
        :'num_allowances' => :'Integer',
        :'other_dependents' => :'Integer',
        :'non_job_income' => :'Float',
        :'deductions' => :'Float',
        :'additional_withheld' => :'Float',
        :'exempt_from_withholding' => :'Boolean',
        :'office_code' => :'String',
        :'id' => :'String',
        :'type' => :'String',
        :'entry_status' => :'String',
        :'entry_status_date' => :'Time',
        :'reference_id' => :'String',
        :'company_id' => :'String',
        :'display_name' => :'String',
        :'email' => :'String',
        :'archived' => :'Boolean',
        :'signature' => :'String',
        :'signed_date' => :'Time',
        :'e_delivery_consented_at' => :'Time',
        :'created_at' => :'Time',
        :'updated_at' => :'Time'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'employee_middle_name',
        :'employee_name_suffix',
        :'address',
        :'city',
        :'state',
        :'zip',
        :'marital_status',
        :'num_allowances',
        :'other_dependents',
        :'non_job_income',
        :'deductions',
        :'additional_withheld',
        :'office_code',
        :'entry_status_date',
        :'reference_id',
        :'email',
        :'signature',
        :'signed_date',
        :'e_delivery_consented_at',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'W9FormBaseResponse'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `AvalaraSdk::A1099::V2::W4FormResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AvalaraSdk::A1099::V2::W4FormResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'employee_first_name')
        self.employee_first_name = attributes[:'employee_first_name']
      end

      if attributes.key?(:'employee_middle_name')
        self.employee_middle_name = attributes[:'employee_middle_name']
      end

      if attributes.key?(:'employee_last_name')
        self.employee_last_name = attributes[:'employee_last_name']
      end

      if attributes.key?(:'employee_name_suffix')
        self.employee_name_suffix = attributes[:'employee_name_suffix']
      end

      if attributes.key?(:'tin_type')
        self.tin_type = attributes[:'tin_type']
      end

      if attributes.key?(:'tin')
        self.tin = attributes[:'tin']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'zip')
        self.zip = attributes[:'zip']
      end

      if attributes.key?(:'marital_status')
        self.marital_status = attributes[:'marital_status']
      end

      if attributes.key?(:'last_name_differs')
        self.last_name_differs = attributes[:'last_name_differs']
      end

      if attributes.key?(:'num_allowances')
        self.num_allowances = attributes[:'num_allowances']
      end

      if attributes.key?(:'other_dependents')
        self.other_dependents = attributes[:'other_dependents']
      end

      if attributes.key?(:'non_job_income')
        self.non_job_income = attributes[:'non_job_income']
      end

      if attributes.key?(:'deductions')
        self.deductions = attributes[:'deductions']
      end

      if attributes.key?(:'additional_withheld')
        self.additional_withheld = attributes[:'additional_withheld']
      end

      if attributes.key?(:'exempt_from_withholding')
        self.exempt_from_withholding = attributes[:'exempt_from_withholding']
      end

      if attributes.key?(:'office_code')
        self.office_code = attributes[:'office_code']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'entry_status')
        self.entry_status = attributes[:'entry_status']
      end

      if attributes.key?(:'entry_status_date')
        self.entry_status_date = attributes[:'entry_status_date']
      end

      if attributes.key?(:'reference_id')
        self.reference_id = attributes[:'reference_id']
      end

      if attributes.key?(:'company_id')
        self.company_id = attributes[:'company_id']
      end

      if attributes.key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'archived')
        self.archived = attributes[:'archived']
      end

      if attributes.key?(:'signature')
        self.signature = attributes[:'signature']
      end

      if attributes.key?(:'signed_date')
        self.signed_date = attributes[:'signed_date']
      end

      if attributes.key?(:'e_delivery_consented_at')
        self.e_delivery_consented_at = attributes[:'e_delivery_consented_at']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
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
          employee_first_name == o.employee_first_name &&
          employee_middle_name == o.employee_middle_name &&
          employee_last_name == o.employee_last_name &&
          employee_name_suffix == o.employee_name_suffix &&
          tin_type == o.tin_type &&
          tin == o.tin &&
          address == o.address &&
          city == o.city &&
          state == o.state &&
          zip == o.zip &&
          marital_status == o.marital_status &&
          last_name_differs == o.last_name_differs &&
          num_allowances == o.num_allowances &&
          other_dependents == o.other_dependents &&
          non_job_income == o.non_job_income &&
          deductions == o.deductions &&
          additional_withheld == o.additional_withheld &&
          exempt_from_withholding == o.exempt_from_withholding &&
          office_code == o.office_code &&
          id == o.id &&
          type == o.type &&
          entry_status == o.entry_status &&
          entry_status_date == o.entry_status_date &&
          reference_id == o.reference_id &&
          company_id == o.company_id &&
          display_name == o.display_name &&
          email == o.email &&
          archived == o.archived &&
          signature == o.signature &&
          signed_date == o.signed_date &&
          e_delivery_consented_at == o.e_delivery_consented_at &&
          created_at == o.created_at &&
          updated_at == o.updated_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [employee_first_name, employee_middle_name, employee_last_name, employee_name_suffix, tin_type, tin, address, city, state, zip, marital_status, last_name_differs, num_allowances, other_dependents, non_job_income, deductions, additional_withheld, exempt_from_withholding, office_code, id, type, entry_status, entry_status_date, reference_id, company_id, display_name, email, archived, signature, signed_date, e_delivery_consented_at, created_at, updated_at].hash
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
