# \OrganizationAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiOrganizationsGetCollection**](OrganizationAPI.md#ApiOrganizationsGetCollection) | **Get** /api/organizations | Retrieves the collection of Organization resources.
[**ApiOrganizationsIdDelete**](OrganizationAPI.md#ApiOrganizationsIdDelete) | **Delete** /api/organizations/{id} | Removes the Organization resource.
[**ApiOrganizationsIdGet**](OrganizationAPI.md#ApiOrganizationsIdGet) | **Get** /api/organizations/{id} | Retrieves a Organization resource.
[**ApiOrganizationsIdPatch**](OrganizationAPI.md#ApiOrganizationsIdPatch) | **Patch** /api/organizations/{id} | Updates the Organization resource.
[**ApiOrganizationsPost**](OrganizationAPI.md#ApiOrganizationsPost) | **Post** /api/organizations | Creates a Organization resource.



## ApiOrganizationsGetCollection

> []Organization ApiOrganizationsGetCollection(ctx).Page(page).Slug(slug).Slug2(slug2).Execute()

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
	resp, r, err := apiClient.OrganizationAPI.ApiOrganizationsGetCollection(context.Background()).Page(page).Slug(slug).Slug2(slug2).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OrganizationAPI.ApiOrganizationsGetCollection``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ApiOrganizationsGetCollection`: []Organization
	fmt.Fprintf(os.Stdout, "Response from `OrganizationAPI.ApiOrganizationsGetCollection`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiApiOrganizationsGetCollectionRequest struct via the builder pattern


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


## ApiOrganizationsIdDelete

> ApiOrganizationsIdDelete(ctx, id).Execute()

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
	r, err := apiClient.OrganizationAPI.ApiOrganizationsIdDelete(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OrganizationAPI.ApiOrganizationsIdDelete``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiOrganizationsIdDeleteRequest struct via the builder pattern


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


## ApiOrganizationsIdGet

> Organization ApiOrganizationsIdGet(ctx, id).Execute()

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
	resp, r, err := apiClient.OrganizationAPI.ApiOrganizationsIdGet(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OrganizationAPI.ApiOrganizationsIdGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ApiOrganizationsIdGet`: Organization
	fmt.Fprintf(os.Stdout, "Response from `OrganizationAPI.ApiOrganizationsIdGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | Organization identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiApiOrganizationsIdGetRequest struct via the builder pattern


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


## ApiOrganizationsIdPatch

> Organization ApiOrganizationsIdPatch(ctx, id).OrganizationJsonMergePatch(organizationJsonMergePatch).Execute()

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
	resp, r, err := apiClient.OrganizationAPI.ApiOrganizationsIdPatch(context.Background(), id).OrganizationJsonMergePatch(organizationJsonMergePatch).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OrganizationAPI.ApiOrganizationsIdPatch``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ApiOrganizationsIdPatch`: Organization
	fmt.Fprintf(os.Stdout, "Response from `OrganizationAPI.ApiOrganizationsIdPatch`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | Organization identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiApiOrganizationsIdPatchRequest struct via the builder pattern


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


## ApiOrganizationsPost

> Organization ApiOrganizationsPost(ctx).Organization(organization).Execute()

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
	resp, r, err := apiClient.OrganizationAPI.ApiOrganizationsPost(context.Background()).Organization(organization).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `OrganizationAPI.ApiOrganizationsPost``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ApiOrganizationsPost`: Organization
	fmt.Fprintf(os.Stdout, "Response from `OrganizationAPI.ApiOrganizationsPost`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiApiOrganizationsPostRequest struct via the builder pattern


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

