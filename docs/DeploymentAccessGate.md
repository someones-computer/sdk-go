# DeploymentAccessGate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Application** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**AccessGate** | Pointer to **string** |  | [optional] [default to "none"]
**Id** | Pointer to **string** |  | [optional] [readonly] 
**CreatedAt** | Pointer to **time.Time** |  | [optional] [readonly] 
**UpdatedAt** | Pointer to **NullableTime** |  | [optional] [readonly] 
**AccessGateCredential** | Pointer to [**NullableSealedSecret**](SealedSecret.md) |  | [optional] 

## Methods

### NewDeploymentAccessGate

`func NewDeploymentAccessGate() *DeploymentAccessGate`

NewDeploymentAccessGate instantiates a new DeploymentAccessGate object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDeploymentAccessGateWithDefaults

`func NewDeploymentAccessGateWithDefaults() *DeploymentAccessGate`

NewDeploymentAccessGateWithDefaults instantiates a new DeploymentAccessGate object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetApplication

`func (o *DeploymentAccessGate) GetApplication() string`

GetApplication returns the Application field if non-nil, zero value otherwise.

### GetApplicationOk

`func (o *DeploymentAccessGate) GetApplicationOk() (*string, bool)`

GetApplicationOk returns a tuple with the Application field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApplication

`func (o *DeploymentAccessGate) SetApplication(v string)`

SetApplication sets Application field to given value.

### HasApplication

`func (o *DeploymentAccessGate) HasApplication() bool`

HasApplication returns a boolean if a field has been set.

### GetName

`func (o *DeploymentAccessGate) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *DeploymentAccessGate) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *DeploymentAccessGate) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *DeploymentAccessGate) HasName() bool`

HasName returns a boolean if a field has been set.

### GetAccessGate

`func (o *DeploymentAccessGate) GetAccessGate() string`

GetAccessGate returns the AccessGate field if non-nil, zero value otherwise.

### GetAccessGateOk

`func (o *DeploymentAccessGate) GetAccessGateOk() (*string, bool)`

GetAccessGateOk returns a tuple with the AccessGate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccessGate

`func (o *DeploymentAccessGate) SetAccessGate(v string)`

SetAccessGate sets AccessGate field to given value.

### HasAccessGate

`func (o *DeploymentAccessGate) HasAccessGate() bool`

HasAccessGate returns a boolean if a field has been set.

### GetId

`func (o *DeploymentAccessGate) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *DeploymentAccessGate) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *DeploymentAccessGate) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *DeploymentAccessGate) HasId() bool`

HasId returns a boolean if a field has been set.

### GetCreatedAt

`func (o *DeploymentAccessGate) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *DeploymentAccessGate) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *DeploymentAccessGate) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *DeploymentAccessGate) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *DeploymentAccessGate) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *DeploymentAccessGate) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *DeploymentAccessGate) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *DeploymentAccessGate) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.

### SetUpdatedAtNil

`func (o *DeploymentAccessGate) SetUpdatedAtNil(b bool)`

 SetUpdatedAtNil sets the value for UpdatedAt to be an explicit nil

### UnsetUpdatedAt
`func (o *DeploymentAccessGate) UnsetUpdatedAt()`

UnsetUpdatedAt ensures that no value is present for UpdatedAt, not even an explicit nil
### GetAccessGateCredential

`func (o *DeploymentAccessGate) GetAccessGateCredential() SealedSecret`

GetAccessGateCredential returns the AccessGateCredential field if non-nil, zero value otherwise.

### GetAccessGateCredentialOk

`func (o *DeploymentAccessGate) GetAccessGateCredentialOk() (*SealedSecret, bool)`

GetAccessGateCredentialOk returns a tuple with the AccessGateCredential field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccessGateCredential

`func (o *DeploymentAccessGate) SetAccessGateCredential(v SealedSecret)`

SetAccessGateCredential sets AccessGateCredential field to given value.

### HasAccessGateCredential

`func (o *DeploymentAccessGate) HasAccessGateCredential() bool`

HasAccessGateCredential returns a boolean if a field has been set.

### SetAccessGateCredentialNil

`func (o *DeploymentAccessGate) SetAccessGateCredentialNil(b bool)`

 SetAccessGateCredentialNil sets the value for AccessGateCredential to be an explicit nil

### UnsetAccessGateCredential
`func (o *DeploymentAccessGate) UnsetAccessGateCredential()`

UnsetAccessGateCredential ensures that no value is present for AccessGateCredential, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


