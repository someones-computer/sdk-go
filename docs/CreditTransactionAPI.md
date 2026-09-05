# \CreditTransactionAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiCreditTransactionsGetCollection**](CreditTransactionAPI.md#ApiCreditTransactionsGetCollection) | **Get** /api/credit_transactions | Retrieves the collection of CreditTransaction resources.
[**ApiCreditTransactionsIdGet**](CreditTransactionAPI.md#ApiCreditTransactionsIdGet) | **Get** /api/credit_transactions/{id} | Retrieves a CreditTransaction resource.



## ApiCreditTransactionsGetCollection

> []CreditTransaction ApiCreditTransactionsGetCollection(ctx).Page(page).Execute()

Retrieves the collection of CreditTransaction resources.



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
	resp, r, err := apiClient.CreditTransactionAPI.ApiCreditTransactionsGetCollection(context.Background()).Page(page).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `CreditTransactionAPI.ApiCreditTransactionsGetCollection``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ApiCreditTransactionsGetCollection`: []CreditTransaction
	fmt.Fprintf(os.Stdout, "Response from `CreditTransactionAPI.ApiCreditTransactionsGetCollection`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiApiCreditTransactionsGetCollectionRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int32** | The collection page number | [default to 1]

### Return type

[**[]CreditTransaction**](CreditTransaction.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ApiCreditTransactionsIdGet

> CreditTransaction ApiCreditTransactionsIdGet(ctx, id).Execute()

Retrieves a CreditTransaction resource.



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
	id := "id_example" // string | CreditTransaction identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.CreditTransactionAPI.ApiCreditTransactionsIdGet(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `CreditTransactionAPI.ApiCreditTransactionsIdGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ApiCreditTransactionsIdGet`: CreditTransaction
	fmt.Fprintf(os.Stdout, "Response from `CreditTransactionAPI.ApiCreditTransactionsIdGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | CreditTransaction identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiApiCreditTransactionsIdGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**CreditTransaction**](CreditTransaction.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

