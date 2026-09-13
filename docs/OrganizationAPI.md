# \OrganizationAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**OrganizationsCreate**](OrganizationAPI.md#OrganizationsCreate) | **Post** /api/organizations | Creates a Organization resource.
[**OrganizationsDelete**](OrganizationAPI.md#OrganizationsDelete) | **Delete** /api/organizations/{id} | Removes the Organization resource.
[**OrganizationsGet**](OrganizationAPI.md#OrganizationsGet) | **Get** /api/organizations/{id} | Retrieves a Organization resource.
[**OrganizationsList**](OrganizationAPI.md#OrganizationsList) | **Get** /api/organizations | Retrieves the collection of Organization resources.
[**OrganizationsUpdate**](OrganizationAPI.md#OrganizationsUpdate) | **Patch** /api/organizations/{id} | Updates the Organization resource.



## OrganizationsCreate

> Organization OrganizationsCreate(ctx).Organization(organization).Execute()

Creates a Organization resource.



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
	organization := *openapiclient.NewOrganization() // Organization | The new Organization resource

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.OrganizationAPI.OrganizationsCreate(context.Background()).Organization(organization).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OrganizationAPI.OrganizationsCreate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `OrganizationsCreate`: Organization
	fmt.Fprintf(os.Stdout, "Response from `OrganizationAPI.OrganizationsCreate`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiOrganizationsCreateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | [**Organization**](Organization.md) | The new Organization resource | 

### Return type

[**Organization**](Organization.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## OrganizationsDelete

> OrganizationsDelete(ctx, id).Execute()

Removes the Organization resource.



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
	id := "id_example" // string | Organization identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.OrganizationAPI.OrganizationsDelete(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OrganizationAPI.OrganizationsDelete``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | Organization identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiOrganizationsDeleteRequest struct via the builder pattern


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


## OrganizationsGet

> Organization OrganizationsGet(ctx, id).Execute()

Retrieves a Organization resource.



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
	id := "id_example" // string | Organization identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.OrganizationAPI.OrganizationsGet(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OrganizationAPI.OrganizationsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `OrganizationsGet`: Organization
	fmt.Fprintf(os.Stdout, "Response from `OrganizationAPI.OrganizationsGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | Organization identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiOrganizationsGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**Organization**](Organization.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## OrganizationsList

> []Organization OrganizationsList(ctx).Page(page).Slug(slug).Slug2(slug2).Execute()

Retrieves the collection of Organization resources.



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

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.OrganizationAPI.OrganizationsList(context.Background()).Page(page).Slug(slug).Slug2(slug2).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OrganizationAPI.OrganizationsList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `OrganizationsList`: []Organization
	fmt.Fprintf(os.Stdout, "Response from `OrganizationAPI.OrganizationsList`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiOrganizationsListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int32** | The collection page number | [default to 1]
 **slug** | **string** |  | 
 **slug2** | **[]string** |  | 

### Return type

[**[]Organization**](Organization.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## OrganizationsUpdate

> Organization OrganizationsUpdate(ctx, id).OrganizationJsonMergePatch(organizationJsonMergePatch).Execute()

Updates the Organization resource.



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
	id := "id_example" // string | Organization identifier
	organizationJsonMergePatch := *openapiclient.NewOrganizationJsonMergePatch() // OrganizationJsonMergePatch | The updated Organization resource

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.OrganizationAPI.OrganizationsUpdate(context.Background(), id).OrganizationJsonMergePatch(organizationJsonMergePatch).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OrganizationAPI.OrganizationsUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `OrganizationsUpdate`: Organization
	fmt.Fprintf(os.Stdout, "Response from `OrganizationAPI.OrganizationsUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | Organization identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiOrganizationsUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **organizationJsonMergePatch** | [**OrganizationJsonMergePatch**](OrganizationJsonMergePatch.md) | The updated Organization resource | 

### Return type

[**Organization**](Organization.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/merge-patch+json
- **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

