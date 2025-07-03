=begin
#Avalara 1099 & W-9 API Definition

### 🔐 Authentication  Use **username/password** or generate a **license key** from: *Avalara Portal → Settings → License and API Keys*.  [More on authentication methods](https://developer.avalara.com/avatax-dm-combined-erp/common-setup/authentication/authentication-methods/)  [Test your credentials](https://developer.avalara.com/avatax/test-credentials/)  ## 📘 API & SDK Documentation  [Avalara SDK (.NET) on GitHub](https://github.com/avadev/Avalara-SDK-DotNet#avalarasdk--the-unified-c-library-for-next-gen-avalara-services)  [Code Examples – 1099 API](https://github.com/avadev/Avalara-SDK-DotNet/blob/main/docs/A1099/V2/Class1099IssuersApi.md#call1099issuersget)


=end

require 'date'
require 'time'

module AvalaraSdk::A1099::V2
      class Form1099K
    attr_accessor :filer_type

    attr_accessor :payment_type

    attr_accessor :payment_settlement_entity_name_phone_number

    attr_accessor :gross_amount_payment_card

    attr_accessor :card_not_present_transactions

    attr_accessor :merchant_category_code

    attr_accessor :payment_transaction_number

    attr_accessor :federal_income_tax_withheld

    attr_accessor :january

    attr_accessor :february

    attr_accessor :march

    attr_accessor :april

    attr_accessor :may

    attr_accessor :june

    attr_accessor :july

    attr_accessor :august

    attr_accessor :sept

    attr_accessor :october

    attr_accessor :november

    attr_accessor :december

    attr_accessor :id

    attr_accessor :type

    attr_accessor :issuer_id

    attr_accessor :issuer_reference_id

    attr_accessor :issuer_tin

    attr_accessor :tax_year

    attr_accessor :federal_efile

    attr_accessor :federal_efile_status

    attr_accessor :state_efile

    attr_accessor :state_efile_status

    attr_accessor :postal_mail

    attr_accessor :postal_mail_status

    attr_accessor :tin_match

    attr_accessor :tin_match_status

    attr_accessor :address_verification

    attr_accessor :address_verification_status

    attr_accessor :reference_id

    attr_accessor :email

    attr_accessor :tin_type

    attr_accessor :tin

    attr_accessor :recipient_name

    attr_accessor :recipient_second_name

    attr_accessor :address

    attr_accessor :address2

    attr_accessor :city

    attr_accessor :state

    attr_accessor :zip

    attr_accessor :foreign_province

    attr_accessor :country_code

    attr_accessor :validation_errors

    attr_accessor :created_at

    attr_accessor :updated_at

    attr_accessor :state_and_local_withholding

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
        :'filer_type' => :'filerType',
        :'payment_type' => :'paymentType',
        :'payment_settlement_entity_name_phone_number' => :'paymentSettlementEntityNamePhoneNumber',
        :'gross_amount_payment_card' => :'grossAmountPaymentCard',
        :'card_not_present_transactions' => :'cardNotPresentTransactions',
        :'merchant_category_code' => :'merchantCategoryCode',
        :'payment_transaction_number' => :'paymentTransactionNumber',
        :'federal_income_tax_withheld' => :'federalIncomeTaxWithheld',
        :'january' => :'january',
        :'february' => :'february',
        :'march' => :'march',
        :'april' => :'april',
        :'may' => :'may',
        :'june' => :'june',
        :'july' => :'july',
        :'august' => :'august',
        :'sept' => :'sept',
        :'october' => :'october',
        :'november' => :'november',
        :'december' => :'december',
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
        :'reference_id' => :'referenceId',
        :'email' => :'email',
        :'tin_type' => :'tinType',
        :'tin' => :'tin',
        :'recipient_name' => :'recipientName',
        :'recipient_second_name' => :'recipientSecondName',
        :'address' => :'address',
        :'address2' => :'address2',
        :'city' => :'city',
        :'state' => :'state',
        :'zip' => :'zip',
        :'foreign_province' => :'foreignProvince',
        :'country_code' => :'countryCode',
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
        :'filer_type' => :'String',
        :'payment_type' => :'String',
        :'payment_settlement_entity_name_phone_number' => :'String',
        :'gross_amount_payment_card' => :'Float',
        :'card_not_present_transactions' => :'Float',
        :'merchant_category_code' => :'String',
        :'payment_transaction_number' => :'Float',
        :'federal_income_tax_withheld' => :'Float',
        :'january' => :'Float',
        :'february' => :'Float',
        :'march' => :'Float',
        :'april' => :'Float',
        :'may' => :'Float',
        :'june' => :'Float',
        :'july' => :'Float',
        :'august' => :'Float',
        :'sept' => :'Float',
        :'october' => :'Float',
        :'november' => :'Float',
        :'december' => :'Float',
        :'id' => :'String',
        :'type' => :'String',
        :'issuer_id' => :'Integer',
        :'issuer_reference_id' => :'String',
        :'issuer_tin' => :'String',
        :'tax_year' => :'Integer',
        :'federal_efile' => :'Boolean',
        :'federal_efile_status' => :'Form1099StatusDetail',
        :'state_efile' => :'Boolean',
        :'state_efile_status' => :'Array<StateEfileStatusDetail>',
        :'postal_mail' => :'Boolean',
        :'postal_mail_status' => :'Form1099StatusDetail',
        :'tin_match' => :'Boolean',
        :'tin_match_status' => :'Form1099StatusDetail',
        :'address_verification' => :'Boolean',
        :'address_verification_status' => :'Form1099StatusDetail',
        :'reference_id' => :'String',
        :'email' => :'String',
        :'tin_type' => :'String',
        :'tin' => :'String',
        :'recipient_name' => :'String',
        :'recipient_second_name' => :'String',
        :'address' => :'String',
        :'address2' => :'String',
        :'city' => :'String',
        :'state' => :'String',
        :'zip' => :'String',
        :'foreign_province' => :'String',
        :'country_code' => :'String',
        :'validation_errors' => :'Array<ValidationError>',
        :'created_at' => :'Time',
        :'updated_at' => :'Time',
        :'state_and_local_withholding' => :'StateAndLocalWithholding'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'payment_settlement_entity_name_phone_number',
        :'card_not_present_transactions',
        :'merchant_category_code',
        :'federal_income_tax_withheld',
        :'january',
        :'february',
        :'march',
        :'april',
        :'may',
        :'june',
        :'july',
        :'august',
        :'sept',
        :'october',
        :'november',
        :'december',
        :'issuer_reference_id',
        :'issuer_tin',
        :'state_efile_status',
        :'postal_mail_status',
        :'tin_match_status',
        :'address_verification_status',
        :'reference_id',
        :'email',
        :'tin_type',
        :'tin',
        :'recipient_name',
        :'recipient_second_name',
        :'address',
        :'address2',
        :'city',
        :'state',
        :'zip',
        :'foreign_province',
        :'country_code',
        :'validation_errors',
        :'state_and_local_withholding'
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'Form1099Base'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `AvalaraSdk::A1099::V2::Form1099K` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AvalaraSdk::A1099::V2::Form1099K`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'filer_type')
        self.filer_type = attributes[:'filer_type']
      end

      if attributes.key?(:'payment_type')
        self.payment_type = attributes[:'payment_type']
      end

      if attributes.key?(:'payment_settlement_entity_name_phone_number')
        self.payment_settlement_entity_name_phone_number = attributes[:'payment_settlement_entity_name_phone_number']
      end

      if attributes.key?(:'gross_amount_payment_card')
        self.gross_amount_payment_card = attributes[:'gross_amount_payment_card']
      end

      if attributes.key?(:'card_not_present_transactions')
        self.card_not_present_transactions = attributes[:'card_not_present_transactions']
      end

      if attributes.key?(:'merchant_category_code')
        self.merchant_category_code = attributes[:'merchant_category_code']
      end

      if attributes.key?(:'payment_transaction_number')
        self.payment_transaction_number = attributes[:'payment_transaction_number']
      end

      if attributes.key?(:'federal_income_tax_withheld')
        self.federal_income_tax_withheld = attributes[:'federal_income_tax_withheld']
      end

      if attributes.key?(:'january')
        self.january = attributes[:'january']
      end

      if attributes.key?(:'february')
        self.february = attributes[:'february']
      end

      if attributes.key?(:'march')
        self.march = attributes[:'march']
      end

      if attributes.key?(:'april')
        self.april = attributes[:'april']
      end

      if attributes.key?(:'may')
        self.may = attributes[:'may']
      end

      if attributes.key?(:'june')
        self.june = attributes[:'june']
      end

      if attributes.key?(:'july')
        self.july = attributes[:'july']
      end

      if attributes.key?(:'august')
        self.august = attributes[:'august']
      end

      if attributes.key?(:'sept')
        self.sept = attributes[:'sept']
      end

      if attributes.key?(:'october')
        self.october = attributes[:'october']
      end

      if attributes.key?(:'november')
        self.november = attributes[:'november']
      end

      if attributes.key?(:'december')
        self.december = attributes[:'december']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'issuer_id')
        self.issuer_id = attributes[:'issuer_id']
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
      end

      if attributes.key?(:'federal_efile_status')
        self.federal_efile_status = attributes[:'federal_efile_status']
      end

      if attributes.key?(:'state_efile')
        self.state_efile = attributes[:'state_efile']
      end

      if attributes.key?(:'state_efile_status')
        if (value = attributes[:'state_efile_status']).is_a?(Array)
          self.state_efile_status = value
        end
      end

      if attributes.key?(:'postal_mail')
        self.postal_mail = attributes[:'postal_mail']
      end

      if attributes.key?(:'postal_mail_status')
        self.postal_mail_status = attributes[:'postal_mail_status']
      end

      if attributes.key?(:'tin_match')
        self.tin_match = attributes[:'tin_match']
      end

      if attributes.key?(:'tin_match_status')
        self.tin_match_status = attributes[:'tin_match_status']
      end

      if attributes.key?(:'address_verification')
        self.address_verification = attributes[:'address_verification']
      end

      if attributes.key?(:'address_verification_status')
        self.address_verification_status = attributes[:'address_verification_status']
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

      if attributes.key?(:'foreign_province')
        self.foreign_province = attributes[:'foreign_province']
      end

      if attributes.key?(:'country_code')
        self.country_code = attributes[:'country_code']
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
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      filer_type_validator = EnumAttributeValidator.new('String', ["PSE", "EPF", "Other"])
      return false unless filer_type_validator.valid?(@filer_type)
      payment_type_validator = EnumAttributeValidator.new('String', ["MerchantPaymentCard", "ThirdPartyNetwork"])
      return false unless payment_type_validator.valid?(@payment_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] filer_type Object to be assigned
    def filer_type=(filer_type)
      validator = EnumAttributeValidator.new('String', ["PSE", "EPF", "Other"])
      unless validator.valid?(filer_type)
        fail ArgumentError, "invalid value for \"filer_type\", must be one of #{validator.allowable_values}."
      end
      @filer_type = filer_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_type Object to be assigned
    def payment_type=(payment_type)
      validator = EnumAttributeValidator.new('String', ["MerchantPaymentCard", "ThirdPartyNetwork"])
      unless validator.valid?(payment_type)
        fail ArgumentError, "invalid value for \"payment_type\", must be one of #{validator.allowable_values}."
      end
      @payment_type = payment_type
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
          filer_type == o.filer_type &&
          payment_type == o.payment_type &&
          payment_settlement_entity_name_phone_number == o.payment_settlement_entity_name_phone_number &&
          gross_amount_payment_card == o.gross_amount_payment_card &&
          card_not_present_transactions == o.card_not_present_transactions &&
          merchant_category_code == o.merchant_category_code &&
          payment_transaction_number == o.payment_transaction_number &&
          federal_income_tax_withheld == o.federal_income_tax_withheld &&
          january == o.january &&
          february == o.february &&
          march == o.march &&
          april == o.april &&
          may == o.may &&
          june == o.june &&
          july == o.july &&
          august == o.august &&
          sept == o.sept &&
          october == o.october &&
          november == o.november &&
          december == o.december &&
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
          reference_id == o.reference_id &&
          email == o.email &&
          tin_type == o.tin_type &&
          tin == o.tin &&
          recipient_name == o.recipient_name &&
          recipient_second_name == o.recipient_second_name &&
          address == o.address &&
          address2 == o.address2 &&
          city == o.city &&
          state == o.state &&
          zip == o.zip &&
          foreign_province == o.foreign_province &&
          country_code == o.country_code &&
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
      [filer_type, payment_type, payment_settlement_entity_name_phone_number, gross_amount_payment_card, card_not_present_transactions, merchant_category_code, payment_transaction_number, federal_income_tax_withheld, january, february, march, april, may, june, july, august, sept, october, november, december, id, type, issuer_id, issuer_reference_id, issuer_tin, tax_year, federal_efile, federal_efile_status, state_efile, state_efile_status, postal_mail, postal_mail_status, tin_match, tin_match_status, address_verification, address_verification_status, reference_id, email, tin_type, tin, recipient_name, recipient_second_name, address, address2, city, state, zip, foreign_province, country_code, validation_errors, created_at, updated_at, state_and_local_withholding].hash
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
