# UserAvatarPhoto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Photo** | Pointer to **string** | Base64 of the raw image bytes — see {@see User::getAvatarPhoto()} for why text rather than a BLOB. | [optional] [readonly] 
**Type** | Pointer to **NullableString** | The media type sniffed from the bytes ({@see \\App\\Service\\DirectoryPhoto}), nullable like the old &#x60;avatar_photo_type&#x60; column was: bytes can be stored without a type, and {@see \\App\\Controller\\AvatarController} falls back to &#x60;application/octet-stream&#x60;. | [optional] 
**Id** | Pointer to **string** |  | [optional] [readonly] 

## Methods

### NewUserAvatarPhoto

`func NewUserAvatarPhoto() *UserAvatarPhoto`

NewUserAvatarPhoto instantiates a new UserAvatarPhoto object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUserAvatarPhotoWithDefaults

`func NewUserAvatarPhotoWithDefaults() *UserAvatarPhoto`

NewUserAvatarPhotoWithDefaults instantiates a new UserAvatarPhoto object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetPhoto

`func (o *UserAvatarPhoto) GetPhoto() string`

GetPhoto returns the Photo field if non-nil, zero value otherwise.

### GetPhotoOk

`func (o *UserAvatarPhoto) GetPhotoOk() (*string, bool)`

GetPhotoOk returns a tuple with the Photo field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPhoto

`func (o *UserAvatarPhoto) SetPhoto(v string)`

SetPhoto sets Photo field to given value.

### HasPhoto

`func (o *UserAvatarPhoto) HasPhoto() bool`

HasPhoto returns a boolean if a field has been set.

### GetType

`func (o *UserAvatarPhoto) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *UserAvatarPhoto) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *UserAvatarPhoto) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *UserAvatarPhoto) HasType() bool`

HasType returns a boolean if a field has been set.

### SetTypeNil

`func (o *UserAvatarPhoto) SetTypeNil(b bool)`

 SetTypeNil sets the value for Type to be an explicit nil

### UnsetType
`func (o *UserAvatarPhoto) UnsetType()`

UnsetType ensures that no value is present for Type, not even an explicit nil
### GetId

`func (o *UserAvatarPhoto) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *UserAvatarPhoto) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *UserAvatarPhoto) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *UserAvatarPhoto) HasId() bool`

HasId returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


