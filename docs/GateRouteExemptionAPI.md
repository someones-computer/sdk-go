# \GateRouteExemptionAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiGateRouteExemptionsGetCollection**](GateRouteExemptionAPI.md#ApiGateRouteExemptionsGetCollection) | **Get** /api/gate_route_exemptions | Retrieves the collection of GateRouteExemption resources.
[**ApiGateRouteExemptionsIdDelete**](GateRouteExemptionAPI.md#ApiGateRouteExemptionsIdDelete) | **Delete** /api/gate_route_exemptions/{id} | Removes the GateRouteExemption resource.
[**ApiGateRouteExemptionsIdGet**](GateRouteExemptionAPI.md#ApiGateRouteExemptionsIdGet) | **Get** /api/gate_route_exemptions/{id} | Retrieves a GateRouteExemption resource.
[**ApiGateRouteExemptionsPost**](GateRouteExemptionAPI.md#ApiGateRouteExemptionsPost) | **Post** /api/gate_route_exemptions | Creates a GateRouteExemption resource.



## ApiGateRouteExemptionsGetCollection

> []GateRouteExemption ApiGateRouteExemptionsGetCollection(ctx).Page(page).Execute()

Retrieves the collection of GateRouteExemption resources.



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
	resp, r, err := apiClient.GateRouteExemptionAPI.ApiGateRouteExemptionsGetCollection(context.Background()).Page(page).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `GateRouteExemptionAPI.ApiGateRouteExemptionsGetCollection``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ApiGateRouteExemptionsGetCollection`: []GateRouteExemption
	fmt.Fprintf(os.Stdout, "Response from `GateRouteExemptionAPI.ApiGateRouteExemptionsGetCollection`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiApiGateRouteExemptionsGetCollectionRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int32** | The collection page number | [default to 1]

### Return type

[**[]GateRouteExemption**](GateRouteExemption.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ApiGateRouteExemptionsIdDelete

> ApiGateRouteExemptionsIdDelete(ctx, id).Execute()

Removes the GateRouteExemption resource.



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
	id := "id_example" // string | GateRouteExemption identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.GateRouteExemptionAPI.ApiGateRouteExemptionsIdDelete(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `GateRouteExemptionAPI.ApiGateRouteExemptionsIdDelete``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | GateRouteExemption identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiApiGateRouteExemptionsIdDeleteRequest struct via the builder pattern


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


## ApiGateRouteExemptionsIdGet

> GateRouteExemption ApiGateRouteExemptionsIdGet(ctx, id).Execute()

Retrieves a GateRouteExemption resource.



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
	id := "id_example" // string | GateRouteExemption identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.GateRouteExemptionAPI.ApiGateRouteExemptionsIdGet(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `GateRouteExemptionAPI.ApiGateRouteExemptionsIdGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ApiGateRouteExemptionsIdGet`: GateRouteExemption
	fmt.Fprintf(os.Stdout, "Response from `GateRouteExemptionAPI.ApiGateRouteExemptionsIdGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | GateRouteExemption identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiApiGateRouteExemptionsIdGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**GateRouteExemption**](GateRouteExemption.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ApiGateRouteExemptionsPost

> GateRouteExemption ApiGateRouteExemptionsPost(ctx).GateRouteExemptionGateRouteExemptionInput(gateRouteExemptionGateRouteExemptionInput).Execute()

Creates a GateRouteExemption resource.



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
	gateRouteExemptionGateRouteExemptionInput := *openapiclient.NewGateRouteExemptionGateRouteExemptionInput("https://example.com/", "ServiceName_example", "Host_example", "PathPrefix_example") // GateRouteExemptionGateRouteExemptionInput | The new GateRouteExemption resource

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.GateRouteExemptionAPI.ApiGateRouteExemptionsPost(context.Background()).GateRouteExemptionGateRouteExemptionInput(gateRouteExemptionGateRouteExemptionInput).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `GateRouteExemptionAPI.ApiGateRouteExemptionsPost``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ApiGateRouteExemptionsPost`: GateRouteExemption
	fmt.Fprintf(os.Stdout, "Response from `GateRouteExemptionAPI.ApiGateRouteExemptionsPost`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiApiGateRouteExemptionsPostRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gateRouteExemptionGateRouteExemptionInput** | [**GateRouteExemptionGateRouteExemptionInput**](GateRouteExemptionGateRouteExemptionInput.md) | The new GateRouteExemption resource | 

### Return type

[**GateRouteExemption**](GateRouteExemption.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

