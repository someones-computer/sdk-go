# \DeploymentAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DeploymentsBundleUploadConfirm**](DeploymentAPI.md#DeploymentsBundleUploadConfirm) | **Post** /api/deployments/bundle_uploads/confirm | Creates a Deployment resource.
[**DeploymentsBundleUploadDeclare**](DeploymentAPI.md#DeploymentsBundleUploadDeclare) | **Post** /api/deployments/bundle_uploads | Creates a Deployment resource.
[**DeploymentsCreate**](DeploymentAPI.md#DeploymentsCreate) | **Post** /api/deployments | Creates a Deployment resource.
[**DeploymentsDelete**](DeploymentAPI.md#DeploymentsDelete) | **Delete** /api/deployments/{id} | Removes the Deployment resource.
[**DeploymentsEndpoints**](DeploymentAPI.md#DeploymentsEndpoints) | **Get** /api/deployments/{id}/endpoints | Retrieves the collection of Deployment resources.
[**DeploymentsGet**](DeploymentAPI.md#DeploymentsGet) | **Get** /api/deployments/{id} | Retrieves a Deployment resource.
[**DeploymentsList**](DeploymentAPI.md#DeploymentsList) | **Get** /api/deployments | Retrieves the collection of Deployment resources.
[**DeploymentsUpdate**](DeploymentAPI.md#DeploymentsUpdate) | **Patch** /api/deployments/{id} | Updates the Deployment resource.



## DeploymentsBundleUploadConfirm

> DeploymentBundleUploadConfirmOutput DeploymentsBundleUploadConfirm(ctx).DeploymentBundleUploadConfirmInput(deploymentBundleUploadConfirmInput).Execute()

Creates a Deployment resource.



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
	deploymentBundleUploadConfirmInput := *openapiclient.NewDeploymentBundleUploadConfirmInput("https://example.com/", "Client_example", "Compose_example") // DeploymentBundleUploadConfirmInput | The new Deployment resource

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.DeploymentAPI.DeploymentsBundleUploadConfirm(context.Background()).DeploymentBundleUploadConfirmInput(deploymentBundleUploadConfirmInput).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DeploymentAPI.DeploymentsBundleUploadConfirm``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DeploymentsBundleUploadConfirm`: DeploymentBundleUploadConfirmOutput
	fmt.Fprintf(os.Stdout, "Response from `DeploymentAPI.DeploymentsBundleUploadConfirm`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDeploymentsBundleUploadConfirmRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deploymentBundleUploadConfirmInput** | [**DeploymentBundleUploadConfirmInput**](DeploymentBundleUploadConfirmInput.md) | The new Deployment resource | 

### Return type

[**DeploymentBundleUploadConfirmOutput**](DeploymentBundleUploadConfirmOutput.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeploymentsBundleUploadDeclare

> DeploymentBundleUploadDeclareOutput DeploymentsBundleUploadDeclare(ctx).DeploymentBundleUploadDeclareInput(deploymentBundleUploadDeclareInput).Execute()

Creates a Deployment resource.



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
	deploymentBundleUploadDeclareInput := *openapiclient.NewDeploymentBundleUploadDeclareInput("https://example.com/", "Client_example", "Compose_example") // DeploymentBundleUploadDeclareInput | The new Deployment resource

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.DeploymentAPI.DeploymentsBundleUploadDeclare(context.Background()).DeploymentBundleUploadDeclareInput(deploymentBundleUploadDeclareInput).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DeploymentAPI.DeploymentsBundleUploadDeclare``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DeploymentsBundleUploadDeclare`: DeploymentBundleUploadDeclareOutput
	fmt.Fprintf(os.Stdout, "Response from `DeploymentAPI.DeploymentsBundleUploadDeclare`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDeploymentsBundleUploadDeclareRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deploymentBundleUploadDeclareInput** | [**DeploymentBundleUploadDeclareInput**](DeploymentBundleUploadDeclareInput.md) | The new Deployment resource | 

### Return type

[**DeploymentBundleUploadDeclareOutput**](DeploymentBundleUploadDeclareOutput.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeploymentsCreate

> Deployment DeploymentsCreate(ctx).Deployment(deployment).Execute()

Creates a Deployment resource.



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
	deployment := *openapiclient.NewDeployment() // Deployment | The new Deployment resource

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.DeploymentAPI.DeploymentsCreate(context.Background()).Deployment(deployment).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DeploymentAPI.DeploymentsCreate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DeploymentsCreate`: Deployment
	fmt.Fprintf(os.Stdout, "Response from `DeploymentAPI.DeploymentsCreate`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDeploymentsCreateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deployment** | [**Deployment**](Deployment.md) | The new Deployment resource | 

### Return type

[**Deployment**](Deployment.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeploymentsDelete

> DeploymentsDelete(ctx, id).Execute()

Removes the Deployment resource.



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
	id := "id_example" // string | Deployment identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.DeploymentAPI.DeploymentsDelete(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DeploymentAPI.DeploymentsDelete``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | Deployment identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiDeploymentsDeleteRequest struct via the builder pattern


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


## DeploymentsEndpoints

> []DeploymentDeploymentEndpoint DeploymentsEndpoints(ctx, id).Execute()

Retrieves the collection of Deployment resources.



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
	id := "id_example" // string | Deployment identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.DeploymentAPI.DeploymentsEndpoints(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DeploymentAPI.DeploymentsEndpoints``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DeploymentsEndpoints`: []DeploymentDeploymentEndpoint
	fmt.Fprintf(os.Stdout, "Response from `DeploymentAPI.DeploymentsEndpoints`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | Deployment identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiDeploymentsEndpointsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**[]DeploymentDeploymentEndpoint**](DeploymentDeploymentEndpoint.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeploymentsGet

> Deployment DeploymentsGet(ctx, id).Execute()

Retrieves a Deployment resource.



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
	id := "id_example" // string | Deployment identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.DeploymentAPI.DeploymentsGet(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DeploymentAPI.DeploymentsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DeploymentsGet`: Deployment
	fmt.Fprintf(os.Stdout, "Response from `DeploymentAPI.DeploymentsGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | Deployment identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiDeploymentsGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**Deployment**](Deployment.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeploymentsList

> []Deployment DeploymentsList(ctx).Page(page).Execute()

Retrieves the collection of Deployment resources.



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
	resp, r, err := apiClient.DeploymentAPI.DeploymentsList(context.Background()).Page(page).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DeploymentAPI.DeploymentsList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DeploymentsList`: []Deployment
	fmt.Fprintf(os.Stdout, "Response from `DeploymentAPI.DeploymentsList`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDeploymentsListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int32** | The collection page number | [default to 1]

### Return type

[**[]Deployment**](Deployment.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeploymentsUpdate

> Deployment DeploymentsUpdate(ctx, id).DeploymentJsonMergePatch(deploymentJsonMergePatch).Execute()

Updates the Deployment resource.



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
	id := "id_example" // string | Deployment identifier
	deploymentJsonMergePatch := *openapiclient.NewDeploymentJsonMergePatch() // DeploymentJsonMergePatch | The updated Deployment resource

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.DeploymentAPI.DeploymentsUpdate(context.Background(), id).DeploymentJsonMergePatch(deploymentJsonMergePatch).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DeploymentAPI.DeploymentsUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DeploymentsUpdate`: Deployment
	fmt.Fprintf(os.Stdout, "Response from `DeploymentAPI.DeploymentsUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | Deployment identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiDeploymentsUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **deploymentJsonMergePatch** | [**DeploymentJsonMergePatch**](DeploymentJsonMergePatch.md) | The updated Deployment resource | 

### Return type

[**Deployment**](Deployment.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/merge-patch+json
- **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

