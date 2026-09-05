# RecoveryCode

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**User** | Pointer to [**User**](User.md) |  | [optional] 
**CodeHash** | Pointer to **string** | SHA-256 hex digest of the plaintext code; the only copy that is ever stored. | [optional] 
**UsedAt** | Pointer to **NullableTime** | When this code was spent; null means it is still usable. | [optional] [readonly] 
**Id** | Pointer to **string** |  | [optional] [readonly] 
**CreatedAt** | Pointer to **time.Time** |  | [optional] [readonly] 
**UpdatedAt** | Pointer to **NullableTime** |  | [optional] [readonly] 
**Used** | Pointer to **bool** |  | [optional] [readonly] 

## Methods

### NewRecoveryCode

`func NewRecoveryCode() *RecoveryCode`

NewRecoveryCode instantiates a new RecoveryCode object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRecoveryCodeWithDefaults

`func NewRecoveryCodeWithDefaults() *RecoveryCode`

NewRecoveryCodeWithDefaults instantiates a new RecoveryCode object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetUser

`func (o *RecoveryCode) GetUser() User`

GetUser returns the User field if non-nil, zero value otherwise.

### GetUserOk

`func (o *RecoveryCode) GetUserOk() (*User, bool)`

GetUserOk returns a tuple with the User field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUser

`func (o *RecoveryCode) SetUser(v User)`

SetUser sets User field to given value.

### HasUser

`func (o *RecoveryCode) HasUser() bool`

HasUser returns a boolean if a field has been set.

### GetCodeHash

`func (o *RecoveryCode) GetCodeHash() string`

GetCodeHash returns the CodeHash field if non-nil, zero value otherwise.

### GetCodeHashOk

`func (o *RecoveryCode) GetCodeHashOk() (*string, bool)`

GetCodeHashOk returns a tuple with the CodeHash field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCodeHash

`func (o *RecoveryCode) SetCodeHash(v string)`

SetCodeHash sets CodeHash field to given value.

### HasCodeHash

`func (o *RecoveryCode) HasCodeHash() bool`

HasCodeHash returns a boolean if a field has been set.

### GetUsedAt

`func (o *RecoveryCode) GetUsedAt() time.Time`

GetUsedAt returns the UsedAt field if non-nil, zero value otherwise.

### GetUsedAtOk

`func (o *RecoveryCode) GetUsedAtOk() (*time.Time, bool)`

GetUsedAtOk returns a tuple with the UsedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUsedAt

`func (o *RecoveryCode) SetUsedAt(v time.Time)`

SetUsedAt sets UsedAt field to given value.

### HasUsedAt

`func (o *RecoveryCode) HasUsedAt() bool`

HasUsedAt returns a boolean if a field has been set.

### SetUsedAtNil

`func (o *RecoveryCode) SetUsedAtNil(b bool)`

 SetUsedAtNil sets the value for UsedAt to be an explicit nil

### UnsetUsedAt
`func (o *RecoveryCode) UnsetUsedAt()`

UnsetUsedAt ensures that no value is present for UsedAt, not even an explicit nil
### GetId

`func (o *RecoveryCode) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *RecoveryCode) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *RecoveryCode) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *RecoveryCode) HasId() bool`

HasId returns a boolean if a field has been set.

### GetCreatedAt

`func (o *RecoveryCode) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *RecoveryCode) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *RecoveryCode) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *RecoveryCode) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *RecoveryCode) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *RecoveryCode) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *RecoveryCode) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *RecoveryCode) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.

### SetUpdatedAtNil

`func (o *RecoveryCode) SetUpdatedAtNil(b bool)`

 SetUpdatedAtNil sets the value for UpdatedAt to be an explicit nil

### UnsetUpdatedAt
`func (o *RecoveryCode) UnsetUpdatedAt()`

UnsetUpdatedAt ensures that no value is present for UpdatedAt, not even an explicit nil
### GetUsed

`func (o *RecoveryCode) GetUsed() bool`

GetUsed returns the Used field if non-nil, zero value otherwise.

### GetUsedOk

`func (o *RecoveryCode) GetUsedOk() (*bool, bool)`

GetUsedOk returns a tuple with the Used field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUsed

`func (o *RecoveryCode) SetUsed(v bool)`

SetUsed sets Used field to given value.

### HasUsed

`func (o *RecoveryCode) HasUsed() bool`

HasUsed returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


