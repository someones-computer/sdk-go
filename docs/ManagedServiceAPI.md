# \ManagedServiceAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ManagedServicesCreate**](ManagedServiceAPI.md#ManagedServicesCreate) | **Post** /api/managed_services | Creates a ManagedService resource.
[**ManagedServicesDelete**](ManagedServiceAPI.md#ManagedServicesDelete) | **Delete** /api/managed_services/{id} | Removes the ManagedService resource.
[**ManagedServicesGet**](ManagedServiceAPI.md#ManagedServicesGet) | **Get** /api/managed_services/{id} | Retrieves a ManagedService resource.
[**ManagedServicesList**](ManagedServiceAPI.md#ManagedServicesList) | **Get** /api/managed_services | Retrieves the collection of ManagedService resources.
[**ManagedServicesResume**](ManagedServiceAPI.md#ManagedServicesResume) | **Post** /api/managed_services/{id}/resume | Creates a ManagedService resource.
[**ManagedServicesSuspend**](ManagedServiceAPI.md#ManagedServicesSuspend) | **Post** /api/managed_services/{id}/suspend | Creates a ManagedService resource.



## ManagedServicesCreate

> ManagedService ManagedServicesCreate(ctx).ManagedServiceManagedServiceInput(managedServiceManagedServiceInput).Execute()

Creates a ManagedService resource.



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
	managedServiceManagedServiceInput := *openapiclient.NewManagedServiceManagedServiceInput("Engine_example", "Slug_example", "https://example.com/") // ManagedServiceManagedServiceInput | The new ManagedService resource

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ManagedServiceAPI.ManagedServicesCreate(context.Background()).ManagedServiceManagedServiceInput(managedServiceManagedServiceInput).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ManagedServiceAPI.ManagedServicesCreate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ManagedServicesCreate`: ManagedService
	fmt.Fprintf(os.Stdout, "Response from `ManagedServiceAPI.ManagedServicesCreate`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiManagedServicesCreateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **managedServiceManagedServiceInput** | [**ManagedServiceManagedServiceInput**](ManagedServiceManagedServiceInput.md) | The new ManagedService resource | 

### Return type

[**ManagedService**](ManagedService.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ManagedServicesDelete

> ManagedServicesDelete(ctx, id).Execute()

Removes the ManagedService resource.



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
	id := "id_example" // string | ManagedService identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.ManagedServiceAPI.ManagedServicesDelete(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ManagedServiceAPI.ManagedServicesDelete``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | ManagedService identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiManagedServicesDeleteRequest struct via the builder pattern


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


## ManagedServicesGet

> ManagedService ManagedServicesGet(ctx, id).Execute()

Retrieves a ManagedService resource.



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
	id := "id_example" // string | ManagedService identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ManagedServiceAPI.ManagedServicesGet(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ManagedServiceAPI.ManagedServicesGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ManagedServicesGet`: ManagedService
	fmt.Fprintf(os.Stdout, "Response from `ManagedServiceAPI.ManagedServicesGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | ManagedService identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiManagedServicesGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**ManagedService**](ManagedService.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ManagedServicesList

> []ManagedService ManagedServicesList(ctx).Page(page).Execute()

Retrieves the collection of ManagedService resources.



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
	resp, r, err := apiClient.ManagedServiceAPI.ManagedServicesList(context.Background()).Page(page).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ManagedServiceAPI.ManagedServicesList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ManagedServicesList`: []ManagedService
	fmt.Fprintf(os.Stdout, "Response from `ManagedServiceAPI.ManagedServicesList`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiManagedServicesListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int32** | The collection page number | [default to 1]

### Return type

[**[]ManagedService**](ManagedService.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ManagedServicesResume

> ManagedService ManagedServicesResume(ctx, id).Execute()

Creates a ManagedService resource.



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
	id := "id_example" // string | ManagedService identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ManagedServiceAPI.ManagedServicesResume(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ManagedServiceAPI.ManagedServicesResume``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ManagedServicesResume`: ManagedService
	fmt.Fprintf(os.Stdout, "Response from `ManagedServiceAPI.ManagedServicesResume`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | ManagedService identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiManagedServicesResumeRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**ManagedService**](ManagedService.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ManagedServicesSuspend

> ManagedService ManagedServicesSuspend(ctx, id).Execute()

Creates a ManagedService resource.



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
	id := "id_example" // string | ManagedService identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ManagedServiceAPI.ManagedServicesSuspend(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ManagedServiceAPI.ManagedServicesSuspend``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ManagedServicesSuspend`: ManagedService
	fmt.Fprintf(os.Stdout, "Response from `ManagedServiceAPI.ManagedServicesSuspend`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | ManagedService identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiManagedServicesSuspendRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**ManagedService**](ManagedService.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

