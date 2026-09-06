# DeploymentBundleUploadConfirmOutput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** |  | [optional] 
**Sequence** | Pointer to **int32** |  | [optional] 
**Status** | Pointer to **string** |  | [optional] 
**Digest** | Pointer to **NullableString** |  | [optional] 
**Url** | Pointer to **string** |  | [optional] 
**Retried** | Pointer to **bool** | True when this upload restarted an existing failed revision rather than minting one. | [optional] 
**Warning** | Pointer to **NullableString** | A deploy this organization can still afford, but is projected to run out of paying for soon — null on every ordinary deploy. | [optional] 

## Methods

### NewDeploymentBundleUploadConfirmOutput

`func NewDeploymentBundleUploadConfirmOutput() *DeploymentBundleUploadConfirmOutput`

NewDeploymentBundleUploadConfirmOutput instantiates a new DeploymentBundleUploadConfirmOutput object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDeploymentBundleUploadConfirmOutputWithDefaults

`func NewDeploymentBundleUploadConfirmOutputWithDefaults() *DeploymentBundleUploadConfirmOutput`

NewDeploymentBundleUploadConfirmOutputWithDefaults instantiates a new DeploymentBundleUploadConfirmOutput object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *DeploymentBundleUploadConfirmOutput) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *DeploymentBundleUploadConfirmOutput) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *DeploymentBundleUploadConfirmOutput) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *DeploymentBundleUploadConfirmOutput) HasId() bool`

HasId returns a boolean if a field has been set.

### GetSequence

`func (o *DeploymentBundleUploadConfirmOutput) GetSequence() int32`

GetSequence returns the Sequence field if non-nil, zero value otherwise.

### GetSequenceOk

`func (o *DeploymentBundleUploadConfirmOutput) GetSequenceOk() (*int32, bool)`

GetSequenceOk returns a tuple with the Sequence field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSequence

`func (o *DeploymentBundleUploadConfirmOutput) SetSequence(v int32)`

SetSequence sets Sequence field to given value.

### HasSequence

`func (o *DeploymentBundleUploadConfirmOutput) HasSequence() bool`

HasSequence returns a boolean if a field has been set.

### GetStatus

`func (o *DeploymentBundleUploadConfirmOutput) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *DeploymentBundleUploadConfirmOutput) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *DeploymentBundleUploadConfirmOutput) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *DeploymentBundleUploadConfirmOutput) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetDigest

`func (o *DeploymentBundleUploadConfirmOutput) GetDigest() string`

GetDigest returns the Digest field if non-nil, zero value otherwise.

### GetDigestOk

`func (o *DeploymentBundleUploadConfirmOutput) GetDigestOk() (*string, bool)`

GetDigestOk returns a tuple with the Digest field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDigest

`func (o *DeploymentBundleUploadConfirmOutput) SetDigest(v string)`

SetDigest sets Digest field to given value.

### HasDigest

`func (o *DeploymentBundleUploadConfirmOutput) HasDigest() bool`

HasDigest returns a boolean if a field has been set.

### SetDigestNil

`func (o *DeploymentBundleUploadConfirmOutput) SetDigestNil(b bool)`

 SetDigestNil sets the value for Digest to be an explicit nil

### UnsetDigest
`func (o *DeploymentBundleUploadConfirmOutput) UnsetDigest()`

UnsetDigest ensures that no value is present for Digest, not even an explicit nil
### GetUrl

`func (o *DeploymentBundleUploadConfirmOutput) GetUrl() string`

GetUrl returns the Url field if non-nil, zero value otherwise.

### GetUrlOk

`func (o *DeploymentBundleUploadConfirmOutput) GetUrlOk() (*string, bool)`

GetUrlOk returns a tuple with the Url field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUrl

`func (o *DeploymentBundleUploadConfirmOutput) SetUrl(v string)`

SetUrl sets Url field to given value.

### HasUrl

`func (o *DeploymentBundleUploadConfirmOutput) HasUrl() bool`

HasUrl returns a boolean if a field has been set.

### GetRetried

`func (o *DeploymentBundleUploadConfirmOutput) GetRetried() bool`

GetRetried returns the Retried field if non-nil, zero value otherwise.

### GetRetriedOk

`func (o *DeploymentBundleUploadConfirmOutput) GetRetriedOk() (*bool, bool)`

GetRetriedOk returns a tuple with the Retried field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRetried

`func (o *DeploymentBundleUploadConfirmOutput) SetRetried(v bool)`

SetRetried sets Retried field to given value.

### HasRetried

`func (o *DeploymentBundleUploadConfirmOutput) HasRetried() bool`

HasRetried returns a boolean if a field has been set.

### GetWarning

`func (o *DeploymentBundleUploadConfirmOutput) GetWarning() string`

GetWarning returns the Warning field if non-nil, zero value otherwise.

### GetWarningOk

`func (o *DeploymentBundleUploadConfirmOutput) GetWarningOk() (*string, bool)`

GetWarningOk returns a tuple with the Warning field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWarning

`func (o *DeploymentBundleUploadConfirmOutput) SetWarning(v string)`

SetWarning sets Warning field to given value.

### HasWarning

`func (o *DeploymentBundleUploadConfirmOutput) HasWarning() bool`

HasWarning returns a boolean if a field has been set.

### SetWarningNil

`func (o *DeploymentBundleUploadConfirmOutput) SetWarningNil(b bool)`

 SetWarningNil sets the value for Warning to be an explicit nil

### UnsetWarning
`func (o *DeploymentBundleUploadConfirmOutput) UnsetWarning()`

UnsetWarning ensures that no value is present for Warning, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


