# \ManagedServiceAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiManagedServicesGetCollection**](ManagedServiceAPI.md#ApiManagedServicesGetCollection) | **Get** /api/managed_services | Retrieves the collection of ManagedService resources.
[**ApiManagedServicesIdDelete**](ManagedServiceAPI.md#ApiManagedServicesIdDelete) | **Delete** /api/managed_services/{id} | Removes the ManagedService resource.
[**ApiManagedServicesIdGet**](ManagedServiceAPI.md#ApiManagedServicesIdGet) | **Get** /api/managed_services/{id} | Retrieves a ManagedService resource.
[**ApiManagedServicesPost**](ManagedServiceAPI.md#ApiManagedServicesPost) | **Post** /api/managed_services | Creates a ManagedService resource.
[**Resume**](ManagedServiceAPI.md#Resume) | **Post** /api/managed_services/{id}/resume | Creates a ManagedService resource.
[**Suspend**](ManagedServiceAPI.md#Suspend) | **Post** /api/managed_services/{id}/suspend | Creates a ManagedService resource.



## ApiManagedServicesGetCollection

> []ManagedService ApiManagedServicesGetCollection(ctx).Page(page).Execute()

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
	resp, r, err := apiClient.ManagedServiceAPI.ApiManagedServicesGetCollection(context.Background()).Page(page).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ManagedServiceAPI.ApiManagedServicesGetCollection``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ApiManagedServicesGetCollection`: []ManagedService
	fmt.Fprintf(os.Stdout, "Response from `ManagedServiceAPI.ApiManagedServicesGetCollection`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiApiManagedServicesGetCollectionRequest struct via the builder pattern


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


## ApiManagedServicesIdDelete

> ApiManagedServicesIdDelete(ctx, id).Execute()

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
	r, err := apiClient.ManagedServiceAPI.ApiManagedServicesIdDelete(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ManagedServiceAPI.ApiManagedServicesIdDelete``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiManagedServicesIdDeleteRequest struct via the builder pattern


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


## ApiManagedServicesIdGet

> ManagedService ApiManagedServicesIdGet(ctx, id).Execute()

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
	resp, r, err := apiClient.ManagedServiceAPI.ApiManagedServicesIdGet(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ManagedServiceAPI.ApiManagedServicesIdGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ApiManagedServicesIdGet`: ManagedService
	fmt.Fprintf(os.Stdout, "Response from `ManagedServiceAPI.ApiManagedServicesIdGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | ManagedService identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiApiManagedServicesIdGetRequest struct via the builder pattern


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


## ApiManagedServicesPost

> ManagedService ApiManagedServicesPost(ctx).ManagedServiceManagedServiceInput(managedServiceManagedServiceInput).Execute()

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
	resp, r, err := apiClient.ManagedServiceAPI.ApiManagedServicesPost(context.Background()).ManagedServiceManagedServiceInput(managedServiceManagedServiceInput).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ManagedServiceAPI.ApiManagedServicesPost``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ApiManagedServicesPost`: ManagedService
	fmt.Fprintf(os.Stdout, "Response from `ManagedServiceAPI.ApiManagedServicesPost`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiApiManagedServicesPostRequest struct via the builder pattern


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


## Resume

> ManagedService Resume(ctx, id).Execute()

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
	resp, r, err := apiClient.ManagedServiceAPI.Resume(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ManagedServiceAPI.Resume``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `Resume`: ManagedService
	fmt.Fprintf(os.Stdout, "Response from `ManagedServiceAPI.Resume`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | ManagedService identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiResumeRequest struct via the builder pattern


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


## Suspend

> ManagedService Suspend(ctx, id).Execute()

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
	resp, r, err := apiClient.ManagedServiceAPI.Suspend(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ManagedServiceAPI.Suspend``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `Suspend`: ManagedService
	fmt.Fprintf(os.Stdout, "Response from `ManagedServiceAPI.Suspend`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | ManagedService identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiSuspendRequest struct via the builder pattern


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

