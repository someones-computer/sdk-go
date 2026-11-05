# GameServerGameServerInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Organization** | **NullableString** |  | 
**Slug** | **string** |  | [default to ""]
**Name** | **string** |  | [default to ""]
**Kind** | **NullableString** |  | 
**Version** | Pointer to **NullableString** | Null takes the game&#39;s default version. | [optional] 
**Settings** | Pointer to **map[string]string** | The fields of the game&#39;s settings schema. A field left out takes its default. | [optional] 
**Volume** | Pointer to **NullableString** | The slug of an unused volume in the organization. Null makes a new volume named like the server. | [optional] 

## Methods

### NewGameServerGameServerInput

`func NewGameServerGameServerInput(organization NullableString, slug string, name string, kind NullableString, ) *GameServerGameServerInput`

NewGameServerGameServerInput instantiates a new GameServerGameServerInput object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGameServerGameServerInputWithDefaults

`func NewGameServerGameServerInputWithDefaults() *GameServerGameServerInput`

NewGameServerGameServerInputWithDefaults instantiates a new GameServerGameServerInput object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOrganization

`func (o *GameServerGameServerInput) GetOrganization() string`

GetOrganization returns the Organization field if non-nil, zero value otherwise.

### GetOrganizationOk

`func (o *GameServerGameServerInput) GetOrganizationOk() (*string, bool)`

GetOrganizationOk returns a tuple with the Organization field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrganization

`func (o *GameServerGameServerInput) SetOrganization(v string)`

SetOrganization sets Organization field to given value.


### SetOrganizationNil

`func (o *GameServerGameServerInput) SetOrganizationNil(b bool)`

 SetOrganizationNil sets the value for Organization to be an explicit nil

### UnsetOrganization
`func (o *GameServerGameServerInput) UnsetOrganization()`

UnsetOrganization ensures that no value is present for Organization, not even an explicit nil
### GetSlug

`func (o *GameServerGameServerInput) GetSlug() string`

GetSlug returns the Slug field if non-nil, zero value otherwise.

### GetSlugOk

`func (o *GameServerGameServerInput) GetSlugOk() (*string, bool)`

GetSlugOk returns a tuple with the Slug field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSlug

`func (o *GameServerGameServerInput) SetSlug(v string)`

SetSlug sets Slug field to given value.


### GetName

`func (o *GameServerGameServerInput) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *GameServerGameServerInput) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *GameServerGameServerInput) SetName(v string)`

SetName sets Name field to given value.


### GetKind

`func (o *GameServerGameServerInput) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *GameServerGameServerInput) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *GameServerGameServerInput) SetKind(v string)`

SetKind sets Kind field to given value.


### SetKindNil

`func (o *GameServerGameServerInput) SetKindNil(b bool)`

 SetKindNil sets the value for Kind to be an explicit nil

### UnsetKind
`func (o *GameServerGameServerInput) UnsetKind()`

UnsetKind ensures that no value is present for Kind, not even an explicit nil
### GetVersion

`func (o *GameServerGameServerInput) GetVersion() string`

GetVersion returns the Version field if non-nil, zero value otherwise.

### GetVersionOk

`func (o *GameServerGameServerInput) GetVersionOk() (*string, bool)`

GetVersionOk returns a tuple with the Version field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVersion

`func (o *GameServerGameServerInput) SetVersion(v string)`

SetVersion sets Version field to given value.

### HasVersion

`func (o *GameServerGameServerInput) HasVersion() bool`

HasVersion returns a boolean if a field has been set.

### SetVersionNil

`func (o *GameServerGameServerInput) SetVersionNil(b bool)`

 SetVersionNil sets the value for Version to be an explicit nil

### UnsetVersion
`func (o *GameServerGameServerInput) UnsetVersion()`

UnsetVersion ensures that no value is present for Version, not even an explicit nil
### GetSettings

`func (o *GameServerGameServerInput) GetSettings() map[string]*string`

GetSettings returns the Settings field if non-nil, zero value otherwise.

### GetSettingsOk

`func (o *GameServerGameServerInput) GetSettingsOk() (*map[string]*string, bool)`

GetSettingsOk returns a tuple with the Settings field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSettings

`func (o *GameServerGameServerInput) SetSettings(v map[string]*string)`

SetSettings sets Settings field to given value.

### HasSettings

`func (o *GameServerGameServerInput) HasSettings() bool`

HasSettings returns a boolean if a field has been set.

### GetVolume

`func (o *GameServerGameServerInput) GetVolume() string`

GetVolume returns the Volume field if non-nil, zero value otherwise.

### GetVolumeOk

`func (o *GameServerGameServerInput) GetVolumeOk() (*string, bool)`

GetVolumeOk returns a tuple with the Volume field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolume

`func (o *GameServerGameServerInput) SetVolume(v string)`

SetVolume sets Volume field to given value.

### HasVolume

`func (o *GameServerGameServerInput) HasVolume() bool`

HasVolume returns a boolean if a field has been set.

### SetVolumeNil

`func (o *GameServerGameServerInput) SetVolumeNil(b bool)`

 SetVolumeNil sets the value for Volume to be an explicit nil

### UnsetVolume
`func (o *GameServerGameServerInput) UnsetVolume()`

UnsetVolume ensures that no value is present for Volume, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


