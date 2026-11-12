# \ApplicationVolumeAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiApplicationVolumesGetCollection**](ApplicationVolumeAPI.md#ApiApplicationVolumesGetCollection) | **Get** /api/application_volumes | Retrieves the collection of ApplicationVolume resources.
[**ApiApplicationVolumesIdDelete**](ApplicationVolumeAPI.md#ApiApplicationVolumesIdDelete) | **Delete** /api/application_volumes/{id} | Removes the ApplicationVolume resource.
[**ApiApplicationVolumesIdGet**](ApplicationVolumeAPI.md#ApiApplicationVolumesIdGet) | **Get** /api/application_volumes/{id} | Retrieves a ApplicationVolume resource.



## ApiApplicationVolumesGetCollection

> []ApplicationVolume ApiApplicationVolumesGetCollection(ctx).Page(page).Execute()

Retrieves the collection of ApplicationVolume resources.



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
	resp, r, err := apiClient.ApplicationVolumeAPI.ApiApplicationVolumesGetCollection(context.Background()).Page(page).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ApplicationVolumeAPI.ApiApplicationVolumesGetCollection``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ApiApplicationVolumesGetCollection`: []ApplicationVolume
	fmt.Fprintf(os.Stdout, "Response from `ApplicationVolumeAPI.ApiApplicationVolumesGetCollection`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiApiApplicationVolumesGetCollectionRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int32** | The collection page number | [default to 1]

### Return type

[**[]ApplicationVolume**](ApplicationVolume.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ApiApplicationVolumesIdDelete

> ApiApplicationVolumesIdDelete(ctx, id).Execute()

Removes the ApplicationVolume resource.



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
	id := "id_example" // string | ApplicationVolume identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.ApplicationVolumeAPI.ApiApplicationVolumesIdDelete(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ApplicationVolumeAPI.ApiApplicationVolumesIdDelete``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | ApplicationVolume identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiApiApplicationVolumesIdDeleteRequest struct via the builder pattern


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


## ApiApplicationVolumesIdGet

> ApplicationVolume ApiApplicationVolumesIdGet(ctx, id).Execute()

Retrieves a ApplicationVolume resource.



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
	id := "id_example" // string | ApplicationVolume identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ApplicationVolumeAPI.ApiApplicationVolumesIdGet(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ApplicationVolumeAPI.ApiApplicationVolumesIdGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ApiApplicationVolumesIdGet`: ApplicationVolume
	fmt.Fprintf(os.Stdout, "Response from `ApplicationVolumeAPI.ApiApplicationVolumesIdGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | ApplicationVolume identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiApiApplicationVolumesIdGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**ApplicationVolume**](ApplicationVolume.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

