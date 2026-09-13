# \CreditTransactionAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreditTransactionsGet**](CreditTransactionAPI.md#CreditTransactionsGet) | **Get** /api/credit_transactions/{id} | Retrieves a CreditTransaction resource.
[**CreditTransactionsList**](CreditTransactionAPI.md#CreditTransactionsList) | **Get** /api/credit_transactions | Retrieves the collection of CreditTransaction resources.



## CreditTransactionsGet

> CreditTransaction CreditTransactionsGet(ctx, id).Execute()

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
	resp, r, err := apiClient.CreditTransactionAPI.CreditTransactionsGet(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `CreditTransactionAPI.CreditTransactionsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `CreditTransactionsGet`: CreditTransaction
	fmt.Fprintf(os.Stdout, "Response from `CreditTransactionAPI.CreditTransactionsGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | CreditTransaction identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiCreditTransactionsGetRequest struct via the builder pattern


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


## CreditTransactionsList

> []CreditTransaction CreditTransactionsList(ctx).Page(page).Execute()

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
	resp, r, err := apiClient.CreditTransactionAPI.CreditTransactionsList(context.Background()).Page(page).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `CreditTransactionAPI.CreditTransactionsList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `CreditTransactionsList`: []CreditTransaction
	fmt.Fprintf(os.Stdout, "Response from `CreditTransactionAPI.CreditTransactionsList`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCreditTransactionsListRequest struct via the builder pattern


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

