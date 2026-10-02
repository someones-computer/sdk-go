# Failure

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Deployment** | Pointer to **NullableString** | Deleting a revision deletes its failures with it. They are an account of what that revision did, and outliving the thing they describe would leave a page that can only render half of itself. | [optional] 
**ProxmoxInstance** | Pointer to [**NullableProxmoxInstance**](ProxmoxInstance.md) |  | [optional] 
**Phase** | Pointer to **string** |  | [optional] 
**Reason** | Pointer to **string** | Verbatim, as it was written to &#x60;Deployment::$statusReason&#x60; at the time. | [optional] 
**Reference** | Pointer to **string** | The short handle this failure is quoted by — see {@see FailureReference}. | [optional] [readonly] 
**Service** | Pointer to **NullableString** | Which compose service, where the phase happens per-service. Null for the phases that fail the revision as a whole (placement, stranded) and for a deploy that never got as far as naming one. | [optional] 
**BuildLogKey** | Pointer to **NullableString** | Object key of the build log as it stood, or null when there was none. | [optional] 
**ImageDigest** | Pointer to **NullableString** | The digest a {@see FailurePhase::Scan} failure was quarantined over — null for every other phase. What lets the scan quarantine queue (docs/image-scanning.md, #816) resolve straight from a quarantined revision to the exact {@see \\App\\Entity\\ImageScan} an operator&#39;s Clear or Uphold acts on, without re-deriving it from a pinned image reference or a reason string meant for a person to read. | [optional] 
**ShareToken** | Pointer to **NullableString** | The capability that makes {@see \\App\\Controller\\FailureController::shared()} serve this to someone with no session, or null while it is private. | [optional] [readonly] 
**SharedAt** | Pointer to **NullableTime** |  | [optional] [readonly] 
**ShareExpiresAt** | Pointer to **NullableTime** | When the capability above stops working, 24 hours after it was minted. | [optional] [readonly] 
**SharedBy** | Pointer to [**NullableUser**](User.md) |  | [optional] 
**Id** | Pointer to **string** |  | [optional] [readonly] 
**CreatedAt** | Pointer to **time.Time** |  | [optional] [readonly] 
**UpdatedAt** | Pointer to **NullableTime** |  | [optional] [readonly] 
**DisplayLabel** | Pointer to **string** | The reference as it is written for a reader: &#x60;F-24GT1BQ7&#x60;. | [optional] [readonly] 
**Shared** | Pointer to **bool** | Whether an unauthenticated request may read this: a token was minted and it has not yet passed its expiry. | [optional] [readonly] 

## Methods

### NewFailure

`func NewFailure() *Failure`

NewFailure instantiates a new Failure object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewFailureWithDefaults

`func NewFailureWithDefaults() *Failure`

NewFailureWithDefaults instantiates a new Failure object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDeployment

`func (o *Failure) GetDeployment() string`

GetDeployment returns the Deployment field if non-nil, zero value otherwise.

### GetDeploymentOk

`func (o *Failure) GetDeploymentOk() (*string, bool)`

GetDeploymentOk returns a tuple with the Deployment field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeployment

`func (o *Failure) SetDeployment(v string)`

SetDeployment sets Deployment field to given value.

### HasDeployment

`func (o *Failure) HasDeployment() bool`

HasDeployment returns a boolean if a field has been set.

### SetDeploymentNil

`func (o *Failure) SetDeploymentNil(b bool)`

 SetDeploymentNil sets the value for Deployment to be an explicit nil

### UnsetDeployment
`func (o *Failure) UnsetDeployment()`

UnsetDeployment ensures that no value is present for Deployment, not even an explicit nil
### GetProxmoxInstance

`func (o *Failure) GetProxmoxInstance() ProxmoxInstance`

GetProxmoxInstance returns the ProxmoxInstance field if non-nil, zero value otherwise.

### GetProxmoxInstanceOk

`func (o *Failure) GetProxmoxInstanceOk() (*ProxmoxInstance, bool)`

GetProxmoxInstanceOk returns a tuple with the ProxmoxInstance field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProxmoxInstance

`func (o *Failure) SetProxmoxInstance(v ProxmoxInstance)`

SetProxmoxInstance sets ProxmoxInstance field to given value.

### HasProxmoxInstance

`func (o *Failure) HasProxmoxInstance() bool`

HasProxmoxInstance returns a boolean if a field has been set.

### SetProxmoxInstanceNil

`func (o *Failure) SetProxmoxInstanceNil(b bool)`

 SetProxmoxInstanceNil sets the value for ProxmoxInstance to be an explicit nil

### UnsetProxmoxInstance
`func (o *Failure) UnsetProxmoxInstance()`

UnsetProxmoxInstance ensures that no value is present for ProxmoxInstance, not even an explicit nil
### GetPhase

`func (o *Failure) GetPhase() string`

GetPhase returns the Phase field if non-nil, zero value otherwise.

### GetPhaseOk

`func (o *Failure) GetPhaseOk() (*string, bool)`

GetPhaseOk returns a tuple with the Phase field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPhase

`func (o *Failure) SetPhase(v string)`

SetPhase sets Phase field to given value.

### HasPhase

`func (o *Failure) HasPhase() bool`

HasPhase returns a boolean if a field has been set.

### GetReason

`func (o *Failure) GetReason() string`

GetReason returns the Reason field if non-nil, zero value otherwise.

### GetReasonOk

`func (o *Failure) GetReasonOk() (*string, bool)`

GetReasonOk returns a tuple with the Reason field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReason

`func (o *Failure) SetReason(v string)`

SetReason sets Reason field to given value.

### HasReason

`func (o *Failure) HasReason() bool`

HasReason returns a boolean if a field has been set.

### GetReference

`func (o *Failure) GetReference() string`

GetReference returns the Reference field if non-nil, zero value otherwise.

### GetReferenceOk

`func (o *Failure) GetReferenceOk() (*string, bool)`

GetReferenceOk returns a tuple with the Reference field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReference

`func (o *Failure) SetReference(v string)`

SetReference sets Reference field to given value.

### HasReference

`func (o *Failure) HasReference() bool`

HasReference returns a boolean if a field has been set.

### GetService

`func (o *Failure) GetService() string`

GetService returns the Service field if non-nil, zero value otherwise.

### GetServiceOk

`func (o *Failure) GetServiceOk() (*string, bool)`

GetServiceOk returns a tuple with the Service field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetService

`func (o *Failure) SetService(v string)`

SetService sets Service field to given value.

### HasService

`func (o *Failure) HasService() bool`

HasService returns a boolean if a field has been set.

### SetServiceNil

`func (o *Failure) SetServiceNil(b bool)`

 SetServiceNil sets the value for Service to be an explicit nil

### UnsetService
`func (o *Failure) UnsetService()`

UnsetService ensures that no value is present for Service, not even an explicit nil
### GetBuildLogKey

`func (o *Failure) GetBuildLogKey() string`

GetBuildLogKey returns the BuildLogKey field if non-nil, zero value otherwise.

### GetBuildLogKeyOk

`func (o *Failure) GetBuildLogKeyOk() (*string, bool)`

GetBuildLogKeyOk returns a tuple with the BuildLogKey field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBuildLogKey

`func (o *Failure) SetBuildLogKey(v string)`

SetBuildLogKey sets BuildLogKey field to given value.

### HasBuildLogKey

`func (o *Failure) HasBuildLogKey() bool`

HasBuildLogKey returns a boolean if a field has been set.

### SetBuildLogKeyNil

`func (o *Failure) SetBuildLogKeyNil(b bool)`

 SetBuildLogKeyNil sets the value for BuildLogKey to be an explicit nil

### UnsetBuildLogKey
`func (o *Failure) UnsetBuildLogKey()`

UnsetBuildLogKey ensures that no value is present for BuildLogKey, not even an explicit nil
### GetImageDigest

`func (o *Failure) GetImageDigest() string`

GetImageDigest returns the ImageDigest field if non-nil, zero value otherwise.

### GetImageDigestOk

`func (o *Failure) GetImageDigestOk() (*string, bool)`

GetImageDigestOk returns a tuple with the ImageDigest field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImageDigest

`func (o *Failure) SetImageDigest(v string)`

SetImageDigest sets ImageDigest field to given value.

### HasImageDigest

`func (o *Failure) HasImageDigest() bool`

HasImageDigest returns a boolean if a field has been set.

### SetImageDigestNil

`func (o *Failure) SetImageDigestNil(b bool)`

 SetImageDigestNil sets the value for ImageDigest to be an explicit nil

### UnsetImageDigest
`func (o *Failure) UnsetImageDigest()`

UnsetImageDigest ensures that no value is present for ImageDigest, not even an explicit nil
### GetShareToken

`func (o *Failure) GetShareToken() string`

GetShareToken returns the ShareToken field if non-nil, zero value otherwise.

### GetShareTokenOk

`func (o *Failure) GetShareTokenOk() (*string, bool)`

GetShareTokenOk returns a tuple with the ShareToken field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetShareToken

`func (o *Failure) SetShareToken(v string)`

SetShareToken sets ShareToken field to given value.

### HasShareToken

`func (o *Failure) HasShareToken() bool`

HasShareToken returns a boolean if a field has been set.

### SetShareTokenNil

`func (o *Failure) SetShareTokenNil(b bool)`

 SetShareTokenNil sets the value for ShareToken to be an explicit nil

### UnsetShareToken
`func (o *Failure) UnsetShareToken()`

UnsetShareToken ensures that no value is present for ShareToken, not even an explicit nil
### GetSharedAt

`func (o *Failure) GetSharedAt() time.Time`

GetSharedAt returns the SharedAt field if non-nil, zero value otherwise.

### GetSharedAtOk

`func (o *Failure) GetSharedAtOk() (*time.Time, bool)`

GetSharedAtOk returns a tuple with the SharedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSharedAt

`func (o *Failure) SetSharedAt(v time.Time)`

SetSharedAt sets SharedAt field to given value.

### HasSharedAt

`func (o *Failure) HasSharedAt() bool`

HasSharedAt returns a boolean if a field has been set.

### SetSharedAtNil

`func (o *Failure) SetSharedAtNil(b bool)`

 SetSharedAtNil sets the value for SharedAt to be an explicit nil

### UnsetSharedAt
`func (o *Failure) UnsetSharedAt()`

UnsetSharedAt ensures that no value is present for SharedAt, not even an explicit nil
### GetShareExpiresAt

`func (o *Failure) GetShareExpiresAt() time.Time`

GetShareExpiresAt returns the ShareExpiresAt field if non-nil, zero value otherwise.

### GetShareExpiresAtOk

`func (o *Failure) GetShareExpiresAtOk() (*time.Time, bool)`

GetShareExpiresAtOk returns a tuple with the ShareExpiresAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetShareExpiresAt

`func (o *Failure) SetShareExpiresAt(v time.Time)`

SetShareExpiresAt sets ShareExpiresAt field to given value.

### HasShareExpiresAt

`func (o *Failure) HasShareExpiresAt() bool`

HasShareExpiresAt returns a boolean if a field has been set.

### SetShareExpiresAtNil

`func (o *Failure) SetShareExpiresAtNil(b bool)`

 SetShareExpiresAtNil sets the value for ShareExpiresAt to be an explicit nil

### UnsetShareExpiresAt
`func (o *Failure) UnsetShareExpiresAt()`

UnsetShareExpiresAt ensures that no value is present for ShareExpiresAt, not even an explicit nil
### GetSharedBy

`func (o *Failure) GetSharedBy() User`

GetSharedBy returns the SharedBy field if non-nil, zero value otherwise.

### GetSharedByOk

`func (o *Failure) GetSharedByOk() (*User, bool)`

GetSharedByOk returns a tuple with the SharedBy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSharedBy

`func (o *Failure) SetSharedBy(v User)`

SetSharedBy sets SharedBy field to given value.

### HasSharedBy

`func (o *Failure) HasSharedBy() bool`

HasSharedBy returns a boolean if a field has been set.

### SetSharedByNil

`func (o *Failure) SetSharedByNil(b bool)`

 SetSharedByNil sets the value for SharedBy to be an explicit nil

### UnsetSharedBy
`func (o *Failure) UnsetSharedBy()`

UnsetSharedBy ensures that no value is present for SharedBy, not even an explicit nil
### GetId

`func (o *Failure) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *Failure) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *Failure) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *Failure) HasId() bool`

HasId returns a boolean if a field has been set.

### GetCreatedAt

`func (o *Failure) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *Failure) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *Failure) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *Failure) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *Failure) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *Failure) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *Failure) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *Failure) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.

### SetUpdatedAtNil

`func (o *Failure) SetUpdatedAtNil(b bool)`

 SetUpdatedAtNil sets the value for UpdatedAt to be an explicit nil

### UnsetUpdatedAt
`func (o *Failure) UnsetUpdatedAt()`

UnsetUpdatedAt ensures that no value is present for UpdatedAt, not even an explicit nil
### GetDisplayLabel

`func (o *Failure) GetDisplayLabel() string`

GetDisplayLabel returns the DisplayLabel field if non-nil, zero value otherwise.

### GetDisplayLabelOk

`func (o *Failure) GetDisplayLabelOk() (*string, bool)`

GetDisplayLabelOk returns a tuple with the DisplayLabel field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisplayLabel

`func (o *Failure) SetDisplayLabel(v string)`

SetDisplayLabel sets DisplayLabel field to given value.

### HasDisplayLabel

`func (o *Failure) HasDisplayLabel() bool`

HasDisplayLabel returns a boolean if a field has been set.

### GetShared

`func (o *Failure) GetShared() bool`

GetShared returns the Shared field if non-nil, zero value otherwise.

### GetSharedOk

`func (o *Failure) GetSharedOk() (*bool, bool)`

GetSharedOk returns a tuple with the Shared field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetShared

`func (o *Failure) SetShared(v bool)`

SetShared sets Shared field to given value.

### HasShared

`func (o *Failure) HasShared() bool`

HasShared returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


