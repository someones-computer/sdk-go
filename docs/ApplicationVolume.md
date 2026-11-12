# ApplicationVolume

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Application** | Pointer to **string** |  | [optional] 
**StackName** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**Id** | Pointer to **string** |  | [optional] [readonly] 
**CreatedAt** | Pointer to **time.Time** |  | [optional] [readonly] 
**UpdatedAt** | Pointer to **NullableTime** |  | [optional] [readonly] 
**SizeCapBytes** | Pointer to **int32** |  | [optional] [readonly] 

## Methods

### NewApplicationVolume

`func NewApplicationVolume() *ApplicationVolume`

NewApplicationVolume instantiates a new ApplicationVolume object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewApplicationVolumeWithDefaults

`func NewApplicationVolumeWithDefaults() *ApplicationVolume`

NewApplicationVolumeWithDefaults instantiates a new ApplicationVolume object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetApplication

`func (o *ApplicationVolume) GetApplication() string`

GetApplication returns the Application field if non-nil, zero value otherwise.

### GetApplicationOk

`func (o *ApplicationVolume) GetApplicationOk() (*string, bool)`

GetApplicationOk returns a tuple with the Application field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApplication

`func (o *ApplicationVolume) SetApplication(v string)`

SetApplication sets Application field to given value.

### HasApplication

`func (o *ApplicationVolume) HasApplication() bool`

HasApplication returns a boolean if a field has been set.

### GetStackName

`func (o *ApplicationVolume) GetStackName() string`

GetStackName returns the StackName field if non-nil, zero value otherwise.

### GetStackNameOk

`func (o *ApplicationVolume) GetStackNameOk() (*string, bool)`

GetStackNameOk returns a tuple with the StackName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStackName

`func (o *ApplicationVolume) SetStackName(v string)`

SetStackName sets StackName field to given value.

### HasStackName

`func (o *ApplicationVolume) HasStackName() bool`

HasStackName returns a boolean if a field has been set.

### GetName

`func (o *ApplicationVolume) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *ApplicationVolume) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *ApplicationVolume) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *ApplicationVolume) HasName() bool`

HasName returns a boolean if a field has been set.

### GetId

`func (o *ApplicationVolume) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *ApplicationVolume) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *ApplicationVolume) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *ApplicationVolume) HasId() bool`

HasId returns a boolean if a field has been set.

### GetCreatedAt

`func (o *ApplicationVolume) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *ApplicationVolume) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *ApplicationVolume) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *ApplicationVolume) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *ApplicationVolume) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *ApplicationVolume) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *ApplicationVolume) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *ApplicationVolume) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.

### SetUpdatedAtNil

`func (o *ApplicationVolume) SetUpdatedAtNil(b bool)`

 SetUpdatedAtNil sets the value for UpdatedAt to be an explicit nil

### UnsetUpdatedAt
`func (o *ApplicationVolume) UnsetUpdatedAt()`

UnsetUpdatedAt ensures that no value is present for UpdatedAt, not even an explicit nil
### GetSizeCapBytes

`func (o *ApplicationVolume) GetSizeCapBytes() int32`

GetSizeCapBytes returns the SizeCapBytes field if non-nil, zero value otherwise.

### GetSizeCapBytesOk

`func (o *ApplicationVolume) GetSizeCapBytesOk() (*int32, bool)`

GetSizeCapBytesOk returns a tuple with the SizeCapBytes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSizeCapBytes

`func (o *ApplicationVolume) SetSizeCapBytes(v int32)`

SetSizeCapBytes sets SizeCapBytes field to given value.

### HasSizeCapBytes

`func (o *ApplicationVolume) HasSizeCapBytes() bool`

HasSizeCapBytes returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


