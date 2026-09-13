# \ApplicationAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApplicationsCreate**](ApplicationAPI.md#ApplicationsCreate) | **Post** /api/applications | Creates a Application resource.
[**ApplicationsDelete**](ApplicationAPI.md#ApplicationsDelete) | **Delete** /api/applications/{id} | Removes the Application resource.
[**ApplicationsGet**](ApplicationAPI.md#ApplicationsGet) | **Get** /api/applications/{id} | Retrieves a Application resource.
[**ApplicationsList**](ApplicationAPI.md#ApplicationsList) | **Get** /api/applications | Retrieves the collection of Application resources.
[**ApplicationsUpdate**](ApplicationAPI.md#ApplicationsUpdate) | **Patch** /api/applications/{id} | Updates the Application resource.



## ApplicationsCreate

> Application ApplicationsCreate(ctx).Application(application).Execute()

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
	resp, r, err := apiClient.ApplicationAPI.ApplicationsCreate(context.Background()).Application(application).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ApplicationAPI.ApplicationsCreate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ApplicationsCreate`: Application
	fmt.Fprintf(os.Stdout, "Response from `ApplicationAPI.ApplicationsCreate`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiApplicationsCreateRequest struct via the builder pattern


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


## ApplicationsDelete

> ApplicationsDelete(ctx, id).Execute()

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
	r, err := apiClient.ApplicationAPI.ApplicationsDelete(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ApplicationAPI.ApplicationsDelete``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApplicationsDeleteRequest struct via the builder pattern


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


## ApplicationsGet

> Application ApplicationsGet(ctx, id).Execute()

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
	resp, r, err := apiClient.ApplicationAPI.ApplicationsGet(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ApplicationAPI.ApplicationsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ApplicationsGet`: Application
	fmt.Fprintf(os.Stdout, "Response from `ApplicationAPI.ApplicationsGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | Application identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiApplicationsGetRequest struct via the builder pattern


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


## ApplicationsList

> []Application ApplicationsList(ctx).Page(page).Slug(slug).Slug2(slug2).Organization(organization).Organization2(organization2).OrganizationSlug(organizationSlug).OrganizationSlug2(organizationSlug2).Execute()

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
	slug := "slug_example" // string |  (optional)
	slug2 := []string{"Inner_example"} // []string |  (optional)
	organization := "organization_example" // string |  (optional)
	organization2 := []string{"Inner_example"} // []string |  (optional)
	organizationSlug := "organizationSlug_example" // string |  (optional)
	organizationSlug2 := []string{"Inner_example"} // []string |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ApplicationAPI.ApplicationsList(context.Background()).Page(page).Slug(slug).Slug2(slug2).Organization(organization).Organization2(organization2).OrganizationSlug(organizationSlug).OrganizationSlug2(organizationSlug2).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ApplicationAPI.ApplicationsList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ApplicationsList`: []Application
	fmt.Fprintf(os.Stdout, "Response from `ApplicationAPI.ApplicationsList`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiApplicationsListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int32** | The collection page number | [default to 1]
 **slug** | **string** |  | 
 **slug2** | **[]string** |  | 
 **organization** | **string** |  | 
 **organization2** | **[]string** |  | 
 **organizationSlug** | **string** |  | 
 **organizationSlug2** | **[]string** |  | 

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


## ApplicationsUpdate

> Application ApplicationsUpdate(ctx, id).ApplicationJsonMergePatch(applicationJsonMergePatch).Execute()

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
	resp, r, err := apiClient.ApplicationAPI.ApplicationsUpdate(context.Background(), id).ApplicationJsonMergePatch(applicationJsonMergePatch).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ApplicationAPI.ApplicationsUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ApplicationsUpdate`: Application
	fmt.Fprintf(os.Stdout, "Response from `ApplicationAPI.ApplicationsUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | Application identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiApplicationsUpdateRequest struct via the builder pattern


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

