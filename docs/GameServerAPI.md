# \GameServerAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GameServersCreate**](GameServerAPI.md#GameServersCreate) | **Post** /api/game_servers | Creates a GameServer resource.
[**GameServersDelete**](GameServerAPI.md#GameServersDelete) | **Delete** /api/game_servers/{id} | Removes the GameServer resource.
[**GameServersGet**](GameServerAPI.md#GameServersGet) | **Get** /api/game_servers/{id} | Retrieves a GameServer resource.
[**GameServersList**](GameServerAPI.md#GameServersList) | **Get** /api/game_servers | Retrieves the collection of GameServer resources.
[**GameServersRestart**](GameServerAPI.md#GameServersRestart) | **Post** /api/game_servers/{id}/restart | Creates a GameServer resource.
[**GameServersStart**](GameServerAPI.md#GameServersStart) | **Post** /api/game_servers/{id}/start | Creates a GameServer resource.
[**GameServersStop**](GameServerAPI.md#GameServersStop) | **Post** /api/game_servers/{id}/stop | Creates a GameServer resource.
[**GameServersUpdate**](GameServerAPI.md#GameServersUpdate) | **Patch** /api/game_servers/{id} | Updates the GameServer resource.



## GameServersCreate

> GameServerGameServerRead GameServersCreate(ctx).GameServerGameServerInput(gameServerGameServerInput).Execute()

Creates a GameServer resource.



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
	gameServerGameServerInput := *openapiclient.NewGameServerGameServerInput("https://example.com/", "Slug_example", "Name_example", "Kind_example") // GameServerGameServerInput | The new GameServer resource

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.GameServerAPI.GameServersCreate(context.Background()).GameServerGameServerInput(gameServerGameServerInput).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `GameServerAPI.GameServersCreate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GameServersCreate`: GameServerGameServerRead
	fmt.Fprintf(os.Stdout, "Response from `GameServerAPI.GameServersCreate`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiGameServersCreateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gameServerGameServerInput** | [**GameServerGameServerInput**](GameServerGameServerInput.md) | The new GameServer resource | 

### Return type

[**GameServerGameServerRead**](GameServerGameServerRead.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GameServersDelete

> GameServersDelete(ctx, id).Execute()

Removes the GameServer resource.



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
	id := "id_example" // string | GameServer identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.GameServerAPI.GameServersDelete(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `GameServerAPI.GameServersDelete``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | GameServer identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiGameServersDeleteRequest struct via the builder pattern


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


## GameServersGet

> GameServerGameServerRead GameServersGet(ctx, id).Execute()

Retrieves a GameServer resource.



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
	id := "id_example" // string | GameServer identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.GameServerAPI.GameServersGet(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `GameServerAPI.GameServersGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GameServersGet`: GameServerGameServerRead
	fmt.Fprintf(os.Stdout, "Response from `GameServerAPI.GameServersGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | GameServer identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiGameServersGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**GameServerGameServerRead**](GameServerGameServerRead.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GameServersList

> []GameServerGameServerRead GameServersList(ctx).Page(page).Execute()

Retrieves the collection of GameServer resources.



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
	resp, r, err := apiClient.GameServerAPI.GameServersList(context.Background()).Page(page).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `GameServerAPI.GameServersList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GameServersList`: []GameServerGameServerRead
	fmt.Fprintf(os.Stdout, "Response from `GameServerAPI.GameServersList`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiGameServersListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int32** | The collection page number | [default to 1]

### Return type

[**[]GameServerGameServerRead**](GameServerGameServerRead.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GameServersRestart

> GameServerGameServerRead GameServersRestart(ctx, id).Execute()

Creates a GameServer resource.



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
	id := "id_example" // string | GameServer identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.GameServerAPI.GameServersRestart(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `GameServerAPI.GameServersRestart``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GameServersRestart`: GameServerGameServerRead
	fmt.Fprintf(os.Stdout, "Response from `GameServerAPI.GameServersRestart`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | GameServer identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiGameServersRestartRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**GameServerGameServerRead**](GameServerGameServerRead.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GameServersStart

> GameServerGameServerRead GameServersStart(ctx, id).Execute()

Creates a GameServer resource.



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
	id := "id_example" // string | GameServer identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.GameServerAPI.GameServersStart(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `GameServerAPI.GameServersStart``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GameServersStart`: GameServerGameServerRead
	fmt.Fprintf(os.Stdout, "Response from `GameServerAPI.GameServersStart`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | GameServer identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiGameServersStartRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**GameServerGameServerRead**](GameServerGameServerRead.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GameServersStop

> GameServerGameServerRead GameServersStop(ctx, id).Execute()

Creates a GameServer resource.



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
	id := "id_example" // string | GameServer identifier

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.GameServerAPI.GameServersStop(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `GameServerAPI.GameServersStop``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GameServersStop`: GameServerGameServerRead
	fmt.Fprintf(os.Stdout, "Response from `GameServerAPI.GameServersStop`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | GameServer identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiGameServersStopRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**GameServerGameServerRead**](GameServerGameServerRead.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GameServersUpdate

> GameServerGameServerRead GameServersUpdate(ctx, id).GameServerGameServerSettingsInputJsonMergePatch(gameServerGameServerSettingsInputJsonMergePatch).Execute()

Updates the GameServer resource.



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
	id := "id_example" // string | GameServer identifier
	gameServerGameServerSettingsInputJsonMergePatch := *openapiclient.NewGameServerGameServerSettingsInputJsonMergePatch() // GameServerGameServerSettingsInputJsonMergePatch | The updated GameServer resource

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.GameServerAPI.GameServersUpdate(context.Background(), id).GameServerGameServerSettingsInputJsonMergePatch(gameServerGameServerSettingsInputJsonMergePatch).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `GameServerAPI.GameServersUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GameServersUpdate`: GameServerGameServerRead
	fmt.Fprintf(os.Stdout, "Response from `GameServerAPI.GameServersUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | GameServer identifier | 

### Other Parameters

Other parameters are passed through a pointer to a apiGameServersUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **gameServerGameServerSettingsInputJsonMergePatch** | [**GameServerGameServerSettingsInputJsonMergePatch**](GameServerGameServerSettingsInputJsonMergePatch.md) | The updated GameServer resource | 

### Return type

[**GameServerGameServerRead**](GameServerGameServerRead.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/merge-patch+json
- **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

