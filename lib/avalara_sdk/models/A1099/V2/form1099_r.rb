=begin
#Avalara 1099 & W-9 API Definition

### 🔐 Authentication  Use **username/password** or generate a **license key** from: *Avalara Portal → Settings → License and API Keys*.  [More on authentication methods](https://developer.avalara.com/avatax-dm-combined-erp/common-setup/authentication/authentication-methods/)  [Test your credentials](https://developer.avalara.com/avatax/test-credentials/)  ## 📘 API & SDK Documentation  [Avalara SDK (.NET) on GitHub](https://github.com/avadev/Avalara-SDK-DotNet#avalarasdk--the-unified-c-library-for-next-gen-avalara-services)  [Code Examples – 1099 API](https://github.com/avadev/Avalara-SDK-DotNet/blob/main/docs/A1099/V2/Class1099IssuersApi.md#call1099issuersget)


=end

require 'date'
require 'time'

module AvalaraSdk::A1099::V2
      class Form1099R
    attr_accessor :gross_distributions

    attr_accessor :taxable_amount

    attr_accessor :taxable_amount_not_determined

    attr_accessor :total_distribution_indicator

    attr_accessor :capital_gain

    attr_accessor :fed_income_tax_withheld

    attr_accessor :employee_contributions

    attr_accessor :net_unrealized_appreciation

    attr_accessor :distribution_code_required

    attr_accessor :distribution_code_optional

    attr_accessor :ira_sep_simple_indicator

    attr_accessor :total_ira_sep_simple_distribution

    attr_accessor :other

    attr_accessor :other_percent

    attr_accessor :percentage_total_distribution

    attr_accessor :total_employee_contributions

    attr_accessor :amount_allocable_to_irr

    attr_accessor :first_year_designated_roth_contrib

    attr_accessor :fatca_requirement_indicator

    attr_accessor :date_of_payment

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

    attr_accessor :type_of_tin

    attr_accessor :tin

    attr_accessor :first_payee_name

    attr_accessor :second_payee_name

    attr_accessor :address

    attr_accessor :address_recipient_second

    attr_accessor :city

    attr_accessor :state

    attr_accessor :zip

    attr_accessor :foreign_province

    attr_accessor :country_code

    attr_accessor :validation_errors

    attr_accessor :created_at

    attr_accessor :updated_at

    attr_accessor :state_and_local_withholding

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'gross_distributions' => :'grossDistributions',
        :'taxable_amount' => :'taxableAmount',
        :'taxable_amount_not_determined' => :'taxableAmountNotDetermined',
        :'total_distribution_indicator' => :'totalDistributionIndicator',
        :'capital_gain' => :'capitalGain',
        :'fed_income_tax_withheld' => :'fedIncomeTaxWithheld',
        :'employee_contributions' => :'employeeContributions',
        :'net_unrealized_appreciation' => :'netUnrealizedAppreciation',
        :'distribution_code_required' => :'distributionCodeRequired',
        :'distribution_code_optional' => :'distributionCodeOptional',
        :'ira_sep_simple_indicator' => :'iraSepSimpleIndicator',
        :'total_ira_sep_simple_distribution' => :'totalIraSepSimpleDistribution',
        :'other' => :'other',
        :'other_percent' => :'otherPercent',
        :'percentage_total_distribution' => :'percentageTotalDistribution',
        :'total_employee_contributions' => :'totalEmployeeContributions',
        :'amount_allocable_to_irr' => :'amountAllocableToIrr',
        :'first_year_designated_roth_contrib' => :'firstYearDesignatedRothContrib',
        :'fatca_requirement_indicator' => :'fatcaRequirementIndicator',
        :'date_of_payment' => :'dateOfPayment',
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
        :'type_of_tin' => :'typeOfTin',
        :'tin' => :'tin',
        :'first_payee_name' => :'firstPayeeName',
        :'second_payee_name' => :'secondPayeeName',
        :'address' => :'address',
        :'address_recipient_second' => :'addressRecipientSecond',
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
        :'gross_distributions' => :'Float',
        :'taxable_amount' => :'Float',
        :'taxable_amount_not_determined' => :'Boolean',
        :'total_distribution_indicator' => :'Boolean',
        :'capital_gain' => :'Float',
        :'fed_income_tax_withheld' => :'Float',
        :'employee_contributions' => :'Float',
        :'net_unrealized_appreciation' => :'Float',
        :'distribution_code_required' => :'String',
        :'distribution_code_optional' => :'String',
        :'ira_sep_simple_indicator' => :'Boolean',
        :'total_ira_sep_simple_distribution' => :'Float',
        :'other' => :'Float',
        :'other_percent' => :'String',
        :'percentage_total_distribution' => :'String',
        :'total_employee_contributions' => :'Float',
        :'amount_allocable_to_irr' => :'Float',
        :'first_year_designated_roth_contrib' => :'String',
        :'fatca_requirement_indicator' => :'Boolean',
        :'date_of_payment' => :'String',
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
        :'type_of_tin' => :'String',
        :'tin' => :'String',
        :'first_payee_name' => :'String',
        :'second_payee_name' => :'String',
        :'address' => :'String',
        :'address_recipient_second' => :'String',
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
        :'gross_distributions',
        :'taxable_amount',
        :'taxable_amount_not_determined',
        :'total_distribution_indicator',
        :'capital_gain',
        :'fed_income_tax_withheld',
        :'employee_contributions',
        :'net_unrealized_appreciation',
        :'distribution_code_required',
        :'distribution_code_optional',
        :'ira_sep_simple_indicator',
        :'total_ira_sep_simple_distribution',
        :'other',
        :'other_percent',
        :'percentage_total_distribution',
        :'total_employee_contributions',
        :'amount_allocable_to_irr',
        :'first_year_designated_roth_contrib',
        :'fatca_requirement_indicator',
        :'date_of_payment',
        :'issuer_reference_id',
        :'issuer_tin',
        :'state_efile_status',
        :'postal_mail_status',
        :'tin_match_status',
        :'address_verification_status',
        :'reference_id',
        :'email',
        :'type_of_tin',
        :'tin',
        :'first_payee_name',
        :'second_payee_name',
        :'address',
        :'address_recipient_second',
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `AvalaraSdk::A1099::V2::Form1099R` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AvalaraSdk::A1099::V2::Form1099R`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'gross_distributions')
        self.gross_distributions = attributes[:'gross_distributions']
      end

      if attributes.key?(:'taxable_amount')
        self.taxable_amount = attributes[:'taxable_amount']
      end

      if attributes.key?(:'taxable_amount_not_determined')
        self.taxable_amount_not_determined = attributes[:'taxable_amount_not_determined']
      end

      if attributes.key?(:'total_distribution_indicator')
        self.total_distribution_indicator = attributes[:'total_distribution_indicator']
      end

      if attributes.key?(:'capital_gain')
        self.capital_gain = attributes[:'capital_gain']
      end

      if attributes.key?(:'fed_income_tax_withheld')
        self.fed_income_tax_withheld = attributes[:'fed_income_tax_withheld']
      end

      if attributes.key?(:'employee_contributions')
        self.employee_contributions = attributes[:'employee_contributions']
      end

      if attributes.key?(:'net_unrealized_appreciation')
        self.net_unrealized_appreciation = attributes[:'net_unrealized_appreciation']
      end

      if attributes.key?(:'distribution_code_required')
        self.distribution_code_required = attributes[:'distribution_code_required']
      end

      if attributes.key?(:'distribution_code_optional')
        self.distribution_code_optional = attributes[:'distribution_code_optional']
      end

      if attributes.key?(:'ira_sep_simple_indicator')
        self.ira_sep_simple_indicator = attributes[:'ira_sep_simple_indicator']
      end

      if attributes.key?(:'total_ira_sep_simple_distribution')
        self.total_ira_sep_simple_distribution = attributes[:'total_ira_sep_simple_distribution']
      end

      if attributes.key?(:'other')
        self.other = attributes[:'other']
      end

      if attributes.key?(:'other_percent')
        self.other_percent = attributes[:'other_percent']
      end

      if attributes.key?(:'percentage_total_distribution')
        self.percentage_total_distribution = attributes[:'percentage_total_distribution']
      end

      if attributes.key?(:'total_employee_contributions')
        self.total_employee_contributions = attributes[:'total_employee_contributions']
      end

      if attributes.key?(:'amount_allocable_to_irr')
        self.amount_allocable_to_irr = attributes[:'amount_allocable_to_irr']
      end

      if attributes.key?(:'first_year_designated_roth_contrib')
        self.first_year_designated_roth_contrib = attributes[:'first_year_designated_roth_contrib']
      end

      if attributes.key?(:'fatca_requirement_indicator')
        self.fatca_requirement_indicator = attributes[:'fatca_requirement_indicator']
      end

      if attributes.key?(:'date_of_payment')
        self.date_of_payment = attributes[:'date_of_payment']
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

      if attributes.key?(:'type_of_tin')
        self.type_of_tin = attributes[:'type_of_tin']
      end

      if attributes.key?(:'tin')
        self.tin = attributes[:'tin']
      end

      if attributes.key?(:'first_payee_name')
        self.first_payee_name = attributes[:'first_payee_name']
      end

      if attributes.key?(:'second_payee_name')
        self.second_payee_name = attributes[:'second_payee_name']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'address_recipient_second')
        self.address_recipient_second = attributes[:'address_recipient_second']
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
      true
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
          gross_distributions == o.gross_distributions &&
          taxable_amount == o.taxable_amount &&
          taxable_amount_not_determined == o.taxable_amount_not_determined &&
          total_distribution_indicator == o.total_distribution_indicator &&
          capital_gain == o.capital_gain &&
          fed_income_tax_withheld == o.fed_income_tax_withheld &&
          employee_contributions == o.employee_contributions &&
          net_unrealized_appreciation == o.net_unrealized_appreciation &&
          distribution_code_required == o.distribution_code_required &&
          distribution_code_optional == o.distribution_code_optional &&
          ira_sep_simple_indicator == o.ira_sep_simple_indicator &&
          total_ira_sep_simple_distribution == o.total_ira_sep_simple_distribution &&
          other == o.other &&
          other_percent == o.other_percent &&
          percentage_total_distribution == o.percentage_total_distribution &&
          total_employee_contributions == o.total_employee_contributions &&
          amount_allocable_to_irr == o.amount_allocable_to_irr &&
          first_year_designated_roth_contrib == o.first_year_designated_roth_contrib &&
          fatca_requirement_indicator == o.fatca_requirement_indicator &&
          date_of_payment == o.date_of_payment &&
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
          type_of_tin == o.type_of_tin &&
          tin == o.tin &&
          first_payee_name == o.first_payee_name &&
          second_payee_name == o.second_payee_name &&
          address == o.address &&
          address_recipient_second == o.address_recipient_second &&
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
      [gross_distributions, taxable_amount, taxable_amount_not_determined, total_distribution_indicator, capital_gain, fed_income_tax_withheld, employee_contributions, net_unrealized_appreciation, distribution_code_required, distribution_code_optional, ira_sep_simple_indicator, total_ira_sep_simple_distribution, other, other_percent, percentage_total_distribution, total_employee_contributions, amount_allocable_to_irr, first_year_designated_roth_contrib, fatca_requirement_indicator, date_of_payment, id, type, issuer_id, issuer_reference_id, issuer_tin, tax_year, federal_efile, federal_efile_status, state_efile, state_efile_status, postal_mail, postal_mail_status, tin_match, tin_match_status, address_verification, address_verification_status, reference_id, email, type_of_tin, tin, first_payee_name, second_payee_name, address, address_recipient_second, city, state, zip, foreign_province, country_code, validation_errors, created_at, updated_at, state_and_local_withholding].hash
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
