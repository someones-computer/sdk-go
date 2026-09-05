# \ApplicationAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiApplicationsGetCollection**](ApplicationAPI.md#ApiApplicationsGetCollection) | **Get** /api/applications | Retrieves the collection of Application resources.
[**ApiApplicationsIdDelete**](ApplicationAPI.md#ApiApplicationsIdDelete) | **Delete** /api/applications/{id} | Removes the Application resource.
[**ApiApplicationsIdGet**](ApplicationAPI.md#ApiApplicationsIdGet) | **Get** /api/applications/{id} | Retrieves a Application resource.
[**ApiApplicationsIdPatch**](ApplicationAPI.md#ApiApplicationsIdPatch) | **Patch** /api/applications/{id} | Updates the Application resource.
[**ApiApplicationsPost**](ApplicationAPI.md#ApiApplicationsPost) | **Post** /api/applications | Creates a Application resource.



## ApiApplicationsGetCollection

> []Application ApiApplicationsGetCollection(ctx).Page(page).Execute()

Retrieves the collection of Application resources.



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
	resp, r, err := apiClient.ApplicationAPI.ApiApplicationsGetCollection(context.Background()).Page(page).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ApplicationAPI.ApiApplicationsGetCollection``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ApiApplicationsGetCollection`: []Application
	fmt.Fprintf(os.Stdout, "Response from `ApplicationAPI.ApiApplicationsGetCollection`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiApiApplicationsGetCollectionRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int32** | The collection page number | [default to 1]

### Return type

[**[]Application**](Application.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ApiApplicationsIdDelete

> ApiApplicationsIdDelete(ctx, id).Execute()

Removes the Application resource.



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
	id := "id_example" // string | Application identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.ApplicationAPI.ApiApplicationsIdDelete(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ApplicationAPI.ApiApplicationsIdDelete``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | Application identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiApiApplicationsIdDeleteRequest struct via the builder pattern


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


## ApiApplicationsIdGet

> Application ApiApplicationsIdGet(ctx, id).Execute()

Retrieves a Application resource.



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
	id := "id_example" // string | Application identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ApplicationAPI.ApiApplicationsIdGet(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ApplicationAPI.ApiApplicationsIdGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ApiApplicationsIdGet`: Application
	fmt.Fprintf(os.Stdout, "Response from `ApplicationAPI.ApiApplicationsIdGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | Application identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiApiApplicationsIdGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**Application**](Application.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ApiApplicationsIdPatch

> Application ApiApplicationsIdPatch(ctx, id).ApplicationJsonMergePatch(applicationJsonMergePatch).Execute()

Updates the Application resource.



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
	id := "id_example" // string | Application identifier
	applicationJsonMergePatch := *openapiclient.NewApplicationJsonMergePatch() // ApplicationJsonMergePatch | The updated Application resource

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ApplicationAPI.ApiApplicationsIdPatch(context.Background(), id).ApplicationJsonMergePatch(applicationJsonMergePatch).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ApplicationAPI.ApiApplicationsIdPatch``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ApiApplicationsIdPatch`: Application
	fmt.Fprintf(os.Stdout, "Response from `ApplicationAPI.ApiApplicationsIdPatch`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | Application identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiApiApplicationsIdPatchRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **applicationJsonMergePatch** | [**ApplicationJsonMergePatch**](ApplicationJsonMergePatch.md) | The updated Application resource | 

### Return type

[**Application**](Application.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/merge-patch+json
- **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ApiApplicationsPost

> Application ApiApplicationsPost(ctx).Application(application).Execute()

Creates a Application resource.



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
	application := *openapiclient.NewApplication() // Application | The new Application resource

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ApplicationAPI.ApiApplicationsPost(context.Background()).Application(application).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ApplicationAPI.ApiApplicationsPost``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ApiApplicationsPost`: Application
	fmt.Fprintf(os.Stdout, "Response from `ApplicationAPI.ApiApplicationsPost`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiApiApplicationsPostRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **application** | [**Application**](Application.md) | The new Application resource | 

### Return type

[**Application**](Application.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

