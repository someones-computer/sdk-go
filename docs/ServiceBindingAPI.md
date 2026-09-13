# \ServiceBindingAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ServiceBindingsCreate**](ServiceBindingAPI.md#ServiceBindingsCreate) | **Post** /api/service_bindings | Creates a ServiceBinding resource.
[**ServiceBindingsDelete**](ServiceBindingAPI.md#ServiceBindingsDelete) | **Delete** /api/service_bindings/{id} | Removes the ServiceBinding resource.
[**ServiceBindingsGet**](ServiceBindingAPI.md#ServiceBindingsGet) | **Get** /api/service_bindings/{id} | Retrieves a ServiceBinding resource.
[**ServiceBindingsList**](ServiceBindingAPI.md#ServiceBindingsList) | **Get** /api/service_bindings | Retrieves the collection of ServiceBinding resources.



## ServiceBindingsCreate

> ServiceBinding ServiceBindingsCreate(ctx).ServiceBindingServiceBindingInput(serviceBindingServiceBindingInput).Execute()

Creates a ServiceBinding resource.



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/someones-computer/sdk-go"
)

func main() {
	serviceBindingServiceBindingInput := *openapiclient.NewServiceBindingServiceBindingInput("https://example.com/", "https://example.com/") // ServiceBindingServiceBindingInput | The new ServiceBinding resource

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ServiceBindingAPI.ServiceBindingsCreate(context.Background()).ServiceBindingServiceBindingInput(serviceBindingServiceBindingInput).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ServiceBindingAPI.ServiceBindingsCreate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ServiceBindingsCreate`: ServiceBinding
	fmt.Fprintf(os.Stdout, "Response from `ServiceBindingAPI.ServiceBindingsCreate`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiServiceBindingsCreateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serviceBindingServiceBindingInput** | [**ServiceBindingServiceBindingInput**](ServiceBindingServiceBindingInput.md) | The new ServiceBinding resource | 

### Return type

[**ServiceBinding**](ServiceBinding.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ServiceBindingsDelete

> ServiceBindingsDelete(ctx, id).Execute()

Removes the ServiceBinding resource.



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/someones-computer/sdk-go"
)

func main() {
	id := "id_example" // string | ServiceBinding identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.ServiceBindingAPI.ServiceBindingsDelete(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ServiceBindingAPI.ServiceBindingsDelete``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | ServiceBinding identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiServiceBindingsDeleteRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

 (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/problem+json, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ServiceBindingsGet

> ServiceBinding ServiceBindingsGet(ctx, id).Execute()

Retrieves a ServiceBinding resource.



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/someones-computer/sdk-go"
)

func main() {
	id := "id_example" // string | ServiceBinding identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ServiceBindingAPI.ServiceBindingsGet(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ServiceBindingAPI.ServiceBindingsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ServiceBindingsGet`: ServiceBinding
	fmt.Fprintf(os.Stdout, "Response from `ServiceBindingAPI.ServiceBindingsGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | ServiceBinding identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiServiceBindingsGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**ServiceBinding**](ServiceBinding.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ServiceBindingsList

> []ServiceBinding ServiceBindingsList(ctx).Page(page).Execute()

Retrieves the collection of ServiceBinding resources.



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/someones-computer/sdk-go"
)

func main() {
	page := int32(56) // int32 | The collection page number (optional) (default to 1)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ServiceBindingAPI.ServiceBindingsList(context.Background()).Page(page).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ServiceBindingAPI.ServiceBindingsList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ServiceBindingsList`: []ServiceBinding
	fmt.Fprintf(os.Stdout, "Response from `ServiceBindingAPI.ServiceBindingsList`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiServiceBindingsListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int32** | The collection page number | [default to 1]

### Return type

[**[]ServiceBinding**](ServiceBinding.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

