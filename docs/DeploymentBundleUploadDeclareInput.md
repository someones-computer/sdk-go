# DeploymentBundleUploadDeclareInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Application** | **NullableString** |  | 
**Client** | **string** | Matches &#x60;App\\Service\\Bundle\\BundleManifest::$client&#x60; — which client produced this. | [default to "api"]
**Name** | Pointer to **NullableString** |  | [optional] 
**Force** | Pointer to **bool** | Ask for a new revision even if this digest already matches one — {@see BundleManifest::$force}&#39;s own meaning, unchanged. | [optional] [default to false]
**Compose** | **string** |  | [default to ""]
**Contexts** | Pointer to [**[]BundleContextInput**](BundleContextInput.md) |  | [optional] 
**Images** | Pointer to [**[]BundleForwardedImageInput**](BundleForwardedImageInput.md) |  | [optional] 

## Methods

### NewDeploymentBundleUploadDeclareInput

`func NewDeploymentBundleUploadDeclareInput(application NullableString, client string, compose string, ) *DeploymentBundleUploadDeclareInput`

NewDeploymentBundleUploadDeclareInput instantiates a new DeploymentBundleUploadDeclareInput object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDeploymentBundleUploadDeclareInputWithDefaults

`func NewDeploymentBundleUploadDeclareInputWithDefaults() *DeploymentBundleUploadDeclareInput`

NewDeploymentBundleUploadDeclareInputWithDefaults instantiates a new DeploymentBundleUploadDeclareInput object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetApplication

`func (o *DeploymentBundleUploadDeclareInput) GetApplication() string`

GetApplication returns the Application field if non-nil, zero value otherwise.

### GetApplicationOk

`func (o *DeploymentBundleUploadDeclareInput) GetApplicationOk() (*string, bool)`

GetApplicationOk returns a tuple with the Application field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApplication

`func (o *DeploymentBundleUploadDeclareInput) SetApplication(v string)`

SetApplication sets Application field to given value.


### SetApplicationNil

`func (o *DeploymentBundleUploadDeclareInput) SetApplicationNil(b bool)`

 SetApplicationNil sets the value for Application to be an explicit nil

### UnsetApplication
`func (o *DeploymentBundleUploadDeclareInput) UnsetApplication()`

UnsetApplication ensures that no value is present for Application, not even an explicit nil
### GetClient

`func (o *DeploymentBundleUploadDeclareInput) GetClient() string`

GetClient returns the Client field if non-nil, zero value otherwise.

### GetClientOk

`func (o *DeploymentBundleUploadDeclareInput) GetClientOk() (*string, bool)`

GetClientOk returns a tuple with the Client field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClient

`func (o *DeploymentBundleUploadDeclareInput) SetClient(v string)`

SetClient sets Client field to given value.


### GetName

`func (o *DeploymentBundleUploadDeclareInput) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *DeploymentBundleUploadDeclareInput) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *DeploymentBundleUploadDeclareInput) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *DeploymentBundleUploadDeclareInput) HasName() bool`

HasName returns a boolean if a field has been set.

### SetNameNil

`func (o *DeploymentBundleUploadDeclareInput) SetNameNil(b bool)`

 SetNameNil sets the value for Name to be an explicit nil

### UnsetName
`func (o *DeploymentBundleUploadDeclareInput) UnsetName()`

UnsetName ensures that no value is present for Name, not even an explicit nil
### GetForce

`func (o *DeploymentBundleUploadDeclareInput) GetForce() bool`

GetForce returns the Force field if non-nil, zero value otherwise.

### GetForceOk

`func (o *DeploymentBundleUploadDeclareInput) GetForceOk() (*bool, bool)`

GetForceOk returns a tuple with the Force field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetForce

`func (o *DeploymentBundleUploadDeclareInput) SetForce(v bool)`

SetForce sets Force field to given value.

### HasForce

`func (o *DeploymentBundleUploadDeclareInput) HasForce() bool`

HasForce returns a boolean if a field has been set.

### GetCompose

`func (o *DeploymentBundleUploadDeclareInput) GetCompose() string`

GetCompose returns the Compose field if non-nil, zero value otherwise.

### GetComposeOk

`func (o *DeploymentBundleUploadDeclareInput) GetComposeOk() (*string, bool)`

GetComposeOk returns a tuple with the Compose field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCompose

`func (o *DeploymentBundleUploadDeclareInput) SetCompose(v string)`

SetCompose sets Compose field to given value.


### GetContexts

`func (o *DeploymentBundleUploadDeclareInput) GetContexts() []BundleContextInput`

GetContexts returns the Contexts field if non-nil, zero value otherwise.

### GetContextsOk

`func (o *DeploymentBundleUploadDeclareInput) GetContextsOk() (*[]BundleContextInput, bool)`

GetContextsOk returns a tuple with the Contexts field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContexts

`func (o *DeploymentBundleUploadDeclareInput) SetContexts(v []BundleContextInput)`

SetContexts sets Contexts field to given value.

### HasContexts

`func (o *DeploymentBundleUploadDeclareInput) HasContexts() bool`

HasContexts returns a boolean if a field has been set.

### GetImages

`func (o *DeploymentBundleUploadDeclareInput) GetImages() []BundleForwardedImageInput`

GetImages returns the Images field if non-nil, zero value otherwise.

### GetImagesOk

`func (o *DeploymentBundleUploadDeclareInput) GetImagesOk() (*[]BundleForwardedImageInput, bool)`

GetImagesOk returns a tuple with the Images field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImages

`func (o *DeploymentBundleUploadDeclareInput) SetImages(v []BundleForwardedImageInput)`

SetImages sets Images field to given value.

### HasImages

`func (o *DeploymentBundleUploadDeclareInput) HasImages() bool`

HasImages returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


