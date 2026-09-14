# \DeploymentAccessGateAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DeploymentAccessGatesCreate**](DeploymentAccessGateAPI.md#DeploymentAccessGatesCreate) | **Post** /api/deployment_access_gates | Creates a DeploymentAccessGate resource.
[**DeploymentAccessGatesDelete**](DeploymentAccessGateAPI.md#DeploymentAccessGatesDelete) | **Delete** /api/deployment_access_gates/{id} | Removes the DeploymentAccessGate resource.
[**DeploymentAccessGatesGet**](DeploymentAccessGateAPI.md#DeploymentAccessGatesGet) | **Get** /api/deployment_access_gates/{id} | Retrieves a DeploymentAccessGate resource.
[**DeploymentAccessGatesList**](DeploymentAccessGateAPI.md#DeploymentAccessGatesList) | **Get** /api/deployment_access_gates | Retrieves the collection of DeploymentAccessGate resources.
[**DeploymentAccessGatesUpdate**](DeploymentAccessGateAPI.md#DeploymentAccessGatesUpdate) | **Patch** /api/deployment_access_gates/{id} | Updates the DeploymentAccessGate resource.



## DeploymentAccessGatesCreate

> DeploymentAccessGate DeploymentAccessGatesCreate(ctx).DeploymentAccessGate(deploymentAccessGate).Execute()

Creates a DeploymentAccessGate resource.



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
	deploymentAccessGate := *openapiclient.NewDeploymentAccessGate() // DeploymentAccessGate | The new DeploymentAccessGate resource

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.DeploymentAccessGateAPI.DeploymentAccessGatesCreate(context.Background()).DeploymentAccessGate(deploymentAccessGate).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DeploymentAccessGateAPI.DeploymentAccessGatesCreate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DeploymentAccessGatesCreate`: DeploymentAccessGate
	fmt.Fprintf(os.Stdout, "Response from `DeploymentAccessGateAPI.DeploymentAccessGatesCreate`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDeploymentAccessGatesCreateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deploymentAccessGate** | [**DeploymentAccessGate**](DeploymentAccessGate.md) | The new DeploymentAccessGate resource | 

### Return type

[**DeploymentAccessGate**](DeploymentAccessGate.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeploymentAccessGatesDelete

> DeploymentAccessGatesDelete(ctx, id).Execute()

Removes the DeploymentAccessGate resource.



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
	id := "id_example" // string | DeploymentAccessGate identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.DeploymentAccessGateAPI.DeploymentAccessGatesDelete(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DeploymentAccessGateAPI.DeploymentAccessGatesDelete``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | DeploymentAccessGate identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiDeploymentAccessGatesDeleteRequest struct via the builder pattern


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


## DeploymentAccessGatesGet

> DeploymentAccessGate DeploymentAccessGatesGet(ctx, id).Execute()

Retrieves a DeploymentAccessGate resource.



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
	id := "id_example" // string | DeploymentAccessGate identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.DeploymentAccessGateAPI.DeploymentAccessGatesGet(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DeploymentAccessGateAPI.DeploymentAccessGatesGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DeploymentAccessGatesGet`: DeploymentAccessGate
	fmt.Fprintf(os.Stdout, "Response from `DeploymentAccessGateAPI.DeploymentAccessGatesGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | DeploymentAccessGate identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiDeploymentAccessGatesGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**DeploymentAccessGate**](DeploymentAccessGate.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeploymentAccessGatesList

> []DeploymentAccessGate DeploymentAccessGatesList(ctx).Page(page).Execute()

Retrieves the collection of DeploymentAccessGate resources.



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
	resp, r, err := apiClient.DeploymentAccessGateAPI.DeploymentAccessGatesList(context.Background()).Page(page).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DeploymentAccessGateAPI.DeploymentAccessGatesList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DeploymentAccessGatesList`: []DeploymentAccessGate
	fmt.Fprintf(os.Stdout, "Response from `DeploymentAccessGateAPI.DeploymentAccessGatesList`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDeploymentAccessGatesListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int32** | The collection page number | [default to 1]

### Return type

[**[]DeploymentAccessGate**](DeploymentAccessGate.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeploymentAccessGatesUpdate

> DeploymentAccessGate DeploymentAccessGatesUpdate(ctx, id).DeploymentAccessGateJsonMergePatch(deploymentAccessGateJsonMergePatch).Execute()

Updates the DeploymentAccessGate resource.



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
	id := "id_example" // string | DeploymentAccessGate identifier
	deploymentAccessGateJsonMergePatch := *openapiclient.NewDeploymentAccessGateJsonMergePatch() // DeploymentAccessGateJsonMergePatch | The updated DeploymentAccessGate resource

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.DeploymentAccessGateAPI.DeploymentAccessGatesUpdate(context.Background(), id).DeploymentAccessGateJsonMergePatch(deploymentAccessGateJsonMergePatch).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DeploymentAccessGateAPI.DeploymentAccessGatesUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DeploymentAccessGatesUpdate`: DeploymentAccessGate
	fmt.Fprintf(os.Stdout, "Response from `DeploymentAccessGateAPI.DeploymentAccessGatesUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | DeploymentAccessGate identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiDeploymentAccessGatesUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **deploymentAccessGateJsonMergePatch** | [**DeploymentAccessGateJsonMergePatch**](DeploymentAccessGateJsonMergePatch.md) | The updated DeploymentAccessGate resource | 

### Return type

[**DeploymentAccessGate**](DeploymentAccessGate.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/merge-patch+json
- **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

