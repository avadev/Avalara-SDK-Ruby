=begin
#Avalara 1099 & W-9 API Definition

### 🔐 Authentication  Generate a **license key** from: *[Avalara Portal](https://www.avalara.com/us/en/signin.html) → Settings → License and API Keys*.  [More on authentication methods](https://developer.avalara.com/avatax-dm-combined-erp/common-setup/authentication/authentication-methods/)  [Test your credentials](https://developer.avalara.com/avatax/test-credentials/)  ## 📘 API & SDK Documentation  [Avalara SDK (.NET) on GitHub](https://github.com/avadev/Avalara-SDK-DotNet#avalarasdk--the-unified-c-library-for-next-gen-avalara-services)  [Code Examples – 1099 API](https://github.com/avadev/Avalara-SDK-DotNet/blob/main/docs/A1099/V2/Class1099IssuersApi.md#call1099issuersget)


=end

require 'date'
require 'time'

module AvalaraSdk::A1099::V2
      class Form1099NecListItemResponse
    # Nonemployee compensation
    attr_accessor :nonemployee_compensation

    # Federal income tax withheld
    attr_accessor :federal_income_tax_withheld

    # Payer made direct sales totaling $5,000 or more of consumer products to recipient for resale
    attr_accessor :direct_sales_indicator

    # ID of the form
    attr_accessor :id

    # Type of the form. Will be one of:  * 940  * 941  * 943  * 944  * 945  * 1042  * 1042-S  * 1095-B  * 1095-C  * 1097-BTC  * 1098  * 1098-C  * 1098-E  * 1098-Q  * 1098-T  * 3921  * 3922  * 5498  * 5498-ESA  * 5498-SA  * 1099-MISC  * 1099-A  * 1099-B  * 1099-C  * 1099-CAP  * 1099-DIV  * 1099-G  * 1099-INT  * 1099-K  * 1099-LS  * 1099-LTC  * 1099-NEC  * 1099-OID  * 1099-PATR  * 1099-Q  * 1099-R  * 1099-S  * 1099-SA  * T4A  * W-2  * W-2G  * 1099-HC
    attr_accessor :type

    # Issuer ID
    attr_accessor :issuer_id

    # Issuer Reference ID
    attr_accessor :issuer_reference_id

    # Issuer TIN
    attr_accessor :issuer_tin

    # Tax year
    attr_accessor :tax_year

    # Boolean indicating that federal e-filing has been scheduled for this form
    attr_accessor :federal_efile

    # Federal e-file status
    attr_accessor :federal_efile_status

    # Boolean indicating that state e-filing has been scheduled for this form
    attr_accessor :state_efile

    # State e-file status
    attr_accessor :state_efile_status

    # Boolean indicating that postal mailing to the recipient has been scheduled for this form
    attr_accessor :postal_mail

    # Postal mail to recipient status
    attr_accessor :postal_mail_status

    # Boolean indicating that TIN Matching has been scheduled for this form
    attr_accessor :tin_match

    # TIN Match status
    attr_accessor :tin_match_status

    # Boolean indicating that address verification has been scheduled for this form
    attr_accessor :address_verification

    # Address verification status
    attr_accessor :address_verification_status

    # EDelivery status
    attr_accessor :e_delivery_status

    # Reference ID
    attr_accessor :reference_id

    # Recipient email address
    attr_accessor :email

    # Type of TIN (Tax ID Number). Will be one of:  * SSN  * EIN  * ITIN  * ATIN
    attr_accessor :tin_type

    # Recipient Tax ID Number
    attr_accessor :tin

    # Indicates whether the recipient has no TIN
    attr_accessor :no_tin

    # Second Tin Notice
    attr_accessor :second_tin_notice

    # Recipient name
    attr_accessor :recipient_name

    # Recipient second name
    attr_accessor :recipient_second_name

    # Address
    attr_accessor :address

    # Address line 2
    attr_accessor :address2

    # City
    attr_accessor :city

    # US state
    attr_accessor :state

    # Zip/postal code
    attr_accessor :zip

    # Foreign province
    attr_accessor :non_us_province

    # Country code, as defined at https://www.irs.gov/e-file-providers/country-codes
    attr_accessor :country_code

    # Account Number
    attr_accessor :account_number

    # Office Code
    attr_accessor :office_code

    # FATCA filing requirement
    attr_accessor :fatca_filing_requirement

    # Validation errors
    attr_accessor :validation_errors

    # Creation time
    attr_accessor :created_at

    # Update time
    attr_accessor :updated_at

    attr_accessor :state_and_local_withholding

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'nonemployee_compensation' => :'nonemployeeCompensation',
        :'federal_income_tax_withheld' => :'federalIncomeTaxWithheld',
        :'direct_sales_indicator' => :'directSalesIndicator',
        :'id' => :'id',
        :'type' => :'type',
        :'issuer_id' => :'issuerId',
        :'issuer_reference_id' => :'issuerReferenceId',
        :'issuer_tin' => :'issuerTin',
        :'tax_year' => :'taxYear',
        :'federal_efile' => :'federalEfile',
        :'federal_efile_status' => :'federalEfileStatus',
        :'state_efile' => :'stateEfile',
        :'state_efile_status' => :'stateEfileStatus',
        :'postal_mail' => :'postalMail',
        :'postal_mail_status' => :'postalMailStatus',
        :'tin_match' => :'tinMatch',
        :'tin_match_status' => :'tinMatchStatus',
        :'address_verification' => :'addressVerification',
        :'address_verification_status' => :'addressVerificationStatus',
        :'e_delivery_status' => :'eDeliveryStatus',
        :'reference_id' => :'referenceId',
        :'email' => :'email',
        :'tin_type' => :'tinType',
        :'tin' => :'tin',
        :'no_tin' => :'noTin',
        :'second_tin_notice' => :'secondTinNotice',
        :'recipient_name' => :'recipientName',
        :'recipient_second_name' => :'recipientSecondName',
        :'address' => :'address',
        :'address2' => :'address2',
        :'city' => :'city',
        :'state' => :'state',
        :'zip' => :'zip',
        :'non_us_province' => :'nonUsProvince',
        :'country_code' => :'countryCode',
        :'account_number' => :'accountNumber',
        :'office_code' => :'officeCode',
        :'fatca_filing_requirement' => :'fatcaFilingRequirement',
        :'validation_errors' => :'validationErrors',
        :'created_at' => :'createdAt',
        :'updated_at' => :'updatedAt',
        :'state_and_local_withholding' => :'stateAndLocalWithholding'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'nonemployee_compensation' => :'Float',
        :'federal_income_tax_withheld' => :'Float',
        :'direct_sales_indicator' => :'Boolean',
        :'id' => :'String',
        :'type' => :'String',
        :'issuer_id' => :'Integer',
        :'issuer_reference_id' => :'String',
        :'issuer_tin' => :'String',
        :'tax_year' => :'Integer',
        :'federal_efile' => :'Boolean',
        :'federal_efile_status' => :'StatusDetail',
        :'state_efile' => :'Boolean',
        :'state_efile_status' => :'Array<StateEfileStatusDetailResponse>',
        :'postal_mail' => :'Boolean',
        :'postal_mail_status' => :'StatusDetail',
        :'tin_match' => :'Boolean',
        :'tin_match_status' => :'StatusDetail',
        :'address_verification' => :'Boolean',
        :'address_verification_status' => :'StatusDetail',
        :'e_delivery_status' => :'StatusDetail',
        :'reference_id' => :'String',
        :'email' => :'String',
        :'tin_type' => :'String',
        :'tin' => :'String',
        :'no_tin' => :'Boolean',
        :'second_tin_notice' => :'Boolean',
        :'recipient_name' => :'String',
        :'recipient_second_name' => :'String',
        :'address' => :'String',
        :'address2' => :'String',
        :'city' => :'String',
        :'state' => :'String',
        :'zip' => :'String',
        :'non_us_province' => :'String',
        :'country_code' => :'String',
        :'account_number' => :'String',
        :'office_code' => :'String',
        :'fatca_filing_requirement' => :'Boolean',
        :'validation_errors' => :'Array<ValidationErrorResponse>',
        :'created_at' => :'Time',
        :'updated_at' => :'Time',
        :'state_and_local_withholding' => :'StateAndLocalWithholdingResponse'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'nonemployee_compensation',
        :'federal_income_tax_withheld',
        :'issuer_reference_id',
        :'issuer_tin',
        :'state_efile_status',
        :'postal_mail_status',
        :'tin_match_status',
        :'address_verification_status',
        :'e_delivery_status',
        :'reference_id',
        :'email',
        :'tin_type',
        :'tin',
        :'second_tin_notice',
        :'recipient_name',
        :'recipient_second_name',
        :'address',
        :'address2',
        :'city',
        :'state',
        :'zip',
        :'non_us_province',
        :'country_code',
        :'account_number',
        :'office_code',
        :'fatca_filing_requirement',
        :'validation_errors',
        :'state_and_local_withholding'
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'Form1099BaseResponse'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `AvalaraSdk::A1099::V2::Form1099NecListItemResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AvalaraSdk::A1099::V2::Form1099NecListItemResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'nonemployee_compensation')
        self.nonemployee_compensation = attributes[:'nonemployee_compensation']
      end

      if attributes.key?(:'federal_income_tax_withheld')
        self.federal_income_tax_withheld = attributes[:'federal_income_tax_withheld']
      end

      if attributes.key?(:'direct_sales_indicator')
        self.direct_sales_indicator = attributes[:'direct_sales_indicator']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = nil
      end

      if attributes.key?(:'issuer_id')
        self.issuer_id = attributes[:'issuer_id']
      else
        self.issuer_id = nil
      end

      if attributes.key?(:'issuer_reference_id')
        self.issuer_reference_id = attributes[:'issuer_reference_id']
      end

      if attributes.key?(:'issuer_tin')
        self.issuer_tin = attributes[:'issuer_tin']
      end

      if attributes.key?(:'tax_year')
        self.tax_year = attributes[:'tax_year']
      end

      if attributes.key?(:'federal_efile')
        self.federal_efile = attributes[:'federal_efile']
      else
        self.federal_efile = nil
      end

      if attributes.key?(:'federal_efile_status')
        self.federal_efile_status = attributes[:'federal_efile_status']
      end

      if attributes.key?(:'state_efile')
        self.state_efile = attributes[:'state_efile']
      else
        self.state_efile = nil
      end

      if attributes.key?(:'state_efile_status')
        if (value = attributes[:'state_efile_status']).is_a?(Array)
          self.state_efile_status = value
        end
      end

      if attributes.key?(:'postal_mail')
        self.postal_mail = attributes[:'postal_mail']
      else
        self.postal_mail = nil
      end

      if attributes.key?(:'postal_mail_status')
        self.postal_mail_status = attributes[:'postal_mail_status']
      end

      if attributes.key?(:'tin_match')
        self.tin_match = attributes[:'tin_match']
      else
        self.tin_match = nil
      end

      if attributes.key?(:'tin_match_status')
        self.tin_match_status = attributes[:'tin_match_status']
      end

      if attributes.key?(:'address_verification')
        self.address_verification = attributes[:'address_verification']
      else
        self.address_verification = nil
      end

      if attributes.key?(:'address_verification_status')
        self.address_verification_status = attributes[:'address_verification_status']
      end

      if attributes.key?(:'e_delivery_status')
        self.e_delivery_status = attributes[:'e_delivery_status']
      end

      if attributes.key?(:'reference_id')
        self.reference_id = attributes[:'reference_id']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'tin_type')
        self.tin_type = attributes[:'tin_type']
      end

      if attributes.key?(:'tin')
        self.tin = attributes[:'tin']
      end

      if attributes.key?(:'no_tin')
        self.no_tin = attributes[:'no_tin']
      end

      if attributes.key?(:'second_tin_notice')
        self.second_tin_notice = attributes[:'second_tin_notice']
      end

      if attributes.key?(:'recipient_name')
        self.recipient_name = attributes[:'recipient_name']
      end

      if attributes.key?(:'recipient_second_name')
        self.recipient_second_name = attributes[:'recipient_second_name']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'address2')
        self.address2 = attributes[:'address2']
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

      if attributes.key?(:'non_us_province')
        self.non_us_province = attributes[:'non_us_province']
      end

      if attributes.key?(:'country_code')
        self.country_code = attributes[:'country_code']
      end

      if attributes.key?(:'account_number')
        self.account_number = attributes[:'account_number']
      end

      if attributes.key?(:'office_code')
        self.office_code = attributes[:'office_code']
      end

      if attributes.key?(:'fatca_filing_requirement')
        self.fatca_filing_requirement = attributes[:'fatca_filing_requirement']
      end

      if attributes.key?(:'validation_errors')
        if (value = attributes[:'validation_errors']).is_a?(Array)
          self.validation_errors = value
        end
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'state_and_local_withholding')
        self.state_and_local_withholding = attributes[:'state_and_local_withholding']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @id.to_s.length < 1
        invalid_properties.push('invalid value for "id", the character length must be great than or equal to 1.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @type.to_s.length < 1
        invalid_properties.push('invalid value for "type", the character length must be great than or equal to 1.')
      end

      if @issuer_id.nil?
        invalid_properties.push('invalid value for "issuer_id", issuer_id cannot be nil.')
      end

      if @federal_efile.nil?
        invalid_properties.push('invalid value for "federal_efile", federal_efile cannot be nil.')
      end

      if @state_efile.nil?
        invalid_properties.push('invalid value for "state_efile", state_efile cannot be nil.')
      end

      if @postal_mail.nil?
        invalid_properties.push('invalid value for "postal_mail", postal_mail cannot be nil.')
      end

      if @tin_match.nil?
        invalid_properties.push('invalid value for "tin_match", tin_match cannot be nil.')
      end

      if @address_verification.nil?
        invalid_properties.push('invalid value for "address_verification", address_verification cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @id.nil?
      return false if @id.to_s.length < 1
      return false if @type.nil?
      return false if @type.to_s.length < 1
      return false if @issuer_id.nil?
      return false if @federal_efile.nil?
      return false if @state_efile.nil?
      return false if @postal_mail.nil?
      return false if @tin_match.nil?
      return false if @address_verification.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.nil?
        fail ArgumentError, 'id cannot be nil'
      end

      if id.to_s.length < 1
        fail ArgumentError, 'invalid value for "id", the character length must be great than or equal to 1.'
      end

      @id = id
    end

    # Custom attribute writer method with validation
    # @param [Object] type Value to be assigned
    def type=(type)
      if type.nil?
        fail ArgumentError, 'type cannot be nil'
      end

      if type.to_s.length < 1
        fail ArgumentError, 'invalid value for "type", the character length must be great than or equal to 1.'
      end

      @type = type
    end

    # Custom attribute writer method with validation
    # @param [Object] state_efile_status Value to be assigned
    def state_efile_status=(state_efile_status)
      @state_efile_status = state_efile_status
    end

    # Custom attribute writer method with validation
    # @param [Object] validation_errors Value to be assigned
    def validation_errors=(validation_errors)
      @validation_errors = validation_errors
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          nonemployee_compensation == o.nonemployee_compensation &&
          federal_income_tax_withheld == o.federal_income_tax_withheld &&
          direct_sales_indicator == o.direct_sales_indicator &&
          id == o.id &&
          type == o.type &&
          issuer_id == o.issuer_id &&
          issuer_reference_id == o.issuer_reference_id &&
          issuer_tin == o.issuer_tin &&
          tax_year == o.tax_year &&
          federal_efile == o.federal_efile &&
          federal_efile_status == o.federal_efile_status &&
          state_efile == o.state_efile &&
          state_efile_status == o.state_efile_status &&
          postal_mail == o.postal_mail &&
          postal_mail_status == o.postal_mail_status &&
          tin_match == o.tin_match &&
          tin_match_status == o.tin_match_status &&
          address_verification == o.address_verification &&
          address_verification_status == o.address_verification_status &&
          e_delivery_status == o.e_delivery_status &&
          reference_id == o.reference_id &&
          email == o.email &&
          tin_type == o.tin_type &&
          tin == o.tin &&
          no_tin == o.no_tin &&
          second_tin_notice == o.second_tin_notice &&
          recipient_name == o.recipient_name &&
          recipient_second_name == o.recipient_second_name &&
          address == o.address &&
          address2 == o.address2 &&
          city == o.city &&
          state == o.state &&
          zip == o.zip &&
          non_us_province == o.non_us_province &&
          country_code == o.country_code &&
          account_number == o.account_number &&
          office_code == o.office_code &&
          fatca_filing_requirement == o.fatca_filing_requirement &&
          validation_errors == o.validation_errors &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          state_and_local_withholding == o.state_and_local_withholding
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [nonemployee_compensation, federal_income_tax_withheld, direct_sales_indicator, id, type, issuer_id, issuer_reference_id, issuer_tin, tax_year, federal_efile, federal_efile_status, state_efile, state_efile_status, postal_mail, postal_mail_status, tin_match, tin_match_status, address_verification, address_verification_status, e_delivery_status, reference_id, email, tin_type, tin, no_tin, second_tin_notice, recipient_name, recipient_second_name, address, address2, city, state, zip, non_us_province, country_code, account_number, office_code, fatca_filing_requirement, validation_errors, created_at, updated_at, state_and_local_withholding].hash
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
