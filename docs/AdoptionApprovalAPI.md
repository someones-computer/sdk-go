# \AdoptionApprovalAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AdoptionApprovalsDecide**](AdoptionApprovalAPI.md#AdoptionApprovalsDecide) | **Post** /api/adoption_approvals | Creates a AdoptionApproval resource.
[**AdoptionApprovalsGet**](AdoptionApprovalAPI.md#AdoptionApprovalsGet) | **Get** /api/adoption_approvals/{id} | Retrieves a AdoptionApproval resource.
[**AdoptionApprovalsList**](AdoptionApprovalAPI.md#AdoptionApprovalsList) | **Get** /api/adoption_approvals | Retrieves the collection of AdoptionApproval resources.
[**AdoptionApprovalsWithdraw**](AdoptionApprovalAPI.md#AdoptionApprovalsWithdraw) | **Delete** /api/adoption_approvals/{id} | Removes the AdoptionApproval resource.



## AdoptionApprovalsDecide

> AdoptionApproval AdoptionApprovalsDecide(ctx).AdoptionApprovalAdoptionApprovalInput(adoptionApprovalAdoptionApprovalInput).Execute()

Creates a AdoptionApproval resource.



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
	adoptionApprovalAdoptionApprovalInput := *openapiclient.NewAdoptionApprovalAdoptionApprovalInput("https://example.com/", "ComposeServiceName_example") // AdoptionApprovalAdoptionApprovalInput | The new AdoptionApproval resource

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdoptionApprovalAPI.AdoptionApprovalsDecide(context.Background()).AdoptionApprovalAdoptionApprovalInput(adoptionApprovalAdoptionApprovalInput).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdoptionApprovalAPI.AdoptionApprovalsDecide``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdoptionApprovalsDecide`: AdoptionApproval
	fmt.Fprintf(os.Stdout, "Response from `AdoptionApprovalAPI.AdoptionApprovalsDecide`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiAdoptionApprovalsDecideRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **adoptionApprovalAdoptionApprovalInput** | [**AdoptionApprovalAdoptionApprovalInput**](AdoptionApprovalAdoptionApprovalInput.md) | The new AdoptionApproval resource | 

### Return type

[**AdoptionApproval**](AdoptionApproval.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdoptionApprovalsGet

> AdoptionApproval AdoptionApprovalsGet(ctx, id).Execute()

Retrieves a AdoptionApproval resource.



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
	id := "id_example" // string | AdoptionApproval identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdoptionApprovalAPI.AdoptionApprovalsGet(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdoptionApprovalAPI.AdoptionApprovalsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdoptionApprovalsGet`: AdoptionApproval
	fmt.Fprintf(os.Stdout, "Response from `AdoptionApprovalAPI.AdoptionApprovalsGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | AdoptionApproval identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdoptionApprovalsGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdoptionApproval**](AdoptionApproval.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdoptionApprovalsList

> []AdoptionApproval AdoptionApprovalsList(ctx).Page(page).Execute()

Retrieves the collection of AdoptionApproval resources.



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
	resp, r, err := apiClient.AdoptionApprovalAPI.AdoptionApprovalsList(context.Background()).Page(page).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdoptionApprovalAPI.AdoptionApprovalsList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdoptionApprovalsList`: []AdoptionApproval
	fmt.Fprintf(os.Stdout, "Response from `AdoptionApprovalAPI.AdoptionApprovalsList`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiAdoptionApprovalsListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int32** | The collection page number | [default to 1]

### Return type

[**[]AdoptionApproval**](AdoptionApproval.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdoptionApprovalsWithdraw

> AdoptionApprovalsWithdraw(ctx, id).Execute()

Removes the AdoptionApproval resource.



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
	id := "id_example" // string | AdoptionApproval identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.AdoptionApprovalAPI.AdoptionApprovalsWithdraw(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdoptionApprovalAPI.AdoptionApprovalsWithdraw``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | AdoptionApproval identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdoptionApprovalsWithdrawRequest struct via the builder pattern


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

