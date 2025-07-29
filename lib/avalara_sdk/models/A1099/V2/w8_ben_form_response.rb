=begin
#Avalara 1099 & W-9 API Definition

### 🔐 Authentication  Generate a **license key** from: *[Avalara Portal](https://www.avalara.com/us/en/signin.html) → Settings → License and API Keys*.  [More on authentication methods](https://developer.avalara.com/avatax-dm-combined-erp/common-setup/authentication/authentication-methods/)  [Test your credentials](https://developer.avalara.com/avatax/test-credentials/)  ## 📘 API & SDK Documentation  [Avalara SDK (.NET) on GitHub](https://github.com/avadev/Avalara-SDK-DotNet#avalarasdk--the-unified-c-library-for-next-gen-avalara-services)  [Code Examples – 1099 API](https://github.com/avadev/Avalara-SDK-DotNet/blob/main/docs/A1099/V2/Class1099IssuersApi.md#call1099issuersget)


=end

require 'date'
require 'time'

module AvalaraSdk::A1099::V2
      class W8BenFormResponse
    # The name of the individual or entity associated with the form.
    attr_accessor :name

    # The country of citizenship.
    attr_accessor :citizenship_country

    # The residential address of the individual or entity.
    attr_accessor :residence_address

    # The city of residence.
    attr_accessor :residence_city

    # The state of residence.
    attr_accessor :residence_state

    # The ZIP code of the residence.
    attr_accessor :residence_zip

    # The country of residence.
    attr_accessor :residence_country

    # Indicates whether the residence address is the mailing address.
    attr_accessor :residence_is_mailing

    # The mailing address.
    attr_accessor :mailing_address

    # The city of the mailing address.
    attr_accessor :mailing_city

    # The state of the mailing address.
    attr_accessor :mailing_state

    # The ZIP code of the mailing address.
    attr_accessor :mailing_zip

    # The country of the mailing address.
    attr_accessor :mailing_country

    # The type of TIN provided.
    attr_accessor :tin_type

    # The taxpayer identification number (TIN).
    attr_accessor :tin

    # Indicates whether a foreign TIN is not required.
    attr_accessor :foreign_tin_not_required

    # The foreign taxpayer identification number (TIN).
    attr_accessor :foreign_tin

    # A reference number for the form.
    attr_accessor :reference_number

    # The birthday of the individual associated with the form.
    attr_accessor :birthday

    # The country for which the treaty applies.
    attr_accessor :treaty_country

    # The specific article of the treaty being claimed.
    attr_accessor :treaty_article

    # The reasons for claiming treaty benefits.
    attr_accessor :treaty_reasons

    # The withholding rate applied as per the treaty.
    attr_accessor :withholding_rate

    # The type of income covered by the treaty.
    attr_accessor :income_type

    # The name of the signer of the form.
    attr_accessor :signer_name

    # The capacity in which the signer is signing the form.
    attr_accessor :signer_capacity

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
        :'name' => :'name',
        :'citizenship_country' => :'citizenshipCountry',
        :'residence_address' => :'residenceAddress',
        :'residence_city' => :'residenceCity',
        :'residence_state' => :'residenceState',
        :'residence_zip' => :'residenceZip',
        :'residence_country' => :'residenceCountry',
        :'residence_is_mailing' => :'residenceIsMailing',
        :'mailing_address' => :'mailingAddress',
        :'mailing_city' => :'mailingCity',
        :'mailing_state' => :'mailingState',
        :'mailing_zip' => :'mailingZip',
        :'mailing_country' => :'mailingCountry',
        :'tin_type' => :'tinType',
        :'tin' => :'tin',
        :'foreign_tin_not_required' => :'foreignTinNotRequired',
        :'foreign_tin' => :'foreignTin',
        :'reference_number' => :'referenceNumber',
        :'birthday' => :'birthday',
        :'treaty_country' => :'treatyCountry',
        :'treaty_article' => :'treatyArticle',
        :'treaty_reasons' => :'treatyReasons',
        :'withholding_rate' => :'withholdingRate',
        :'income_type' => :'incomeType',
        :'signer_name' => :'signerName',
        :'signer_capacity' => :'signerCapacity',
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
        :'name' => :'String',
        :'citizenship_country' => :'String',
        :'residence_address' => :'String',
        :'residence_city' => :'String',
        :'residence_state' => :'String',
        :'residence_zip' => :'String',
        :'residence_country' => :'String',
        :'residence_is_mailing' => :'Boolean',
        :'mailing_address' => :'String',
        :'mailing_city' => :'String',
        :'mailing_state' => :'String',
        :'mailing_zip' => :'String',
        :'mailing_country' => :'String',
        :'tin_type' => :'String',
        :'tin' => :'String',
        :'foreign_tin_not_required' => :'Boolean',
        :'foreign_tin' => :'String',
        :'reference_number' => :'String',
        :'birthday' => :'Date',
        :'treaty_country' => :'String',
        :'treaty_article' => :'String',
        :'treaty_reasons' => :'String',
        :'withholding_rate' => :'String',
        :'income_type' => :'String',
        :'signer_name' => :'String',
        :'signer_capacity' => :'String',
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
        :'residence_state',
        :'mailing_address',
        :'mailing_city',
        :'mailing_state',
        :'mailing_zip',
        :'mailing_country',
        :'tin_type',
        :'tin',
        :'foreign_tin',
        :'reference_number',
        :'birthday',
        :'treaty_article',
        :'treaty_reasons',
        :'withholding_rate',
        :'income_type',
        :'signer_name',
        :'signer_capacity',
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `AvalaraSdk::A1099::V2::W8BenFormResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AvalaraSdk::A1099::V2::W8BenFormResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'citizenship_country')
        self.citizenship_country = attributes[:'citizenship_country']
      end

      if attributes.key?(:'residence_address')
        self.residence_address = attributes[:'residence_address']
      end

      if attributes.key?(:'residence_city')
        self.residence_city = attributes[:'residence_city']
      end

      if attributes.key?(:'residence_state')
        self.residence_state = attributes[:'residence_state']
      end

      if attributes.key?(:'residence_zip')
        self.residence_zip = attributes[:'residence_zip']
      end

      if attributes.key?(:'residence_country')
        self.residence_country = attributes[:'residence_country']
      end

      if attributes.key?(:'residence_is_mailing')
        self.residence_is_mailing = attributes[:'residence_is_mailing']
      end

      if attributes.key?(:'mailing_address')
        self.mailing_address = attributes[:'mailing_address']
      end

      if attributes.key?(:'mailing_city')
        self.mailing_city = attributes[:'mailing_city']
      end

      if attributes.key?(:'mailing_state')
        self.mailing_state = attributes[:'mailing_state']
      end

      if attributes.key?(:'mailing_zip')
        self.mailing_zip = attributes[:'mailing_zip']
      end

      if attributes.key?(:'mailing_country')
        self.mailing_country = attributes[:'mailing_country']
      end

      if attributes.key?(:'tin_type')
        self.tin_type = attributes[:'tin_type']
      end

      if attributes.key?(:'tin')
        self.tin = attributes[:'tin']
      end

      if attributes.key?(:'foreign_tin_not_required')
        self.foreign_tin_not_required = attributes[:'foreign_tin_not_required']
      end

      if attributes.key?(:'foreign_tin')
        self.foreign_tin = attributes[:'foreign_tin']
      end

      if attributes.key?(:'reference_number')
        self.reference_number = attributes[:'reference_number']
      end

      if attributes.key?(:'birthday')
        self.birthday = attributes[:'birthday']
      end

      if attributes.key?(:'treaty_country')
        self.treaty_country = attributes[:'treaty_country']
      end

      if attributes.key?(:'treaty_article')
        self.treaty_article = attributes[:'treaty_article']
      end

      if attributes.key?(:'treaty_reasons')
        self.treaty_reasons = attributes[:'treaty_reasons']
      end

      if attributes.key?(:'withholding_rate')
        self.withholding_rate = attributes[:'withholding_rate']
      end

      if attributes.key?(:'income_type')
        self.income_type = attributes[:'income_type']
      end

      if attributes.key?(:'signer_name')
        self.signer_name = attributes[:'signer_name']
      end

      if attributes.key?(:'signer_capacity')
        self.signer_capacity = attributes[:'signer_capacity']
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
          name == o.name &&
          citizenship_country == o.citizenship_country &&
          residence_address == o.residence_address &&
          residence_city == o.residence_city &&
          residence_state == o.residence_state &&
          residence_zip == o.residence_zip &&
          residence_country == o.residence_country &&
          residence_is_mailing == o.residence_is_mailing &&
          mailing_address == o.mailing_address &&
          mailing_city == o.mailing_city &&
          mailing_state == o.mailing_state &&
          mailing_zip == o.mailing_zip &&
          mailing_country == o.mailing_country &&
          tin_type == o.tin_type &&
          tin == o.tin &&
          foreign_tin_not_required == o.foreign_tin_not_required &&
          foreign_tin == o.foreign_tin &&
          reference_number == o.reference_number &&
          birthday == o.birthday &&
          treaty_country == o.treaty_country &&
          treaty_article == o.treaty_article &&
          treaty_reasons == o.treaty_reasons &&
          withholding_rate == o.withholding_rate &&
          income_type == o.income_type &&
          signer_name == o.signer_name &&
          signer_capacity == o.signer_capacity &&
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
      [name, citizenship_country, residence_address, residence_city, residence_state, residence_zip, residence_country, residence_is_mailing, mailing_address, mailing_city, mailing_state, mailing_zip, mailing_country, tin_type, tin, foreign_tin_not_required, foreign_tin, reference_number, birthday, treaty_country, treaty_article, treaty_reasons, withholding_rate, income_type, signer_name, signer_capacity, id, type, entry_status, entry_status_date, reference_id, company_id, display_name, email, archived, signature, signed_date, e_delivery_consented_at, created_at, updated_at].hash
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
