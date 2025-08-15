=begin
#Avalara 1099 & W-9 API Definition

### 🔐 Authentication  Generate a **license key** from: *[Avalara Portal](https://www.avalara.com/us/en/signin.html) → Settings → License and API Keys*.  [More on authentication methods](https://developer.avalara.com/avatax-dm-combined-erp/common-setup/authentication/authentication-methods/)  [Test your credentials](https://developer.avalara.com/avatax/test-credentials/)  ## 📘 API & SDK Documentation  [Avalara SDK (.NET) on GitHub](https://github.com/avadev/Avalara-SDK-DotNet#avalarasdk--the-unified-c-library-for-next-gen-avalara-services)  [Code Examples – 1099 API](https://github.com/avadev/Avalara-SDK-DotNet/blob/main/docs/A1099/V2/Class1099IssuersApi.md#call1099issuersget)


=end

require 'cgi'

module AvalaraSdk::A1099
  module AvalaraSdk::A1099::V2
    class Forms1099Api
      attr_accessor :api_client

      def initialize(api_client)
        if (api_client.nil?)
          fail  ArgumentError,'api_client is nil'
        end
        api_client.set_sdk_version("25.8.2")
        @api_client = api_client
      end

      # JSON MIME examples:
      #   application/json
      #   application/json; charset=UTF8
      #   APPLICATION/JSON
      #   */*
      # @param [String] mime MIME
      # @return [Boolean] True if the MIME is application/json
      def json_mime?(mime)
        (mime == '*/*') || !(mime =~ /Application\/.*json(?!p)(;.*)?/i).nil?
      end

      # Deserialize the response to the given return type.
      #
      # @param [Response] response HTTP response
      # @param [String] return_type some examples: "User", "Array<User>", "Hash<String, Integer>"
      def deserialize(response, return_type)
        body = response.body

        # handle file downloading - return the File instance processed in request callbacks
        # note that response body is empty when the file is written in chunks in request on_body callback
        if return_type == 'File'
          content_disposition = response.headers['Content-Disposition']
          if content_disposition && content_disposition =~ /filename=/i
            filename = content_disposition[/filename=['"]?([^'"\s]+)['"]?/, 1]
            prefix = sanitize_filename(filename)
          else
            prefix = 'download-'
          end
          prefix = prefix + '-' unless prefix.end_with?('-')
          encoding = body.encoding
          @tempfile = Tempfile.open(prefix, @config.temp_folder_path, encoding: encoding)
          @tempfile.write(@stream.join.force_encoding(encoding))
          @tempfile.close
          @config.logger.info "Temp file written to #{@tempfile.path}, please copy the file to a proper folder "\
                              "with e.g. `FileUtils.cp(tempfile.path, '/new/file/path')` otherwise the temp file "\
                              "will be deleted automatically with GC. It's also recommended to delete the temp file "\
                              "explicitly with `tempfile.delete`"
          return @tempfile
        end

        return nil if body.nil? || body.empty?

        # return response body directly for String return type
        return body if return_type == 'String'

        # ensuring a default content type
        content_type = response.headers['Content-Type'] || 'application/json'

        fail "Content-Type is not supported: #{content_type}" unless json_mime?(content_type)

        begin
          data = JSON.parse("[#{body}]", :symbolize_names => true)[0]
        rescue JSON::ParserError => e
          if %w(String Date Time).include?(return_type)
            data = body
          else
            raise e
          end
        end

        convert_to_type data, return_type
      end

      # Convert data to the given return type.
      # @param [Object] data Data to be converted
      # @param [String] return_type Return type
      # @return [Mixed] Data in a particular type
      def convert_to_type(data, return_type)
        return nil if data.nil?
        case return_type
        when 'String'
          data.to_s
        when 'Integer'
          data.to_i
        when 'Float'
          data.to_f
        when 'Boolean'
          data == true
        when 'Time'
          # parse date time (expecting ISO 8601 format)
          Time.parse data
        when 'Date'
          # parse date time (expecting ISO 8601 format)
          Date.parse data
        when 'Object'
          # generic object (usually a Hash), return directly
          data
        when /\AArray<(.+)>\z/
          # e.g. Array<Pet>
          sub_type = $1
          data.map { |item| convert_to_type(item, sub_type) }
        when /\AHash\<String, (.+)\>\z/
          # e.g. Hash<String, Integer>
          sub_type = $1
          {}.tap do |hash|
            data.each { |k, v| hash[k] = convert_to_type(v, sub_type) }
          end
        else
          # models (e.g. Pet) or oneOf
          klass = AvalaraSdk::A1099::V2.const_get(return_type)
          klass.respond_to?(:openapi_one_of) ? klass.build(data) : klass.build_from_hash(data)
        end
      end

      # Sanitize filename by removing path.
      # e.g. ../../sun.gif becomes sun.gif
      #
      # @param [String] filename the filename to be sanitized
      # @return [String] the sanitized filename
      def sanitize_filename(filename)
        filename.gsub(/.*[\/\\]/, '')
      end

      # Update header and query params based on authentication settings.
      #
      # @param [Hash] header_params Header parameters
      # @param [Hash] query_params Query parameters
      # @param [String] auth_names Authentication scheme name
      def update_params_for_auth!(header_params, query_params, auth_names)
        Array(auth_names).each do |auth_name|
          auth_setting = @config.auth_settings[auth_name]
          next unless auth_setting
          case auth_setting[:in]
          when 'header' then header_params[auth_setting[:key]] = auth_setting[:value]
          when 'query'  then query_params[auth_setting[:key]] = auth_setting[:value]
          else fail ArgumentError, 'Authentication token must be in `query` or `header`'
          end
        end
      end

      # Sets user agent in HTTP header
      #
      # @param [String] user_agent User agent (e.g. openapi-generator/ruby/1.0.0)
      def user_agent=(user_agent)
        @user_agent = user_agent
        @default_headers['User-Agent'] = @user_agent
      end

      # Return Accept header based on an array of accepts provided.
      # @param [Array] accepts array for Accept
      # @return [String] the Accept header (e.g. application/json)
      def select_header_accept(accepts)
        return nil if accepts.nil? || accepts.empty?
        # use JSON when present, otherwise use all of the provided
        json_accept = accepts.find { |s| json_mime?(s) }
        json_accept || accepts.join(',')
      end

      # Return Content-Type header based on an array of content types provided.
      # @param [Array] content_types array for Content-Type
      # @return [String] the Content-Type header  (e.g. application/json)
      def select_header_content_type(content_types)
        # return nil by default
        return if content_types.nil? || content_types.empty?
        # use JSON when present, otherwise use the first one
        json_content_type = content_types.find { |s| json_mime?(s) }
        json_content_type || content_types.first
      end

      # Convert object (array, hash, object, etc) to JSON string.
      # @param [Object] model object to be converted into JSON string
      # @return [String] JSON string representation of the object
      def object_to_http_body(model)
        return model if model.nil? || model.is_a?(String)
        local_body = nil
        if model.is_a?(Array)
          local_body = model.map { |m| object_to_hash(m) }
        else
          local_body = object_to_hash(model)
        end
        local_body.to_json
      end

      # Convert object(non-array) to hash.
      # @param [Object] obj object to be converted into JSON string
      # @return [String] JSON string representation of the object
      def object_to_hash(obj)
        if obj.respond_to?(:to_hash)
          obj.to_hash
        else
          obj
        end
      end

      # Build parameter value according to the given collection format.
      # @param [String] collection_format one of :csv, :ssv, :tsv, :pipes and :multi
      def build_collection_param(param, collection_format)
        case collection_format
        when :csv
          param.join(',')
        when :ssv
          param.join(' ')
        when :tsv
          param.join("\t")
        when :pipes
          param.join('|')
        when :multi
          # return the array directly as typhoeus will handle it as expected
          param
        else
          fail "unknown collection format: #{collection_format.inspect}"
        end
      end
    
      # Create or update multiple 1099/1095/W2/1042S forms
      # This endpoint allows you to create or update multiple 1099/1095/W2/1042S forms.  You can use one of the following payload structures:                **Form 1099-MISC:**  ```json  {     \"formType\": \"1099-MISC\",     \"forms\": [         {             \"IssuerId\": \"123456\",             \"IssuerReferenceId\": \"REF123\",             \"IssuerTin\": \"12-3456789\",             \"TaxYear\": 2023,             \"ReferenceId\": \"FORM123456\",             \"RecipientName\": \"John Doe\",             \"RecipientTin\": \"587-65-4321\",             \"TinType\": \"SSN\",             \"RecipientSecondName\": \"Jane Doe\",             \"Address\": \"123 Main Street\",             \"Address2\": \"Apt 4B\",             \"City\": \"New York\",             \"State\": \"NY\",             \"Zip\": \"10001\",             \"Email\": \"john.doe@email.com\",             \"AccountNumber\": \"ACC123456\",             \"OfficeCode\": \"NYC01\",             \"SecondTinNotice\": false,             \"NonUsProvince\": \"\",             \"CountryCode\": \"US\",             \"Rents\": 12000.00,             \"Royalties\": 5000.00,             \"OtherIncome\": 3000.00,             \"FishingBoatProceeds\": 0.00,             \"MedicalAndHealthCarePayments\": 15000.00,             \"SubstitutePayments\": 1000.00,             \"CropInsuranceProceeds\": 0.00,             \"GrossProceedsPaidToAttorney\": 7500.00,             \"FishPurchasedForResale\": 0.00,             \"FedIncomeTaxWithheld\": 5000.00,             \"Section409ADeferrals\": 0.00,             \"ExcessGoldenParachutePayments\": 0.00,             \"NonqualifiedDeferredCompensation\": 0.00,             \"DirectSalesIndicator\": false,             \"FatcaFilingRequirement\": false,             \"StateAndLocalWithholding\": {               \"StateTaxWithheld\": 2500.00,               \"LocalTaxWithheld\": 1000.00,               \"State\": \"NY\",               \"StateIdNumber\": \"NY123456\",               \"Locality\": \"New York City\",               \"StateIncome\": 35000.00,               \"LocalIncome\": 35000.00             }         }     ]  }  ```                **Form 1099-NEC:**  ```json  {    \"formType\": \"1099-NEC\",    \"forms\": [      {        \"issuerID\": \"180337282\",        \"issuerReferenceId\": \"ISS123\",        \"issuerTin\": \"12-3000000\",        \"taxYear\": 2024,        \"referenceID\": \"REF-002\",        \"recipientName\": \"Jane Smith\",        \"recipientSecondName\": \"\",        \"recipientTin\": \"587-65-4321\",        \"tinType\": \"SSN\",        \"address\": \"123 Center St\",        \"address2\": \"\",        \"city\": \"Santa Monica\",        \"state\": \"CA\",        \"zip\": \"90401\",        \"countryCode\": \"US\",        \"nonUsProvince\": \"\",        \"email\": \"\",        \"accountNumber\": \"\",        \"officeCode\": \"\",        \"secondTinNotice\": false,        \"nonemployeeCompensation\": 123.45,        \"directSalesIndicator\": false,        \"federalIncomeTaxWithheld\": 12.34,        \"stateAndLocalWithholding\": {          \"state\": \"CA\",          \"stateIdNumber\": \"123123123\",          \"stateIncome\": 123.45,          \"stateTaxWithheld\": 12.34,          \"locality\": \"Santa Monica\",          \"localityIdNumber\": \"456456\",          \"localTaxWithheld\": 12.34,          \"localIncome\": 50000.00         },        \"federalEFile\": true,        \"postalMail\": true,        \"stateEFile\": true,        \"tinMatch\": true,        \"addressVerification\": true       }     ]   }  ```  For the full version of the payload and its schema details, refer to the Swagger schemas section.
      # @param avalara_version [String] API version      # @param dry_run [Boolean]       # @param x_correlation_id [String] Unique correlation Id in a GUID format      # @param x_avalara_client [String] Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .      # @param bulk_upsert1099_forms_request [BulkUpsert1099FormsRequest] 
      # @return [Form1099ProccessResult]
      def bulk_upsert1099_forms(request_parameters)
        data, _status_code, _headers = bulk_upsert1099_forms_with_http_info(request_parameters)
        data
      end

      # Create or update multiple 1099/1095/W2/1042S forms
      # This endpoint allows you to create or update multiple 1099/1095/W2/1042S forms.  You can use one of the following payload structures:                **Form 1099-MISC:**  &#x60;&#x60;&#x60;json  {     \&quot;formType\&quot;: \&quot;1099-MISC\&quot;,     \&quot;forms\&quot;: [         {             \&quot;IssuerId\&quot;: \&quot;123456\&quot;,             \&quot;IssuerReferenceId\&quot;: \&quot;REF123\&quot;,             \&quot;IssuerTin\&quot;: \&quot;12-3456789\&quot;,             \&quot;TaxYear\&quot;: 2023,             \&quot;ReferenceId\&quot;: \&quot;FORM123456\&quot;,             \&quot;RecipientName\&quot;: \&quot;John Doe\&quot;,             \&quot;RecipientTin\&quot;: \&quot;587-65-4321\&quot;,             \&quot;TinType\&quot;: \&quot;SSN\&quot;,             \&quot;RecipientSecondName\&quot;: \&quot;Jane Doe\&quot;,             \&quot;Address\&quot;: \&quot;123 Main Street\&quot;,             \&quot;Address2\&quot;: \&quot;Apt 4B\&quot;,             \&quot;City\&quot;: \&quot;New York\&quot;,             \&quot;State\&quot;: \&quot;NY\&quot;,             \&quot;Zip\&quot;: \&quot;10001\&quot;,             \&quot;Email\&quot;: \&quot;john.doe@email.com\&quot;,             \&quot;AccountNumber\&quot;: \&quot;ACC123456\&quot;,             \&quot;OfficeCode\&quot;: \&quot;NYC01\&quot;,             \&quot;SecondTinNotice\&quot;: false,             \&quot;NonUsProvince\&quot;: \&quot;\&quot;,             \&quot;CountryCode\&quot;: \&quot;US\&quot;,             \&quot;Rents\&quot;: 12000.00,             \&quot;Royalties\&quot;: 5000.00,             \&quot;OtherIncome\&quot;: 3000.00,             \&quot;FishingBoatProceeds\&quot;: 0.00,             \&quot;MedicalAndHealthCarePayments\&quot;: 15000.00,             \&quot;SubstitutePayments\&quot;: 1000.00,             \&quot;CropInsuranceProceeds\&quot;: 0.00,             \&quot;GrossProceedsPaidToAttorney\&quot;: 7500.00,             \&quot;FishPurchasedForResale\&quot;: 0.00,             \&quot;FedIncomeTaxWithheld\&quot;: 5000.00,             \&quot;Section409ADeferrals\&quot;: 0.00,             \&quot;ExcessGoldenParachutePayments\&quot;: 0.00,             \&quot;NonqualifiedDeferredCompensation\&quot;: 0.00,             \&quot;DirectSalesIndicator\&quot;: false,             \&quot;FatcaFilingRequirement\&quot;: false,             \&quot;StateAndLocalWithholding\&quot;: {               \&quot;StateTaxWithheld\&quot;: 2500.00,               \&quot;LocalTaxWithheld\&quot;: 1000.00,               \&quot;State\&quot;: \&quot;NY\&quot;,               \&quot;StateIdNumber\&quot;: \&quot;NY123456\&quot;,               \&quot;Locality\&quot;: \&quot;New York City\&quot;,               \&quot;StateIncome\&quot;: 35000.00,               \&quot;LocalIncome\&quot;: 35000.00             }         }     ]  }  &#x60;&#x60;&#x60;                **Form 1099-NEC:**  &#x60;&#x60;&#x60;json  {    \&quot;formType\&quot;: \&quot;1099-NEC\&quot;,    \&quot;forms\&quot;: [      {        \&quot;issuerID\&quot;: \&quot;180337282\&quot;,        \&quot;issuerReferenceId\&quot;: \&quot;ISS123\&quot;,        \&quot;issuerTin\&quot;: \&quot;12-3000000\&quot;,        \&quot;taxYear\&quot;: 2024,        \&quot;referenceID\&quot;: \&quot;REF-002\&quot;,        \&quot;recipientName\&quot;: \&quot;Jane Smith\&quot;,        \&quot;recipientSecondName\&quot;: \&quot;\&quot;,        \&quot;recipientTin\&quot;: \&quot;587-65-4321\&quot;,        \&quot;tinType\&quot;: \&quot;SSN\&quot;,        \&quot;address\&quot;: \&quot;123 Center St\&quot;,        \&quot;address2\&quot;: \&quot;\&quot;,        \&quot;city\&quot;: \&quot;Santa Monica\&quot;,        \&quot;state\&quot;: \&quot;CA\&quot;,        \&quot;zip\&quot;: \&quot;90401\&quot;,        \&quot;countryCode\&quot;: \&quot;US\&quot;,        \&quot;nonUsProvince\&quot;: \&quot;\&quot;,        \&quot;email\&quot;: \&quot;\&quot;,        \&quot;accountNumber\&quot;: \&quot;\&quot;,        \&quot;officeCode\&quot;: \&quot;\&quot;,        \&quot;secondTinNotice\&quot;: false,        \&quot;nonemployeeCompensation\&quot;: 123.45,        \&quot;directSalesIndicator\&quot;: false,        \&quot;federalIncomeTaxWithheld\&quot;: 12.34,        \&quot;stateAndLocalWithholding\&quot;: {          \&quot;state\&quot;: \&quot;CA\&quot;,          \&quot;stateIdNumber\&quot;: \&quot;123123123\&quot;,          \&quot;stateIncome\&quot;: 123.45,          \&quot;stateTaxWithheld\&quot;: 12.34,          \&quot;locality\&quot;: \&quot;Santa Monica\&quot;,          \&quot;localityIdNumber\&quot;: \&quot;456456\&quot;,          \&quot;localTaxWithheld\&quot;: 12.34,          \&quot;localIncome\&quot;: 50000.00         },        \&quot;federalEFile\&quot;: true,        \&quot;postalMail\&quot;: true,        \&quot;stateEFile\&quot;: true,        \&quot;tinMatch\&quot;: true,        \&quot;addressVerification\&quot;: true       }     ]   }  &#x60;&#x60;&#x60;  For the full version of the payload and its schema details, refer to the Swagger schemas section.
          
      # @param avalara_version [String] API version    
      # @param dry_run [Boolean]     
      # @param x_correlation_id [String] Unique correlation Id in a GUID format    
      # @param x_avalara_client [String] Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .    
      # @param bulk_upsert1099_forms_request [BulkUpsert1099FormsRequest]     
      # @return [Array<(Form1099ProccessResult, Integer, Hash)>] Form1099ProccessResult data, response status code and response headers
      def bulk_upsert1099_forms_with_http_info(request_parameters)
        # OAuth2 Scopes
        required_scopes = ''
        # Request Parameters
        avalara_version = request_parameters.get_avalara_version()
        dry_run = request_parameters.get_dry_run()
        x_correlation_id = request_parameters.get_x_correlation_id()
        x_avalara_client = request_parameters.get_x_avalara_client()
        bulk_upsert1099_forms_request = request_parameters.get_bulk_upsert1099_forms_request()
        # verify the required parameter 'avalara_version' is set
        if @api_client.config.client_side_validation && avalara_version.nil?
          fail ArgumentError, "Missing the required parameter 'avalara_version' when calling Forms1099Api.bulk_upsert1099_forms"
        end
        # resource path
        local_var_path = '/1099/forms/$bulk-upsert'

        # query parameters
        query_params = {}
        if !dry_run.nil?
          query_params[:'dryRun'] = dry_run
        end

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/json'])
        # HTTP header 'Content-Type'
        content_type = @api_client.select_header_content_type(['application/json', 'text/json', 'application/*+json'])
        if !content_type.nil?
            header_params['Content-Type'] = content_type
        end
        if !avalara_version.nil?
          header_params[:'avalara-version'] = avalara_version
        end
        if !x_correlation_id.nil?
          header_params[:'X-Correlation-Id'] = x_correlation_id
        end
        if !x_avalara_client.nil?
          header_params[:'X-Avalara-Client'] = x_avalara_client
        end

        # form parameters
        form_params = {}

        # http body (model)
        post_body =  @api_client.object_to_http_body(bulk_upsert1099_forms_request) || {}

        # return_type
        return_type = 'Form1099ProccessResult'

        # auth_names
        auth_names = ['bearer']

        @api_client.apply_auth_to_request!(header_params, auth_names, required_scopes)

        new_options = {
          :operation => :"Forms1099Api.bulk_upsert1099_forms",
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => return_type
        }

        response = @api_client.call_api(:POST, local_var_path, new_options, required_scopes, false, :A1099)
        if new_options[:return_type]
          data = deserialize(response, new_options[:return_type])
        else
          data = nil
        end
        return data, response.code, response.headers
      end

      # Create a 1099/1095/W2/1042S form
      # Create a 1099/1095/W2/1042S form.
      # @param avalara_version [String] API version      # @param x_correlation_id [String] Unique correlation Id in a GUID format      # @param x_avalara_client [String] Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .      # @param i_create_form1099_request [ICreateForm1099Request] 
      # @return [Create1099Form201Response]
      def create1099_form(request_parameters)
        data, _status_code, _headers = create1099_form_with_http_info(request_parameters)
        data
      end

      # Create a 1099/1095/W2/1042S form
      # Create a 1099/1095/W2/1042S form.
          
      # @param avalara_version [String] API version    
      # @param x_correlation_id [String] Unique correlation Id in a GUID format    
      # @param x_avalara_client [String] Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .    
      # @param i_create_form1099_request [ICreateForm1099Request]     
      # @return [Array<(Create1099Form201Response, Integer, Hash)>] Create1099Form201Response data, response status code and response headers
      def create1099_form_with_http_info(request_parameters)
        # OAuth2 Scopes
        required_scopes = ''
        # Request Parameters
        avalara_version = request_parameters.get_avalara_version()
        x_correlation_id = request_parameters.get_x_correlation_id()
        x_avalara_client = request_parameters.get_x_avalara_client()
        i_create_form1099_request = request_parameters.get_i_create_form1099_request()
        # verify the required parameter 'avalara_version' is set
        if @api_client.config.client_side_validation && avalara_version.nil?
          fail ArgumentError, "Missing the required parameter 'avalara_version' when calling Forms1099Api.create1099_form"
        end
        # resource path
        local_var_path = '/1099/forms'

        # query parameters
        query_params = {}

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/json'])
        # HTTP header 'Content-Type'
        content_type = @api_client.select_header_content_type(['application/json', 'text/json', 'application/*+json'])
        if !content_type.nil?
            header_params['Content-Type'] = content_type
        end
        if !avalara_version.nil?
          header_params[:'avalara-version'] = avalara_version
        end
        if !x_correlation_id.nil?
          header_params[:'X-Correlation-Id'] = x_correlation_id
        end
        if !x_avalara_client.nil?
          header_params[:'X-Avalara-Client'] = x_avalara_client
        end

        # form parameters
        form_params = {}

        # http body (model)
        post_body =  @api_client.object_to_http_body(i_create_form1099_request) || {}

        # return_type
        return_type = 'Create1099Form201Response'

        # auth_names
        auth_names = ['bearer']

        @api_client.apply_auth_to_request!(header_params, auth_names, required_scopes)

        new_options = {
          :operation => :"Forms1099Api.create1099_form",
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => return_type
        }

        response = @api_client.call_api(:POST, local_var_path, new_options, required_scopes, false, :A1099)
        if new_options[:return_type]
          data = deserialize(response, new_options[:return_type])
        else
          data = nil
        end
        return data, response.code, response.headers
      end

      # Delete a 1099/1095/W2/1042S form
      # Delete a 1099/1095/W2/1042S form.
      # @param id [String] The unique identifier of the desired form to delete.      # @param avalara_version [String] API version      # @param x_correlation_id [String] Unique correlation Id in a GUID format      # @param x_avalara_client [String] Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .
      # @return [nil]
      def delete1099_form(request_parameters)
        delete1099_form_with_http_info(request_parameters)
        nil
      end

      # Delete a 1099/1095/W2/1042S form
      # Delete a 1099/1095/W2/1042S form.
          
      # @param id [String] The unique identifier of the desired form to delete.    
      # @param avalara_version [String] API version    
      # @param x_correlation_id [String] Unique correlation Id in a GUID format    
      # @param x_avalara_client [String] Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .    
      # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
      def delete1099_form_with_http_info(request_parameters)
        # OAuth2 Scopes
        required_scopes = ''
        # Request Parameters
        id = request_parameters.get_id()
        avalara_version = request_parameters.get_avalara_version()
        x_correlation_id = request_parameters.get_x_correlation_id()
        x_avalara_client = request_parameters.get_x_avalara_client()
        # verify the required parameter 'id' is set
        if @api_client.config.client_side_validation && id.nil?
          fail ArgumentError, "Missing the required parameter 'id' when calling Forms1099Api.delete1099_form"
        end
        # verify the required parameter 'avalara_version' is set
        if @api_client.config.client_side_validation && avalara_version.nil?
          fail ArgumentError, "Missing the required parameter 'avalara_version' when calling Forms1099Api.delete1099_form"
        end
        # resource path
        local_var_path = '/1099/forms/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

        # query parameters
        query_params = {}

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/json'])
        if !avalara_version.nil?
          header_params[:'avalara-version'] = avalara_version
        end
        if !x_correlation_id.nil?
          header_params[:'X-Correlation-Id'] = x_correlation_id
        end
        if !x_avalara_client.nil?
          header_params[:'X-Avalara-Client'] = x_avalara_client
        end

        # form parameters
        form_params = {}

        # http body (model)
        post_body = {}

        # return_type
        return_type = ''

        # auth_names
        auth_names = ['bearer']

        @api_client.apply_auth_to_request!(header_params, auth_names, required_scopes)

        new_options = {
          :operation => :"Forms1099Api.delete1099_form",
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => return_type
        }

        response = @api_client.call_api(:DELETE, local_var_path, new_options, required_scopes, false, :A1099)
        if new_options[:return_type]
          data = deserialize(response, new_options[:return_type])
        else
          data = nil
        end
        return data, response.code, response.headers
      end

      # Retrieve a 1099/1095/W2/1042S form
      # Retrieve a 1099/1095/W2/1042S form.
      # @param id [String]       # @param avalara_version [String] API version      # @param x_correlation_id [String] Unique correlation Id in a GUID format      # @param x_avalara_client [String] Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .
      # @return [Get1099Form200Response]
      def get1099_form(request_parameters)
        data, _status_code, _headers = get1099_form_with_http_info(request_parameters)
        data
      end

      # Retrieve a 1099/1095/W2/1042S form
      # Retrieve a 1099/1095/W2/1042S form.
          
      # @param id [String]     
      # @param avalara_version [String] API version    
      # @param x_correlation_id [String] Unique correlation Id in a GUID format    
      # @param x_avalara_client [String] Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .    
      # @return [Array<(Get1099Form200Response, Integer, Hash)>] Get1099Form200Response data, response status code and response headers
      def get1099_form_with_http_info(request_parameters)
        # OAuth2 Scopes
        required_scopes = ''
        # Request Parameters
        id = request_parameters.get_id()
        avalara_version = request_parameters.get_avalara_version()
        x_correlation_id = request_parameters.get_x_correlation_id()
        x_avalara_client = request_parameters.get_x_avalara_client()
        # verify the required parameter 'id' is set
        if @api_client.config.client_side_validation && id.nil?
          fail ArgumentError, "Missing the required parameter 'id' when calling Forms1099Api.get1099_form"
        end
        # verify the required parameter 'avalara_version' is set
        if @api_client.config.client_side_validation && avalara_version.nil?
          fail ArgumentError, "Missing the required parameter 'avalara_version' when calling Forms1099Api.get1099_form"
        end
        # resource path
        local_var_path = '/1099/forms/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

        # query parameters
        query_params = {}

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/json'])
        if !avalara_version.nil?
          header_params[:'avalara-version'] = avalara_version
        end
        if !x_correlation_id.nil?
          header_params[:'X-Correlation-Id'] = x_correlation_id
        end
        if !x_avalara_client.nil?
          header_params[:'X-Avalara-Client'] = x_avalara_client
        end

        # form parameters
        form_params = {}

        # http body (model)
        post_body = {}

        # return_type
        return_type = 'Get1099Form200Response'

        # auth_names
        auth_names = ['bearer']

        @api_client.apply_auth_to_request!(header_params, auth_names, required_scopes)

        new_options = {
          :operation => :"Forms1099Api.get1099_form",
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => return_type
        }

        response = @api_client.call_api(:GET, local_var_path, new_options, required_scopes, false, :A1099)
        if new_options[:return_type]
          data = deserialize(response, new_options[:return_type])
        else
          data = nil
        end
        return data, response.code, response.headers
      end

      # Retrieve the PDF file for a 1099/1095/W2/1042S form
      # Retrieve the PDF file for a 1099/1095/W2/1042S form.
      # @param id [String] The ID of the form      # @param avalara_version [String] API version      # @param mark_edelivered [Boolean] Optional boolean that if set indicates that the form should be marked as having been successfully edelivered      # @param x_correlation_id [String] Unique correlation Id in a GUID format      # @param x_avalara_client [String] Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .
      # @return [File]
      def get1099_form_pdf(request_parameters)
        data, _status_code, _headers = get1099_form_pdf_with_http_info(request_parameters)
        data
      end

      # Retrieve the PDF file for a 1099/1095/W2/1042S form
      # Retrieve the PDF file for a 1099/1095/W2/1042S form.
          
      # @param id [String] The ID of the form    
      # @param avalara_version [String] API version    
      # @param mark_edelivered [Boolean] Optional boolean that if set indicates that the form should be marked as having been successfully edelivered    
      # @param x_correlation_id [String] Unique correlation Id in a GUID format    
      # @param x_avalara_client [String] Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .    
      # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
      def get1099_form_pdf_with_http_info(request_parameters)
        # OAuth2 Scopes
        required_scopes = ''
        # Request Parameters
        id = request_parameters.get_id()
        avalara_version = request_parameters.get_avalara_version()
        mark_edelivered = request_parameters.get_mark_edelivered()
        x_correlation_id = request_parameters.get_x_correlation_id()
        x_avalara_client = request_parameters.get_x_avalara_client()
        # verify the required parameter 'id' is set
        if @api_client.config.client_side_validation && id.nil?
          fail ArgumentError, "Missing the required parameter 'id' when calling Forms1099Api.get1099_form_pdf"
        end
        # verify the required parameter 'avalara_version' is set
        if @api_client.config.client_side_validation && avalara_version.nil?
          fail ArgumentError, "Missing the required parameter 'avalara_version' when calling Forms1099Api.get1099_form_pdf"
        end
        # resource path
        local_var_path = '/1099/forms/{id}/pdf'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

        # query parameters
        query_params = {}
        if !mark_edelivered.nil?
          query_params[:'markEdelivered'] = mark_edelivered
        end

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/pdf', 'application/json'])
        if !avalara_version.nil?
          header_params[:'avalara-version'] = avalara_version
        end
        if !x_correlation_id.nil?
          header_params[:'X-Correlation-Id'] = x_correlation_id
        end
        if !x_avalara_client.nil?
          header_params[:'X-Avalara-Client'] = x_avalara_client
        end

        # form parameters
        form_params = {}

        # http body (model)
        post_body = {}

        # return_type
        return_type = 'File'

        # auth_names
        auth_names = ['bearer']

        @api_client.apply_auth_to_request!(header_params, auth_names, required_scopes)

        new_options = {
          :operation => :"Forms1099Api.get1099_form_pdf",
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => return_type
        }

        response = @api_client.call_api(:GET, local_var_path, new_options, required_scopes, false, :A1099)
        if new_options[:return_type]
          data = deserialize(response, new_options[:return_type])
        else
          data = nil
        end
        return data, response.code, response.headers
      end

      # List 1099/1095/W2/1042S forms
      # List 1099/1095/W2/1042S forms. Filterable fields are name, referenceId and taxYear.
      # @param avalara_version [String] API version      # @param filter [String] A filter statement to identify specific records to retrieve. For more information on filtering, see &lt;a href&#x3D;\&quot;https://developer.avalara.com/avatax/filtering-in-rest/\&quot;&gt;Filtering in REST&lt;/a&gt;.    Collections support filtering only on certain fields. An attempt to filter on an unsupported field will receive a 400 Bad Request response.    Supported filtering fields are as follows:        issuerId      issuerReferenceId      taxYear      addressVerificationStatus - possible values are: unknown, pending, failed, incomplete, unchanged, verified      createdAt      edeliveryStatus - possible values are: sent, unscheduled, bad_verify, bad_verify_limit, scheduled, bounced, accepted      email      federalEfileStatus - possible values are: unscheduled, scheduled, sent, corrected_scheduled, accepted, corrected, corrected_accepted, held      recipientName      mailStatus - possible values are: sent, unscheduled, pending, delivered      referenceId      tinMatchStatus - possible values are: none, pending, matched, failed      type - possible values are: 940, 941, 943, 944, 945, 1042, 1042-S, 1095-B, 1095-C, 1097-BTC, 1098, 1098-C, 1098-E, 1098-Q, 1098-T, 3921, 3922, 5498, 5498-ESA, 5498-SA, 1099-MISC, 1099-A, 1099-B, 1099-C, 1099-CAP, 1099-DIV, 1099-G, 1099-INT, 1099-K, 1099-LS, 1099-LTC, 1099-NEC, 1099-OID, 1099-PATR, 1099-Q, 1099-R, 1099-S, 1099-SA, T4A, W-2, W-2G, 1099-HC      updatedAt      validity - possible values are: true, false      # @param top [Integer] If nonzero, return no more than this number of results.     Used with skip to provide pagination for large datasets.     Unless otherwise specified, the maximum number of records that can be returned from an API call is 1,000 records.      # @param skip [Integer] If nonzero, skip this number of results before returning data. Used with top to provide pagination for large datasets.      # @param order_by [String] A comma separated list of sort statements in the format (fieldname) [ASC|DESC], for example issuerReferenceId ASC.    Supported sorting fields are:         issuerReferenceId       taxYear       createdAt       recipientName      updatedAt      # @param x_correlation_id [String] Unique correlation Id in a GUID format      # @param x_avalara_client [String] Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .
      # @return [Form1099ListResponse]
      def list1099_forms(request_parameters)
        data, _status_code, _headers = list1099_forms_with_http_info(request_parameters)
        data
      end

      # List 1099/1095/W2/1042S forms
      # List 1099/1095/W2/1042S forms. Filterable fields are name, referenceId and taxYear.
          
      # @param avalara_version [String] API version    
      # @param filter [String] A filter statement to identify specific records to retrieve. For more information on filtering, see &lt;a href&#x3D;\&quot;https://developer.avalara.com/avatax/filtering-in-rest/\&quot;&gt;Filtering in REST&lt;/a&gt;.    Collections support filtering only on certain fields. An attempt to filter on an unsupported field will receive a 400 Bad Request response.    Supported filtering fields are as follows:        issuerId      issuerReferenceId      taxYear      addressVerificationStatus - possible values are: unknown, pending, failed, incomplete, unchanged, verified      createdAt      edeliveryStatus - possible values are: sent, unscheduled, bad_verify, bad_verify_limit, scheduled, bounced, accepted      email      federalEfileStatus - possible values are: unscheduled, scheduled, sent, corrected_scheduled, accepted, corrected, corrected_accepted, held      recipientName      mailStatus - possible values are: sent, unscheduled, pending, delivered      referenceId      tinMatchStatus - possible values are: none, pending, matched, failed      type - possible values are: 940, 941, 943, 944, 945, 1042, 1042-S, 1095-B, 1095-C, 1097-BTC, 1098, 1098-C, 1098-E, 1098-Q, 1098-T, 3921, 3922, 5498, 5498-ESA, 5498-SA, 1099-MISC, 1099-A, 1099-B, 1099-C, 1099-CAP, 1099-DIV, 1099-G, 1099-INT, 1099-K, 1099-LS, 1099-LTC, 1099-NEC, 1099-OID, 1099-PATR, 1099-Q, 1099-R, 1099-S, 1099-SA, T4A, W-2, W-2G, 1099-HC      updatedAt      validity - possible values are: true, false    
      # @param top [Integer] If nonzero, return no more than this number of results.     Used with skip to provide pagination for large datasets.     Unless otherwise specified, the maximum number of records that can be returned from an API call is 1,000 records.    
      # @param skip [Integer] If nonzero, skip this number of results before returning data. Used with top to provide pagination for large datasets.    
      # @param order_by [String] A comma separated list of sort statements in the format (fieldname) [ASC|DESC], for example issuerReferenceId ASC.    Supported sorting fields are:         issuerReferenceId       taxYear       createdAt       recipientName      updatedAt    
      # @param x_correlation_id [String] Unique correlation Id in a GUID format    
      # @param x_avalara_client [String] Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .    
      # @return [Array<(Form1099ListResponse, Integer, Hash)>] Form1099ListResponse data, response status code and response headers
      def list1099_forms_with_http_info(request_parameters)
        # OAuth2 Scopes
        required_scopes = ''
        # Request Parameters
        avalara_version = request_parameters.get_avalara_version()
        filter = request_parameters.get_filter()
        top = request_parameters.get_top()
        skip = request_parameters.get_skip()
        order_by = request_parameters.get_order_by()
        x_correlation_id = request_parameters.get_x_correlation_id()
        x_avalara_client = request_parameters.get_x_avalara_client()
        # verify the required parameter 'avalara_version' is set
        if @api_client.config.client_side_validation && avalara_version.nil?
          fail ArgumentError, "Missing the required parameter 'avalara_version' when calling Forms1099Api.list1099_forms"
        end
        # resource path
        local_var_path = '/1099/forms'

        # query parameters
        query_params = {}
        if !filter.nil?
          query_params[:'$filter'] = filter
        end
        if !top.nil?
          query_params[:'$top'] = top
        end
        if !skip.nil?
          query_params[:'$skip'] = skip
        end
        if !order_by.nil?
          query_params[:'$orderBy'] = order_by
        end

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/json'])
        if !avalara_version.nil?
          header_params[:'avalara-version'] = avalara_version
        end
        if !x_correlation_id.nil?
          header_params[:'X-Correlation-Id'] = x_correlation_id
        end
        if !x_avalara_client.nil?
          header_params[:'X-Avalara-Client'] = x_avalara_client
        end

        # form parameters
        form_params = {}

        # http body (model)
        post_body = {}

        # return_type
        return_type = 'Form1099ListResponse'

        # auth_names
        auth_names = ['bearer']

        @api_client.apply_auth_to_request!(header_params, auth_names, required_scopes)

        new_options = {
          :operation => :"Forms1099Api.list1099_forms",
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => return_type
        }

        response = @api_client.call_api(:GET, local_var_path, new_options, required_scopes, false, :A1099)
        if new_options[:return_type]
          data = deserialize(response, new_options[:return_type])
        else
          data = nil
        end
        return data, response.code, response.headers
      end

      # Update a 1099/1095/W2/1042S form
      # Update a 1099/1095/W2/1042S form.
      # @param id [String]       # @param avalara_version [String] API version      # @param x_correlation_id [String] Unique correlation Id in a GUID format      # @param x_avalara_client [String] Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .      # @param i_update_form1099_request [IUpdateForm1099Request] 
      # @return [Update1099Form200Response]
      def update1099_form(request_parameters)
        data, _status_code, _headers = update1099_form_with_http_info(request_parameters)
        data
      end

      # Update a 1099/1095/W2/1042S form
      # Update a 1099/1095/W2/1042S form.
          
      # @param id [String]     
      # @param avalara_version [String] API version    
      # @param x_correlation_id [String] Unique correlation Id in a GUID format    
      # @param x_avalara_client [String] Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) .    
      # @param i_update_form1099_request [IUpdateForm1099Request]     
      # @return [Array<(Update1099Form200Response, Integer, Hash)>] Update1099Form200Response data, response status code and response headers
      def update1099_form_with_http_info(request_parameters)
        # OAuth2 Scopes
        required_scopes = ''
        # Request Parameters
        id = request_parameters.get_id()
        avalara_version = request_parameters.get_avalara_version()
        x_correlation_id = request_parameters.get_x_correlation_id()
        x_avalara_client = request_parameters.get_x_avalara_client()
        i_update_form1099_request = request_parameters.get_i_update_form1099_request()
        # verify the required parameter 'id' is set
        if @api_client.config.client_side_validation && id.nil?
          fail ArgumentError, "Missing the required parameter 'id' when calling Forms1099Api.update1099_form"
        end
        # verify the required parameter 'avalara_version' is set
        if @api_client.config.client_side_validation && avalara_version.nil?
          fail ArgumentError, "Missing the required parameter 'avalara_version' when calling Forms1099Api.update1099_form"
        end
        # resource path
        local_var_path = '/1099/forms/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

        # query parameters
        query_params = {}

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/json'])
        # HTTP header 'Content-Type'
        content_type = @api_client.select_header_content_type(['application/json', 'text/json', 'application/*+json'])
        if !content_type.nil?
            header_params['Content-Type'] = content_type
        end
        if !avalara_version.nil?
          header_params[:'avalara-version'] = avalara_version
        end
        if !x_correlation_id.nil?
          header_params[:'X-Correlation-Id'] = x_correlation_id
        end
        if !x_avalara_client.nil?
          header_params[:'X-Avalara-Client'] = x_avalara_client
        end

        # form parameters
        form_params = {}

        # http body (model)
        post_body =  @api_client.object_to_http_body(i_update_form1099_request) || {}

        # return_type
        return_type = 'Update1099Form200Response'

        # auth_names
        auth_names = ['bearer']

        @api_client.apply_auth_to_request!(header_params, auth_names, required_scopes)

        new_options = {
          :operation => :"Forms1099Api.update1099_form",
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => return_type
        }

        response = @api_client.call_api(:PUT, local_var_path, new_options, required_scopes, false, :A1099)
        if new_options[:return_type]
          data = deserialize(response, new_options[:return_type])
        else
          data = nil
        end
        return data, response.code, response.headers
      end
    end
    # Represents the Request object for the BulkUpsert1099Forms API
    #
    # @param  String $avalara_version API version (required)
    # @param  Boolean $dry_run  (optional, default to false)
    # @param  String $x_correlation_id Unique correlation Id in a GUID format (optional)
    # @param  String $x_avalara_client Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) . (optional)
    # @param  BulkUpsert1099FormsRequest $bulk_upsert1099_forms_request  (optional)
    #
    class BulkUpsert1099FormsRequestSdk
        attr_accessor :avalara_version

        attr_accessor :dry_run

        attr_accessor :x_correlation_id

        attr_accessor :x_avalara_client

        attr_accessor :bulk_upsert1099_forms_request

        def initialize()
        end

        def get_avalara_version()
            return @avalara_version || '2.0'
        end

        def set_avalara_version(avalara_version)
            @avalara_version = avalara_version
        end

        def get_dry_run()
            return @dry_run
        end

        def set_dry_run(dry_run)
            @dry_run = dry_run
        end

        def get_x_correlation_id()
            return @x_correlation_id
        end

        def set_x_correlation_id(x_correlation_id)
            @x_correlation_id = x_correlation_id
        end

        def get_x_avalara_client()
            return @x_avalara_client
        end

        def set_x_avalara_client(x_avalara_client)
            @x_avalara_client = x_avalara_client
        end

        def get_bulk_upsert1099_forms_request()
            return @bulk_upsert1099_forms_request
        end

        def set_bulk_upsert1099_forms_request(bulk_upsert1099_forms_request)
            @bulk_upsert1099_forms_request = bulk_upsert1099_forms_request
        end
    end
    # Represents the Request object for the Create1099Form API
    #
    # @param  String $avalara_version API version (required)
    # @param  String $x_correlation_id Unique correlation Id in a GUID format (optional)
    # @param  String $x_avalara_client Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) . (optional)
    # @param  ICreateForm1099Request $i_create_form1099_request i_create_form1099_request (optional)
    #
    class Create1099FormRequestSdk
        attr_accessor :avalara_version

        attr_accessor :x_correlation_id

        attr_accessor :x_avalara_client

        attr_accessor :i_create_form1099_request

        def initialize()
        end

        def get_avalara_version()
            return @avalara_version || '2.0'
        end

        def set_avalara_version(avalara_version)
            @avalara_version = avalara_version
        end

        def get_x_correlation_id()
            return @x_correlation_id
        end

        def set_x_correlation_id(x_correlation_id)
            @x_correlation_id = x_correlation_id
        end

        def get_x_avalara_client()
            return @x_avalara_client
        end

        def set_x_avalara_client(x_avalara_client)
            @x_avalara_client = x_avalara_client
        end

        def get_i_create_form1099_request()
            return @i_create_form1099_request
        end

        def set_i_create_form1099_request(i_create_form1099_request)
            @i_create_form1099_request = i_create_form1099_request
        end
    end
    # Represents the Request object for the Delete1099Form API
    #
    # @param  String $id The unique identifier of the desired form to delete. (required)
    # @param  String $avalara_version API version (required)
    # @param  String $x_correlation_id Unique correlation Id in a GUID format (optional)
    # @param  String $x_avalara_client Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) . (optional)
    #
    class Delete1099FormRequestSdk
        attr_accessor :id

        attr_accessor :avalara_version

        attr_accessor :x_correlation_id

        attr_accessor :x_avalara_client

        def initialize()
        end

        def get_id()
            return @id
        end

        def set_id(id)
            @id = id
        end

        def get_avalara_version()
            return @avalara_version || '2.0'
        end

        def set_avalara_version(avalara_version)
            @avalara_version = avalara_version
        end

        def get_x_correlation_id()
            return @x_correlation_id
        end

        def set_x_correlation_id(x_correlation_id)
            @x_correlation_id = x_correlation_id
        end

        def get_x_avalara_client()
            return @x_avalara_client
        end

        def set_x_avalara_client(x_avalara_client)
            @x_avalara_client = x_avalara_client
        end
    end
    # Represents the Request object for the Get1099Form API
    #
    # @param  String $id id (required)
    # @param  String $avalara_version API version (required)
    # @param  String $x_correlation_id Unique correlation Id in a GUID format (optional)
    # @param  String $x_avalara_client Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) . (optional)
    #
    class Get1099FormRequestSdk
        attr_accessor :id

        attr_accessor :avalara_version

        attr_accessor :x_correlation_id

        attr_accessor :x_avalara_client

        def initialize()
        end

        def get_id()
            return @id
        end

        def set_id(id)
            @id = id
        end

        def get_avalara_version()
            return @avalara_version || '2.0'
        end

        def set_avalara_version(avalara_version)
            @avalara_version = avalara_version
        end

        def get_x_correlation_id()
            return @x_correlation_id
        end

        def set_x_correlation_id(x_correlation_id)
            @x_correlation_id = x_correlation_id
        end

        def get_x_avalara_client()
            return @x_avalara_client
        end

        def set_x_avalara_client(x_avalara_client)
            @x_avalara_client = x_avalara_client
        end
    end
    # Represents the Request object for the Get1099FormPdf API
    #
    # @param  String $id The ID of the form (required)
    # @param  String $avalara_version API version (required)
    # @param  Boolean $mark_edelivered Optional boolean that if set indicates that the form should be marked as having been successfully edelivered (optional)
    # @param  String $x_correlation_id Unique correlation Id in a GUID format (optional)
    # @param  String $x_avalara_client Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) . (optional)
    #
    class Get1099FormPdfRequestSdk
        attr_accessor :id

        attr_accessor :avalara_version

        attr_accessor :mark_edelivered

        attr_accessor :x_correlation_id

        attr_accessor :x_avalara_client

        def initialize()
        end

        def get_id()
            return @id
        end

        def set_id(id)
            @id = id
        end

        def get_avalara_version()
            return @avalara_version || '2.0'
        end

        def set_avalara_version(avalara_version)
            @avalara_version = avalara_version
        end

        def get_mark_edelivered()
            return @mark_edelivered
        end

        def set_mark_edelivered(mark_edelivered)
            @mark_edelivered = mark_edelivered
        end

        def get_x_correlation_id()
            return @x_correlation_id
        end

        def set_x_correlation_id(x_correlation_id)
            @x_correlation_id = x_correlation_id
        end

        def get_x_avalara_client()
            return @x_avalara_client
        end

        def set_x_avalara_client(x_avalara_client)
            @x_avalara_client = x_avalara_client
        end
    end
    # Represents the Request object for the List1099Forms API
    #
    # @param  String $avalara_version API version (required)
    # @param  String $filter A filter statement to identify specific records to retrieve. For more information on filtering, see &lt;a href&#x3D;\&quot;https://developer.avalara.com/avatax/filtering-in-rest/\&quot;&gt;Filtering in REST&lt;/a&gt;.    Collections support filtering only on certain fields. An attempt to filter on an unsupported field will receive a 400 Bad Request response.    Supported filtering fields are as follows:        issuerId      issuerReferenceId      taxYear      addressVerificationStatus - possible values are: unknown, pending, failed, incomplete, unchanged, verified      createdAt      edeliveryStatus - possible values are: sent, unscheduled, bad_verify, bad_verify_limit, scheduled, bounced, accepted      email      federalEfileStatus - possible values are: unscheduled, scheduled, sent, corrected_scheduled, accepted, corrected, corrected_accepted, held      recipientName      mailStatus - possible values are: sent, unscheduled, pending, delivered      referenceId      tinMatchStatus - possible values are: none, pending, matched, failed      type - possible values are: 940, 941, 943, 944, 945, 1042, 1042-S, 1095-B, 1095-C, 1097-BTC, 1098, 1098-C, 1098-E, 1098-Q, 1098-T, 3921, 3922, 5498, 5498-ESA, 5498-SA, 1099-MISC, 1099-A, 1099-B, 1099-C, 1099-CAP, 1099-DIV, 1099-G, 1099-INT, 1099-K, 1099-LS, 1099-LTC, 1099-NEC, 1099-OID, 1099-PATR, 1099-Q, 1099-R, 1099-S, 1099-SA, T4A, W-2, W-2G, 1099-HC      updatedAt      validity - possible values are: true, false (optional)
    # @param  Integer $top If nonzero, return no more than this number of results.     Used with skip to provide pagination for large datasets.     Unless otherwise specified, the maximum number of records that can be returned from an API call is 1,000 records. (optional, default to 10)
    # @param  Integer $skip If nonzero, skip this number of results before returning data. Used with top to provide pagination for large datasets. (optional, default to 0)
    # @param  String $order_by A comma separated list of sort statements in the format (fieldname) [ASC|DESC], for example issuerReferenceId ASC.    Supported sorting fields are:         issuerReferenceId       taxYear       createdAt       recipientName      updatedAt (optional)
    # @param  String $x_correlation_id Unique correlation Id in a GUID format (optional)
    # @param  String $x_avalara_client Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) . (optional)
    #
    class List1099FormsRequestSdk
        attr_accessor :avalara_version

        attr_accessor :filter

        attr_accessor :top

        attr_accessor :skip

        attr_accessor :order_by

        attr_accessor :x_correlation_id

        attr_accessor :x_avalara_client

        def initialize()
        end

        def get_avalara_version()
            return @avalara_version || '2.0'
        end

        def set_avalara_version(avalara_version)
            @avalara_version = avalara_version
        end

        def get_filter()
            return @filter
        end

        def set_filter(filter)
            @filter = filter
        end

        def get_top()
            return @top
        end

        def set_top(top)
            @top = top
        end

        def get_skip()
            return @skip
        end

        def set_skip(skip)
            @skip = skip
        end

        def get_order_by()
            return @order_by
        end

        def set_order_by(order_by)
            @order_by = order_by
        end

        def get_x_correlation_id()
            return @x_correlation_id
        end

        def set_x_correlation_id(x_correlation_id)
            @x_correlation_id = x_correlation_id
        end

        def get_x_avalara_client()
            return @x_avalara_client
        end

        def set_x_avalara_client(x_avalara_client)
            @x_avalara_client = x_avalara_client
        end
    end
    # Represents the Request object for the Update1099Form API
    #
    # @param  String $id id (required)
    # @param  String $avalara_version API version (required)
    # @param  String $x_correlation_id Unique correlation Id in a GUID format (optional)
    # @param  String $x_avalara_client Identifies the software you are using to call this API. For more information on the client header, see [Client Headers](https://developer.avalara.com/avatax/client-headers/) . (optional)
    # @param  IUpdateForm1099Request $i_update_form1099_request i_update_form1099_request (optional)
    #
    class Update1099FormRequestSdk
        attr_accessor :id

        attr_accessor :avalara_version

        attr_accessor :x_correlation_id

        attr_accessor :x_avalara_client

        attr_accessor :i_update_form1099_request

        def initialize()
        end

        def get_id()
            return @id
        end

        def set_id(id)
            @id = id
        end

        def get_avalara_version()
            return @avalara_version || '2.0'
        end

        def set_avalara_version(avalara_version)
            @avalara_version = avalara_version
        end

        def get_x_correlation_id()
            return @x_correlation_id
        end

        def set_x_correlation_id(x_correlation_id)
            @x_correlation_id = x_correlation_id
        end

        def get_x_avalara_client()
            return @x_avalara_client
        end

        def set_x_avalara_client(x_avalara_client)
            @x_avalara_client = x_avalara_client
        end

        def get_i_update_form1099_request()
            return @i_update_form1099_request
        end

        def set_i_update_form1099_request(i_update_form1099_request)
            @i_update_form1099_request = i_update_form1099_request
        end
    end
  end
end