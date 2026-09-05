# OAuthIdentity

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Provider** | Pointer to **string** |  | [optional] 
**ProviderUserId** | Pointer to **string** | The stable, provider-assigned user id (never the email). | [optional] 
**User** | Pointer to [**User**](User.md) |  | [optional] 
**Id** | Pointer to **string** |  | [optional] [readonly] 
**CreatedAt** | Pointer to **time.Time** |  | [optional] [readonly] 
**UpdatedAt** | Pointer to **NullableTime** |  | [optional] [readonly] 

## Methods

### NewOAuthIdentity

`func NewOAuthIdentity() *OAuthIdentity`

NewOAuthIdentity instantiates a new OAuthIdentity object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOAuthIdentityWithDefaults

`func NewOAuthIdentityWithDefaults() *OAuthIdentity`

NewOAuthIdentityWithDefaults instantiates a new OAuthIdentity object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetProvider

`func (o *OAuthIdentity) GetProvider() string`

GetProvider returns the Provider field if non-nil, zero value otherwise.

### GetProviderOk

`func (o *OAuthIdentity) GetProviderOk() (*string, bool)`

GetProviderOk returns a tuple with the Provider field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProvider

`func (o *OAuthIdentity) SetProvider(v string)`

SetProvider sets Provider field to given value.

### HasProvider

`func (o *OAuthIdentity) HasProvider() bool`

HasProvider returns a boolean if a field has been set.

### GetProviderUserId

`func (o *OAuthIdentity) GetProviderUserId() string`

GetProviderUserId returns the ProviderUserId field if non-nil, zero value otherwise.

### GetProviderUserIdOk

`func (o *OAuthIdentity) GetProviderUserIdOk() (*string, bool)`

GetProviderUserIdOk returns a tuple with the ProviderUserId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProviderUserId

`func (o *OAuthIdentity) SetProviderUserId(v string)`

SetProviderUserId sets ProviderUserId field to given value.

### HasProviderUserId

`func (o *OAuthIdentity) HasProviderUserId() bool`

HasProviderUserId returns a boolean if a field has been set.

### GetUser

`func (o *OAuthIdentity) GetUser() User`

GetUser returns the User field if non-nil, zero value otherwise.

### GetUserOk

`func (o *OAuthIdentity) GetUserOk() (*User, bool)`

GetUserOk returns a tuple with the User field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUser

`func (o *OAuthIdentity) SetUser(v User)`

SetUser sets User field to given value.

### HasUser

`func (o *OAuthIdentity) HasUser() bool`

HasUser returns a boolean if a field has been set.

### GetId

`func (o *OAuthIdentity) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *OAuthIdentity) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *OAuthIdentity) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *OAuthIdentity) HasId() bool`

HasId returns a boolean if a field has been set.

### GetCreatedAt

`func (o *OAuthIdentity) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *OAuthIdentity) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *OAuthIdentity) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *OAuthIdentity) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *OAuthIdentity) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *OAuthIdentity) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *OAuthIdentity) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *OAuthIdentity) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.

### SetUpdatedAtNil

`func (o *OAuthIdentity) SetUpdatedAtNil(b bool)`

 SetUpdatedAtNil sets the value for UpdatedAt to be an explicit nil

### UnsetUpdatedAt
`func (o *OAuthIdentity) UnsetUpdatedAt()`

UnsetUpdatedAt ensures that no value is present for UpdatedAt, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


