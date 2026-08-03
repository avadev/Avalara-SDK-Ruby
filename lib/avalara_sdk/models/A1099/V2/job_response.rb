=begin
#Avalara 1099 & W-9 API Definition

#> **Note:** You must have an active Avalara 1099 & W-9 subscription to authenticate and use these APIs. If you don't have a subscription, please contact our [Sales team](https://www.avalara.com/us/en/products/1099/request-a-demo.html).  ## Authentication  The Avalara 1099 & W-9 API uses **Bearer Token Authentication**. To authenticate, acquire a bearer token using a **Client ID** and **Client Secret** that you generate in the Avalara 1099 & W-9 web application.  The sample cURL commands below use **production** URLs. For **sandbox**, replace them with the sandbox URLs listed in the Sandbox Environment table.  ### Option 1 — Client ID and Client Secret (recommended)  **Step 1: Create API credentials in the Avalara 1099 & W-9 web app**  For a full walkthrough, see the [Avalara 1099 & W-9 integration guide](https://developer.avalara.com/products/avalara-1099-and-w9/integration-guides/1099-and-w-9/siu2796410674799/).  > **Note:** To enable credential creation you must first enter a valid company address in **Account Settings > Account** and enable two-factor authentication in **Account Settings > Security**.  1. In Avalara 1099 & W-9, open **Account Settings** (gear icon, top-right of any page) and select **API**. 2. Click **Create new credentials** (a valid company address and 2FA are required). 3. Copy your **Client Id** and **Client Secret** securely — they will not be shown again after you leave the screen.  **Step 2: Request a bearer token**  ```bash curl -X POST 'https://identity.avalara.com/connect/token' \\   --header 'Content-Type: application/x-www-form-urlencoded' \\   --data-urlencode 'grant_type=client_credentials' \\   --data-urlencode 'client_id={{client_id}}' \\   --data-urlencode 'client_secret={{client_secret}}' ```  ### Option 2 — Account ID and License Key  If your organization already uses other Avalara products (AvaTax, CertCapture) and has access to the logged-in area of Avalara.com, you can generate the bearer token using your **Account ID** and **License Key**.  > **Note:** If you already have a license key for other Avalara products you can reuse it. Generating a new key will reset any previously created key.  1. Log in to Avalara.com. 2. Go to **Settings → License and API Keys**. 3. Click **Generate New Key**. 4. Note your **Account ID** from the Account menu.  ```bash curl -X POST 'https://identity.avalara.com/connect/token' \\   --header 'Content-Type: application/x-www-form-urlencoded' \\   --data-urlencode 'grant_type=client_credentials' \\   --data-urlencode 'client_id={{accountId}}' \\   --data-urlencode 'client_secret={{licenseKey}}' ```  ### Using and renewing the bearer token  Include the token in the `Authorization` header on every request:  ```http Authorization: Bearer {access_token} ```  Tokens expire after the number of seconds in the `expires_in` field of the token response. Your integration must renew the token before it expires.  **Example token response**  ```json {   \"access_token\": \"eyJhbGciOiJIUzI1NiIsInR5cCI...\",   \"expires_in\": 3600,   \"token_type\": \"Bearer\",   \"scope\": \"avatax_api iam-ds\" } ```  ### Sandbox Environment  Use the same steps as production, replacing the base URLs:  | Purpose | Production | Sandbox | | --- | --- | --- | | Account & License Key management (web) | `https://www.avalara.com` | `https://sandbox.admin.avalara.com` | | Account & License Key management (API) | `https://rest.avatax.com` | `https://sandbox-rest.avatax.com` | | Token generation | `https://identity.avalara.com` | `https://ai-sbx.avlr.sh` |  ## Environments  #### Production - **Avalara 1099 API URL:** [`https://api.avalara.com/avalara1099`](https://api.avalara.com/avalara1099) - **Identity Token URL:** [`https://identity.avalara.com/connect/token`](https://identity.avalara.com/connect/token)  #### Sandbox - **Avalara 1099 API URL:** [`https://api.sbx.avalara.com/avalara1099`](https://api.sbx.avalara.com/avalara1099) - **Identity Token URL:** [`https://ai-sbx.avlr.sh/connect/token`](https://ai-sbx.avlr.sh/connect/token)  ---  ## API & SDK Documentation  [Avalara 1099 API Reference](https://developer.avalara.com/api-reference/avalara1099/avalara1099/)  [Avalara SDKs](https://developer.avalara.com/sdk/)  [Swagger](https://api.avalara.com/avalara1099/swagger/index.html?api-version=2.0)


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

    # Number of forms skipped because they would have made a form invalid and the form is already e-filed or scheduled for e-filing, or because you do not have permission to update forms that have been scheduled. Value can be 0 or another value based on what the job has available
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
