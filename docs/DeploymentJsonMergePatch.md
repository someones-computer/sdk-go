# DeploymentJsonMergePatch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Application** | Pointer to **string** |  | [optional] 
**Sequence** | Pointer to **int32** | Monotonic per-application revision number. | [optional] 
**Name** | Pointer to **NullableString** | What this revision is called — &#x60;sc&#x60; defaults it to the slugified branch, so the normal shape is a deployment per branch. Null for revisions created before the field existed, or by a client that doesn&#39;t send one. | [optional] 
**RawCompose** | Pointer to **string** | Exactly what the user submitted. | [optional] 
**CanonicalSpec** | Pointer to [**map[string]DeploymentJsonMergePatchCanonicalSpecValue**](DeploymentJsonMergePatchCanonicalSpecValue.md) | Parsed, supported-subset-only canonical representation — what {@see \\App\\Service\\Compose\\ComposeParser::parse()} produced. Both keys are optional here and not there: a row is whatever was written when it was written, so a revision that predates a key still has to load. | [optional] 
**BuildContexts** | Pointer to [**map[string]map[string]DeploymentJsonMergePatchBuildContextsValueValue**](map.md) | Build contexts uploaded with this revision, keyed by compose service name: &#x60;{ contextSha256, dockerfile, dockerfileContent?, additionalContexts?, image?, log? }&#x60;. The tarballs themselves live in the content-addressed bundle cache ({@see \\App\\Service\\Bundle\\BundleStorage}); this is the pointer the build worker will walk. &#x60;dockerfileContent&#x60; is a best-effort text preview extracted at ingest ({@see \\App\\Service\\Bundle\\ContextDockerfileReader}) — null when the context was too large to preview or predates this field. | [optional] 
**ForwardedImages** | Pointer to **map[string]map[string]string** | Client-forwarded images uploaded with this revision, keyed by compose service name: &#x60;{ contextSha256, originalImage, image?, log? }&#x60;. See docs/registry.md&#39;s \&quot;Client-side forwarding\&quot; callout: &#x60;sc&#x60; detects a private, unbuildable &#x60;image:&#x60; reference it can already reach locally and offers to upload it, for a platform that has no other way to pull it. A sibling to {@see self::$buildContexts} rather than folded into it — that array means \&quot;run this through BuildKit\&quot;, and this one never does. The tarballs live in the object store ({@see \\App\\Service\\Bundle\\ImageStorage}), not the database; &#x60;image&#x60; is filled in once the loader has pushed it to the internal registry, the same way &#x60;buildContexts[][&#39;image&#39;]&#x60; is. &#x60;{}&#x60; for every revision that forwarded nothing, which is most of them. | [optional] 
**BuildSecrets** | Pointer to [**map[string]map[string]map[string]string**](map.md) | &#x60;build.secrets&#x60; values declared for this revision&#39;s build services (Grey.ooo/someones.computer_agent#46), sealed the moment they arrive ({@see \\App\\Service\\Secret\\SecretBox}) and never written to the object store the way a build context is: unlike a context tarball, a build secret is live tenant credential material, not something worth caching by content — closer to how {@see \\App\\Service\\Registry\\RegistryTokenSigner} mints a push token than to how {@see \\App\\Entity\\Variable} keeps one. | [optional] 
**TargetSwarm** | Pointer to **NullableString** | Resolved by the placement engine; null until placed. | [optional] 
**Status** | Pointer to **string** |  | [optional] [default to "pending"]
**StatusReason** | Pointer to **NullableString** | Why the revision is in its current status — the build worker&#39;s failure message, typically. Null whenever there is nothing to explain. | [optional] 
**FailedOnSwarm** | Pointer to **bool** | Set on a &#x60;Failed&#x60; revision that had already created or updated at least one service on &#x60;$targetSwarm&#x60; before the failure — a live half-stack, not \&quot;nothing happened\&quot; (#1270). {@see self::isOnASwarm()} reads this for exactly the revisions the ordinary &#x60;Deploying&#x60;/&#x60;Running&#x60; check cannot see: whatever partially landed still has to be reachable to a manual Teardown and countable by the stray-container sweep, which is why every other status leaves this false rather than tracking it. | [optional] [default to false]
**ZeroTaskObservedAt** | Pointer to **NullableTime** | When {@see \\App\\Service\\Reconcile\\RevisionDegradationDetector} first found this &#x60;Running&#x60; revision with no task actually running on its swarm — null while at least one is, or before it was ever checked. | [optional] 
**Degraded** | Pointer to **bool** | Set once a &#x60;Running&#x60; revision has gone a full grace period with zero tasks actually running on its swarm (#1279) — a {@see Failure} of {@see \\App\\Enum\\FailurePhase::Runtime} is recorded alongside it. Never flips &#x60;$status&#x60; itself: &#x60;running&#x60; still means \&quot;this is what the application should be serving\&quot;, and a revision the platform cannot reach a running task for is a fact about the swarm, not a new desired state — the same desired/observed separation {@see \\App\\Service\\Reconcile\\DriftDetector} already keeps at read time, made durable here so it survives past one page view. | [optional] [default to false]
**Digest** | Pointer to **NullableString** | Content digest of the canonical spec, for dedupe/audit. | [optional] 
**CreatedBy** | Pointer to [**NullableUser**](User.md) |  | [optional] 
**Services** | Pointer to [**[]Service**](Service.md) |  | [optional] 
**Variables** | Pointer to [**[]DeploymentVariable**](DeploymentVariable.md) |  | [optional] 
**Failures** | Pointer to [**[]Failure**](Failure.md) |  | [optional] 
**Id** | Pointer to **string** |  | [optional] [readonly] 
**DeletedAt** | Pointer to **NullableTime** |  | [optional] [readonly] 
**CreatedAt** | Pointer to **time.Time** |  | [optional] [readonly] 
**UpdatedAt** | Pointer to **NullableTime** |  | [optional] [readonly] 
**OnASwarm** | Pointer to **bool** | Whether this revision has a stack of its own on a swarm right now. | [optional] [readonly] 
**Deleted** | Pointer to **bool** |  | [optional] [readonly] 

## Methods

### NewDeploymentJsonMergePatch

`func NewDeploymentJsonMergePatch() *DeploymentJsonMergePatch`

NewDeploymentJsonMergePatch instantiates a new DeploymentJsonMergePatch object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDeploymentJsonMergePatchWithDefaults

`func NewDeploymentJsonMergePatchWithDefaults() *DeploymentJsonMergePatch`

NewDeploymentJsonMergePatchWithDefaults instantiates a new DeploymentJsonMergePatch object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetApplication

`func (o *DeploymentJsonMergePatch) GetApplication() string`

GetApplication returns the Application field if non-nil, zero value otherwise.

### GetApplicationOk

`func (o *DeploymentJsonMergePatch) GetApplicationOk() (*string, bool)`

GetApplicationOk returns a tuple with the Application field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApplication

`func (o *DeploymentJsonMergePatch) SetApplication(v string)`

SetApplication sets Application field to given value.

### HasApplication

`func (o *DeploymentJsonMergePatch) HasApplication() bool`

HasApplication returns a boolean if a field has been set.

### GetSequence

`func (o *DeploymentJsonMergePatch) GetSequence() int32`

GetSequence returns the Sequence field if non-nil, zero value otherwise.

### GetSequenceOk

`func (o *DeploymentJsonMergePatch) GetSequenceOk() (*int32, bool)`

GetSequenceOk returns a tuple with the Sequence field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSequence

`func (o *DeploymentJsonMergePatch) SetSequence(v int32)`

SetSequence sets Sequence field to given value.

### HasSequence

`func (o *DeploymentJsonMergePatch) HasSequence() bool`

HasSequence returns a boolean if a field has been set.

### GetName

`func (o *DeploymentJsonMergePatch) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *DeploymentJsonMergePatch) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *DeploymentJsonMergePatch) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *DeploymentJsonMergePatch) HasName() bool`

HasName returns a boolean if a field has been set.

### SetNameNil

`func (o *DeploymentJsonMergePatch) SetNameNil(b bool)`

 SetNameNil sets the value for Name to be an explicit nil

### UnsetName
`func (o *DeploymentJsonMergePatch) UnsetName()`

UnsetName ensures that no value is present for Name, not even an explicit nil
### GetRawCompose

`func (o *DeploymentJsonMergePatch) GetRawCompose() string`

GetRawCompose returns the RawCompose field if non-nil, zero value otherwise.

### GetRawComposeOk

`func (o *DeploymentJsonMergePatch) GetRawComposeOk() (*string, bool)`

GetRawComposeOk returns a tuple with the RawCompose field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRawCompose

`func (o *DeploymentJsonMergePatch) SetRawCompose(v string)`

SetRawCompose sets RawCompose field to given value.

### HasRawCompose

`func (o *DeploymentJsonMergePatch) HasRawCompose() bool`

HasRawCompose returns a boolean if a field has been set.

### GetCanonicalSpec

`func (o *DeploymentJsonMergePatch) GetCanonicalSpec() map[string]DeploymentJsonMergePatchCanonicalSpecValue`

GetCanonicalSpec returns the CanonicalSpec field if non-nil, zero value otherwise.

### GetCanonicalSpecOk

`func (o *DeploymentJsonMergePatch) GetCanonicalSpecOk() (*map[string]DeploymentJsonMergePatchCanonicalSpecValue, bool)`

GetCanonicalSpecOk returns a tuple with the CanonicalSpec field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCanonicalSpec

`func (o *DeploymentJsonMergePatch) SetCanonicalSpec(v map[string]DeploymentJsonMergePatchCanonicalSpecValue)`

SetCanonicalSpec sets CanonicalSpec field to given value.

### HasCanonicalSpec

`func (o *DeploymentJsonMergePatch) HasCanonicalSpec() bool`

HasCanonicalSpec returns a boolean if a field has been set.

### GetBuildContexts

`func (o *DeploymentJsonMergePatch) GetBuildContexts() map[string]map[string]DeploymentJsonMergePatchBuildContextsValueValue`

GetBuildContexts returns the BuildContexts field if non-nil, zero value otherwise.

### GetBuildContextsOk

`func (o *DeploymentJsonMergePatch) GetBuildContextsOk() (*map[string]map[string]DeploymentJsonMergePatchBuildContextsValueValue, bool)`

GetBuildContextsOk returns a tuple with the BuildContexts field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBuildContexts

`func (o *DeploymentJsonMergePatch) SetBuildContexts(v map[string]map[string]DeploymentJsonMergePatchBuildContextsValueValue)`

SetBuildContexts sets BuildContexts field to given value.

### HasBuildContexts

`func (o *DeploymentJsonMergePatch) HasBuildContexts() bool`

HasBuildContexts returns a boolean if a field has been set.

### GetForwardedImages

`func (o *DeploymentJsonMergePatch) GetForwardedImages() map[string]map[string]string`

GetForwardedImages returns the ForwardedImages field if non-nil, zero value otherwise.

### GetForwardedImagesOk

`func (o *DeploymentJsonMergePatch) GetForwardedImagesOk() (*map[string]map[string]string, bool)`

GetForwardedImagesOk returns a tuple with the ForwardedImages field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetForwardedImages

`func (o *DeploymentJsonMergePatch) SetForwardedImages(v map[string]map[string]string)`

SetForwardedImages sets ForwardedImages field to given value.

### HasForwardedImages

`func (o *DeploymentJsonMergePatch) HasForwardedImages() bool`

HasForwardedImages returns a boolean if a field has been set.

### GetBuildSecrets

`func (o *DeploymentJsonMergePatch) GetBuildSecrets() map[string]map[string]map[string]string`

GetBuildSecrets returns the BuildSecrets field if non-nil, zero value otherwise.

### GetBuildSecretsOk

`func (o *DeploymentJsonMergePatch) GetBuildSecretsOk() (*map[string]map[string]map[string]string, bool)`

GetBuildSecretsOk returns a tuple with the BuildSecrets field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBuildSecrets

`func (o *DeploymentJsonMergePatch) SetBuildSecrets(v map[string]map[string]map[string]string)`

SetBuildSecrets sets BuildSecrets field to given value.

### HasBuildSecrets

`func (o *DeploymentJsonMergePatch) HasBuildSecrets() bool`

HasBuildSecrets returns a boolean if a field has been set.

### GetTargetSwarm

`func (o *DeploymentJsonMergePatch) GetTargetSwarm() string`

GetTargetSwarm returns the TargetSwarm field if non-nil, zero value otherwise.

### GetTargetSwarmOk

`func (o *DeploymentJsonMergePatch) GetTargetSwarmOk() (*string, bool)`

GetTargetSwarmOk returns a tuple with the TargetSwarm field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTargetSwarm

`func (o *DeploymentJsonMergePatch) SetTargetSwarm(v string)`

SetTargetSwarm sets TargetSwarm field to given value.

### HasTargetSwarm

`func (o *DeploymentJsonMergePatch) HasTargetSwarm() bool`

HasTargetSwarm returns a boolean if a field has been set.

### SetTargetSwarmNil

`func (o *DeploymentJsonMergePatch) SetTargetSwarmNil(b bool)`

 SetTargetSwarmNil sets the value for TargetSwarm to be an explicit nil

### UnsetTargetSwarm
`func (o *DeploymentJsonMergePatch) UnsetTargetSwarm()`

UnsetTargetSwarm ensures that no value is present for TargetSwarm, not even an explicit nil
### GetStatus

`func (o *DeploymentJsonMergePatch) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *DeploymentJsonMergePatch) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *DeploymentJsonMergePatch) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *DeploymentJsonMergePatch) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetStatusReason

`func (o *DeploymentJsonMergePatch) GetStatusReason() string`

GetStatusReason returns the StatusReason field if non-nil, zero value otherwise.

### GetStatusReasonOk

`func (o *DeploymentJsonMergePatch) GetStatusReasonOk() (*string, bool)`

GetStatusReasonOk returns a tuple with the StatusReason field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatusReason

`func (o *DeploymentJsonMergePatch) SetStatusReason(v string)`

SetStatusReason sets StatusReason field to given value.

### HasStatusReason

`func (o *DeploymentJsonMergePatch) HasStatusReason() bool`

HasStatusReason returns a boolean if a field has been set.

### SetStatusReasonNil

`func (o *DeploymentJsonMergePatch) SetStatusReasonNil(b bool)`

 SetStatusReasonNil sets the value for StatusReason to be an explicit nil

### UnsetStatusReason
`func (o *DeploymentJsonMergePatch) UnsetStatusReason()`

UnsetStatusReason ensures that no value is present for StatusReason, not even an explicit nil
### GetFailedOnSwarm

`func (o *DeploymentJsonMergePatch) GetFailedOnSwarm() bool`

GetFailedOnSwarm returns the FailedOnSwarm field if non-nil, zero value otherwise.

### GetFailedOnSwarmOk

`func (o *DeploymentJsonMergePatch) GetFailedOnSwarmOk() (*bool, bool)`

GetFailedOnSwarmOk returns a tuple with the FailedOnSwarm field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFailedOnSwarm

`func (o *DeploymentJsonMergePatch) SetFailedOnSwarm(v bool)`

SetFailedOnSwarm sets FailedOnSwarm field to given value.

### HasFailedOnSwarm

`func (o *DeploymentJsonMergePatch) HasFailedOnSwarm() bool`

HasFailedOnSwarm returns a boolean if a field has been set.

### GetZeroTaskObservedAt

`func (o *DeploymentJsonMergePatch) GetZeroTaskObservedAt() time.Time`

GetZeroTaskObservedAt returns the ZeroTaskObservedAt field if non-nil, zero value otherwise.

### GetZeroTaskObservedAtOk

`func (o *DeploymentJsonMergePatch) GetZeroTaskObservedAtOk() (*time.Time, bool)`

GetZeroTaskObservedAtOk returns a tuple with the ZeroTaskObservedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetZeroTaskObservedAt

`func (o *DeploymentJsonMergePatch) SetZeroTaskObservedAt(v time.Time)`

SetZeroTaskObservedAt sets ZeroTaskObservedAt field to given value.

### HasZeroTaskObservedAt

`func (o *DeploymentJsonMergePatch) HasZeroTaskObservedAt() bool`

HasZeroTaskObservedAt returns a boolean if a field has been set.

### SetZeroTaskObservedAtNil

`func (o *DeploymentJsonMergePatch) SetZeroTaskObservedAtNil(b bool)`

 SetZeroTaskObservedAtNil sets the value for ZeroTaskObservedAt to be an explicit nil

### UnsetZeroTaskObservedAt
`func (o *DeploymentJsonMergePatch) UnsetZeroTaskObservedAt()`

UnsetZeroTaskObservedAt ensures that no value is present for ZeroTaskObservedAt, not even an explicit nil
### GetDegraded

`func (o *DeploymentJsonMergePatch) GetDegraded() bool`

GetDegraded returns the Degraded field if non-nil, zero value otherwise.

### GetDegradedOk

`func (o *DeploymentJsonMergePatch) GetDegradedOk() (*bool, bool)`

GetDegradedOk returns a tuple with the Degraded field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDegraded

`func (o *DeploymentJsonMergePatch) SetDegraded(v bool)`

SetDegraded sets Degraded field to given value.

### HasDegraded

`func (o *DeploymentJsonMergePatch) HasDegraded() bool`

HasDegraded returns a boolean if a field has been set.

### GetDigest

`func (o *DeploymentJsonMergePatch) GetDigest() string`

GetDigest returns the Digest field if non-nil, zero value otherwise.

### GetDigestOk

`func (o *DeploymentJsonMergePatch) GetDigestOk() (*string, bool)`

GetDigestOk returns a tuple with the Digest field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDigest

`func (o *DeploymentJsonMergePatch) SetDigest(v string)`

SetDigest sets Digest field to given value.

### HasDigest

`func (o *DeploymentJsonMergePatch) HasDigest() bool`

HasDigest returns a boolean if a field has been set.

### SetDigestNil

`func (o *DeploymentJsonMergePatch) SetDigestNil(b bool)`

 SetDigestNil sets the value for Digest to be an explicit nil

### UnsetDigest
`func (o *DeploymentJsonMergePatch) UnsetDigest()`

UnsetDigest ensures that no value is present for Digest, not even an explicit nil
### GetCreatedBy

`func (o *DeploymentJsonMergePatch) GetCreatedBy() User`

GetCreatedBy returns the CreatedBy field if non-nil, zero value otherwise.

### GetCreatedByOk

`func (o *DeploymentJsonMergePatch) GetCreatedByOk() (*User, bool)`

GetCreatedByOk returns a tuple with the CreatedBy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedBy

`func (o *DeploymentJsonMergePatch) SetCreatedBy(v User)`

SetCreatedBy sets CreatedBy field to given value.

### HasCreatedBy

`func (o *DeploymentJsonMergePatch) HasCreatedBy() bool`

HasCreatedBy returns a boolean if a field has been set.

### SetCreatedByNil

`func (o *DeploymentJsonMergePatch) SetCreatedByNil(b bool)`

 SetCreatedByNil sets the value for CreatedBy to be an explicit nil

### UnsetCreatedBy
`func (o *DeploymentJsonMergePatch) UnsetCreatedBy()`

UnsetCreatedBy ensures that no value is present for CreatedBy, not even an explicit nil
### GetServices

`func (o *DeploymentJsonMergePatch) GetServices() []Service`

GetServices returns the Services field if non-nil, zero value otherwise.

### GetServicesOk

`func (o *DeploymentJsonMergePatch) GetServicesOk() (*[]Service, bool)`

GetServicesOk returns a tuple with the Services field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServices

`func (o *DeploymentJsonMergePatch) SetServices(v []Service)`

SetServices sets Services field to given value.

### HasServices

`func (o *DeploymentJsonMergePatch) HasServices() bool`

HasServices returns a boolean if a field has been set.

### GetVariables

`func (o *DeploymentJsonMergePatch) GetVariables() []DeploymentVariable`

GetVariables returns the Variables field if non-nil, zero value otherwise.

### GetVariablesOk

`func (o *DeploymentJsonMergePatch) GetVariablesOk() (*[]DeploymentVariable, bool)`

GetVariablesOk returns a tuple with the Variables field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVariables

`func (o *DeploymentJsonMergePatch) SetVariables(v []DeploymentVariable)`

SetVariables sets Variables field to given value.

### HasVariables

`func (o *DeploymentJsonMergePatch) HasVariables() bool`

HasVariables returns a boolean if a field has been set.

### GetFailures

`func (o *DeploymentJsonMergePatch) GetFailures() []Failure`

GetFailures returns the Failures field if non-nil, zero value otherwise.

### GetFailuresOk

`func (o *DeploymentJsonMergePatch) GetFailuresOk() (*[]Failure, bool)`

GetFailuresOk returns a tuple with the Failures field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFailures

`func (o *DeploymentJsonMergePatch) SetFailures(v []Failure)`

SetFailures sets Failures field to given value.

### HasFailures

`func (o *DeploymentJsonMergePatch) HasFailures() bool`

HasFailures returns a boolean if a field has been set.

### GetId

`func (o *DeploymentJsonMergePatch) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *DeploymentJsonMergePatch) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *DeploymentJsonMergePatch) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *DeploymentJsonMergePatch) HasId() bool`

HasId returns a boolean if a field has been set.

### GetDeletedAt

`func (o *DeploymentJsonMergePatch) GetDeletedAt() time.Time`

GetDeletedAt returns the DeletedAt field if non-nil, zero value otherwise.

### GetDeletedAtOk

`func (o *DeploymentJsonMergePatch) GetDeletedAtOk() (*time.Time, bool)`

GetDeletedAtOk returns a tuple with the DeletedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeletedAt

`func (o *DeploymentJsonMergePatch) SetDeletedAt(v time.Time)`

SetDeletedAt sets DeletedAt field to given value.

### HasDeletedAt

`func (o *DeploymentJsonMergePatch) HasDeletedAt() bool`

HasDeletedAt returns a boolean if a field has been set.

### SetDeletedAtNil

`func (o *DeploymentJsonMergePatch) SetDeletedAtNil(b bool)`

 SetDeletedAtNil sets the value for DeletedAt to be an explicit nil

### UnsetDeletedAt
`func (o *DeploymentJsonMergePatch) UnsetDeletedAt()`

UnsetDeletedAt ensures that no value is present for DeletedAt, not even an explicit nil
### GetCreatedAt

`func (o *DeploymentJsonMergePatch) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *DeploymentJsonMergePatch) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *DeploymentJsonMergePatch) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *DeploymentJsonMergePatch) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *DeploymentJsonMergePatch) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *DeploymentJsonMergePatch) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *DeploymentJsonMergePatch) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *DeploymentJsonMergePatch) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.

### SetUpdatedAtNil

`func (o *DeploymentJsonMergePatch) SetUpdatedAtNil(b bool)`

 SetUpdatedAtNil sets the value for UpdatedAt to be an explicit nil

### UnsetUpdatedAt
`func (o *DeploymentJsonMergePatch) UnsetUpdatedAt()`

UnsetUpdatedAt ensures that no value is present for UpdatedAt, not even an explicit nil
### GetOnASwarm

`func (o *DeploymentJsonMergePatch) GetOnASwarm() bool`

GetOnASwarm returns the OnASwarm field if non-nil, zero value otherwise.

### GetOnASwarmOk

`func (o *DeploymentJsonMergePatch) GetOnASwarmOk() (*bool, bool)`

GetOnASwarmOk returns a tuple with the OnASwarm field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOnASwarm

`func (o *DeploymentJsonMergePatch) SetOnASwarm(v bool)`

SetOnASwarm sets OnASwarm field to given value.

### HasOnASwarm

`func (o *DeploymentJsonMergePatch) HasOnASwarm() bool`

HasOnASwarm returns a boolean if a field has been set.

### GetDeleted

`func (o *DeploymentJsonMergePatch) GetDeleted() bool`

GetDeleted returns the Deleted field if non-nil, zero value otherwise.

### GetDeletedOk

`func (o *DeploymentJsonMergePatch) GetDeletedOk() (*bool, bool)`

GetDeletedOk returns a tuple with the Deleted field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeleted

`func (o *DeploymentJsonMergePatch) SetDeleted(v bool)`

SetDeleted sets Deleted field to given value.

### HasDeleted

`func (o *DeploymentJsonMergePatch) HasDeleted() bool`

HasDeleted returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


