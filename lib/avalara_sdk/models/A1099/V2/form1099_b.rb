=begin
#Avalara 1099 & W-9 API Definition

#> **Note:** You must have an active Avalara 1099 & W-9 subscription to authenticate and use these APIs. If you don't have a subscription, please contact our [Sales team](https://www.avalara.com/us/en/products/1099/request-a-demo.html).  ## Authentication  The Avalara 1099 & W-9 API uses **Bearer Token Authentication**. To authenticate, acquire a bearer token using a **Client ID** and **Client Secret** that you generate in the Avalara 1099 & W-9 web application.  The sample cURL commands below use **production** URLs. For **sandbox**, replace them with the sandbox URLs listed in the Sandbox Environment table.  ### Option 1 — Client ID and Client Secret (recommended)  **Step 1: Create API credentials in the Avalara 1099 & W-9 web app**  For a full walkthrough, see the [Avalara 1099 & W-9 integration guide](https://developer.avalara.com/products/avalara-1099-and-w9/integration-guides/1099-and-w-9/siu2796410674799/).  > **Note:** To enable credential creation you must first enter a valid company address in **Account Settings > Account** and enable two-factor authentication in **Account Settings > Security**.  1. In Avalara 1099 & W-9, open **Account Settings** (gear icon, top-right of any page) and select **API**. 2. Click **Create new credentials** (a valid company address and 2FA are required). 3. Copy your **Client Id** and **Client Secret** securely — they will not be shown again after you leave the screen.  **Step 2: Request a bearer token**  ```bash curl -X POST 'https://identity.avalara.com/connect/token' \\   --header 'Content-Type: application/x-www-form-urlencoded' \\   --data-urlencode 'grant_type=client_credentials' \\   --data-urlencode 'client_id={{client_id}}' \\   --data-urlencode 'client_secret={{client_secret}}' ```  ### Option 2 — Account ID and License Key  If your organization already uses other Avalara products (AvaTax, CertCapture) and has access to the logged-in area of Avalara.com, you can generate the bearer token using your **Account ID** and **License Key**.  > **Note:** If you already have a license key for other Avalara products you can reuse it. Generating a new key will reset any previously created key.  1. Log in to Avalara.com. 2. Go to **Settings → License and API Keys**. 3. Click **Generate New Key**. 4. Note your **Account ID** from the Account menu.  ```bash curl -X POST 'https://identity.avalara.com/connect/token' \\   --header 'Content-Type: application/x-www-form-urlencoded' \\   --data-urlencode 'grant_type=client_credentials' \\   --data-urlencode 'client_id={{accountId}}' \\   --data-urlencode 'client_secret={{licenseKey}}' ```  ### Using and renewing the bearer token  Include the token in the `Authorization` header on every request:  ```http Authorization: Bearer {access_token} ```  Tokens expire after the number of seconds in the `expires_in` field of the token response. Your integration must renew the token before it expires.  **Example token response**  ```json {   \"access_token\": \"eyJhbGciOiJIUzI1NiIsInR5cCI...\",   \"expires_in\": 3600,   \"token_type\": \"Bearer\",   \"scope\": \"avatax_api iam-ds\" } ```  ### Sandbox Environment  Use the same steps as production, replacing the base URLs:  | Purpose | Production | Sandbox | | --- | --- | --- | | Account & License Key management (web) | `https://www.avalara.com` | `https://sandbox.admin.avalara.com` | | Account & License Key management (API) | `https://rest.avatax.com` | `https://sandbox-rest.avatax.com` | | Token generation | `https://identity.avalara.com` | `https://ai-sbx.avlr.sh` |  ## Environments  #### Production - **Avalara 1099 API URL:** [`https://api.avalara.com/avalara1099`](https://api.avalara.com/avalara1099) - **Identity Token URL:** [`https://identity.avalara.com/connect/token`](https://identity.avalara.com/connect/token)  #### Sandbox - **Avalara 1099 API URL:** [`https://api.sbx.avalara.com/avalara1099`](https://api.sbx.avalara.com/avalara1099) - **Identity Token URL:** [`https://ai-sbx.avlr.sh/connect/token`](https://ai-sbx.avlr.sh/connect/token)  ---  ## API & SDK Documentation  [Avalara 1099 API Reference](https://developer.avalara.com/api-reference/avalara1099/avalara1099/)  [Avalara SDKs](https://developer.avalara.com/sdk/)  [Swagger](https://api.avalara.com/avalara1099/swagger/index.html?api-version=2.0)


=end

require 'date'
require 'time'

module AvalaraSdk::A1099::V2
      # Form 1099-B: Proceeds From Broker and Barter Exchange Transactions                The recipient is the customer and the issuer is the broker or barter exchange. Each form reports one sale.                *Required:* `applicableCheckboxOnForm8949`, `descriptionOfProperty`, `proceeds` (which can be zero or negative) and  `proceedsReportedToIrs`. `typeOfGainOrLoss` is required unless `noncoveredSecurity` is `true`.                `dateSoldOrDisposed` must fall in the tax year. `dateAcquired` can't be after the tax year or before January 1 of the  year 50 years before the current filing year, whatever the form's tax year. `costOrOtherBasis`,  `washSaleLossDisallowed` and `federalIncomeTaxWithheld` can't be negative; the other amounts can.  `federalIncomeTaxWithheld` must be less than `proceeds` (zero when `proceeds` is zero or negative), and can't be more  than 24% of the other amounts on the form combined, not counting state and local withholding.                `stateAndLocalWithholding` carries `state`, `stateId`, `stateTaxWithheld`, `locality`, `localityId` and  `localTaxWithheld`. `state` and `stateId` are required when `stateTaxWithheld` has an amount. Form 1099-B has no state  or local income fields, so `stateIncome` and `localIncome` are discarded and read back as `null`.
  class Form1099B
    # Applicable checkbox on Form 8949.                * `A` - Short-term transaction, basis reported to the IRS  * `B` - Short-term transaction, basis not reported to the IRS  * `D` - Long-term transaction, basis reported to the IRS  * `E` - Long-term transaction, basis not reported to the IRS  * `X` - Basis not reported to the IRS and the holding period is unknown
    attr_accessor :applicable_checkbox_on_form8949

    # CUSIP number (up to 13 letters or digits)
    attr_accessor :cusip_number

    # Description of property, such as the number of shares and the name of the stock
    attr_accessor :description_of_property

    # Date acquired. Can't be after the tax year or before January 1 of the year 50 years before the current  filing year (for example, 1975-01-01 when filing for 2025), whatever the form's tax year.
    attr_accessor :date_acquired

    # Date sold or disposed. Must fall in the tax year.
    attr_accessor :date_sold_or_disposed

    # Proceeds. Can be zero, or negative for a loss.
    attr_accessor :proceeds

    # Cost or other basis
    attr_accessor :cost_or_other_basis

    # Accrued market discount
    attr_accessor :accrued_market_discount

    # Wash sale loss disallowed
    attr_accessor :wash_sale_loss_disallowed

    # Type of gain or loss. Required unless `noncoveredSecurity` is `true`.                * `SHORT_TERM` - Short-term gain or loss  * `LONG_TERM` - Long-term gain or loss  * `ORDINARY_SHORT_TERM` - Ordinary, short-term  * `ORDINARY_LONG_TERM` - Ordinary, long-term
    attr_accessor :type_of_gain_or_loss

    # Source of the proceeds, if they are from collectibles or a Qualified Opportunity Fund.                * `COLLECTIBLES` - Collectibles  * `QOF` - Qualified Opportunity Fund (QOF)
    attr_accessor :proceeds_from

    # Federal income tax withheld. Must be less than `proceeds` (zero when `proceeds` is zero or negative), and can't be  more than 24% of the other amounts on the form combined, not counting state and local withholding.
    attr_accessor :federal_income_tax_withheld

    # If checked, the security is noncovered
    attr_accessor :noncovered_security

    # Whether gross or net proceeds are reported to the IRS.                * `GROSS` - Gross proceeds  * `NET` - Net proceeds
    attr_accessor :proceeds_reported_to_irs

    # If checked, the loss is not allowed based on the amount in `proceeds`
    attr_accessor :loss_not_allowed

    # Profit or (loss) realized in the tax year on closed contracts
    attr_accessor :profit_or_loss_realized_on_closed_contracts

    # Unrealized profit or (loss) on open contracts at the end of the prior tax year
    attr_accessor :unrealized_profit_or_loss_on_open_contracts_prior_year

    # Unrealized profit or (loss) on open contracts at the end of the tax year
    attr_accessor :unrealized_profit_or_loss_on_open_contracts_current_year

    # Aggregate profit or (loss) on contracts
    attr_accessor :aggregate_profit_or_loss_on_contracts

    # If checked, the basis is reported to the IRS. Only takes effect when `noncoveredSecurity` is also checked:  otherwise it isn't sent to the IRS, and changing it doesn't trigger a correction.
    attr_accessor :basis_reported_to_irs

    # Bartering
    attr_accessor :bartering

    # FATCA filing requirement
    attr_accessor :fatca_filing_requirement

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
        :'applicable_checkbox_on_form8949' => :'applicableCheckboxOnForm8949',
        :'cusip_number' => :'cusipNumber',
        :'description_of_property' => :'descriptionOfProperty',
        :'date_acquired' => :'dateAcquired',
        :'date_sold_or_disposed' => :'dateSoldOrDisposed',
        :'proceeds' => :'proceeds',
        :'cost_or_other_basis' => :'costOrOtherBasis',
        :'accrued_market_discount' => :'accruedMarketDiscount',
        :'wash_sale_loss_disallowed' => :'washSaleLossDisallowed',
        :'type_of_gain_or_loss' => :'typeOfGainOrLoss',
        :'proceeds_from' => :'proceedsFrom',
        :'federal_income_tax_withheld' => :'federalIncomeTaxWithheld',
        :'noncovered_security' => :'noncoveredSecurity',
        :'proceeds_reported_to_irs' => :'proceedsReportedToIrs',
        :'loss_not_allowed' => :'lossNotAllowed',
        :'profit_or_loss_realized_on_closed_contracts' => :'profitOrLossRealizedOnClosedContracts',
        :'unrealized_profit_or_loss_on_open_contracts_prior_year' => :'unrealizedProfitOrLossOnOpenContractsPriorYear',
        :'unrealized_profit_or_loss_on_open_contracts_current_year' => :'unrealizedProfitOrLossOnOpenContractsCurrentYear',
        :'aggregate_profit_or_loss_on_contracts' => :'aggregateProfitOrLossOnContracts',
        :'basis_reported_to_irs' => :'basisReportedToIrs',
        :'bartering' => :'bartering',
        :'fatca_filing_requirement' => :'fatcaFilingRequirement',
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
        :'applicable_checkbox_on_form8949' => :'String',
        :'cusip_number' => :'String',
        :'description_of_property' => :'String',
        :'date_acquired' => :'Date',
        :'date_sold_or_disposed' => :'Date',
        :'proceeds' => :'Float',
        :'cost_or_other_basis' => :'Float',
        :'accrued_market_discount' => :'Float',
        :'wash_sale_loss_disallowed' => :'Float',
        :'type_of_gain_or_loss' => :'String',
        :'proceeds_from' => :'String',
        :'federal_income_tax_withheld' => :'Float',
        :'noncovered_security' => :'Boolean',
        :'proceeds_reported_to_irs' => :'String',
        :'loss_not_allowed' => :'Boolean',
        :'profit_or_loss_realized_on_closed_contracts' => :'Float',
        :'unrealized_profit_or_loss_on_open_contracts_prior_year' => :'Float',
        :'unrealized_profit_or_loss_on_open_contracts_current_year' => :'Float',
        :'aggregate_profit_or_loss_on_contracts' => :'Float',
        :'basis_reported_to_irs' => :'Boolean',
        :'bartering' => :'Float',
        :'fatca_filing_requirement' => :'Boolean',
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
        :'applicable_checkbox_on_form8949',
        :'cusip_number',
        :'description_of_property',
        :'date_acquired',
        :'date_sold_or_disposed',
        :'proceeds',
        :'cost_or_other_basis',
        :'accrued_market_discount',
        :'wash_sale_loss_disallowed',
        :'type_of_gain_or_loss',
        :'proceeds_from',
        :'federal_income_tax_withheld',
        :'noncovered_security',
        :'proceeds_reported_to_irs',
        :'loss_not_allowed',
        :'profit_or_loss_realized_on_closed_contracts',
        :'unrealized_profit_or_loss_on_open_contracts_prior_year',
        :'unrealized_profit_or_loss_on_open_contracts_current_year',
        :'aggregate_profit_or_loss_on_contracts',
        :'basis_reported_to_irs',
        :'bartering',
        :'fatca_filing_requirement',
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `AvalaraSdk::A1099::V2::Form1099B` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AvalaraSdk::A1099::V2::Form1099B`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'applicable_checkbox_on_form8949')
        self.applicable_checkbox_on_form8949 = attributes[:'applicable_checkbox_on_form8949']
      else
        self.applicable_checkbox_on_form8949 = nil
      end

      if attributes.key?(:'cusip_number')
        self.cusip_number = attributes[:'cusip_number']
      end

      if attributes.key?(:'description_of_property')
        self.description_of_property = attributes[:'description_of_property']
      else
        self.description_of_property = nil
      end

      if attributes.key?(:'date_acquired')
        self.date_acquired = attributes[:'date_acquired']
      end

      if attributes.key?(:'date_sold_or_disposed')
        self.date_sold_or_disposed = attributes[:'date_sold_or_disposed']
      end

      if attributes.key?(:'proceeds')
        self.proceeds = attributes[:'proceeds']
      else
        self.proceeds = nil
      end

      if attributes.key?(:'cost_or_other_basis')
        self.cost_or_other_basis = attributes[:'cost_or_other_basis']
      end

      if attributes.key?(:'accrued_market_discount')
        self.accrued_market_discount = attributes[:'accrued_market_discount']
      end

      if attributes.key?(:'wash_sale_loss_disallowed')
        self.wash_sale_loss_disallowed = attributes[:'wash_sale_loss_disallowed']
      end

      if attributes.key?(:'type_of_gain_or_loss')
        self.type_of_gain_or_loss = attributes[:'type_of_gain_or_loss']
      end

      if attributes.key?(:'proceeds_from')
        self.proceeds_from = attributes[:'proceeds_from']
      end

      if attributes.key?(:'federal_income_tax_withheld')
        self.federal_income_tax_withheld = attributes[:'federal_income_tax_withheld']
      end

      if attributes.key?(:'noncovered_security')
        self.noncovered_security = attributes[:'noncovered_security']
      end

      if attributes.key?(:'proceeds_reported_to_irs')
        self.proceeds_reported_to_irs = attributes[:'proceeds_reported_to_irs']
      else
        self.proceeds_reported_to_irs = nil
      end

      if attributes.key?(:'loss_not_allowed')
        self.loss_not_allowed = attributes[:'loss_not_allowed']
      end

      if attributes.key?(:'profit_or_loss_realized_on_closed_contracts')
        self.profit_or_loss_realized_on_closed_contracts = attributes[:'profit_or_loss_realized_on_closed_contracts']
      end

      if attributes.key?(:'unrealized_profit_or_loss_on_open_contracts_prior_year')
        self.unrealized_profit_or_loss_on_open_contracts_prior_year = attributes[:'unrealized_profit_or_loss_on_open_contracts_prior_year']
      end

      if attributes.key?(:'unrealized_profit_or_loss_on_open_contracts_current_year')
        self.unrealized_profit_or_loss_on_open_contracts_current_year = attributes[:'unrealized_profit_or_loss_on_open_contracts_current_year']
      end

      if attributes.key?(:'aggregate_profit_or_loss_on_contracts')
        self.aggregate_profit_or_loss_on_contracts = attributes[:'aggregate_profit_or_loss_on_contracts']
      end

      if attributes.key?(:'basis_reported_to_irs')
        self.basis_reported_to_irs = attributes[:'basis_reported_to_irs']
      end

      if attributes.key?(:'bartering')
        self.bartering = attributes[:'bartering']
      end

      if attributes.key?(:'fatca_filing_requirement')
        self.fatca_filing_requirement = attributes[:'fatca_filing_requirement']
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
      applicable_checkbox_on_form8949_validator = EnumAttributeValidator.new('String', ["A", "B", "D", "E", "X"])
      return false unless applicable_checkbox_on_form8949_validator.valid?(@applicable_checkbox_on_form8949)
      type_of_gain_or_loss_validator = EnumAttributeValidator.new('String', ["SHORT_TERM", "LONG_TERM", "ORDINARY_SHORT_TERM", "ORDINARY_LONG_TERM"])
      return false unless type_of_gain_or_loss_validator.valid?(@type_of_gain_or_loss)
      proceeds_from_validator = EnumAttributeValidator.new('String', ["COLLECTIBLES", "QOF"])
      return false unless proceeds_from_validator.valid?(@proceeds_from)
      proceeds_reported_to_irs_validator = EnumAttributeValidator.new('String', ["GROSS", "NET"])
      return false unless proceeds_reported_to_irs_validator.valid?(@proceeds_reported_to_irs)
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["1042-S", "1095-B", "1095-C", "1098", "1098-E", "1098-T", "1099-B", "1099-C", "1099-DIV", "1099-G", "1099-INT", "1099-K", "1099-MISC", "1099-NEC", "1099-PATR", "1099-R", "1099-S", "1099-SA", "5498", "W-2", "W-2G"])
      return false unless type_validator.valid?(@type)
      tin_type_validator = EnumAttributeValidator.new('String', ["EIN", "SSN", "ITIN", "ATIN", "INDIVIDUAL", "BUSINESS", "UNKNOWN"])
      return false unless tin_type_validator.valid?(@tin_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] applicable_checkbox_on_form8949 Object to be assigned
    def applicable_checkbox_on_form8949=(applicable_checkbox_on_form8949)
      validator = EnumAttributeValidator.new('String', ["A", "B", "D", "E", "X"])
      unless validator.valid?(applicable_checkbox_on_form8949)
        fail ArgumentError, "invalid value for \"applicable_checkbox_on_form8949\", must be one of #{validator.allowable_values}."
      end
      @applicable_checkbox_on_form8949 = applicable_checkbox_on_form8949
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type_of_gain_or_loss Object to be assigned
    def type_of_gain_or_loss=(type_of_gain_or_loss)
      validator = EnumAttributeValidator.new('String', ["SHORT_TERM", "LONG_TERM", "ORDINARY_SHORT_TERM", "ORDINARY_LONG_TERM"])
      unless validator.valid?(type_of_gain_or_loss)
        fail ArgumentError, "invalid value for \"type_of_gain_or_loss\", must be one of #{validator.allowable_values}."
      end
      @type_of_gain_or_loss = type_of_gain_or_loss
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] proceeds_from Object to be assigned
    def proceeds_from=(proceeds_from)
      validator = EnumAttributeValidator.new('String', ["COLLECTIBLES", "QOF"])
      unless validator.valid?(proceeds_from)
        fail ArgumentError, "invalid value for \"proceeds_from\", must be one of #{validator.allowable_values}."
      end
      @proceeds_from = proceeds_from
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] proceeds_reported_to_irs Object to be assigned
    def proceeds_reported_to_irs=(proceeds_reported_to_irs)
      validator = EnumAttributeValidator.new('String', ["GROSS", "NET"])
      unless validator.valid?(proceeds_reported_to_irs)
        fail ArgumentError, "invalid value for \"proceeds_reported_to_irs\", must be one of #{validator.allowable_values}."
      end
      @proceeds_reported_to_irs = proceeds_reported_to_irs
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
          applicable_checkbox_on_form8949 == o.applicable_checkbox_on_form8949 &&
          cusip_number == o.cusip_number &&
          description_of_property == o.description_of_property &&
          date_acquired == o.date_acquired &&
          date_sold_or_disposed == o.date_sold_or_disposed &&
          proceeds == o.proceeds &&
          cost_or_other_basis == o.cost_or_other_basis &&
          accrued_market_discount == o.accrued_market_discount &&
          wash_sale_loss_disallowed == o.wash_sale_loss_disallowed &&
          type_of_gain_or_loss == o.type_of_gain_or_loss &&
          proceeds_from == o.proceeds_from &&
          federal_income_tax_withheld == o.federal_income_tax_withheld &&
          noncovered_security == o.noncovered_security &&
          proceeds_reported_to_irs == o.proceeds_reported_to_irs &&
          loss_not_allowed == o.loss_not_allowed &&
          profit_or_loss_realized_on_closed_contracts == o.profit_or_loss_realized_on_closed_contracts &&
          unrealized_profit_or_loss_on_open_contracts_prior_year == o.unrealized_profit_or_loss_on_open_contracts_prior_year &&
          unrealized_profit_or_loss_on_open_contracts_current_year == o.unrealized_profit_or_loss_on_open_contracts_current_year &&
          aggregate_profit_or_loss_on_contracts == o.aggregate_profit_or_loss_on_contracts &&
          basis_reported_to_irs == o.basis_reported_to_irs &&
          bartering == o.bartering &&
          fatca_filing_requirement == o.fatca_filing_requirement &&
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
      [applicable_checkbox_on_form8949, cusip_number, description_of_property, date_acquired, date_sold_or_disposed, proceeds, cost_or_other_basis, accrued_market_discount, wash_sale_loss_disallowed, type_of_gain_or_loss, proceeds_from, federal_income_tax_withheld, noncovered_security, proceeds_reported_to_irs, loss_not_allowed, profit_or_loss_realized_on_closed_contracts, unrealized_profit_or_loss_on_open_contracts_prior_year, unrealized_profit_or_loss_on_open_contracts_current_year, aggregate_profit_or_loss_on_contracts, basis_reported_to_irs, bartering, fatca_filing_requirement, type, id, issuer_id, issuer_reference_id, issuer_tin, tax_year, reference_id, tin, recipient_name, address, address2, city, state, zip, email, non_us_province, country_code, federal_efile_date, postal_mail, state_efile_date, recipient_edelivery_date, tin_match, address_verification, state_and_local_withholding, federal_efile_status, state_efile_status, postal_mail_status, tin_match_status, address_verification_status, e_delivery_status, validation_errors, created_at, updated_at, tin_type, business_name, business_name2, first_name, middle_name, last_name, suffix_name, recipient_second_name, account_number, office_code, no_tin, second_tin_notice].hash
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
