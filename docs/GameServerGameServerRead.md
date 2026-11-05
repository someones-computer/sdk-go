# GameServerGameServerRead

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Organization** | Pointer to **string** |  | [optional] 
**Slug** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**Kind** | Pointer to **string** |  | [optional] 
**Version** | Pointer to **string** |  | [optional] 
**Settings** | Pointer to [**map[string]GameServerGameServerReadSettingsValue**](GameServerGameServerReadSettingsValue.md) |  | [optional] 
**State** | Pointer to **string** | The reason only means something for &#x60;failed&#x60;, so any other state clears it. | [optional] [default to "stopped"]
**StateReason** | Pointer to **NullableString** | Why the server is &#x60;failed&#x60;, in words a tenant can read. Null in every other state. | [optional] [readonly] 
**Volume** | Pointer to **string** | The volume&#39;s slug, so a client can name the world without the bucket behind it. | [optional] [readonly] 

## Methods

### NewGameServerGameServerRead

`func NewGameServerGameServerRead() *GameServerGameServerRead`

NewGameServerGameServerRead instantiates a new GameServerGameServerRead object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGameServerGameServerReadWithDefaults

`func NewGameServerGameServerReadWithDefaults() *GameServerGameServerRead`

NewGameServerGameServerReadWithDefaults instantiates a new GameServerGameServerRead object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOrganization

`func (o *GameServerGameServerRead) GetOrganization() string`

GetOrganization returns the Organization field if non-nil, zero value otherwise.

### GetOrganizationOk

`func (o *GameServerGameServerRead) GetOrganizationOk() (*string, bool)`

GetOrganizationOk returns a tuple with the Organization field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrganization

`func (o *GameServerGameServerRead) SetOrganization(v string)`

SetOrganization sets Organization field to given value.

### HasOrganization

`func (o *GameServerGameServerRead) HasOrganization() bool`

HasOrganization returns a boolean if a field has been set.

### GetSlug

`func (o *GameServerGameServerRead) GetSlug() string`

GetSlug returns the Slug field if non-nil, zero value otherwise.

### GetSlugOk

`func (o *GameServerGameServerRead) GetSlugOk() (*string, bool)`

GetSlugOk returns a tuple with the Slug field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSlug

`func (o *GameServerGameServerRead) SetSlug(v string)`

SetSlug sets Slug field to given value.

### HasSlug

`func (o *GameServerGameServerRead) HasSlug() bool`

HasSlug returns a boolean if a field has been set.

### GetName

`func (o *GameServerGameServerRead) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *GameServerGameServerRead) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *GameServerGameServerRead) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *GameServerGameServerRead) HasName() bool`

HasName returns a boolean if a field has been set.

### GetKind

`func (o *GameServerGameServerRead) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *GameServerGameServerRead) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *GameServerGameServerRead) SetKind(v string)`

SetKind sets Kind field to given value.

### HasKind

`func (o *GameServerGameServerRead) HasKind() bool`

HasKind returns a boolean if a field has been set.

### GetVersion

`func (o *GameServerGameServerRead) GetVersion() string`

GetVersion returns the Version field if non-nil, zero value otherwise.

### GetVersionOk

`func (o *GameServerGameServerRead) GetVersionOk() (*string, bool)`

GetVersionOk returns a tuple with the Version field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVersion

`func (o *GameServerGameServerRead) SetVersion(v string)`

SetVersion sets Version field to given value.

### HasVersion

`func (o *GameServerGameServerRead) HasVersion() bool`

HasVersion returns a boolean if a field has been set.

### GetSettings

`func (o *GameServerGameServerRead) GetSettings() map[string]GameServerGameServerReadSettingsValue`

GetSettings returns the Settings field if non-nil, zero value otherwise.

### GetSettingsOk

`func (o *GameServerGameServerRead) GetSettingsOk() (*map[string]GameServerGameServerReadSettingsValue, bool)`

GetSettingsOk returns a tuple with the Settings field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSettings

`func (o *GameServerGameServerRead) SetSettings(v map[string]GameServerGameServerReadSettingsValue)`

SetSettings sets Settings field to given value.

### HasSettings

`func (o *GameServerGameServerRead) HasSettings() bool`

HasSettings returns a boolean if a field has been set.

### GetState

`func (o *GameServerGameServerRead) GetState() string`

GetState returns the State field if non-nil, zero value otherwise.

### GetStateOk

`func (o *GameServerGameServerRead) GetStateOk() (*string, bool)`

GetStateOk returns a tuple with the State field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetState

`func (o *GameServerGameServerRead) SetState(v string)`

SetState sets State field to given value.

### HasState

`func (o *GameServerGameServerRead) HasState() bool`

HasState returns a boolean if a field has been set.

### GetStateReason

`func (o *GameServerGameServerRead) GetStateReason() string`

GetStateReason returns the StateReason field if non-nil, zero value otherwise.

### GetStateReasonOk

`func (o *GameServerGameServerRead) GetStateReasonOk() (*string, bool)`

GetStateReasonOk returns a tuple with the StateReason field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStateReason

`func (o *GameServerGameServerRead) SetStateReason(v string)`

SetStateReason sets StateReason field to given value.

### HasStateReason

`func (o *GameServerGameServerRead) HasStateReason() bool`

HasStateReason returns a boolean if a field has been set.

### SetStateReasonNil

`func (o *GameServerGameServerRead) SetStateReasonNil(b bool)`

 SetStateReasonNil sets the value for StateReason to be an explicit nil

### UnsetStateReason
`func (o *GameServerGameServerRead) UnsetStateReason()`

UnsetStateReason ensures that no value is present for StateReason, not even an explicit nil
### GetVolume

`func (o *GameServerGameServerRead) GetVolume() string`

GetVolume returns the Volume field if non-nil, zero value otherwise.

### GetVolumeOk

`func (o *GameServerGameServerRead) GetVolumeOk() (*string, bool)`

GetVolumeOk returns a tuple with the Volume field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolume

`func (o *GameServerGameServerRead) SetVolume(v string)`

SetVolume sets Volume field to given value.

### HasVolume

`func (o *GameServerGameServerRead) HasVolume() bool`

HasVolume returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


