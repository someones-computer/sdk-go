# DeploymentAccessGateJsonMergePatch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Application** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**AccessGate** | Pointer to **string** |  | [optional] 
**Id** | Pointer to **string** |  | [optional] [readonly] 
**CreatedAt** | Pointer to **time.Time** |  | [optional] [readonly] 
**UpdatedAt** | Pointer to **NullableTime** |  | [optional] [readonly] 
**AccessGateCredential** | Pointer to [**NullableSealedSecret**](SealedSecret.md) |  | [optional] 

## Methods

### NewDeploymentAccessGateJsonMergePatch

`func NewDeploymentAccessGateJsonMergePatch() *DeploymentAccessGateJsonMergePatch`

NewDeploymentAccessGateJsonMergePatch instantiates a new DeploymentAccessGateJsonMergePatch object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDeploymentAccessGateJsonMergePatchWithDefaults

`func NewDeploymentAccessGateJsonMergePatchWithDefaults() *DeploymentAccessGateJsonMergePatch`

NewDeploymentAccessGateJsonMergePatchWithDefaults instantiates a new DeploymentAccessGateJsonMergePatch object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetApplication

`func (o *DeploymentAccessGateJsonMergePatch) GetApplication() string`

GetApplication returns the Application field if non-nil, zero value otherwise.

### GetApplicationOk

`func (o *DeploymentAccessGateJsonMergePatch) GetApplicationOk() (*string, bool)`

GetApplicationOk returns a tuple with the Application field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApplication

`func (o *DeploymentAccessGateJsonMergePatch) SetApplication(v string)`

SetApplication sets Application field to given value.

### HasApplication

`func (o *DeploymentAccessGateJsonMergePatch) HasApplication() bool`

HasApplication returns a boolean if a field has been set.

### GetName

`func (o *DeploymentAccessGateJsonMergePatch) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *DeploymentAccessGateJsonMergePatch) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *DeploymentAccessGateJsonMergePatch) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *DeploymentAccessGateJsonMergePatch) HasName() bool`

HasName returns a boolean if a field has been set.

### GetAccessGate

`func (o *DeploymentAccessGateJsonMergePatch) GetAccessGate() string`

GetAccessGate returns the AccessGate field if non-nil, zero value otherwise.

### GetAccessGateOk

`func (o *DeploymentAccessGateJsonMergePatch) GetAccessGateOk() (*string, bool)`

GetAccessGateOk returns a tuple with the AccessGate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccessGate

`func (o *DeploymentAccessGateJsonMergePatch) SetAccessGate(v string)`

SetAccessGate sets AccessGate field to given value.

### HasAccessGate

`func (o *DeploymentAccessGateJsonMergePatch) HasAccessGate() bool`

HasAccessGate returns a boolean if a field has been set.

### GetId

`func (o *DeploymentAccessGateJsonMergePatch) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *DeploymentAccessGateJsonMergePatch) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *DeploymentAccessGateJsonMergePatch) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *DeploymentAccessGateJsonMergePatch) HasId() bool`

HasId returns a boolean if a field has been set.

### GetCreatedAt

`func (o *DeploymentAccessGateJsonMergePatch) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *DeploymentAccessGateJsonMergePatch) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *DeploymentAccessGateJsonMergePatch) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *DeploymentAccessGateJsonMergePatch) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *DeploymentAccessGateJsonMergePatch) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *DeploymentAccessGateJsonMergePatch) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *DeploymentAccessGateJsonMergePatch) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *DeploymentAccessGateJsonMergePatch) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.

### SetUpdatedAtNil

`func (o *DeploymentAccessGateJsonMergePatch) SetUpdatedAtNil(b bool)`

 SetUpdatedAtNil sets the value for UpdatedAt to be an explicit nil

### UnsetUpdatedAt
`func (o *DeploymentAccessGateJsonMergePatch) UnsetUpdatedAt()`

UnsetUpdatedAt ensures that no value is present for UpdatedAt, not even an explicit nil
### GetAccessGateCredential

`func (o *DeploymentAccessGateJsonMergePatch) GetAccessGateCredential() SealedSecret`

GetAccessGateCredential returns the AccessGateCredential field if non-nil, zero value otherwise.

### GetAccessGateCredentialOk

`func (o *DeploymentAccessGateJsonMergePatch) GetAccessGateCredentialOk() (*SealedSecret, bool)`

GetAccessGateCredentialOk returns a tuple with the AccessGateCredential field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccessGateCredential

`func (o *DeploymentAccessGateJsonMergePatch) SetAccessGateCredential(v SealedSecret)`

SetAccessGateCredential sets AccessGateCredential field to given value.

### HasAccessGateCredential

`func (o *DeploymentAccessGateJsonMergePatch) HasAccessGateCredential() bool`

HasAccessGateCredential returns a boolean if a field has been set.

### SetAccessGateCredentialNil

`func (o *DeploymentAccessGateJsonMergePatch) SetAccessGateCredentialNil(b bool)`

 SetAccessGateCredentialNil sets the value for AccessGateCredential to be an explicit nil

### UnsetAccessGateCredential
`func (o *DeploymentAccessGateJsonMergePatch) UnsetAccessGateCredential()`

UnsetAccessGateCredential ensures that no value is present for AccessGateCredential, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


