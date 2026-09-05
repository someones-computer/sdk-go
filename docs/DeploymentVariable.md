# DeploymentVariable

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Deployment** | Pointer to **string** |  | [optional] 
**VariableVersion** | Pointer to [**VariableVersion**](VariableVersion.md) |  | [optional] 
**Id** | Pointer to **string** |  | [optional] [readonly] 
**Key** | Pointer to **string** | The environment variable name this entry contributes. | [optional] [readonly] 

## Methods

### NewDeploymentVariable

`func NewDeploymentVariable() *DeploymentVariable`

NewDeploymentVariable instantiates a new DeploymentVariable object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDeploymentVariableWithDefaults

`func NewDeploymentVariableWithDefaults() *DeploymentVariable`

NewDeploymentVariableWithDefaults instantiates a new DeploymentVariable object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDeployment

`func (o *DeploymentVariable) GetDeployment() string`

GetDeployment returns the Deployment field if non-nil, zero value otherwise.

### GetDeploymentOk

`func (o *DeploymentVariable) GetDeploymentOk() (*string, bool)`

GetDeploymentOk returns a tuple with the Deployment field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeployment

`func (o *DeploymentVariable) SetDeployment(v string)`

SetDeployment sets Deployment field to given value.

### HasDeployment

`func (o *DeploymentVariable) HasDeployment() bool`

HasDeployment returns a boolean if a field has been set.

### GetVariableVersion

`func (o *DeploymentVariable) GetVariableVersion() VariableVersion`

GetVariableVersion returns the VariableVersion field if non-nil, zero value otherwise.

### GetVariableVersionOk

`func (o *DeploymentVariable) GetVariableVersionOk() (*VariableVersion, bool)`

GetVariableVersionOk returns a tuple with the VariableVersion field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVariableVersion

`func (o *DeploymentVariable) SetVariableVersion(v VariableVersion)`

SetVariableVersion sets VariableVersion field to given value.

### HasVariableVersion

`func (o *DeploymentVariable) HasVariableVersion() bool`

HasVariableVersion returns a boolean if a field has been set.

### GetId

`func (o *DeploymentVariable) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *DeploymentVariable) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *DeploymentVariable) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *DeploymentVariable) HasId() bool`

HasId returns a boolean if a field has been set.

### GetKey

`func (o *DeploymentVariable) GetKey() string`

GetKey returns the Key field if non-nil, zero value otherwise.

### GetKeyOk

`func (o *DeploymentVariable) GetKeyOk() (*string, bool)`

GetKeyOk returns a tuple with the Key field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKey

`func (o *DeploymentVariable) SetKey(v string)`

SetKey sets Key field to given value.

### HasKey

`func (o *DeploymentVariable) HasKey() bool`

HasKey returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


