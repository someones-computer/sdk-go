# \SwarmAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiSwarmsGetCollection**](SwarmAPI.md#ApiSwarmsGetCollection) | **Get** /api/swarms | Retrieves the collection of Swarm resources.
[**ApiSwarmsIdDelete**](SwarmAPI.md#ApiSwarmsIdDelete) | **Delete** /api/swarms/{id} | Removes the Swarm resource.
[**ApiSwarmsIdGet**](SwarmAPI.md#ApiSwarmsIdGet) | **Get** /api/swarms/{id} | Retrieves a Swarm resource.
[**ApiSwarmsIdPatch**](SwarmAPI.md#ApiSwarmsIdPatch) | **Patch** /api/swarms/{id} | Updates the Swarm resource.
[**ApiSwarmsPost**](SwarmAPI.md#ApiSwarmsPost) | **Post** /api/swarms | Creates a Swarm resource.



## ApiSwarmsGetCollection

> []Swarm ApiSwarmsGetCollection(ctx).Page(page).Execute()

Retrieves the collection of Swarm resources.



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
	resp, r, err := apiClient.SwarmAPI.ApiSwarmsGetCollection(context.Background()).Page(page).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SwarmAPI.ApiSwarmsGetCollection``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ApiSwarmsGetCollection`: []Swarm
	fmt.Fprintf(os.Stdout, "Response from `SwarmAPI.ApiSwarmsGetCollection`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiApiSwarmsGetCollectionRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int32** | The collection page number | [default to 1]

### Return type

[**[]Swarm**](Swarm.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ApiSwarmsIdDelete

> ApiSwarmsIdDelete(ctx, id).Execute()

Removes the Swarm resource.



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
	id := "id_example" // string | Swarm identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.SwarmAPI.ApiSwarmsIdDelete(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SwarmAPI.ApiSwarmsIdDelete``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | Swarm identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiApiSwarmsIdDeleteRequest struct via the builder pattern


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


## ApiSwarmsIdGet

> Swarm ApiSwarmsIdGet(ctx, id).Execute()

Retrieves a Swarm resource.



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
	id := "id_example" // string | Swarm identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.SwarmAPI.ApiSwarmsIdGet(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SwarmAPI.ApiSwarmsIdGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ApiSwarmsIdGet`: Swarm
	fmt.Fprintf(os.Stdout, "Response from `SwarmAPI.ApiSwarmsIdGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | Swarm identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiApiSwarmsIdGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**Swarm**](Swarm.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ApiSwarmsIdPatch

> Swarm ApiSwarmsIdPatch(ctx, id).SwarmJsonMergePatch(swarmJsonMergePatch).Execute()

Updates the Swarm resource.



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
	id := "id_example" // string | Swarm identifier
	swarmJsonMergePatch := *openapiclient.NewSwarmJsonMergePatch() // SwarmJsonMergePatch | The updated Swarm resource

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.SwarmAPI.ApiSwarmsIdPatch(context.Background(), id).SwarmJsonMergePatch(swarmJsonMergePatch).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SwarmAPI.ApiSwarmsIdPatch``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ApiSwarmsIdPatch`: Swarm
	fmt.Fprintf(os.Stdout, "Response from `SwarmAPI.ApiSwarmsIdPatch`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | Swarm identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiApiSwarmsIdPatchRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **swarmJsonMergePatch** | [**SwarmJsonMergePatch**](SwarmJsonMergePatch.md) | The updated Swarm resource | 

### Return type

[**Swarm**](Swarm.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/merge-patch+json
- **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ApiSwarmsPost

> Swarm ApiSwarmsPost(ctx).Swarm(swarm).Execute()

Creates a Swarm resource.



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
	swarm := *openapiclient.NewSwarm() // Swarm | The new Swarm resource

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.SwarmAPI.ApiSwarmsPost(context.Background()).Swarm(swarm).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SwarmAPI.ApiSwarmsPost``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ApiSwarmsPost`: Swarm
	fmt.Fprintf(os.Stdout, "Response from `SwarmAPI.ApiSwarmsPost`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiApiSwarmsPostRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **swarm** | [**Swarm**](Swarm.md) | The new Swarm resource | 

### Return type

[**Swarm**](Swarm.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

