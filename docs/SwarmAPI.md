# \SwarmAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SwarmsCreate**](SwarmAPI.md#SwarmsCreate) | **Post** /api/swarms | Creates a Swarm resource.
[**SwarmsDelete**](SwarmAPI.md#SwarmsDelete) | **Delete** /api/swarms/{id} | Removes the Swarm resource.
[**SwarmsGet**](SwarmAPI.md#SwarmsGet) | **Get** /api/swarms/{id} | Retrieves a Swarm resource.
[**SwarmsList**](SwarmAPI.md#SwarmsList) | **Get** /api/swarms | Retrieves the collection of Swarm resources.
[**SwarmsUpdate**](SwarmAPI.md#SwarmsUpdate) | **Patch** /api/swarms/{id} | Updates the Swarm resource.



## SwarmsCreate

> Swarm SwarmsCreate(ctx).Swarm(swarm).Execute()

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
	resp, r, err := apiClient.SwarmAPI.SwarmsCreate(context.Background()).Swarm(swarm).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SwarmAPI.SwarmsCreate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SwarmsCreate`: Swarm
	fmt.Fprintf(os.Stdout, "Response from `SwarmAPI.SwarmsCreate`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSwarmsCreateRequest struct via the builder pattern


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


## SwarmsDelete

> SwarmsDelete(ctx, id).Execute()

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
	r, err := apiClient.SwarmAPI.SwarmsDelete(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SwarmAPI.SwarmsDelete``: %v\n", err)
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

Other parameters are passed through a pointer to a apiSwarmsDeleteRequest struct via the builder pattern


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


## SwarmsGet

> Swarm SwarmsGet(ctx, id).Execute()

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
	resp, r, err := apiClient.SwarmAPI.SwarmsGet(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SwarmAPI.SwarmsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SwarmsGet`: Swarm
	fmt.Fprintf(os.Stdout, "Response from `SwarmAPI.SwarmsGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | Swarm identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiSwarmsGetRequest struct via the builder pattern


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


## SwarmsList

> []Swarm SwarmsList(ctx).Page(page).Execute()

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
	resp, r, err := apiClient.SwarmAPI.SwarmsList(context.Background()).Page(page).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SwarmAPI.SwarmsList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SwarmsList`: []Swarm
	fmt.Fprintf(os.Stdout, "Response from `SwarmAPI.SwarmsList`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSwarmsListRequest struct via the builder pattern


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


## SwarmsUpdate

> Swarm SwarmsUpdate(ctx, id).SwarmJsonMergePatch(swarmJsonMergePatch).Execute()

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
	resp, r, err := apiClient.SwarmAPI.SwarmsUpdate(context.Background(), id).SwarmJsonMergePatch(swarmJsonMergePatch).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `SwarmAPI.SwarmsUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SwarmsUpdate`: Swarm
	fmt.Fprintf(os.Stdout, "Response from `SwarmAPI.SwarmsUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | Swarm identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiSwarmsUpdateRequest struct via the builder pattern


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

