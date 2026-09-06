# \DeploymentAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiDeploymentsGetCollection**](DeploymentAPI.md#ApiDeploymentsGetCollection) | **Get** /api/deployments | Retrieves the collection of Deployment resources.
[**ApiDeploymentsIdDelete**](DeploymentAPI.md#ApiDeploymentsIdDelete) | **Delete** /api/deployments/{id} | Removes the Deployment resource.
[**ApiDeploymentsIdGet**](DeploymentAPI.md#ApiDeploymentsIdGet) | **Get** /api/deployments/{id} | Retrieves a Deployment resource.
[**ApiDeploymentsIdPatch**](DeploymentAPI.md#ApiDeploymentsIdPatch) | **Patch** /api/deployments/{id} | Updates the Deployment resource.
[**ApiDeploymentsIdendpointsGetCollection**](DeploymentAPI.md#ApiDeploymentsIdendpointsGetCollection) | **Get** /api/deployments/{id}/endpoints | Retrieves the collection of Deployment resources.
[**ApiDeploymentsPost**](DeploymentAPI.md#ApiDeploymentsPost) | **Post** /api/deployments | Creates a Deployment resource.
[**BundleUploadConfirm**](DeploymentAPI.md#BundleUploadConfirm) | **Post** /api/deployments/bundle_uploads/confirm | Creates a Deployment resource.
[**BundleUploadDeclare**](DeploymentAPI.md#BundleUploadDeclare) | **Post** /api/deployments/bundle_uploads | Creates a Deployment resource.



## ApiDeploymentsGetCollection

> []Deployment ApiDeploymentsGetCollection(ctx).Page(page).Execute()

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
	resp, r, err := apiClient.DeploymentAPI.ApiDeploymentsGetCollection(context.Background()).Page(page).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DeploymentAPI.ApiDeploymentsGetCollection``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ApiDeploymentsGetCollection`: []Deployment
	fmt.Fprintf(os.Stdout, "Response from `DeploymentAPI.ApiDeploymentsGetCollection`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiApiDeploymentsGetCollectionRequest struct via the builder pattern


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


## ApiDeploymentsIdDelete

> ApiDeploymentsIdDelete(ctx, id).Execute()

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
	r, err := apiClient.DeploymentAPI.ApiDeploymentsIdDelete(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DeploymentAPI.ApiDeploymentsIdDelete``: %v\n", err)
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

Other parameters are passed through a pointer to a apiApiDeploymentsIdDeleteRequest struct via the builder pattern


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


## ApiDeploymentsIdGet

> Deployment ApiDeploymentsIdGet(ctx, id).Execute()

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
	resp, r, err := apiClient.DeploymentAPI.ApiDeploymentsIdGet(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DeploymentAPI.ApiDeploymentsIdGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ApiDeploymentsIdGet`: Deployment
	fmt.Fprintf(os.Stdout, "Response from `DeploymentAPI.ApiDeploymentsIdGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | Deployment identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiApiDeploymentsIdGetRequest struct via the builder pattern


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


## ApiDeploymentsIdPatch

> Deployment ApiDeploymentsIdPatch(ctx, id).DeploymentJsonMergePatch(deploymentJsonMergePatch).Execute()

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
	resp, r, err := apiClient.DeploymentAPI.ApiDeploymentsIdPatch(context.Background(), id).DeploymentJsonMergePatch(deploymentJsonMergePatch).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DeploymentAPI.ApiDeploymentsIdPatch``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ApiDeploymentsIdPatch`: Deployment
	fmt.Fprintf(os.Stdout, "Response from `DeploymentAPI.ApiDeploymentsIdPatch`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | Deployment identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiApiDeploymentsIdPatchRequest struct via the builder pattern


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


## ApiDeploymentsIdendpointsGetCollection

> []DeploymentDeploymentEndpoint ApiDeploymentsIdendpointsGetCollection(ctx, id).Execute()

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
	resp, r, err := apiClient.DeploymentAPI.ApiDeploymentsIdendpointsGetCollection(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DeploymentAPI.ApiDeploymentsIdendpointsGetCollection``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ApiDeploymentsIdendpointsGetCollection`: []DeploymentDeploymentEndpoint
	fmt.Fprintf(os.Stdout, "Response from `DeploymentAPI.ApiDeploymentsIdendpointsGetCollection`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | Deployment identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiApiDeploymentsIdendpointsGetCollectionRequest struct via the builder pattern


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


## ApiDeploymentsPost

> Deployment ApiDeploymentsPost(ctx).Deployment(deployment).Execute()

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
	resp, r, err := apiClient.DeploymentAPI.ApiDeploymentsPost(context.Background()).Deployment(deployment).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DeploymentAPI.ApiDeploymentsPost``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ApiDeploymentsPost`: Deployment
	fmt.Fprintf(os.Stdout, "Response from `DeploymentAPI.ApiDeploymentsPost`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiApiDeploymentsPostRequest struct via the builder pattern


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


## BundleUploadConfirm

> DeploymentBundleUploadConfirmOutput BundleUploadConfirm(ctx).DeploymentBundleUploadConfirmInput(deploymentBundleUploadConfirmInput).Execute()

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
	resp, r, err := apiClient.DeploymentAPI.BundleUploadConfirm(context.Background()).DeploymentBundleUploadConfirmInput(deploymentBundleUploadConfirmInput).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DeploymentAPI.BundleUploadConfirm``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `BundleUploadConfirm`: DeploymentBundleUploadConfirmOutput
	fmt.Fprintf(os.Stdout, "Response from `DeploymentAPI.BundleUploadConfirm`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiBundleUploadConfirmRequest struct via the builder pattern


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


## BundleUploadDeclare

> DeploymentBundleUploadDeclareOutput BundleUploadDeclare(ctx).DeploymentBundleUploadDeclareInput(deploymentBundleUploadDeclareInput).Execute()

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
	resp, r, err := apiClient.DeploymentAPI.BundleUploadDeclare(context.Background()).DeploymentBundleUploadDeclareInput(deploymentBundleUploadDeclareInput).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DeploymentAPI.BundleUploadDeclare``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `BundleUploadDeclare`: DeploymentBundleUploadDeclareOutput
	fmt.Fprintf(os.Stdout, "Response from `DeploymentAPI.BundleUploadDeclare`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiBundleUploadDeclareRequest struct via the builder pattern


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

