# BundleUploadTarget

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Service** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **NullableString** | The additional context&#39;s name, or null for a service&#39;s own primary context/image. | [optional] 
**ContextSha256** | Pointer to **string** |  | [optional] 
**AlreadyStored** | Pointer to **bool** |  | [optional] 
**UploadUrl** | Pointer to **NullableString** |  | [optional] 

## Methods

### NewBundleUploadTarget

`func NewBundleUploadTarget() *BundleUploadTarget`

NewBundleUploadTarget instantiates a new BundleUploadTarget object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewBundleUploadTargetWithDefaults

`func NewBundleUploadTargetWithDefaults() *BundleUploadTarget`

NewBundleUploadTargetWithDefaults instantiates a new BundleUploadTarget object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetService

`func (o *BundleUploadTarget) GetService() string`

GetService returns the Service field if non-nil, zero value otherwise.

### GetServiceOk

`func (o *BundleUploadTarget) GetServiceOk() (*string, bool)`

GetServiceOk returns a tuple with the Service field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetService

`func (o *BundleUploadTarget) SetService(v string)`

SetService sets Service field to given value.

### HasService

`func (o *BundleUploadTarget) HasService() bool`

HasService returns a boolean if a field has been set.

### GetName

`func (o *BundleUploadTarget) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *BundleUploadTarget) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *BundleUploadTarget) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *BundleUploadTarget) HasName() bool`

HasName returns a boolean if a field has been set.

### SetNameNil

`func (o *BundleUploadTarget) SetNameNil(b bool)`

 SetNameNil sets the value for Name to be an explicit nil

### UnsetName
`func (o *BundleUploadTarget) UnsetName()`

UnsetName ensures that no value is present for Name, not even an explicit nil
### GetContextSha256

`func (o *BundleUploadTarget) GetContextSha256() string`

GetContextSha256 returns the ContextSha256 field if non-nil, zero value otherwise.

### GetContextSha256Ok

`func (o *BundleUploadTarget) GetContextSha256Ok() (*string, bool)`

GetContextSha256Ok returns a tuple with the ContextSha256 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContextSha256

`func (o *BundleUploadTarget) SetContextSha256(v string)`

SetContextSha256 sets ContextSha256 field to given value.

### HasContextSha256

`func (o *BundleUploadTarget) HasContextSha256() bool`

HasContextSha256 returns a boolean if a field has been set.

### GetAlreadyStored

`func (o *BundleUploadTarget) GetAlreadyStored() bool`

GetAlreadyStored returns the AlreadyStored field if non-nil, zero value otherwise.

### GetAlreadyStoredOk

`func (o *BundleUploadTarget) GetAlreadyStoredOk() (*bool, bool)`

GetAlreadyStoredOk returns a tuple with the AlreadyStored field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAlreadyStored

`func (o *BundleUploadTarget) SetAlreadyStored(v bool)`

SetAlreadyStored sets AlreadyStored field to given value.

### HasAlreadyStored

`func (o *BundleUploadTarget) HasAlreadyStored() bool`

HasAlreadyStored returns a boolean if a field has been set.

### GetUploadUrl

`func (o *BundleUploadTarget) GetUploadUrl() string`

GetUploadUrl returns the UploadUrl field if non-nil, zero value otherwise.

### GetUploadUrlOk

`func (o *BundleUploadTarget) GetUploadUrlOk() (*string, bool)`

GetUploadUrlOk returns a tuple with the UploadUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUploadUrl

`func (o *BundleUploadTarget) SetUploadUrl(v string)`

SetUploadUrl sets UploadUrl field to given value.

### HasUploadUrl

`func (o *BundleUploadTarget) HasUploadUrl() bool`

HasUploadUrl returns a boolean if a field has been set.

### SetUploadUrlNil

`func (o *BundleUploadTarget) SetUploadUrlNil(b bool)`

 SetUploadUrlNil sets the value for UploadUrl to be an explicit nil

### UnsetUploadUrl
`func (o *BundleUploadTarget) UnsetUploadUrl()`

UnsetUploadUrl ensures that no value is present for UploadUrl, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


