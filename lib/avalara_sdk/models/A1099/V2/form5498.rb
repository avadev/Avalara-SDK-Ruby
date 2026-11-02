=begin
#Avalara 1099 & W-9 API Definition

#> **Note:** You must have an active Avalara 1099 & W-9 subscription to authenticate and use these APIs. If you don't have a subscription, please contact our [Sales team](https://www.avalara.com/us/en/products/1099/request-a-demo.html).  ## Authentication  The Avalara 1099 & W-9 API uses **Bearer Token Authentication**. To authenticate, acquire a bearer token using a **Client ID** and **Client Secret** that you generate in the Avalara 1099 & W-9 web application.  The sample cURL commands below use **production** URLs. For **sandbox**, replace them with the sandbox URLs listed in the Sandbox Environment table.  ### Option 1 — Client ID and Client Secret (recommended)  **Step 1: Create API credentials in the Avalara 1099 & W-9 web app**  For a full walkthrough, see the [Avalara 1099 & W-9 integration guide](https://developer.avalara.com/products/avalara-1099-and-w9/integration-guides/1099-and-w-9/siu2796410674799/).  > **Note:** To enable credential creation you must first enter a valid company address in **Account Settings > Account** and enable two-factor authentication in **Account Settings > Security**.  1. In Avalara 1099 & W-9, open **Account Settings** (gear icon, top-right of any page) and select **API**. 2. Click **Create new credentials** (a valid company address and 2FA are required). 3. Copy your **Client Id** and **Client Secret** securely — they will not be shown again after you leave the screen.  **Step 2: Request a bearer token**  ```bash curl -X POST 'https://identity.avalara.com/connect/token' \\   --header 'Content-Type: application/x-www-form-urlencoded' \\   --data-urlencode 'grant_type=client_credentials' \\   --data-urlencode 'client_id={{client_id}}' \\   --data-urlencode 'client_secret={{client_secret}}' ```  ### Option 2 — Account ID and License Key  If your organization already uses other Avalara products (AvaTax, CertCapture) and has access to the logged-in area of Avalara.com, you can generate the bearer token using your **Account ID** and **License Key**.  > **Note:** If you already have a license key for other Avalara products you can reuse it. Generating a new key will reset any previously created key.  1. Log in to Avalara.com. 2. Go to **Settings → License and API Keys**. 3. Click **Generate New Key**. 4. Note your **Account ID** from the Account menu.  ```bash curl -X POST 'https://identity.avalara.com/connect/token' \\   --header 'Content-Type: application/x-www-form-urlencoded' \\   --data-urlencode 'grant_type=client_credentials' \\   --data-urlencode 'client_id={{accountId}}' \\   --data-urlencode 'client_secret={{licenseKey}}' ```  ### Using and renewing the bearer token  Include the token in the `Authorization` header on every request:  ```http Authorization: Bearer {access_token} ```  Tokens expire after the number of seconds in the `expires_in` field of the token response. Your integration must renew the token before it expires.  **Example token response**  ```json {   \"access_token\": \"eyJhbGciOiJIUzI1NiIsInR5cCI...\",   \"expires_in\": 3600,   \"token_type\": \"Bearer\",   \"scope\": \"avatax_api iam-ds\" } ```  ### Sandbox Environment  Use the same steps as production, replacing the base URLs:  | Purpose | Production | Sandbox | | --- | --- | --- | | Account & License Key management (web) | `https://www.avalara.com` | `https://sandbox.admin.avalara.com` | | Account & License Key management (API) | `https://rest.avatax.com` | `https://sandbox-rest.avatax.com` | | Token generation | `https://identity.avalara.com` | `https://ai-sbx.avlr.sh` |  ## Environments  #### Production - **Avalara 1099 API URL:** [`https://api.avalara.com/avalara1099`](https://api.avalara.com/avalara1099) - **Identity Token URL:** [`https://identity.avalara.com/connect/token`](https://identity.avalara.com/connect/token)  #### Sandbox - **Avalara 1099 API URL:** [`https://api.sbx.avalara.com/avalara1099`](https://api.sbx.avalara.com/avalara1099) - **Identity Token URL:** [`https://ai-sbx.avlr.sh/connect/token`](https://ai-sbx.avlr.sh/connect/token)  ---  ## API & SDK Documentation  [Avalara 1099 API Reference](https://developer.avalara.com/api-reference/avalara1099/avalara1099/)  [Avalara SDKs](https://developer.avalara.com/sdk/)  [Swagger](https://api.avalara.com/avalara1099/swagger/index.html?api-version=2.0)


=end

require 'date'
require 'time'

module AvalaraSdk::A1099::V2
      # Form 5498: IRA Contribution Information                The recipient is the participant and the issuer is the trustee or issuer of the IRA.                *Required:* at least one amount above zero in Boxes 1-5, 8-10, 13a or 14a. Amounts can't be negative.                Paired boxes are all-or-nothing: Box 7 is required when Box 2 or Box 5 has an amount, and Boxes 8, 9 and 10 are  only allowed with Box 7 type SEP, SIMPLE and Roth IRA; Boxes 12a and 12b are required when Box 11 is checked and  not allowed otherwise; Boxes 13b and 13c go with Box 13a, Box 14b with Box 14a, and Box 15b with Box 15a.                Form 5498 has no state or local boxes, so `stateAndLocalWithholding` is discarded and reads back as `null`.
  class Form5498
    # IRA contributions (other than amounts in Boxes 2-4, 8-10, 13a, and 14a)
    attr_accessor :ira_contributions

    # Rollover contributions
    attr_accessor :rollover_contributions

    # Roth IRA conversion amount
    attr_accessor :roth_ira_conversion_amount

    # Recharacterized contributions
    attr_accessor :recharacterized_contributions

    # Fair market value (FMV) of the account
    attr_accessor :fair_market_value_of_account

    # Life insurance cost included in the IRA contributions (Box 1). Can't be more than Box 1.
    attr_accessor :life_insurance_cost_included_in_ira_contributions

    # Type of IRA. Required when Box 2 or Box 5 has an amount.                * `IRA` - Traditional IRA  * `SEP` - SEP IRA  * `SIMPLE` - SIMPLE IRA  * `ROTH` - Roth IRA
    attr_accessor :ira_type

    # SEP contributions. Only allowed when `iraType` is `SEP`.
    attr_accessor :sep_contributions

    # SIMPLE contributions. Only allowed when `iraType` is `SIMPLE`.
    attr_accessor :simple_contributions

    # Roth IRA contributions. Only allowed when `iraType` is `ROTH`.
    attr_accessor :roth_ira_contributions

    # If checked, a required minimum distribution (RMD) is due for the year after the tax year
    attr_accessor :required_minimum_distribution_indicator

    # RMD date, in the year after the tax year. Required when `requiredMinimumDistributionIndicator` is `true`.
    attr_accessor :required_minimum_distribution_date

    # RMD amount. Required when `requiredMinimumDistributionIndicator` is `true`.
    attr_accessor :required_minimum_distribution_amount

    # Postponed or late contribution
    attr_accessor :postponed_late_contribution

    # Year the postponed or late contribution was for (four digits, from 1998 to the tax year). Required when  `postponedLateContribution` has an amount.
    attr_accessor :postponed_late_contribution_year

    # Postponed or late contribution code. Required when `postponedLateContribution` has an amount.                * `FD` - Federally designated disaster area  * `PL` - Public law  * `EO` - Executive order  * `PO` - Rollover of a qualified plan loan offset amount  * `SC` - Late rollover under the self-certification procedure
    attr_accessor :postponed_late_contribution_code

    # Postponed or late contribution reason, such as the public law or executive order number (up to 6 characters)
    attr_accessor :postponed_late_contribution_reason

    # Repayments
    attr_accessor :repayments

    # Repayment code. Required when `repayments` has an amount.                * `QR` - Qualified reservist distribution  * `DD` - Federally designated disaster distribution  * `BA` - Qualified birth or adoption distribution  * `EP` - Emergency personal expense distribution  * `DA` - Domestic abuse victim distribution  * `TI` - Terminally ill individual distribution
    attr_accessor :repayment_code

    # FMV of certain specified assets
    attr_accessor :fair_market_value_of_certain_specified_assets

    # Specified asset code. Required when `fairMarketValueOfCertainSpecifiedAssets` has an amount.                * `A` - Stock or other ownership interest in a corporation that is not readily tradable on an established  securities market  * `B` - Short- or long-term debt obligation that is not traded on an established securities market  * `C` - Ownership interest in a limited liability company or similar entity (unless the interest is traded on  an established securities market)  * `D` - Real estate  * `E` - Ownership interest in a partnership, trust, or similar entity (unless the interest is traded on an  established securities market)  * `F` - Option contract or similar product that is not offered for trade on an established option exchange  * `G` - Other asset that does not have a readily available FMV  * `H` - More than two types of assets (listed in `A` through `G`) are held in this IRA
    attr_accessor :specified_asset_code

    # Second specified asset code, when the IRA holds two types of specified assets. Takes the codes `A` through `G`;  it can't repeat `specifiedAssetCode`, and isn't allowed when `specifiedAssetCode` is `H`.
    attr_accessor :second_specified_asset_code

    # Form type.
    attr_accessor :type

    # Form ID. Unique identifier set when the record is created.
    attr_accessor :id

    # Issuer ID - only required when creating forms
    attr_accessor :issuer_id

    # Issuer Reference ID - only required when creating forms via $bulk-upsert
    attr_accessor :issuer_reference_id

    # Issuer TIN - readonly
    attr_accessor :issuer_tin

    # Tax Year - only required when creating forms via $bulk-upsert
    attr_accessor :tax_year

    # Internal reference ID. Never shown to any agency or recipient.
    attr_accessor :reference_id

    # Recipient's Federal Tax Identification Number (TIN).
    attr_accessor :tin

    # DEPRECATED: Use `businessName` for businesses; use `firstName`, `middleName`, `lastName`, and `suffixName` for individuals.
    attr_accessor :recipient_name

    # Address.
    attr_accessor :address

    # Address line 2.
    attr_accessor :address2

    # City.
    attr_accessor :city

    # Two-letter US state or Canadian province code (required for US/CA addresses).
    attr_accessor :state

    # ZIP/postal code.
    attr_accessor :zip

    # Recipient's Contact email address.
    attr_accessor :email

    # Province or region for non-US/CA addresses.
    attr_accessor :non_us_province

    # Two-letter IRS country code (e.g., 'US', 'CA'), as defined at https://www.irs.gov/e-file-providers/country-codes.
    attr_accessor :country_code

    # Date when federal e-filing should be scheduled. If set between current date and beginning of blackout period, scheduled to that date. If in the past or blackout period, scheduled to next available date. For blackout period information, see https://www.track1099.com/info/IRS_info. Set to null to leave unscheduled.
    attr_accessor :federal_efile_date

    # Boolean indicating that postal mailing to the recipient should be scheduled for this form
    attr_accessor :postal_mail

    # Date when state e-filing should be scheduled. Must be on or after federalEfileDate. If set between current date and beginning of blackout period, scheduled to that date. If in the past or blackout period, scheduled to next available date. For blackout period information, see https://www.track1099.com/info/IRS_info. Set to null to leave unscheduled.
    attr_accessor :state_efile_date

    # Date when recipient e-delivery should be scheduled. If set between current date and beginning of blackout period, scheduled to that date. If in the past or blackout period, scheduled to next available date. For blackout period information, see https://www.track1099.com/info/IRS_info. Set to null to leave unscheduled.
    attr_accessor :recipient_edelivery_date

    # Boolean indicating that TIN Matching should be scheduled for this form
    attr_accessor :tin_match

    # Boolean indicating that address verification should be scheduled for this form
    attr_accessor :address_verification

    # State and local withholding information
    attr_accessor :state_and_local_withholding

    # Federal e-file status.  Available values:  - unscheduled: Form has not been scheduled for federal e-filing  - scheduled: Form is scheduled for federal e-filing  - airlock: Form is in process of being uploaded to the IRS (forms exist in this state for a very short period and cannot be updated while in this state)  - sent: Form has been sent to the IRS  - accepted: Form was accepted by the IRS  - corrected_scheduled: Correction is scheduled to be sent  - corrected_airlock: Correction is in process of being uploaded to the IRS (forms exist in this state for a very short period and cannot be updated while in this state)  - corrected: A correction has been sent to the IRS  - corrected_accepted: Correction was accepted by the IRS  - rejected: Form was rejected by the IRS  - corrected_rejected: Correction was rejected by the IRS  - held: Form is held and will not be submitted to IRS (used for certain forms submitted only to states)  When the form's most recent IRIS filing was rejected or accepted with errors, `errors` lists what the IRS reported.
    attr_accessor :federal_efile_status

    # State e-file status.  Available values:  - unscheduled: Form has not been scheduled for state e-filing  - scheduled: Form is scheduled for state e-filing  - airlocked: Form is in process of being uploaded to the state  - sent: Form has been sent to the state  - rejected: Form was rejected by the state  - accepted: Form was accepted by the state  - corrected_scheduled: Correction is scheduled to be sent  - corrected_airlocked: Correction is in process of being uploaded to the state  - corrected_sent: Correction has been sent to the state  - corrected_rejected: Correction was rejected by the state  - corrected_accepted: Correction was accepted by the state
    attr_accessor :state_efile_status

    # Postal mail to recipient status.  Available values:  - unscheduled: Postal mail has not been scheduled  - pending: Postal mail is pending to be sent  - sent: Postal mail has been sent  - delivered: Postal mail has been delivered
    attr_accessor :postal_mail_status

    # TIN Match status.  Available values:  - none: TIN matching has not been performed  - pending: TIN matching request is pending  - matched: Name/TIN combination matches IRS records  - unknown: TIN is missing, invalid, or request contains errors  - rejected: Name/TIN combination does not match IRS records or TIN not currently issued
    attr_accessor :tin_match_status

    # Address verification status.  Available values:  - unknown: Address verification has not been checked  - pending: Address verification is in progress  - failed: Address verification failed  - incomplete: Address verification is incomplete  - unchanged: User declined address changes  - verified: Address has been verified and accepted
    attr_accessor :address_verification_status

    # EDelivery status.  Available values:  - unscheduled: E-delivery has not been scheduled  - scheduled: E-delivery is scheduled to be sent  - sent: E-delivery has been sent to recipient  - bounced: E-delivery bounced back (invalid email)  - refused: E-delivery was refused by recipient  - bad_verify: E-delivery failed verification  - accepted: E-delivery was accepted by recipient  - bad_verify_limit: E-delivery failed verification limit reached  - second_delivery: Second e-delivery attempt  - undelivered: E-delivery is undelivered (temporary state allowing resend)
    attr_accessor :e_delivery_status

    # Validation errors
    attr_accessor :validation_errors

    # Date time when the record was created.
    attr_accessor :created_at

    # Date time when the record was last updated.
    attr_accessor :updated_at

    # Recipient classification.  The platform is transitioning from tax identifier classifications to recipient entity classifications. New values represent recipient entity types and should be preferred. Deprecated values represent identifier formats and remain supported for backward compatibility only.  Available values: - INDIVIDUAL: Recipient is an individual - BUSINESS: Recipient is a business - UNKNOWN: Recipient classification is unknown - EIN: (Deprecated - use BUSINESS) Employer Identification Number - SSN: (Deprecated - use INDIVIDUAL) Social Security Number - ITIN: (Deprecated - use INDIVIDUAL) Individual Taxpayer Identification Number - ATIN: (Deprecated - use INDIVIDUAL) Adoption Taxpayer Identification Number
    attr_accessor :tin_type

    # Business name. Required when the recipient of the form is a business; should only be used for businesses.
    attr_accessor :business_name

    # Business name line 2. Should only be used for businesses.
    attr_accessor :business_name2

    # First name. Required when the recipient of the form is an individual; should only be used for individuals.
    attr_accessor :first_name

    # Middle name. Should only be used for individuals.
    attr_accessor :middle_name

    # Last name. Required when the recipient of the form is an individual; should only be used for individuals.
    attr_accessor :last_name

    # Suffix name. Should only be used for individuals.
    attr_accessor :suffix_name

    # DEPRECATED: Use `businessName2` instead.
    attr_accessor :recipient_second_name

    # Account number
    attr_accessor :account_number

    # Office code
    attr_accessor :office_code

    # No TIN indicator
    attr_accessor :no_tin

    # Second TIN notice
    attr_accessor :second_tin_notice

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
        :'ira_contributions' => :'iraContributions',
        :'rollover_contributions' => :'rolloverContributions',
        :'roth_ira_conversion_amount' => :'rothIraConversionAmount',
        :'recharacterized_contributions' => :'recharacterizedContributions',
        :'fair_market_value_of_account' => :'fairMarketValueOfAccount',
        :'life_insurance_cost_included_in_ira_contributions' => :'lifeInsuranceCostIncludedInIraContributions',
        :'ira_type' => :'iraType',
        :'sep_contributions' => :'sepContributions',
        :'simple_contributions' => :'simpleContributions',
        :'roth_ira_contributions' => :'rothIraContributions',
        :'required_minimum_distribution_indicator' => :'requiredMinimumDistributionIndicator',
        :'required_minimum_distribution_date' => :'requiredMinimumDistributionDate',
        :'required_minimum_distribution_amount' => :'requiredMinimumDistributionAmount',
        :'postponed_late_contribution' => :'postponedLateContribution',
        :'postponed_late_contribution_year' => :'postponedLateContributionYear',
        :'postponed_late_contribution_code' => :'postponedLateContributionCode',
        :'postponed_late_contribution_reason' => :'postponedLateContributionReason',
        :'repayments' => :'repayments',
        :'repayment_code' => :'repaymentCode',
        :'fair_market_value_of_certain_specified_assets' => :'fairMarketValueOfCertainSpecifiedAssets',
        :'specified_asset_code' => :'specifiedAssetCode',
        :'second_specified_asset_code' => :'secondSpecifiedAssetCode',
        :'type' => :'type',
        :'id' => :'id',
        :'issuer_id' => :'issuerId',
        :'issuer_reference_id' => :'issuerReferenceId',
        :'issuer_tin' => :'issuerTin',
        :'tax_year' => :'taxYear',
        :'reference_id' => :'referenceId',
        :'tin' => :'tin',
        :'recipient_name' => :'recipientName',
        :'address' => :'address',
        :'address2' => :'address2',
        :'city' => :'city',
        :'state' => :'state',
        :'zip' => :'zip',
        :'email' => :'email',
        :'non_us_province' => :'nonUsProvince',
        :'country_code' => :'countryCode',
        :'federal_efile_date' => :'federalEfileDate',
        :'postal_mail' => :'postalMail',
        :'state_efile_date' => :'stateEfileDate',
        :'recipient_edelivery_date' => :'recipientEdeliveryDate',
        :'tin_match' => :'tinMatch',
        :'address_verification' => :'addressVerification',
        :'state_and_local_withholding' => :'stateAndLocalWithholding',
        :'federal_efile_status' => :'federalEfileStatus',
        :'state_efile_status' => :'stateEfileStatus',
        :'postal_mail_status' => :'postalMailStatus',
        :'tin_match_status' => :'tinMatchStatus',
        :'address_verification_status' => :'addressVerificationStatus',
        :'e_delivery_status' => :'eDeliveryStatus',
        :'validation_errors' => :'validationErrors',
        :'created_at' => :'createdAt',
        :'updated_at' => :'updatedAt',
        :'tin_type' => :'tinType',
        :'business_name' => :'businessName',
        :'business_name2' => :'businessName2',
        :'first_name' => :'firstName',
        :'middle_name' => :'middleName',
        :'last_name' => :'lastName',
        :'suffix_name' => :'suffixName',
        :'recipient_second_name' => :'recipientSecondName',
        :'account_number' => :'accountNumber',
        :'office_code' => :'officeCode',
        :'no_tin' => :'noTin',
        :'second_tin_notice' => :'secondTinNotice'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'ira_contributions' => :'Float',
        :'rollover_contributions' => :'Float',
        :'roth_ira_conversion_amount' => :'Float',
        :'recharacterized_contributions' => :'Float',
        :'fair_market_value_of_account' => :'Float',
        :'life_insurance_cost_included_in_ira_contributions' => :'Float',
        :'ira_type' => :'String',
        :'sep_contributions' => :'Float',
        :'simple_contributions' => :'Float',
        :'roth_ira_contributions' => :'Float',
        :'required_minimum_distribution_indicator' => :'Boolean',
        :'required_minimum_distribution_date' => :'Date',
        :'required_minimum_distribution_amount' => :'Float',
        :'postponed_late_contribution' => :'Float',
        :'postponed_late_contribution_year' => :'Integer',
        :'postponed_late_contribution_code' => :'String',
        :'postponed_late_contribution_reason' => :'String',
        :'repayments' => :'Float',
        :'repayment_code' => :'String',
        :'fair_market_value_of_certain_specified_assets' => :'Float',
        :'specified_asset_code' => :'String',
        :'second_specified_asset_code' => :'String',
        :'type' => :'String',
        :'id' => :'String',
        :'issuer_id' => :'String',
        :'issuer_reference_id' => :'String',
        :'issuer_tin' => :'String',
        :'tax_year' => :'Integer',
        :'reference_id' => :'String',
        :'tin' => :'String',
        :'recipient_name' => :'String',
        :'address' => :'String',
        :'address2' => :'String',
        :'city' => :'String',
        :'state' => :'String',
        :'zip' => :'String',
        :'email' => :'String',
        :'non_us_province' => :'String',
        :'country_code' => :'String',
        :'federal_efile_date' => :'Date',
        :'postal_mail' => :'Boolean',
        :'state_efile_date' => :'Date',
        :'recipient_edelivery_date' => :'Date',
        :'tin_match' => :'Boolean',
        :'address_verification' => :'Boolean',
        :'state_and_local_withholding' => :'StateAndLocalWithholding',
        :'federal_efile_status' => :'FederalEfileStatusDetail',
        :'state_efile_status' => :'Array<StateEfileStatusDetail>',
        :'postal_mail_status' => :'Form1099StatusDetail',
        :'tin_match_status' => :'Form1099StatusDetail',
        :'address_verification_status' => :'Form1099StatusDetail',
        :'e_delivery_status' => :'Form1099StatusDetail',
        :'validation_errors' => :'Array<ValidationError>',
        :'created_at' => :'Time',
        :'updated_at' => :'Time',
        :'tin_type' => :'String',
        :'business_name' => :'String',
        :'business_name2' => :'String',
        :'first_name' => :'String',
        :'middle_name' => :'String',
        :'last_name' => :'String',
        :'suffix_name' => :'String',
        :'recipient_second_name' => :'String',
        :'account_number' => :'String',
        :'office_code' => :'String',
        :'no_tin' => :'Boolean',
        :'second_tin_notice' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'ira_contributions',
        :'rollover_contributions',
        :'roth_ira_conversion_amount',
        :'recharacterized_contributions',
        :'fair_market_value_of_account',
        :'life_insurance_cost_included_in_ira_contributions',
        :'ira_type',
        :'sep_contributions',
        :'simple_contributions',
        :'roth_ira_contributions',
        :'required_minimum_distribution_indicator',
        :'required_minimum_distribution_date',
        :'required_minimum_distribution_amount',
        :'postponed_late_contribution',
        :'postponed_late_contribution_year',
        :'postponed_late_contribution_code',
        :'postponed_late_contribution_reason',
        :'repayments',
        :'repayment_code',
        :'fair_market_value_of_certain_specified_assets',
        :'specified_asset_code',
        :'second_specified_asset_code',
        :'id',
        :'issuer_id',
        :'issuer_reference_id',
        :'issuer_tin',
        :'tax_year',
        :'reference_id',
        :'tin',
        :'recipient_name',
        :'address',
        :'address2',
        :'city',
        :'state',
        :'zip',
        :'email',
        :'non_us_province',
        :'country_code',
        :'federal_efile_date',
        :'postal_mail',
        :'state_efile_date',
        :'recipient_edelivery_date',
        :'tin_match',
        :'address_verification',
        :'state_and_local_withholding',
        :'federal_efile_status',
        :'state_efile_status',
        :'postal_mail_status',
        :'tin_match_status',
        :'address_verification_status',
        :'e_delivery_status',
        :'validation_errors',
        :'created_at',
        :'updated_at',
        :'tin_type',
        :'business_name',
        :'business_name2',
        :'first_name',
        :'middle_name',
        :'last_name',
        :'suffix_name',
        :'recipient_second_name',
        :'account_number',
        :'office_code',
        :'no_tin',
        :'second_tin_notice'
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'IrisFormBase'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `AvalaraSdk::A1099::V2::Form5498` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AvalaraSdk::A1099::V2::Form5498`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'ira_contributions')
        self.ira_contributions = attributes[:'ira_contributions']
      end

      if attributes.key?(:'rollover_contributions')
        self.rollover_contributions = attributes[:'rollover_contributions']
      end

      if attributes.key?(:'roth_ira_conversion_amount')
        self.roth_ira_conversion_amount = attributes[:'roth_ira_conversion_amount']
      end

      if attributes.key?(:'recharacterized_contributions')
        self.recharacterized_contributions = attributes[:'recharacterized_contributions']
      end

      if attributes.key?(:'fair_market_value_of_account')
        self.fair_market_value_of_account = attributes[:'fair_market_value_of_account']
      end

      if attributes.key?(:'life_insurance_cost_included_in_ira_contributions')
        self.life_insurance_cost_included_in_ira_contributions = attributes[:'life_insurance_cost_included_in_ira_contributions']
      end

      if attributes.key?(:'ira_type')
        self.ira_type = attributes[:'ira_type']
      end

      if attributes.key?(:'sep_contributions')
        self.sep_contributions = attributes[:'sep_contributions']
      end

      if attributes.key?(:'simple_contributions')
        self.simple_contributions = attributes[:'simple_contributions']
      end

      if attributes.key?(:'roth_ira_contributions')
        self.roth_ira_contributions = attributes[:'roth_ira_contributions']
      end

      if attributes.key?(:'required_minimum_distribution_indicator')
        self.required_minimum_distribution_indicator = attributes[:'required_minimum_distribution_indicator']
      end

      if attributes.key?(:'required_minimum_distribution_date')
        self.required_minimum_distribution_date = attributes[:'required_minimum_distribution_date']
      end

      if attributes.key?(:'required_minimum_distribution_amount')
        self.required_minimum_distribution_amount = attributes[:'required_minimum_distribution_amount']
      end

      if attributes.key?(:'postponed_late_contribution')
        self.postponed_late_contribution = attributes[:'postponed_late_contribution']
      end

      if attributes.key?(:'postponed_late_contribution_year')
        self.postponed_late_contribution_year = attributes[:'postponed_late_contribution_year']
      end

      if attributes.key?(:'postponed_late_contribution_code')
        self.postponed_late_contribution_code = attributes[:'postponed_late_contribution_code']
      end

      if attributes.key?(:'postponed_late_contribution_reason')
        self.postponed_late_contribution_reason = attributes[:'postponed_late_contribution_reason']
      end

      if attributes.key?(:'repayments')
        self.repayments = attributes[:'repayments']
      end

      if attributes.key?(:'repayment_code')
        self.repayment_code = attributes[:'repayment_code']
      end

      if attributes.key?(:'fair_market_value_of_certain_specified_assets')
        self.fair_market_value_of_certain_specified_assets = attributes[:'fair_market_value_of_certain_specified_assets']
      end

      if attributes.key?(:'specified_asset_code')
        self.specified_asset_code = attributes[:'specified_asset_code']
      end

      if attributes.key?(:'second_specified_asset_code')
        self.second_specified_asset_code = attributes[:'second_specified_asset_code']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = nil
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
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

      if attributes.key?(:'reference_id')
        self.reference_id = attributes[:'reference_id']
      end

      if attributes.key?(:'tin')
        self.tin = attributes[:'tin']
      end

      if attributes.key?(:'recipient_name')
        self.recipient_name = attributes[:'recipient_name']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      else
        self.address = nil
      end

      if attributes.key?(:'address2')
        self.address2 = attributes[:'address2']
      end

      if attributes.key?(:'city')
        self.city = attributes[:'city']
      else
        self.city = nil
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'zip')
        self.zip = attributes[:'zip']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'non_us_province')
        self.non_us_province = attributes[:'non_us_province']
      end

      if attributes.key?(:'country_code')
        self.country_code = attributes[:'country_code']
      else
        self.country_code = nil
      end

      if attributes.key?(:'federal_efile_date')
        self.federal_efile_date = attributes[:'federal_efile_date']
      end

      if attributes.key?(:'postal_mail')
        self.postal_mail = attributes[:'postal_mail']
      end

      if attributes.key?(:'state_efile_date')
        self.state_efile_date = attributes[:'state_efile_date']
      end

      if attributes.key?(:'recipient_edelivery_date')
        self.recipient_edelivery_date = attributes[:'recipient_edelivery_date']
      end

      if attributes.key?(:'tin_match')
        self.tin_match = attributes[:'tin_match']
      end

      if attributes.key?(:'address_verification')
        self.address_verification = attributes[:'address_verification']
      end

      if attributes.key?(:'state_and_local_withholding')
        self.state_and_local_withholding = attributes[:'state_and_local_withholding']
      end

      if attributes.key?(:'federal_efile_status')
        self.federal_efile_status = attributes[:'federal_efile_status']
      end

      if attributes.key?(:'state_efile_status')
        if (value = attributes[:'state_efile_status']).is_a?(Array)
          self.state_efile_status = value
        end
      end

      if attributes.key?(:'postal_mail_status')
        self.postal_mail_status = attributes[:'postal_mail_status']
      end

      if attributes.key?(:'tin_match_status')
        self.tin_match_status = attributes[:'tin_match_status']
      end

      if attributes.key?(:'address_verification_status')
        self.address_verification_status = attributes[:'address_verification_status']
      end

      if attributes.key?(:'e_delivery_status')
        self.e_delivery_status = attributes[:'e_delivery_status']
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

      if attributes.key?(:'tin_type')
        self.tin_type = attributes[:'tin_type']
      end

      if attributes.key?(:'business_name')
        self.business_name = attributes[:'business_name']
      end

      if attributes.key?(:'business_name2')
        self.business_name2 = attributes[:'business_name2']
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'middle_name')
        self.middle_name = attributes[:'middle_name']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'suffix_name')
        self.suffix_name = attributes[:'suffix_name']
      end

      if attributes.key?(:'recipient_second_name')
        self.recipient_second_name = attributes[:'recipient_second_name']
      end

      if attributes.key?(:'account_number')
        self.account_number = attributes[:'account_number']
      end

      if attributes.key?(:'office_code')
        self.office_code = attributes[:'office_code']
      end

      if attributes.key?(:'no_tin')
        self.no_tin = attributes[:'no_tin']
      end

      if attributes.key?(:'second_tin_notice')
        self.second_tin_notice = attributes[:'second_tin_notice']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      ira_type_validator = EnumAttributeValidator.new('String', ["IRA", "SEP", "SIMPLE", "ROTH"])
      return false unless ira_type_validator.valid?(@ira_type)
      postponed_late_contribution_code_validator = EnumAttributeValidator.new('String', ["FD", "PL", "EO", "PO", "SC"])
      return false unless postponed_late_contribution_code_validator.valid?(@postponed_late_contribution_code)
      repayment_code_validator = EnumAttributeValidator.new('String', ["QR", "DD", "BA", "EP", "DA", "TI"])
      return false unless repayment_code_validator.valid?(@repayment_code)
      specified_asset_code_validator = EnumAttributeValidator.new('String', ["A", "B", "C", "D", "E", "F", "G", "H"])
      return false unless specified_asset_code_validator.valid?(@specified_asset_code)
      second_specified_asset_code_validator = EnumAttributeValidator.new('String', ["A", "B", "C", "D", "E", "F", "G", "H"])
      return false unless second_specified_asset_code_validator.valid?(@second_specified_asset_code)
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["1042-S", "1095-B", "1095-C", "1098", "1098-E", "1098-T", "1099-B", "1099-C", "1099-DIV", "1099-G", "1099-INT", "1099-K", "1099-MISC", "1099-NEC", "1099-PATR", "1099-R", "1099-S", "1099-SA", "5498", "W-2", "W-2G"])
      return false unless type_validator.valid?(@type)
      tin_type_validator = EnumAttributeValidator.new('String', ["EIN", "SSN", "ITIN", "ATIN", "INDIVIDUAL", "BUSINESS", "UNKNOWN"])
      return false unless tin_type_validator.valid?(@tin_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ira_type Object to be assigned
    def ira_type=(ira_type)
      validator = EnumAttributeValidator.new('String', ["IRA", "SEP", "SIMPLE", "ROTH"])
      unless validator.valid?(ira_type)
        fail ArgumentError, "invalid value for \"ira_type\", must be one of #{validator.allowable_values}."
      end
      @ira_type = ira_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] postponed_late_contribution_code Object to be assigned
    def postponed_late_contribution_code=(postponed_late_contribution_code)
      validator = EnumAttributeValidator.new('String', ["FD", "PL", "EO", "PO", "SC"])
      unless validator.valid?(postponed_late_contribution_code)
        fail ArgumentError, "invalid value for \"postponed_late_contribution_code\", must be one of #{validator.allowable_values}."
      end
      @postponed_late_contribution_code = postponed_late_contribution_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] repayment_code Object to be assigned
    def repayment_code=(repayment_code)
      validator = EnumAttributeValidator.new('String', ["QR", "DD", "BA", "EP", "DA", "TI"])
      unless validator.valid?(repayment_code)
        fail ArgumentError, "invalid value for \"repayment_code\", must be one of #{validator.allowable_values}."
      end
      @repayment_code = repayment_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] specified_asset_code Object to be assigned
    def specified_asset_code=(specified_asset_code)
      validator = EnumAttributeValidator.new('String', ["A", "B", "C", "D", "E", "F", "G", "H"])
      unless validator.valid?(specified_asset_code)
        fail ArgumentError, "invalid value for \"specified_asset_code\", must be one of #{validator.allowable_values}."
      end
      @specified_asset_code = specified_asset_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] second_specified_asset_code Object to be assigned
    def second_specified_asset_code=(second_specified_asset_code)
      validator = EnumAttributeValidator.new('String', ["A", "B", "C", "D", "E", "F", "G", "H"])
      unless validator.valid?(second_specified_asset_code)
        fail ArgumentError, "invalid value for \"second_specified_asset_code\", must be one of #{validator.allowable_values}."
      end
      @second_specified_asset_code = second_specified_asset_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["1042-S", "1095-B", "1095-C", "1098", "1098-E", "1098-T", "1099-B", "1099-C", "1099-DIV", "1099-G", "1099-INT", "1099-K", "1099-MISC", "1099-NEC", "1099-PATR", "1099-R", "1099-S", "1099-SA", "5498", "W-2", "W-2G"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tin_type Object to be assigned
    def tin_type=(tin_type)
      validator = EnumAttributeValidator.new('String', ["EIN", "SSN", "ITIN", "ATIN", "INDIVIDUAL", "BUSINESS", "UNKNOWN"])
      unless validator.valid?(tin_type)
        fail ArgumentError, "invalid value for \"tin_type\", must be one of #{validator.allowable_values}."
      end
      @tin_type = tin_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          ira_contributions == o.ira_contributions &&
          rollover_contributions == o.rollover_contributions &&
          roth_ira_conversion_amount == o.roth_ira_conversion_amount &&
          recharacterized_contributions == o.recharacterized_contributions &&
          fair_market_value_of_account == o.fair_market_value_of_account &&
          life_insurance_cost_included_in_ira_contributions == o.life_insurance_cost_included_in_ira_contributions &&
          ira_type == o.ira_type &&
          sep_contributions == o.sep_contributions &&
          simple_contributions == o.simple_contributions &&
          roth_ira_contributions == o.roth_ira_contributions &&
          required_minimum_distribution_indicator == o.required_minimum_distribution_indicator &&
          required_minimum_distribution_date == o.required_minimum_distribution_date &&
          required_minimum_distribution_amount == o.required_minimum_distribution_amount &&
          postponed_late_contribution == o.postponed_late_contribution &&
          postponed_late_contribution_year == o.postponed_late_contribution_year &&
          postponed_late_contribution_code == o.postponed_late_contribution_code &&
          postponed_late_contribution_reason == o.postponed_late_contribution_reason &&
          repayments == o.repayments &&
          repayment_code == o.repayment_code &&
          fair_market_value_of_certain_specified_assets == o.fair_market_value_of_certain_specified_assets &&
          specified_asset_code == o.specified_asset_code &&
          second_specified_asset_code == o.second_specified_asset_code &&
          type == o.type &&
          id == o.id &&
          issuer_id == o.issuer_id &&
          issuer_reference_id == o.issuer_reference_id &&
          issuer_tin == o.issuer_tin &&
          tax_year == o.tax_year &&
          reference_id == o.reference_id &&
          tin == o.tin &&
          recipient_name == o.recipient_name &&
          address == o.address &&
          address2 == o.address2 &&
          city == o.city &&
          state == o.state &&
          zip == o.zip &&
          email == o.email &&
          non_us_province == o.non_us_province &&
          country_code == o.country_code &&
          federal_efile_date == o.federal_efile_date &&
          postal_mail == o.postal_mail &&
          state_efile_date == o.state_efile_date &&
          recipient_edelivery_date == o.recipient_edelivery_date &&
          tin_match == o.tin_match &&
          address_verification == o.address_verification &&
          state_and_local_withholding == o.state_and_local_withholding &&
          federal_efile_status == o.federal_efile_status &&
          state_efile_status == o.state_efile_status &&
          postal_mail_status == o.postal_mail_status &&
          tin_match_status == o.tin_match_status &&
          address_verification_status == o.address_verification_status &&
          e_delivery_status == o.e_delivery_status &&
          validation_errors == o.validation_errors &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          tin_type == o.tin_type &&
          business_name == o.business_name &&
          business_name2 == o.business_name2 &&
          first_name == o.first_name &&
          middle_name == o.middle_name &&
          last_name == o.last_name &&
          suffix_name == o.suffix_name &&
          recipient_second_name == o.recipient_second_name &&
          account_number == o.account_number &&
          office_code == o.office_code &&
          no_tin == o.no_tin &&
          second_tin_notice == o.second_tin_notice
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [ira_contributions, rollover_contributions, roth_ira_conversion_amount, recharacterized_contributions, fair_market_value_of_account, life_insurance_cost_included_in_ira_contributions, ira_type, sep_contributions, simple_contributions, roth_ira_contributions, required_minimum_distribution_indicator, required_minimum_distribution_date, required_minimum_distribution_amount, postponed_late_contribution, postponed_late_contribution_year, postponed_late_contribution_code, postponed_late_contribution_reason, repayments, repayment_code, fair_market_value_of_certain_specified_assets, specified_asset_code, second_specified_asset_code, type, id, issuer_id, issuer_reference_id, issuer_tin, tax_year, reference_id, tin, recipient_name, address, address2, city, state, zip, email, non_us_province, country_code, federal_efile_date, postal_mail, state_efile_date, recipient_edelivery_date, tin_match, address_verification, state_and_local_withholding, federal_efile_status, state_efile_status, postal_mail_status, tin_match_status, address_verification_status, e_delivery_status, validation_errors, created_at, updated_at, tin_type, business_name, business_name2, first_name, middle_name, last_name, suffix_name, recipient_second_name, account_number, office_code, no_tin, second_tin_notice].hash
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
