=begin
#Avalara 1099 & W-9 API Definition

#> **Note:** You must have an active Avalara 1099 & W-9 subscription to authenticate and use these APIs. If you don't have a subscription, please contact our [Sales team](https://www.avalara.com/us/en/products/1099/request-a-demo.html).  ## Authentication  The Avalara 1099 & W-9 API uses **Bearer Token Authentication**. To authenticate, acquire a bearer token using a **Client ID** and **Client Secret** that you generate in the Avalara 1099 & W-9 web application.  The sample cURL commands below use **production** URLs. For **sandbox**, replace them with the sandbox URLs listed in the Sandbox Environment table.  ### Option 1 — Client ID and Client Secret (recommended)  **Step 1: Create API credentials in the Avalara 1099 & W-9 web app**  For a full walkthrough, see the [Avalara 1099 & W-9 integration guide](https://developer.avalara.com/products/avalara-1099-and-w9/integration-guides/1099-and-w-9/siu2796410674799/).  > **Note:** To enable credential creation you must first enter a valid company address in **Account Settings > Account** and enable two-factor authentication in **Account Settings > Security**.  1. In Avalara 1099 & W-9, open **Account Settings** (gear icon, top-right of any page) and select **API**. 2. Click **Create new credentials** (a valid company address and 2FA are required). 3. Copy your **Client Id** and **Client Secret** securely — they will not be shown again after you leave the screen.  **Step 2: Request a bearer token**  ```bash curl -X POST 'https://identity.avalara.com/connect/token' \\   --header 'Content-Type: application/x-www-form-urlencoded' \\   --data-urlencode 'grant_type=client_credentials' \\   --data-urlencode 'client_id={{client_id}}' \\   --data-urlencode 'client_secret={{client_secret}}' ```  ### Option 2 — Account ID and License Key  If your organization already uses other Avalara products (AvaTax, CertCapture) and has access to the logged-in area of Avalara.com, you can generate the bearer token using your **Account ID** and **License Key**.  > **Note:** If you already have a license key for other Avalara products you can reuse it. Generating a new key will reset any previously created key.  1. Log in to Avalara.com. 2. Go to **Settings → License and API Keys**. 3. Click **Generate New Key**. 4. Note your **Account ID** from the Account menu.  ```bash curl -X POST 'https://identity.avalara.com/connect/token' \\   --header 'Content-Type: application/x-www-form-urlencoded' \\   --data-urlencode 'grant_type=client_credentials' \\   --data-urlencode 'client_id={{accountId}}' \\   --data-urlencode 'client_secret={{licenseKey}}' ```  ### Using and renewing the bearer token  Include the token in the `Authorization` header on every request:  ```http Authorization: Bearer {access_token} ```  Tokens expire after the number of seconds in the `expires_in` field of the token response. Your integration must renew the token before it expires.  **Example token response**  ```json {   \"access_token\": \"eyJhbGciOiJIUzI1NiIsInR5cCI...\",   \"expires_in\": 3600,   \"token_type\": \"Bearer\",   \"scope\": \"avatax_api iam-ds\" } ```  ### Sandbox Environment  Use the same steps as production, replacing the base URLs:  | Purpose | Production | Sandbox | | --- | --- | --- | | Account & License Key management (web) | `https://www.avalara.com` | `https://sandbox.admin.avalara.com` | | Account & License Key management (API) | `https://rest.avatax.com` | `https://sandbox-rest.avatax.com` | | Token generation | `https://identity.avalara.com` | `https://ai-sbx.avlr.sh` |  ## Environments  #### Production - **Avalara 1099 API URL:** [`https://api.avalara.com/avalara1099`](https://api.avalara.com/avalara1099) - **Identity Token URL:** [`https://identity.avalara.com/connect/token`](https://identity.avalara.com/connect/token)  #### Sandbox - **Avalara 1099 API URL:** [`https://api.sbx.avalara.com/avalara1099`](https://api.sbx.avalara.com/avalara1099) - **Identity Token URL:** [`https://ai-sbx.avlr.sh/connect/token`](https://ai-sbx.avlr.sh/connect/token)  ---  ## API & SDK Documentation  [Avalara 1099 API Reference](https://developer.avalara.com/api-reference/avalara1099/avalara1099/)  [Avalara SDKs](https://developer.avalara.com/sdk/)  [Swagger](https://api.avalara.com/avalara1099/swagger/index.html?api-version=2.0)


=end

require 'date'
require 'time'

module AvalaraSdk::A1099::V2
      class W8BenFormRequest
    # The form type (always \"w8ben\" for this model).
    attr_accessor :type

    # The name of the individual or entity associated with the form.
    attr_accessor :name

    # The country of citizenship.. Allowed values: US, AF, AX, AL, AG, AQ, AN, AO, AV, AY (and 248 more)
    attr_accessor :citizenship_country

    # The residential address of the individual or entity.
    attr_accessor :residence_address

    # The city of residence.
    attr_accessor :residence_city

    # The state of residence. Required for US and Canada.. Allowed values: AA, AE, AK, AL, AP, AR, AS, AZ, CA, CO (and 65 more)
    attr_accessor :residence_state

    # The ZIP code of the residence.
    attr_accessor :residence_zip

    # The country of residence.. Allowed values: US, AF, AX, AL, AG, AQ, AN, AO, AV, AY (and 248 more)
    attr_accessor :residence_country

    # Indicates whether the residence address is the mailing address.
    attr_accessor :residence_is_mailing

    # The mailing address.
    attr_accessor :mailing_address

    # The city of the mailing address.
    attr_accessor :mailing_city

    # The state of the mailing address. Required for US and Canada.. Allowed values: AA, AE, AK, AL, AP, AR, AS, AZ, CA, CO (and 65 more)
    attr_accessor :mailing_state

    # The ZIP code of the mailing address.
    attr_accessor :mailing_zip

    # The country of the mailing address.. Allowed values: US, AF, AX, AL, AG, AQ, AN, AO, AV, AY (and 248 more)
    attr_accessor :mailing_country

    # The taxpayer identification number (TIN).
    attr_accessor :tin

    # Indicates whether a foreign TIN is not legally required.
    attr_accessor :foreign_tin_not_required

    # The foreign taxpayer identification number (TIN).
    attr_accessor :foreign_tin

    # A reference number for the form.
    attr_accessor :reference_number

    # The birthday of the individual associated with the form.
    attr_accessor :birthday

    # The country for which the treaty applies.. Allowed values: US, AF, AX, AL, AG, AQ, AN, AO, AV, AY (and 248 more)
    attr_accessor :treaty_country

    # The specific article of the treaty being claimed.
    attr_accessor :treaty_article

    # The reasons for claiming treaty benefits.
    attr_accessor :treaty_reasons

    # The withholding rate applied as per the treaty. Must be a percentage with up to two decimals (e.g., 12.50, 0).. Allowed values: 0, 0.0, 0.00, 5, 5.5, 10, 12.50, 15, 20, 25 (and 1 more)
    attr_accessor :withholding_rate

    # The type of income covered by the treaty.
    attr_accessor :income_type

    # The name of the signer of the form.
    attr_accessor :signer_name

    # The ID of the associated company. Required when creating a form.
    attr_accessor :company_id

    # A reference identifier for the form.
    attr_accessor :reference_id

    # The email address of the individual associated with the form.
    attr_accessor :email

    # The date when e-delivery was consented.
    attr_accessor :e_delivery_consented_at

    # The signature of the form.
    attr_accessor :signature

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
        :'type' => :'type',
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
        :'company_id' => :'companyId',
        :'reference_id' => :'referenceId',
        :'email' => :'email',
        :'e_delivery_consented_at' => :'eDeliveryConsentedAt',
        :'signature' => :'signature'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'type' => :'String',
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
        :'company_id' => :'String',
        :'reference_id' => :'String',
        :'email' => :'String',
        :'e_delivery_consented_at' => :'Time',
        :'signature' => :'String'
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
        :'tin',
        :'foreign_tin',
        :'reference_number',
        :'birthday',
        :'treaty_article',
        :'treaty_reasons',
        :'withholding_rate',
        :'income_type',
        :'signer_name',
        :'reference_id',
        :'email',
        :'e_delivery_consented_at',
        :'signature'
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'W9FormBaseRequest'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `AvalaraSdk::A1099::V2::W8BenFormRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AvalaraSdk::A1099::V2::W8BenFormRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'citizenship_country')
        self.citizenship_country = attributes[:'citizenship_country']
      else
        self.citizenship_country = nil
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
      else
        self.residence_country = nil
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
      else
        self.mailing_country = nil
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

      if attributes.key?(:'company_id')
        self.company_id = attributes[:'company_id']
      end

      if attributes.key?(:'reference_id')
        self.reference_id = attributes[:'reference_id']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'e_delivery_consented_at')
        self.e_delivery_consented_at = attributes[:'e_delivery_consented_at']
      end

      if attributes.key?(:'signature')
        self.signature = attributes[:'signature']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @citizenship_country.nil?
        invalid_properties.push('invalid value for "citizenship_country", citizenship_country cannot be nil.')
      end

      if @residence_country.nil?
        invalid_properties.push('invalid value for "residence_country", residence_country cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      type_validator = EnumAttributeValidator.new('String', ["W4", "W8Ben", "W8BenE", "W8Imy", "W9"])
      return false unless type_validator.valid?(@type)
      return false if @name.nil?
      return false if @citizenship_country.nil?
      citizenship_country_validator = EnumAttributeValidator.new('String', ["US", "AF", "AX", "AL", "AG", "AQ", "AN", "AO", "AV", "AY", "AC", "AR", "AM", "AA", "AT", "AS", "AU", "AJ", "BF", "BA", "FQ", "BG", "BB", "BO", "BE", "BH", "BN", "BD", "BT", "BL", "BK", "BC", "BV", "BR", "IO", "VI", "BX", "BU", "UV", "BM", "BY", "CB", "CM", "CA", "CV", "CJ", "CT", "CD", "CI", "CH", "KT", "IP", "CK", "CO", "CN", "CF", "CG", "CW", "CR", "CS", "IV", "HR", "CU", "UC", "CY", "EZ", "DA", "DX", "DJ", "DO", "DR", "TT", "EC", "EG", "ES", "EK", "ER", "EN", "ET", "FK", "FO", "FM", "FJ", "FI", "FR", "FP", "FS", "GB", "GA", "GG", "GM", "GH", "GI", "GR", "GL", "GJ", "GQ", "GT", "GK", "GV", "PU", "GY", "HA", "HM", "VT", "HO", "HK", "HQ", "HU", "IC", "IN", "ID", "IR", "IZ", "EI", "IS", "IT", "JM", "JN", "JA", "DQ", "JE", "JQ", "JO", "KZ", "KE", "KQ", "KR", "KN", "KS", "KV", "KU", "KG", "LA", "LG", "LE", "LT", "LI", "LY", "LS", "LH", "LU", "MC", "MK", "MA", "MI", "MY", "MV", "ML", "MT", "IM", "RM", "MR", "MP", "MX", "MQ", "MD", "MN", "MG", "MJ", "MH", "MO", "MZ", "WA", "NR", "BQ", "NP", "NL", "NC", "NZ", "NU", "NG", "NI", "NE", "NF", "CQ", "NO", "MU", "OC", "PK", "PS", "LQ", "PM", "PP", "PF", "PA", "PE", "RP", "PC", "PL", "PO", "RQ", "QA", "RO", "RS", "RW", "TB", "RN", "WS", "SM", "TP", "SA", "SG", "RI", "SE", "SL", "SN", "NN", "LO", "SI", "BP", "SO", "SF", "SX", "SP", "PG", "CE", "SH", "SC", "ST", "SB", "VC", "SU", "NS", "SV", "WZ", "SW", "SZ", "SY", "TW", "TI", "TZ", "TH", "TO", "TL", "TN", "TD", "TS", "TU", "TX", "TK", "TV", "UG", "UP", "AE", "UK", "UY", "UZ", "NH", "VE", "VM", "VQ", "WQ", "WF", "WI", "YM", "ZA", "ZI"])
      return false unless citizenship_country_validator.valid?(@citizenship_country)
      residence_state_validator = EnumAttributeValidator.new('String', ["AA", "AE", "AK", "AL", "AP", "AR", "AS", "AZ", "CA", "CO", "CT", "DC", "DE", "FL", "FM", "GA", "GU", "HI", "IA", "ID", "IL", "IN", "KS", "KY", "LA", "MA", "MD", "ME", "MH", "MI", "MN", "MO", "MP", "MS", "MT", "NC", "ND", "NE", "NH", "NJ", "NM", "NV", "NY", "OH", "OK", "OR", "PA", "PR", "PW", "RI", "SC", "SD", "TN", "TX", "UT", "VA", "VI", "VT", "WA", "WI", "WV", "WY", "AB", "BC", "MB", "NB", "NL", "NS", "NT", "NU", "ON", "PE", "QC", "SK", "YT"])
      return false unless residence_state_validator.valid?(@residence_state)
      return false if @residence_country.nil?
      residence_country_validator = EnumAttributeValidator.new('String', ["US", "AF", "AX", "AL", "AG", "AQ", "AN", "AO", "AV", "AY", "AC", "AR", "AM", "AA", "AT", "AS", "AU", "AJ", "BF", "BA", "FQ", "BG", "BB", "BO", "BE", "BH", "BN", "BD", "BT", "BL", "BK", "BC", "BV", "BR", "IO", "VI", "BX", "BU", "UV", "BM", "BY", "CB", "CM", "CA", "CV", "CJ", "CT", "CD", "CI", "CH", "KT", "IP", "CK", "CO", "CN", "CF", "CG", "CW", "CR", "CS", "IV", "HR", "CU", "UC", "CY", "EZ", "DA", "DX", "DJ", "DO", "DR", "TT", "EC", "EG", "ES", "EK", "ER", "EN", "ET", "FK", "FO", "FM", "FJ", "FI", "FR", "FP", "FS", "GB", "GA", "GG", "GM", "GH", "GI", "GR", "GL", "GJ", "GQ", "GT", "GK", "GV", "PU", "GY", "HA", "HM", "VT", "HO", "HK", "HQ", "HU", "IC", "IN", "ID", "IR", "IZ", "EI", "IS", "IT", "JM", "JN", "JA", "DQ", "JE", "JQ", "JO", "KZ", "KE", "KQ", "KR", "KN", "KS", "KV", "KU", "KG", "LA", "LG", "LE", "LT", "LI", "LY", "LS", "LH", "LU", "MC", "MK", "MA", "MI", "MY", "MV", "ML", "MT", "IM", "RM", "MR", "MP", "MX", "MQ", "MD", "MN", "MG", "MJ", "MH", "MO", "MZ", "WA", "NR", "BQ", "NP", "NL", "NC", "NZ", "NU", "NG", "NI", "NE", "NF", "CQ", "NO", "MU", "OC", "PK", "PS", "LQ", "PM", "PP", "PF", "PA", "PE", "RP", "PC", "PL", "PO", "RQ", "QA", "RO", "RS", "RW", "TB", "RN", "WS", "SM", "TP", "SA", "SG", "RI", "SE", "SL", "SN", "NN", "LO", "SI", "BP", "SO", "SF", "SX", "SP", "PG", "CE", "SH", "SC", "ST", "SB", "VC", "SU", "NS", "SV", "WZ", "SW", "SZ", "SY", "TW", "TI", "TZ", "TH", "TO", "TL", "TN", "TD", "TS", "TU", "TX", "TK", "TV", "UG", "UP", "AE", "UK", "UY", "UZ", "NH", "VE", "VM", "VQ", "WQ", "WF", "WI", "YM", "ZA", "ZI"])
      return false unless residence_country_validator.valid?(@residence_country)
      mailing_state_validator = EnumAttributeValidator.new('String', ["AA", "AE", "AK", "AL", "AP", "AR", "AS", "AZ", "CA", "CO", "CT", "DC", "DE", "FL", "FM", "GA", "GU", "HI", "IA", "ID", "IL", "IN", "KS", "KY", "LA", "MA", "MD", "ME", "MH", "MI", "MN", "MO", "MP", "MS", "MT", "NC", "ND", "NE", "NH", "NJ", "NM", "NV", "NY", "OH", "OK", "OR", "PA", "PR", "PW", "RI", "SC", "SD", "TN", "TX", "UT", "VA", "VI", "VT", "WA", "WI", "WV", "WY", "AB", "BC", "MB", "NB", "NL", "NS", "NT", "NU", "ON", "PE", "QC", "SK", "YT"])
      return false unless mailing_state_validator.valid?(@mailing_state)
      mailing_country_validator = EnumAttributeValidator.new('String', ["US", "AF", "AX", "AL", "AG", "AQ", "AN", "AO", "AV", "AY", "AC", "AR", "AM", "AA", "AT", "AS", "AU", "AJ", "BF", "BA", "FQ", "BG", "BB", "BO", "BE", "BH", "BN", "BD", "BT", "BL", "BK", "BC", "BV", "BR", "IO", "VI", "BX", "BU", "UV", "BM", "BY", "CB", "CM", "CA", "CV", "CJ", "CT", "CD", "CI", "CH", "KT", "IP", "CK", "CO", "CN", "CF", "CG", "CW", "CR", "CS", "IV", "HR", "CU", "UC", "CY", "EZ", "DA", "DX", "DJ", "DO", "DR", "TT", "EC", "EG", "ES", "EK", "ER", "EN", "ET", "FK", "FO", "FM", "FJ", "FI", "FR", "FP", "FS", "GB", "GA", "GG", "GM", "GH", "GI", "GR", "GL", "GJ", "GQ", "GT", "GK", "GV", "PU", "GY", "HA", "HM", "VT", "HO", "HK", "HQ", "HU", "IC", "IN", "ID", "IR", "IZ", "EI", "IS", "IT", "JM", "JN", "JA", "DQ", "JE", "JQ", "JO", "KZ", "KE", "KQ", "KR", "KN", "KS", "KV", "KU", "KG", "LA", "LG", "LE", "LT", "LI", "LY", "LS", "LH", "LU", "MC", "MK", "MA", "MI", "MY", "MV", "ML", "MT", "IM", "RM", "MR", "MP", "MX", "MQ", "MD", "MN", "MG", "MJ", "MH", "MO", "MZ", "WA", "NR", "BQ", "NP", "NL", "NC", "NZ", "NU", "NG", "NI", "NE", "NF", "CQ", "NO", "MU", "OC", "PK", "PS", "LQ", "PM", "PP", "PF", "PA", "PE", "RP", "PC", "PL", "PO", "RQ", "QA", "RO", "RS", "RW", "TB", "RN", "WS", "SM", "TP", "SA", "SG", "RI", "SE", "SL", "SN", "NN", "LO", "SI", "BP", "SO", "SF", "SX", "SP", "PG", "CE", "SH", "SC", "ST", "SB", "VC", "SU", "NS", "SV", "WZ", "SW", "SZ", "SY", "TW", "TI", "TZ", "TH", "TO", "TL", "TN", "TD", "TS", "TU", "TX", "TK", "TV", "UG", "UP", "AE", "UK", "UY", "UZ", "NH", "VE", "VM", "VQ", "WQ", "WF", "WI", "YM", "ZA", "ZI"])
      return false unless mailing_country_validator.valid?(@mailing_country)
      treaty_country_validator = EnumAttributeValidator.new('String', ["US", "AF", "AX", "AL", "AG", "AQ", "AN", "AO", "AV", "AY", "AC", "AR", "AM", "AA", "AT", "AS", "AU", "AJ", "BF", "BA", "FQ", "BG", "BB", "BO", "BE", "BH", "BN", "BD", "BT", "BL", "BK", "BC", "BV", "BR", "IO", "VI", "BX", "BU", "UV", "BM", "BY", "CB", "CM", "CA", "CV", "CJ", "CT", "CD", "CI", "CH", "KT", "IP", "CK", "CO", "CN", "CF", "CG", "CW", "CR", "CS", "IV", "HR", "CU", "UC", "CY", "EZ", "DA", "DX", "DJ", "DO", "DR", "TT", "EC", "EG", "ES", "EK", "ER", "EN", "ET", "FK", "FO", "FM", "FJ", "FI", "FR", "FP", "FS", "GB", "GA", "GG", "GM", "GH", "GI", "GR", "GL", "GJ", "GQ", "GT", "GK", "GV", "PU", "GY", "HA", "HM", "VT", "HO", "HK", "HQ", "HU", "IC", "IN", "ID", "IR", "IZ", "EI", "IS", "IT", "JM", "JN", "JA", "DQ", "JE", "JQ", "JO", "KZ", "KE", "KQ", "KR", "KN", "KS", "KV", "KU", "KG", "LA", "LG", "LE", "LT", "LI", "LY", "LS", "LH", "LU", "MC", "MK", "MA", "MI", "MY", "MV", "ML", "MT", "IM", "RM", "MR", "MP", "MX", "MQ", "MD", "MN", "MG", "MJ", "MH", "MO", "MZ", "WA", "NR", "BQ", "NP", "NL", "NC", "NZ", "NU", "NG", "NI", "NE", "NF", "CQ", "NO", "MU", "OC", "PK", "PS", "LQ", "PM", "PP", "PF", "PA", "PE", "RP", "PC", "PL", "PO", "RQ", "QA", "RO", "RS", "RW", "TB", "RN", "WS", "SM", "TP", "SA", "SG", "RI", "SE", "SL", "SN", "NN", "LO", "SI", "BP", "SO", "SF", "SX", "SP", "PG", "CE", "SH", "SC", "ST", "SB", "VC", "SU", "NS", "SV", "WZ", "SW", "SZ", "SY", "TW", "TI", "TZ", "TH", "TO", "TL", "TN", "TD", "TS", "TU", "TX", "TK", "TV", "UG", "UP", "AE", "UK", "UY", "UZ", "NH", "VE", "VM", "VQ", "WQ", "WF", "WI", "YM", "ZA", "ZI"])
      return false unless treaty_country_validator.valid?(@treaty_country)
      withholding_rate_validator = EnumAttributeValidator.new('String', ["0", "0.0", "0.00", "5", "5.5", "10", "12.50", "15", "20", "25", "30"])
      return false unless withholding_rate_validator.valid?(@withholding_rate)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["W4", "W8Ben", "W8BenE", "W8Imy", "W9"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] citizenship_country Object to be assigned
    def citizenship_country=(citizenship_country)
      validator = EnumAttributeValidator.new('String', ["US", "AF", "AX", "AL", "AG", "AQ", "AN", "AO", "AV", "AY", "AC", "AR", "AM", "AA", "AT", "AS", "AU", "AJ", "BF", "BA", "FQ", "BG", "BB", "BO", "BE", "BH", "BN", "BD", "BT", "BL", "BK", "BC", "BV", "BR", "IO", "VI", "BX", "BU", "UV", "BM", "BY", "CB", "CM", "CA", "CV", "CJ", "CT", "CD", "CI", "CH", "KT", "IP", "CK", "CO", "CN", "CF", "CG", "CW", "CR", "CS", "IV", "HR", "CU", "UC", "CY", "EZ", "DA", "DX", "DJ", "DO", "DR", "TT", "EC", "EG", "ES", "EK", "ER", "EN", "ET", "FK", "FO", "FM", "FJ", "FI", "FR", "FP", "FS", "GB", "GA", "GG", "GM", "GH", "GI", "GR", "GL", "GJ", "GQ", "GT", "GK", "GV", "PU", "GY", "HA", "HM", "VT", "HO", "HK", "HQ", "HU", "IC", "IN", "ID", "IR", "IZ", "EI", "IS", "IT", "JM", "JN", "JA", "DQ", "JE", "JQ", "JO", "KZ", "KE", "KQ", "KR", "KN", "KS", "KV", "KU", "KG", "LA", "LG", "LE", "LT", "LI", "LY", "LS", "LH", "LU", "MC", "MK", "MA", "MI", "MY", "MV", "ML", "MT", "IM", "RM", "MR", "MP", "MX", "MQ", "MD", "MN", "MG", "MJ", "MH", "MO", "MZ", "WA", "NR", "BQ", "NP", "NL", "NC", "NZ", "NU", "NG", "NI", "NE", "NF", "CQ", "NO", "MU", "OC", "PK", "PS", "LQ", "PM", "PP", "PF", "PA", "PE", "RP", "PC", "PL", "PO", "RQ", "QA", "RO", "RS", "RW", "TB", "RN", "WS", "SM", "TP", "SA", "SG", "RI", "SE", "SL", "SN", "NN", "LO", "SI", "BP", "SO", "SF", "SX", "SP", "PG", "CE", "SH", "SC", "ST", "SB", "VC", "SU", "NS", "SV", "WZ", "SW", "SZ", "SY", "TW", "TI", "TZ", "TH", "TO", "TL", "TN", "TD", "TS", "TU", "TX", "TK", "TV", "UG", "UP", "AE", "UK", "UY", "UZ", "NH", "VE", "VM", "VQ", "WQ", "WF", "WI", "YM", "ZA", "ZI"])
      unless validator.valid?(citizenship_country)
        fail ArgumentError, "invalid value for \"citizenship_country\", must be one of #{validator.allowable_values}."
      end
      @citizenship_country = citizenship_country
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] residence_state Object to be assigned
    def residence_state=(residence_state)
      validator = EnumAttributeValidator.new('String', ["AA", "AE", "AK", "AL", "AP", "AR", "AS", "AZ", "CA", "CO", "CT", "DC", "DE", "FL", "FM", "GA", "GU", "HI", "IA", "ID", "IL", "IN", "KS", "KY", "LA", "MA", "MD", "ME", "MH", "MI", "MN", "MO", "MP", "MS", "MT", "NC", "ND", "NE", "NH", "NJ", "NM", "NV", "NY", "OH", "OK", "OR", "PA", "PR", "PW", "RI", "SC", "SD", "TN", "TX", "UT", "VA", "VI", "VT", "WA", "WI", "WV", "WY", "AB", "BC", "MB", "NB", "NL", "NS", "NT", "NU", "ON", "PE", "QC", "SK", "YT"])
      unless validator.valid?(residence_state)
        fail ArgumentError, "invalid value for \"residence_state\", must be one of #{validator.allowable_values}."
      end
      @residence_state = residence_state
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] residence_country Object to be assigned
    def residence_country=(residence_country)
      validator = EnumAttributeValidator.new('String', ["US", "AF", "AX", "AL", "AG", "AQ", "AN", "AO", "AV", "AY", "AC", "AR", "AM", "AA", "AT", "AS", "AU", "AJ", "BF", "BA", "FQ", "BG", "BB", "BO", "BE", "BH", "BN", "BD", "BT", "BL", "BK", "BC", "BV", "BR", "IO", "VI", "BX", "BU", "UV", "BM", "BY", "CB", "CM", "CA", "CV", "CJ", "CT", "CD", "CI", "CH", "KT", "IP", "CK", "CO", "CN", "CF", "CG", "CW", "CR", "CS", "IV", "HR", "CU", "UC", "CY", "EZ", "DA", "DX", "DJ", "DO", "DR", "TT", "EC", "EG", "ES", "EK", "ER", "EN", "ET", "FK", "FO", "FM", "FJ", "FI", "FR", "FP", "FS", "GB", "GA", "GG", "GM", "GH", "GI", "GR", "GL", "GJ", "GQ", "GT", "GK", "GV", "PU", "GY", "HA", "HM", "VT", "HO", "HK", "HQ", "HU", "IC", "IN", "ID", "IR", "IZ", "EI", "IS", "IT", "JM", "JN", "JA", "DQ", "JE", "JQ", "JO", "KZ", "KE", "KQ", "KR", "KN", "KS", "KV", "KU", "KG", "LA", "LG", "LE", "LT", "LI", "LY", "LS", "LH", "LU", "MC", "MK", "MA", "MI", "MY", "MV", "ML", "MT", "IM", "RM", "MR", "MP", "MX", "MQ", "MD", "MN", "MG", "MJ", "MH", "MO", "MZ", "WA", "NR", "BQ", "NP", "NL", "NC", "NZ", "NU", "NG", "NI", "NE", "NF", "CQ", "NO", "MU", "OC", "PK", "PS", "LQ", "PM", "PP", "PF", "PA", "PE", "RP", "PC", "PL", "PO", "RQ", "QA", "RO", "RS", "RW", "TB", "RN", "WS", "SM", "TP", "SA", "SG", "RI", "SE", "SL", "SN", "NN", "LO", "SI", "BP", "SO", "SF", "SX", "SP", "PG", "CE", "SH", "SC", "ST", "SB", "VC", "SU", "NS", "SV", "WZ", "SW", "SZ", "SY", "TW", "TI", "TZ", "TH", "TO", "TL", "TN", "TD", "TS", "TU", "TX", "TK", "TV", "UG", "UP", "AE", "UK", "UY", "UZ", "NH", "VE", "VM", "VQ", "WQ", "WF", "WI", "YM", "ZA", "ZI"])
      unless validator.valid?(residence_country)
        fail ArgumentError, "invalid value for \"residence_country\", must be one of #{validator.allowable_values}."
      end
      @residence_country = residence_country
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mailing_state Object to be assigned
    def mailing_state=(mailing_state)
      validator = EnumAttributeValidator.new('String', ["AA", "AE", "AK", "AL", "AP", "AR", "AS", "AZ", "CA", "CO", "CT", "DC", "DE", "FL", "FM", "GA", "GU", "HI", "IA", "ID", "IL", "IN", "KS", "KY", "LA", "MA", "MD", "ME", "MH", "MI", "MN", "MO", "MP", "MS", "MT", "NC", "ND", "NE", "NH", "NJ", "NM", "NV", "NY", "OH", "OK", "OR", "PA", "PR", "PW", "RI", "SC", "SD", "TN", "TX", "UT", "VA", "VI", "VT", "WA", "WI", "WV", "WY", "AB", "BC", "MB", "NB", "NL", "NS", "NT", "NU", "ON", "PE", "QC", "SK", "YT"])
      unless validator.valid?(mailing_state)
        fail ArgumentError, "invalid value for \"mailing_state\", must be one of #{validator.allowable_values}."
      end
      @mailing_state = mailing_state
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mailing_country Object to be assigned
    def mailing_country=(mailing_country)
      validator = EnumAttributeValidator.new('String', ["US", "AF", "AX", "AL", "AG", "AQ", "AN", "AO", "AV", "AY", "AC", "AR", "AM", "AA", "AT", "AS", "AU", "AJ", "BF", "BA", "FQ", "BG", "BB", "BO", "BE", "BH", "BN", "BD", "BT", "BL", "BK", "BC", "BV", "BR", "IO", "VI", "BX", "BU", "UV", "BM", "BY", "CB", "CM", "CA", "CV", "CJ", "CT", "CD", "CI", "CH", "KT", "IP", "CK", "CO", "CN", "CF", "CG", "CW", "CR", "CS", "IV", "HR", "CU", "UC", "CY", "EZ", "DA", "DX", "DJ", "DO", "DR", "TT", "EC", "EG", "ES", "EK", "ER", "EN", "ET", "FK", "FO", "FM", "FJ", "FI", "FR", "FP", "FS", "GB", "GA", "GG", "GM", "GH", "GI", "GR", "GL", "GJ", "GQ", "GT", "GK", "GV", "PU", "GY", "HA", "HM", "VT", "HO", "HK", "HQ", "HU", "IC", "IN", "ID", "IR", "IZ", "EI", "IS", "IT", "JM", "JN", "JA", "DQ", "JE", "JQ", "JO", "KZ", "KE", "KQ", "KR", "KN", "KS", "KV", "KU", "KG", "LA", "LG", "LE", "LT", "LI", "LY", "LS", "LH", "LU", "MC", "MK", "MA", "MI", "MY", "MV", "ML", "MT", "IM", "RM", "MR", "MP", "MX", "MQ", "MD", "MN", "MG", "MJ", "MH", "MO", "MZ", "WA", "NR", "BQ", "NP", "NL", "NC", "NZ", "NU", "NG", "NI", "NE", "NF", "CQ", "NO", "MU", "OC", "PK", "PS", "LQ", "PM", "PP", "PF", "PA", "PE", "RP", "PC", "PL", "PO", "RQ", "QA", "RO", "RS", "RW", "TB", "RN", "WS", "SM", "TP", "SA", "SG", "RI", "SE", "SL", "SN", "NN", "LO", "SI", "BP", "SO", "SF", "SX", "SP", "PG", "CE", "SH", "SC", "ST", "SB", "VC", "SU", "NS", "SV", "WZ", "SW", "SZ", "SY", "TW", "TI", "TZ", "TH", "TO", "TL", "TN", "TD", "TS", "TU", "TX", "TK", "TV", "UG", "UP", "AE", "UK", "UY", "UZ", "NH", "VE", "VM", "VQ", "WQ", "WF", "WI", "YM", "ZA", "ZI"])
      unless validator.valid?(mailing_country)
        fail ArgumentError, "invalid value for \"mailing_country\", must be one of #{validator.allowable_values}."
      end
      @mailing_country = mailing_country
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] treaty_country Object to be assigned
    def treaty_country=(treaty_country)
      validator = EnumAttributeValidator.new('String', ["US", "AF", "AX", "AL", "AG", "AQ", "AN", "AO", "AV", "AY", "AC", "AR", "AM", "AA", "AT", "AS", "AU", "AJ", "BF", "BA", "FQ", "BG", "BB", "BO", "BE", "BH", "BN", "BD", "BT", "BL", "BK", "BC", "BV", "BR", "IO", "VI", "BX", "BU", "UV", "BM", "BY", "CB", "CM", "CA", "CV", "CJ", "CT", "CD", "CI", "CH", "KT", "IP", "CK", "CO", "CN", "CF", "CG", "CW", "CR", "CS", "IV", "HR", "CU", "UC", "CY", "EZ", "DA", "DX", "DJ", "DO", "DR", "TT", "EC", "EG", "ES", "EK", "ER", "EN", "ET", "FK", "FO", "FM", "FJ", "FI", "FR", "FP", "FS", "GB", "GA", "GG", "GM", "GH", "GI", "GR", "GL", "GJ", "GQ", "GT", "GK", "GV", "PU", "GY", "HA", "HM", "VT", "HO", "HK", "HQ", "HU", "IC", "IN", "ID", "IR", "IZ", "EI", "IS", "IT", "JM", "JN", "JA", "DQ", "JE", "JQ", "JO", "KZ", "KE", "KQ", "KR", "KN", "KS", "KV", "KU", "KG", "LA", "LG", "LE", "LT", "LI", "LY", "LS", "LH", "LU", "MC", "MK", "MA", "MI", "MY", "MV", "ML", "MT", "IM", "RM", "MR", "MP", "MX", "MQ", "MD", "MN", "MG", "MJ", "MH", "MO", "MZ", "WA", "NR", "BQ", "NP", "NL", "NC", "NZ", "NU", "NG", "NI", "NE", "NF", "CQ", "NO", "MU", "OC", "PK", "PS", "LQ", "PM", "PP", "PF", "PA", "PE", "RP", "PC", "PL", "PO", "RQ", "QA", "RO", "RS", "RW", "TB", "RN", "WS", "SM", "TP", "SA", "SG", "RI", "SE", "SL", "SN", "NN", "LO", "SI", "BP", "SO", "SF", "SX", "SP", "PG", "CE", "SH", "SC", "ST", "SB", "VC", "SU", "NS", "SV", "WZ", "SW", "SZ", "SY", "TW", "TI", "TZ", "TH", "TO", "TL", "TN", "TD", "TS", "TU", "TX", "TK", "TV", "UG", "UP", "AE", "UK", "UY", "UZ", "NH", "VE", "VM", "VQ", "WQ", "WF", "WI", "YM", "ZA", "ZI"])
      unless validator.valid?(treaty_country)
        fail ArgumentError, "invalid value for \"treaty_country\", must be one of #{validator.allowable_values}."
      end
      @treaty_country = treaty_country
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] withholding_rate Object to be assigned
    def withholding_rate=(withholding_rate)
      validator = EnumAttributeValidator.new('String', ["0", "0.0", "0.00", "5", "5.5", "10", "12.50", "15", "20", "25", "30"])
      unless validator.valid?(withholding_rate)
        fail ArgumentError, "invalid value for \"withholding_rate\", must be one of #{validator.allowable_values}."
      end
      @withholding_rate = withholding_rate
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
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
          company_id == o.company_id &&
          reference_id == o.reference_id &&
          email == o.email &&
          e_delivery_consented_at == o.e_delivery_consented_at &&
          signature == o.signature
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [type, name, citizenship_country, residence_address, residence_city, residence_state, residence_zip, residence_country, residence_is_mailing, mailing_address, mailing_city, mailing_state, mailing_zip, mailing_country, tin, foreign_tin_not_required, foreign_tin, reference_number, birthday, treaty_country, treaty_article, treaty_reasons, withholding_rate, income_type, signer_name, company_id, reference_id, email, e_delivery_consented_at, signature].hash
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
