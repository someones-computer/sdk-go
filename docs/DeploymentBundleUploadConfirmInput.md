# DeploymentBundleUploadConfirmInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Secrets** | Pointer to **map[string]map[string]string** | Raw &#x60;build.secrets&#x60; values, keyed by service then by BuildKit secret id (Grey.ooo/someones.computer_agent#46) — matches &#x60;App\\Service\\Bundle\\BundleIngestor::commitFromStoredContent()&#x60;&#39;s &#x60;$secrets&#x60; parameter. | [optional] 
**Application** | **NullableString** |  | 
**Client** | **string** | Matches &#x60;App\\Service\\Bundle\\BundleManifest::$client&#x60; — which client produced this. | [default to "api"]
**Name** | Pointer to **NullableString** |  | [optional] 
**Force** | Pointer to **bool** | Ask for a new revision even if this digest already matches one — {@see BundleManifest::$force}&#39;s own meaning, unchanged. | [optional] [default to false]
**Compose** | **string** |  | [default to ""]
**Contexts** | Pointer to [**[]BundleContextInput**](BundleContextInput.md) |  | [optional] 
**Images** | Pointer to [**[]BundleForwardedImageInput**](BundleForwardedImageInput.md) |  | [optional] 

## Methods

### NewDeploymentBundleUploadConfirmInput

`func NewDeploymentBundleUploadConfirmInput(application NullableString, client string, compose string, ) *DeploymentBundleUploadConfirmInput`

NewDeploymentBundleUploadConfirmInput instantiates a new DeploymentBundleUploadConfirmInput object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDeploymentBundleUploadConfirmInputWithDefaults

`func NewDeploymentBundleUploadConfirmInputWithDefaults() *DeploymentBundleUploadConfirmInput`

NewDeploymentBundleUploadConfirmInputWithDefaults instantiates a new DeploymentBundleUploadConfirmInput object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSecrets

`func (o *DeploymentBundleUploadConfirmInput) GetSecrets() map[string]map[string]string`

GetSecrets returns the Secrets field if non-nil, zero value otherwise.

### GetSecretsOk

`func (o *DeploymentBundleUploadConfirmInput) GetSecretsOk() (*map[string]map[string]string, bool)`

GetSecretsOk returns a tuple with the Secrets field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSecrets

`func (o *DeploymentBundleUploadConfirmInput) SetSecrets(v map[string]map[string]string)`

SetSecrets sets Secrets field to given value.

### HasSecrets

`func (o *DeploymentBundleUploadConfirmInput) HasSecrets() bool`

HasSecrets returns a boolean if a field has been set.

### GetApplication

`func (o *DeploymentBundleUploadConfirmInput) GetApplication() string`

GetApplication returns the Application field if non-nil, zero value otherwise.

### GetApplicationOk

`func (o *DeploymentBundleUploadConfirmInput) GetApplicationOk() (*string, bool)`

GetApplicationOk returns a tuple with the Application field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApplication

`func (o *DeploymentBundleUploadConfirmInput) SetApplication(v string)`

SetApplication sets Application field to given value.


### SetApplicationNil

`func (o *DeploymentBundleUploadConfirmInput) SetApplicationNil(b bool)`

 SetApplicationNil sets the value for Application to be an explicit nil

### UnsetApplication
`func (o *DeploymentBundleUploadConfirmInput) UnsetApplication()`

UnsetApplication ensures that no value is present for Application, not even an explicit nil
### GetClient

`func (o *DeploymentBundleUploadConfirmInput) GetClient() string`

GetClient returns the Client field if non-nil, zero value otherwise.

### GetClientOk

`func (o *DeploymentBundleUploadConfirmInput) GetClientOk() (*string, bool)`

GetClientOk returns a tuple with the Client field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClient

`func (o *DeploymentBundleUploadConfirmInput) SetClient(v string)`

SetClient sets Client field to given value.


### GetName

`func (o *DeploymentBundleUploadConfirmInput) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *DeploymentBundleUploadConfirmInput) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *DeploymentBundleUploadConfirmInput) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *DeploymentBundleUploadConfirmInput) HasName() bool`

HasName returns a boolean if a field has been set.

### SetNameNil

`func (o *DeploymentBundleUploadConfirmInput) SetNameNil(b bool)`

 SetNameNil sets the value for Name to be an explicit nil

### UnsetName
`func (o *DeploymentBundleUploadConfirmInput) UnsetName()`

UnsetName ensures that no value is present for Name, not even an explicit nil
### GetForce

`func (o *DeploymentBundleUploadConfirmInput) GetForce() bool`

GetForce returns the Force field if non-nil, zero value otherwise.

### GetForceOk

`func (o *DeploymentBundleUploadConfirmInput) GetForceOk() (*bool, bool)`

GetForceOk returns a tuple with the Force field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetForce

`func (o *DeploymentBundleUploadConfirmInput) SetForce(v bool)`

SetForce sets Force field to given value.

### HasForce

`func (o *DeploymentBundleUploadConfirmInput) HasForce() bool`

HasForce returns a boolean if a field has been set.

### GetCompose

`func (o *DeploymentBundleUploadConfirmInput) GetCompose() string`

GetCompose returns the Compose field if non-nil, zero value otherwise.

### GetComposeOk

`func (o *DeploymentBundleUploadConfirmInput) GetComposeOk() (*string, bool)`

GetComposeOk returns a tuple with the Compose field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCompose

`func (o *DeploymentBundleUploadConfirmInput) SetCompose(v string)`

SetCompose sets Compose field to given value.


### GetContexts

`func (o *DeploymentBundleUploadConfirmInput) GetContexts() []BundleContextInput`

GetContexts returns the Contexts field if non-nil, zero value otherwise.

### GetContextsOk

`func (o *DeploymentBundleUploadConfirmInput) GetContextsOk() (*[]BundleContextInput, bool)`

GetContextsOk returns a tuple with the Contexts field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContexts

`func (o *DeploymentBundleUploadConfirmInput) SetContexts(v []BundleContextInput)`

SetContexts sets Contexts field to given value.

### HasContexts

`func (o *DeploymentBundleUploadConfirmInput) HasContexts() bool`

HasContexts returns a boolean if a field has been set.

### GetImages

`func (o *DeploymentBundleUploadConfirmInput) GetImages() []BundleForwardedImageInput`

GetImages returns the Images field if non-nil, zero value otherwise.

### GetImagesOk

`func (o *DeploymentBundleUploadConfirmInput) GetImagesOk() (*[]BundleForwardedImageInput, bool)`

GetImagesOk returns a tuple with the Images field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImages

`func (o *DeploymentBundleUploadConfirmInput) SetImages(v []BundleForwardedImageInput)`

SetImages sets Images field to given value.

### HasImages

`func (o *DeploymentBundleUploadConfirmInput) HasImages() bool`

HasImages returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


