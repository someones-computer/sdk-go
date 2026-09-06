# BundleContextInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Service** | **string** |  | [default to ""]
**ContextSha256** | **string** |  | [default to ""]
**Dockerfile** | Pointer to **string** |  | [optional] [default to "Dockerfile"]
**AdditionalContexts** | Pointer to [**[]BundleAdditionalContextInput**](BundleAdditionalContextInput.md) |  | [optional] 

## Methods

### NewBundleContextInput

`func NewBundleContextInput(service string, contextSha256 string, ) *BundleContextInput`

NewBundleContextInput instantiates a new BundleContextInput object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewBundleContextInputWithDefaults

`func NewBundleContextInputWithDefaults() *BundleContextInput`

NewBundleContextInputWithDefaults instantiates a new BundleContextInput object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetService

`func (o *BundleContextInput) GetService() string`

GetService returns the Service field if non-nil, zero value otherwise.

### GetServiceOk

`func (o *BundleContextInput) GetServiceOk() (*string, bool)`

GetServiceOk returns a tuple with the Service field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetService

`func (o *BundleContextInput) SetService(v string)`

SetService sets Service field to given value.


### GetContextSha256

`func (o *BundleContextInput) GetContextSha256() string`

GetContextSha256 returns the ContextSha256 field if non-nil, zero value otherwise.

### GetContextSha256Ok

`func (o *BundleContextInput) GetContextSha256Ok() (*string, bool)`

GetContextSha256Ok returns a tuple with the ContextSha256 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContextSha256

`func (o *BundleContextInput) SetContextSha256(v string)`

SetContextSha256 sets ContextSha256 field to given value.


### GetDockerfile

`func (o *BundleContextInput) GetDockerfile() string`

GetDockerfile returns the Dockerfile field if non-nil, zero value otherwise.

### GetDockerfileOk

`func (o *BundleContextInput) GetDockerfileOk() (*string, bool)`

GetDockerfileOk returns a tuple with the Dockerfile field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDockerfile

`func (o *BundleContextInput) SetDockerfile(v string)`

SetDockerfile sets Dockerfile field to given value.

### HasDockerfile

`func (o *BundleContextInput) HasDockerfile() bool`

HasDockerfile returns a boolean if a field has been set.

### GetAdditionalContexts

`func (o *BundleContextInput) GetAdditionalContexts() []BundleAdditionalContextInput`

GetAdditionalContexts returns the AdditionalContexts field if non-nil, zero value otherwise.

### GetAdditionalContextsOk

`func (o *BundleContextInput) GetAdditionalContextsOk() (*[]BundleAdditionalContextInput, bool)`

GetAdditionalContextsOk returns a tuple with the AdditionalContexts field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAdditionalContexts

`func (o *BundleContextInput) SetAdditionalContexts(v []BundleAdditionalContextInput)`

SetAdditionalContexts sets AdditionalContexts field to given value.

### HasAdditionalContexts

`func (o *BundleContextInput) HasAdditionalContexts() bool`

HasAdditionalContexts returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


