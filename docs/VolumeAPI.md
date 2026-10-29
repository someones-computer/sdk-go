# \VolumeAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**VolumesCreate**](VolumeAPI.md#VolumesCreate) | **Post** /api/volumes | Creates a Volume resource.
[**VolumesDelete**](VolumeAPI.md#VolumesDelete) | **Delete** /api/volumes/{id} | Removes the Volume resource.
[**VolumesGet**](VolumeAPI.md#VolumesGet) | **Get** /api/volumes/{id} | Retrieves a Volume resource.
[**VolumesList**](VolumeAPI.md#VolumesList) | **Get** /api/volumes | Retrieves the collection of Volume resources.



## VolumesCreate

> Volume VolumesCreate(ctx).VolumeVolumeInput(volumeVolumeInput).Execute()

Creates a Volume resource.



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
	volumeVolumeInput := *openapiclient.NewVolumeVolumeInput("Slug_example", "https://example.com/") // VolumeVolumeInput | The new Volume resource

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.VolumeAPI.VolumesCreate(context.Background()).VolumeVolumeInput(volumeVolumeInput).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VolumeAPI.VolumesCreate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `VolumesCreate`: Volume
	fmt.Fprintf(os.Stdout, "Response from `VolumeAPI.VolumesCreate`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiVolumesCreateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **volumeVolumeInput** | [**VolumeVolumeInput**](VolumeVolumeInput.md) | The new Volume resource | 

### Return type

[**Volume**](Volume.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VolumesDelete

> VolumesDelete(ctx, id).Execute()

Removes the Volume resource.



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
	id := "id_example" // string | Volume identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.VolumeAPI.VolumesDelete(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VolumeAPI.VolumesDelete``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | Volume identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiVolumesDeleteRequest struct via the builder pattern


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


## VolumesGet

> Volume VolumesGet(ctx, id).Execute()

Retrieves a Volume resource.



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
	id := "id_example" // string | Volume identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.VolumeAPI.VolumesGet(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VolumeAPI.VolumesGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `VolumesGet`: Volume
	fmt.Fprintf(os.Stdout, "Response from `VolumeAPI.VolumesGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | Volume identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiVolumesGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**Volume**](Volume.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VolumesList

> []Volume VolumesList(ctx).Page(page).Execute()

Retrieves the collection of Volume resources.



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
	resp, r, err := apiClient.VolumeAPI.VolumesList(context.Background()).Page(page).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VolumeAPI.VolumesList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `VolumesList`: []Volume
	fmt.Fprintf(os.Stdout, "Response from `VolumeAPI.VolumesList`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiVolumesListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int32** | The collection page number | [default to 1]

### Return type

[**[]Volume**](Volume.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

