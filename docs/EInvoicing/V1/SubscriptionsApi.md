# AvalaraSdk::EInvoicing::V1::SubscriptionsApi

All URIs are relative to *https://api.sbx.avalara.com/einvoicing*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_webhook_subscription**](SubscriptionsApi.md#create_webhook_subscription) | **POST** /webhooks/subscriptions | Create a subscription to events |
| [**delete_webhook_subscription**](SubscriptionsApi.md#delete_webhook_subscription) | **DELETE** /webhooks/subscriptions/{subscription-id} | Unsubscribe from events |
| [**get_webhook_subscription**](SubscriptionsApi.md#get_webhook_subscription) | **GET** /webhooks/subscriptions/{subscription-id} | Get details of a subscription |
| [**list_webhook_subscriptions**](SubscriptionsApi.md#list_webhook_subscriptions) | **GET** /webhooks/subscriptions | List all subscriptions |


## create_webhook_subscription

> <SuccessResponse> create_webhook_subscription(avalara_version, subscription_registration, opts)

Create a subscription to events

Create a subscription to events exposed by registered systems.

### Examples

```ruby
require 'time'
require 'avalara_sdk'
# setup authorization
AvalaraSdk::EInvoicing::V1.configure do |config|
  # See Documentation for Authorization section in main README.md for more auth examples.
  config.bearer_token='<Your Avalara Identity Access Token>'
  config.environment='sandbox'
  config.app_name='testApp'
  config.app_version='1.2.3'
  config.machine_name='testMachine'
end

api_client = AvalaraSdk::ApiClient.new config
api_instance = AvalaraSdk::EInvoicing::V1::SubscriptionsApi.new api_client

avalara_version = 'avalara_version_example' # String | The version of the API to use, e.g., \"1.3\".
subscription_registration = AvalaraSdk::EInvoicing::V1::SubscriptionRegistration.new({notification_url: 'https://webhook.example.com/notifications', signature: AvalaraSdk::EInvoicing::V1::SignatureSignature.new({type: 'none', key: 'key_example', algorithm: 'sha256'}), events: [AvalaraSdk::EInvoicing::V1::EventSubscription.new({event_name: 'document.complete'})]}) # SubscriptionRegistration | 
opts = {
  x_correlation_id: 'x_correlation_id_example', # String | A unique identifier for tracking the request and its response
  x_avalara_client: 'x_avalara_client_example' # String | Client application identification
}

begin
  # Create a subscription to events
  result = api_instance.create_webhook_subscription(avalara_version, subscription_registration, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling SubscriptionsApi->create_webhook_subscription: #{e}"
end
```

#### Using the create_webhook_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuccessResponse>, Integer, Hash)> create_webhook_subscription_with_http_info(avalara_version, subscription_registration, opts)

```ruby
begin
  # Create a subscription to events
  data, status_code, headers = api_instance.create_webhook_subscription_with_http_info(avalara_version, subscription_registration, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuccessResponse>
rescue AvalaraSdk::EInvoicing::V1::ApiError => e
  puts "Error when calling SubscriptionsApi->create_webhook_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avalara_version** | **String** | The version of the API to use, e.g., \&quot;1.3\&quot;. |  |
| **subscription_registration** | [**SubscriptionRegistration**](SubscriptionRegistration.md) |  |  |
| **x_correlation_id** | **String** | A unique identifier for tracking the request and its response | [optional] |
| **x_avalara_client** | **String** | Client application identification | [optional] |

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[Bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_webhook_subscription

> delete_webhook_subscription(subscription_id, avalara_version, opts)

Unsubscribe from events

Remove a subscription from the webhooks dispatch service. All events and subscriptions are also deleted.

### Examples

```ruby
require 'time'
require 'avalara_sdk'
# setup authorization
AvalaraSdk::EInvoicing::V1.configure do |config|
  # See Documentation for Authorization section in main README.md for more auth examples.
  config.bearer_token='<Your Avalara Identity Access Token>'
  config.environment='sandbox'
  config.app_name='testApp'
  config.app_version='1.2.3'
  config.machine_name='testMachine'
end

api_client = AvalaraSdk::ApiClient.new config
api_instance = AvalaraSdk::EInvoicing::V1::SubscriptionsApi.new api_client

subscription_id = 'subscription_id_example' # String | 
avalara_version = 'avalara_version_example' # String | The version of the API to use, e.g., \"1.3\".
opts = {
  x_correlation_id: 'x_correlation_id_example', # String | A unique identifier for tracking the request and its response
  x_avalara_client: 'x_avalara_client_example' # String | Client application identification
}

begin
  # Unsubscribe from events
  api_instance.delete_webhook_subscription(subscription_id, avalara_version, opts)
rescue AvalaraSdk::ApiError => e
  puts "Error when calling SubscriptionsApi->delete_webhook_subscription: #{e}"
end
```

#### Using the delete_webhook_subscription_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_webhook_subscription_with_http_info(subscription_id, avalara_version, opts)

```ruby
begin
  # Unsubscribe from events
  data, status_code, headers = api_instance.delete_webhook_subscription_with_http_info(subscription_id, avalara_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AvalaraSdk::EInvoicing::V1::ApiError => e
  puts "Error when calling SubscriptionsApi->delete_webhook_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** |  |  |
| **avalara_version** | **String** | The version of the API to use, e.g., \&quot;1.3\&quot;. |  |
| **x_correlation_id** | **String** | A unique identifier for tracking the request and its response | [optional] |
| **x_avalara_client** | **String** | Client application identification | [optional] |

### Return type

nil (empty response body)

### Authorization

[Bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_webhook_subscription

> <SubscriptionDetail> get_webhook_subscription(subscription_id, avalara_version, opts)

Get details of a subscription

Retrieve details of a specific subscription.

### Examples

```ruby
require 'time'
require 'avalara_sdk'
# setup authorization
AvalaraSdk::EInvoicing::V1.configure do |config|
  # See Documentation for Authorization section in main README.md for more auth examples.
  config.bearer_token='<Your Avalara Identity Access Token>'
  config.environment='sandbox'
  config.app_name='testApp'
  config.app_version='1.2.3'
  config.machine_name='testMachine'
end

api_client = AvalaraSdk::ApiClient.new config
api_instance = AvalaraSdk::EInvoicing::V1::SubscriptionsApi.new api_client

subscription_id = 'subscription_id_example' # String | 
avalara_version = 'avalara_version_example' # String | The version of the API to use, e.g., \"1.3\".
opts = {
  x_correlation_id: 'x_correlation_id_example', # String | A unique identifier for tracking the request and its response
  x_avalara_client: 'x_avalara_client_example' # String | Client application identification
}

begin
  # Get details of a subscription
  result = api_instance.get_webhook_subscription(subscription_id, avalara_version, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling SubscriptionsApi->get_webhook_subscription: #{e}"
end
```

#### Using the get_webhook_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionDetail>, Integer, Hash)> get_webhook_subscription_with_http_info(subscription_id, avalara_version, opts)

```ruby
begin
  # Get details of a subscription
  data, status_code, headers = api_instance.get_webhook_subscription_with_http_info(subscription_id, avalara_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionDetail>
rescue AvalaraSdk::EInvoicing::V1::ApiError => e
  puts "Error when calling SubscriptionsApi->get_webhook_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** |  |  |
| **avalara_version** | **String** | The version of the API to use, e.g., \&quot;1.3\&quot;. |  |
| **x_correlation_id** | **String** | A unique identifier for tracking the request and its response | [optional] |
| **x_avalara_client** | **String** | Client application identification | [optional] |

### Return type

[**SubscriptionDetail**](SubscriptionDetail.md)

### Authorization

[Bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_webhook_subscriptions

> <SubscriptionListResponse> list_webhook_subscriptions(avalara_version, opts)

List all subscriptions

Retrieve a list of all subscriptions.

### Examples

```ruby
require 'time'
require 'avalara_sdk'
# setup authorization
AvalaraSdk::EInvoicing::V1.configure do |config|
  # See Documentation for Authorization section in main README.md for more auth examples.
  config.bearer_token='<Your Avalara Identity Access Token>'
  config.environment='sandbox'
  config.app_name='testApp'
  config.app_version='1.2.3'
  config.machine_name='testMachine'
end

api_client = AvalaraSdk::ApiClient.new config
api_instance = AvalaraSdk::EInvoicing::V1::SubscriptionsApi.new api_client

avalara_version = 'avalara_version_example' # String | The version of the API to use, e.g., \"1.3\".
opts = {
  x_correlation_id: 'x_correlation_id_example', # String | A unique identifier for tracking the request and its response
  x_avalara_client: 'x_avalara_client_example', # String | Client application identification
  top: 8.14, # Float | The number of items to include in the result.
  skip: 8.14, # Float | The number of items to skip in the result.
  count: true, # Boolean | Whether to include the total count of records in the result.
  count_only: true # Boolean | Whether to return only the count of records, without the list of records.
}

begin
  # List all subscriptions
  result = api_instance.list_webhook_subscriptions(avalara_version, opts)
  p result
rescue AvalaraSdk::ApiError => e
  puts "Error when calling SubscriptionsApi->list_webhook_subscriptions: #{e}"
end
```

#### Using the list_webhook_subscriptions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionListResponse>, Integer, Hash)> list_webhook_subscriptions_with_http_info(avalara_version, opts)

```ruby
begin
  # List all subscriptions
  data, status_code, headers = api_instance.list_webhook_subscriptions_with_http_info(avalara_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionListResponse>
rescue AvalaraSdk::EInvoicing::V1::ApiError => e
  puts "Error when calling SubscriptionsApi->list_webhook_subscriptions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avalara_version** | **String** | The version of the API to use, e.g., \&quot;1.3\&quot;. |  |
| **x_correlation_id** | **String** | A unique identifier for tracking the request and its response | [optional] |
| **x_avalara_client** | **String** | Client application identification | [optional] |
| **top** | **Float** | The number of items to include in the result. | [optional] |
| **skip** | **Float** | The number of items to skip in the result. | [optional] |
| **count** | **Boolean** | Whether to include the total count of records in the result. | [optional] |
| **count_only** | **Boolean** | Whether to return only the count of records, without the list of records. | [optional] |

### Return type

[**SubscriptionListResponse**](SubscriptionListResponse.md)

### Authorization

[Bearer](../../../README.md#documentation-for-authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

