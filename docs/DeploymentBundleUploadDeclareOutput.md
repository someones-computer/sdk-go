# DeploymentBundleUploadDeclareOutput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Contexts** | Pointer to [**[]BundleUploadTarget**](BundleUploadTarget.md) |  | [optional] 
**AdditionalContexts** | Pointer to [**[]BundleUploadTarget**](BundleUploadTarget.md) |  | [optional] 
**Images** | Pointer to [**[]BundleUploadTarget**](BundleUploadTarget.md) |  | [optional] 
**ExpiresAt** | Pointer to **time.Time** |  | [optional] 

## Methods

### NewDeploymentBundleUploadDeclareOutput

`func NewDeploymentBundleUploadDeclareOutput() *DeploymentBundleUploadDeclareOutput`

NewDeploymentBundleUploadDeclareOutput instantiates a new DeploymentBundleUploadDeclareOutput object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDeploymentBundleUploadDeclareOutputWithDefaults

`func NewDeploymentBundleUploadDeclareOutputWithDefaults() *DeploymentBundleUploadDeclareOutput`

NewDeploymentBundleUploadDeclareOutputWithDefaults instantiates a new DeploymentBundleUploadDeclareOutput object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetContexts

`func (o *DeploymentBundleUploadDeclareOutput) GetContexts() []BundleUploadTarget`

GetContexts returns the Contexts field if non-nil, zero value otherwise.

### GetContextsOk

`func (o *DeploymentBundleUploadDeclareOutput) GetContextsOk() (*[]BundleUploadTarget, bool)`

GetContextsOk returns a tuple with the Contexts field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContexts

`func (o *DeploymentBundleUploadDeclareOutput) SetContexts(v []BundleUploadTarget)`

SetContexts sets Contexts field to given value.

### HasContexts

`func (o *DeploymentBundleUploadDeclareOutput) HasContexts() bool`

HasContexts returns a boolean if a field has been set.

### GetAdditionalContexts

`func (o *DeploymentBundleUploadDeclareOutput) GetAdditionalContexts() []BundleUploadTarget`

GetAdditionalContexts returns the AdditionalContexts field if non-nil, zero value otherwise.

### GetAdditionalContextsOk

`func (o *DeploymentBundleUploadDeclareOutput) GetAdditionalContextsOk() (*[]BundleUploadTarget, bool)`

GetAdditionalContextsOk returns a tuple with the AdditionalContexts field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAdditionalContexts

`func (o *DeploymentBundleUploadDeclareOutput) SetAdditionalContexts(v []BundleUploadTarget)`

SetAdditionalContexts sets AdditionalContexts field to given value.

### HasAdditionalContexts

`func (o *DeploymentBundleUploadDeclareOutput) HasAdditionalContexts() bool`

HasAdditionalContexts returns a boolean if a field has been set.

### GetImages

`func (o *DeploymentBundleUploadDeclareOutput) GetImages() []BundleUploadTarget`

GetImages returns the Images field if non-nil, zero value otherwise.

### GetImagesOk

`func (o *DeploymentBundleUploadDeclareOutput) GetImagesOk() (*[]BundleUploadTarget, bool)`

GetImagesOk returns a tuple with the Images field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImages

`func (o *DeploymentBundleUploadDeclareOutput) SetImages(v []BundleUploadTarget)`

SetImages sets Images field to given value.

### HasImages

`func (o *DeploymentBundleUploadDeclareOutput) HasImages() bool`

HasImages returns a boolean if a field has been set.

### GetExpiresAt

`func (o *DeploymentBundleUploadDeclareOutput) GetExpiresAt() time.Time`

GetExpiresAt returns the ExpiresAt field if non-nil, zero value otherwise.

### GetExpiresAtOk

`func (o *DeploymentBundleUploadDeclareOutput) GetExpiresAtOk() (*time.Time, bool)`

GetExpiresAtOk returns a tuple with the ExpiresAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiresAt

`func (o *DeploymentBundleUploadDeclareOutput) SetExpiresAt(v time.Time)`

SetExpiresAt sets ExpiresAt field to given value.

### HasExpiresAt

`func (o *DeploymentBundleUploadDeclareOutput) HasExpiresAt() bool`

HasExpiresAt returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


