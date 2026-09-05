# ApplicationJsonMergePatch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Organization** | Pointer to **string** | Re-home this application. Callers own everything the uniqueness constraint and the trust invariant elsewhere in the platform expect of a move — the entity itself only holds the pointer. | [optional] 
**Slug** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**IsolationLevel** | Pointer to **string** |  | [optional] [default to "shared"]
**ServiceAdoption** | Pointer to **string** | Whether a deploy&#39;s compose file is watched for services a managed equivalent could replace. | [optional] [default to "off"]
**AccessGate** | Pointer to **string** | How this application&#39;s routed HTTP services are gated at the edge — &#x60;None&#x60; by default, so an application behaves exactly as it always has until an org manager opts it in ({@see AccessGateMode}). | [optional] [default to "none"]
**CurrentDeployment** | Pointer to **NullableString** | Pointer to the currently active revision; null before the first deploy. | [optional] 
**FirstRunningAt** | Pointer to **NullableTime** | The first moment any revision of this application ever reached &#x60;running&#x60; — null until it has. What {@see \\App\\Service\\Teardown\\TeardownGracePeriod} measures grace-period uptime from, in place of the current revision&#39;s own &#x60;createdAt&#x60; (#1307): a revision row is stamped at bundle ingest and a fresh one is created on every &#x60;sc deploy&#x60;, so measuring off it gave a six-month-old production application a ten-minute grace period the moment it was redeployed. This is set once and never moved — a redeploy, or reactivating an old revision, does not reset it, because the application&#39;s history is what earns the longer grace, not whichever revision happens to be current. | [optional] [readonly] 
**PrimaryDeploymentName** | Pointer to **NullableString** | Which deployment *name* owns the application&#39;s apex identity — the stack, network and hostname that carry no revision component ({@see \\App\\Service\\Placement\\StackNaming}). | [optional] 
**LegacyStackBase** | Pointer to **NullableString** | The &#x60;&lt;prefix&gt;-&lt;org&gt;-&lt;app&gt;&#x60; join this application&#39;s stacks were **already named from**, before the separator was made unambiguous — or null, meaning nothing of this application has ever been on a swarm under the old name and {@see \\App\\Service\\Placement\\StackNaming} is free to derive the current one. | [optional] 
**IconKey** | Pointer to **NullableString** | Object key of this application&#39;s stored icon, or null when nobody has given it one — in which case {@see \\App\\Service\\Icon\\GeneratedIcon} draws one from the name and slug, so every application has an icon either way. | [optional] [readonly] 
**IconSource** | Pointer to **NullableString** | Where {@see $iconKey} came from — null exactly when there is no stored icon. | [optional] [readonly] 
**BuildBucket** | Pointer to **NullableString** | This application&#39;s own Garage build-context bucket — where &#x60;sc deploy&#x60;&#39;s uploaded contexts and forwarded images are parked, and the only bucket the build key below can read. Null until the first upload provisions it ({@see \\App\\Service\\Bundle\\ApplicationBuildBucketProvisioner}); every application predating #996 looks like that too, and provisions on its next deploy. | [optional] 
**BuildKeyId** | Pointer to **NullableString** | The access-key id of the read-only Garage key scoped to {@see $buildBucket}, handed to build tasks. Doubles as Garage&#39;s own identifier for the key (the same way {@see ManagedService::$externalKeyId} does), so nothing separate is persisted for it. | [optional] 
**Deployments** | Pointer to **[]string** |  | [optional] 
**Variables** | Pointer to [**[]Variable**](Variable.md) |  | [optional] 
**PortAllocations** | Pointer to [**[]PortAllocation**](PortAllocation.md) |  | [optional] 
**Id** | Pointer to **string** |  | [optional] [readonly] 
**DeletedAt** | Pointer to **NullableTime** |  | [optional] [readonly] 
**CreatedAt** | Pointer to **time.Time** |  | [optional] [readonly] 
**UpdatedAt** | Pointer to **NullableTime** |  | [optional] [readonly] 
**BuildCredential** | Pointer to [**SealedSecret**](SealedSecret.md) |  | [optional] 
**AccessGateCredential** | Pointer to [**NullableSealedSecret**](SealedSecret.md) |  | [optional] 
**Icon** | Pointer to **NullableString** | Point the application at a stored icon, or at none. | [optional] 
**OperatorChosenIcon** | Pointer to **bool** | Whether the stored icon was chosen by a person, and so must survive the next deploy&#39;s favicon extraction. | [optional] [readonly] 
**IconVersion** | Pointer to **NullableString** | A short, stable token for the icon a caller is looking at — the cache-busting half of the icon URL, and null when there is nothing stored to bust. | [optional] [readonly] 
**Deleted** | Pointer to **bool** |  | [optional] [readonly] 

## Methods

### NewApplicationJsonMergePatch

`func NewApplicationJsonMergePatch() *ApplicationJsonMergePatch`

NewApplicationJsonMergePatch instantiates a new ApplicationJsonMergePatch object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewApplicationJsonMergePatchWithDefaults

`func NewApplicationJsonMergePatchWithDefaults() *ApplicationJsonMergePatch`

NewApplicationJsonMergePatchWithDefaults instantiates a new ApplicationJsonMergePatch object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOrganization

`func (o *ApplicationJsonMergePatch) GetOrganization() string`

GetOrganization returns the Organization field if non-nil, zero value otherwise.

### GetOrganizationOk

`func (o *ApplicationJsonMergePatch) GetOrganizationOk() (*string, bool)`

GetOrganizationOk returns a tuple with the Organization field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrganization

`func (o *ApplicationJsonMergePatch) SetOrganization(v string)`

SetOrganization sets Organization field to given value.

### HasOrganization

`func (o *ApplicationJsonMergePatch) HasOrganization() bool`

HasOrganization returns a boolean if a field has been set.

### GetSlug

`func (o *ApplicationJsonMergePatch) GetSlug() string`

GetSlug returns the Slug field if non-nil, zero value otherwise.

### GetSlugOk

`func (o *ApplicationJsonMergePatch) GetSlugOk() (*string, bool)`

GetSlugOk returns a tuple with the Slug field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSlug

`func (o *ApplicationJsonMergePatch) SetSlug(v string)`

SetSlug sets Slug field to given value.

### HasSlug

`func (o *ApplicationJsonMergePatch) HasSlug() bool`

HasSlug returns a boolean if a field has been set.

### GetName

`func (o *ApplicationJsonMergePatch) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *ApplicationJsonMergePatch) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *ApplicationJsonMergePatch) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *ApplicationJsonMergePatch) HasName() bool`

HasName returns a boolean if a field has been set.

### GetIsolationLevel

`func (o *ApplicationJsonMergePatch) GetIsolationLevel() string`

GetIsolationLevel returns the IsolationLevel field if non-nil, zero value otherwise.

### GetIsolationLevelOk

`func (o *ApplicationJsonMergePatch) GetIsolationLevelOk() (*string, bool)`

GetIsolationLevelOk returns a tuple with the IsolationLevel field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsolationLevel

`func (o *ApplicationJsonMergePatch) SetIsolationLevel(v string)`

SetIsolationLevel sets IsolationLevel field to given value.

### HasIsolationLevel

`func (o *ApplicationJsonMergePatch) HasIsolationLevel() bool`

HasIsolationLevel returns a boolean if a field has been set.

### GetServiceAdoption

`func (o *ApplicationJsonMergePatch) GetServiceAdoption() string`

GetServiceAdoption returns the ServiceAdoption field if non-nil, zero value otherwise.

### GetServiceAdoptionOk

`func (o *ApplicationJsonMergePatch) GetServiceAdoptionOk() (*string, bool)`

GetServiceAdoptionOk returns a tuple with the ServiceAdoption field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServiceAdoption

`func (o *ApplicationJsonMergePatch) SetServiceAdoption(v string)`

SetServiceAdoption sets ServiceAdoption field to given value.

### HasServiceAdoption

`func (o *ApplicationJsonMergePatch) HasServiceAdoption() bool`

HasServiceAdoption returns a boolean if a field has been set.

### GetAccessGate

`func (o *ApplicationJsonMergePatch) GetAccessGate() string`

GetAccessGate returns the AccessGate field if non-nil, zero value otherwise.

### GetAccessGateOk

`func (o *ApplicationJsonMergePatch) GetAccessGateOk() (*string, bool)`

GetAccessGateOk returns a tuple with the AccessGate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccessGate

`func (o *ApplicationJsonMergePatch) SetAccessGate(v string)`

SetAccessGate sets AccessGate field to given value.

### HasAccessGate

`func (o *ApplicationJsonMergePatch) HasAccessGate() bool`

HasAccessGate returns a boolean if a field has been set.

### GetCurrentDeployment

`func (o *ApplicationJsonMergePatch) GetCurrentDeployment() string`

GetCurrentDeployment returns the CurrentDeployment field if non-nil, zero value otherwise.

### GetCurrentDeploymentOk

`func (o *ApplicationJsonMergePatch) GetCurrentDeploymentOk() (*string, bool)`

GetCurrentDeploymentOk returns a tuple with the CurrentDeployment field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrentDeployment

`func (o *ApplicationJsonMergePatch) SetCurrentDeployment(v string)`

SetCurrentDeployment sets CurrentDeployment field to given value.

### HasCurrentDeployment

`func (o *ApplicationJsonMergePatch) HasCurrentDeployment() bool`

HasCurrentDeployment returns a boolean if a field has been set.

### SetCurrentDeploymentNil

`func (o *ApplicationJsonMergePatch) SetCurrentDeploymentNil(b bool)`

 SetCurrentDeploymentNil sets the value for CurrentDeployment to be an explicit nil

### UnsetCurrentDeployment
`func (o *ApplicationJsonMergePatch) UnsetCurrentDeployment()`

UnsetCurrentDeployment ensures that no value is present for CurrentDeployment, not even an explicit nil
### GetFirstRunningAt

`func (o *ApplicationJsonMergePatch) GetFirstRunningAt() time.Time`

GetFirstRunningAt returns the FirstRunningAt field if non-nil, zero value otherwise.

### GetFirstRunningAtOk

`func (o *ApplicationJsonMergePatch) GetFirstRunningAtOk() (*time.Time, bool)`

GetFirstRunningAtOk returns a tuple with the FirstRunningAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFirstRunningAt

`func (o *ApplicationJsonMergePatch) SetFirstRunningAt(v time.Time)`

SetFirstRunningAt sets FirstRunningAt field to given value.

### HasFirstRunningAt

`func (o *ApplicationJsonMergePatch) HasFirstRunningAt() bool`

HasFirstRunningAt returns a boolean if a field has been set.

### SetFirstRunningAtNil

`func (o *ApplicationJsonMergePatch) SetFirstRunningAtNil(b bool)`

 SetFirstRunningAtNil sets the value for FirstRunningAt to be an explicit nil

### UnsetFirstRunningAt
`func (o *ApplicationJsonMergePatch) UnsetFirstRunningAt()`

UnsetFirstRunningAt ensures that no value is present for FirstRunningAt, not even an explicit nil
### GetPrimaryDeploymentName

`func (o *ApplicationJsonMergePatch) GetPrimaryDeploymentName() string`

GetPrimaryDeploymentName returns the PrimaryDeploymentName field if non-nil, zero value otherwise.

### GetPrimaryDeploymentNameOk

`func (o *ApplicationJsonMergePatch) GetPrimaryDeploymentNameOk() (*string, bool)`

GetPrimaryDeploymentNameOk returns a tuple with the PrimaryDeploymentName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrimaryDeploymentName

`func (o *ApplicationJsonMergePatch) SetPrimaryDeploymentName(v string)`

SetPrimaryDeploymentName sets PrimaryDeploymentName field to given value.

### HasPrimaryDeploymentName

`func (o *ApplicationJsonMergePatch) HasPrimaryDeploymentName() bool`

HasPrimaryDeploymentName returns a boolean if a field has been set.

### SetPrimaryDeploymentNameNil

`func (o *ApplicationJsonMergePatch) SetPrimaryDeploymentNameNil(b bool)`

 SetPrimaryDeploymentNameNil sets the value for PrimaryDeploymentName to be an explicit nil

### UnsetPrimaryDeploymentName
`func (o *ApplicationJsonMergePatch) UnsetPrimaryDeploymentName()`

UnsetPrimaryDeploymentName ensures that no value is present for PrimaryDeploymentName, not even an explicit nil
### GetLegacyStackBase

`func (o *ApplicationJsonMergePatch) GetLegacyStackBase() string`

GetLegacyStackBase returns the LegacyStackBase field if non-nil, zero value otherwise.

### GetLegacyStackBaseOk

`func (o *ApplicationJsonMergePatch) GetLegacyStackBaseOk() (*string, bool)`

GetLegacyStackBaseOk returns a tuple with the LegacyStackBase field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLegacyStackBase

`func (o *ApplicationJsonMergePatch) SetLegacyStackBase(v string)`

SetLegacyStackBase sets LegacyStackBase field to given value.

### HasLegacyStackBase

`func (o *ApplicationJsonMergePatch) HasLegacyStackBase() bool`

HasLegacyStackBase returns a boolean if a field has been set.

### SetLegacyStackBaseNil

`func (o *ApplicationJsonMergePatch) SetLegacyStackBaseNil(b bool)`

 SetLegacyStackBaseNil sets the value for LegacyStackBase to be an explicit nil

### UnsetLegacyStackBase
`func (o *ApplicationJsonMergePatch) UnsetLegacyStackBase()`

UnsetLegacyStackBase ensures that no value is present for LegacyStackBase, not even an explicit nil
### GetIconKey

`func (o *ApplicationJsonMergePatch) GetIconKey() string`

GetIconKey returns the IconKey field if non-nil, zero value otherwise.

### GetIconKeyOk

`func (o *ApplicationJsonMergePatch) GetIconKeyOk() (*string, bool)`

GetIconKeyOk returns a tuple with the IconKey field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIconKey

`func (o *ApplicationJsonMergePatch) SetIconKey(v string)`

SetIconKey sets IconKey field to given value.

### HasIconKey

`func (o *ApplicationJsonMergePatch) HasIconKey() bool`

HasIconKey returns a boolean if a field has been set.

### SetIconKeyNil

`func (o *ApplicationJsonMergePatch) SetIconKeyNil(b bool)`

 SetIconKeyNil sets the value for IconKey to be an explicit nil

### UnsetIconKey
`func (o *ApplicationJsonMergePatch) UnsetIconKey()`

UnsetIconKey ensures that no value is present for IconKey, not even an explicit nil
### GetIconSource

`func (o *ApplicationJsonMergePatch) GetIconSource() string`

GetIconSource returns the IconSource field if non-nil, zero value otherwise.

### GetIconSourceOk

`func (o *ApplicationJsonMergePatch) GetIconSourceOk() (*string, bool)`

GetIconSourceOk returns a tuple with the IconSource field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIconSource

`func (o *ApplicationJsonMergePatch) SetIconSource(v string)`

SetIconSource sets IconSource field to given value.

### HasIconSource

`func (o *ApplicationJsonMergePatch) HasIconSource() bool`

HasIconSource returns a boolean if a field has been set.

### SetIconSourceNil

`func (o *ApplicationJsonMergePatch) SetIconSourceNil(b bool)`

 SetIconSourceNil sets the value for IconSource to be an explicit nil

### UnsetIconSource
`func (o *ApplicationJsonMergePatch) UnsetIconSource()`

UnsetIconSource ensures that no value is present for IconSource, not even an explicit nil
### GetBuildBucket

`func (o *ApplicationJsonMergePatch) GetBuildBucket() string`

GetBuildBucket returns the BuildBucket field if non-nil, zero value otherwise.

### GetBuildBucketOk

`func (o *ApplicationJsonMergePatch) GetBuildBucketOk() (*string, bool)`

GetBuildBucketOk returns a tuple with the BuildBucket field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBuildBucket

`func (o *ApplicationJsonMergePatch) SetBuildBucket(v string)`

SetBuildBucket sets BuildBucket field to given value.

### HasBuildBucket

`func (o *ApplicationJsonMergePatch) HasBuildBucket() bool`

HasBuildBucket returns a boolean if a field has been set.

### SetBuildBucketNil

`func (o *ApplicationJsonMergePatch) SetBuildBucketNil(b bool)`

 SetBuildBucketNil sets the value for BuildBucket to be an explicit nil

### UnsetBuildBucket
`func (o *ApplicationJsonMergePatch) UnsetBuildBucket()`

UnsetBuildBucket ensures that no value is present for BuildBucket, not even an explicit nil
### GetBuildKeyId

`func (o *ApplicationJsonMergePatch) GetBuildKeyId() string`

GetBuildKeyId returns the BuildKeyId field if non-nil, zero value otherwise.

### GetBuildKeyIdOk

`func (o *ApplicationJsonMergePatch) GetBuildKeyIdOk() (*string, bool)`

GetBuildKeyIdOk returns a tuple with the BuildKeyId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBuildKeyId

`func (o *ApplicationJsonMergePatch) SetBuildKeyId(v string)`

SetBuildKeyId sets BuildKeyId field to given value.

### HasBuildKeyId

`func (o *ApplicationJsonMergePatch) HasBuildKeyId() bool`

HasBuildKeyId returns a boolean if a field has been set.

### SetBuildKeyIdNil

`func (o *ApplicationJsonMergePatch) SetBuildKeyIdNil(b bool)`

 SetBuildKeyIdNil sets the value for BuildKeyId to be an explicit nil

### UnsetBuildKeyId
`func (o *ApplicationJsonMergePatch) UnsetBuildKeyId()`

UnsetBuildKeyId ensures that no value is present for BuildKeyId, not even an explicit nil
### GetDeployments

`func (o *ApplicationJsonMergePatch) GetDeployments() []string`

GetDeployments returns the Deployments field if non-nil, zero value otherwise.

### GetDeploymentsOk

`func (o *ApplicationJsonMergePatch) GetDeploymentsOk() (*[]string, bool)`

GetDeploymentsOk returns a tuple with the Deployments field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeployments

`func (o *ApplicationJsonMergePatch) SetDeployments(v []string)`

SetDeployments sets Deployments field to given value.

### HasDeployments

`func (o *ApplicationJsonMergePatch) HasDeployments() bool`

HasDeployments returns a boolean if a field has been set.

### GetVariables

`func (o *ApplicationJsonMergePatch) GetVariables() []Variable`

GetVariables returns the Variables field if non-nil, zero value otherwise.

### GetVariablesOk

`func (o *ApplicationJsonMergePatch) GetVariablesOk() (*[]Variable, bool)`

GetVariablesOk returns a tuple with the Variables field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVariables

`func (o *ApplicationJsonMergePatch) SetVariables(v []Variable)`

SetVariables sets Variables field to given value.

### HasVariables

`func (o *ApplicationJsonMergePatch) HasVariables() bool`

HasVariables returns a boolean if a field has been set.

### GetPortAllocations

`func (o *ApplicationJsonMergePatch) GetPortAllocations() []PortAllocation`

GetPortAllocations returns the PortAllocations field if non-nil, zero value otherwise.

### GetPortAllocationsOk

`func (o *ApplicationJsonMergePatch) GetPortAllocationsOk() (*[]PortAllocation, bool)`

GetPortAllocationsOk returns a tuple with the PortAllocations field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPortAllocations

`func (o *ApplicationJsonMergePatch) SetPortAllocations(v []PortAllocation)`

SetPortAllocations sets PortAllocations field to given value.

### HasPortAllocations

`func (o *ApplicationJsonMergePatch) HasPortAllocations() bool`

HasPortAllocations returns a boolean if a field has been set.

### GetId

`func (o *ApplicationJsonMergePatch) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *ApplicationJsonMergePatch) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *ApplicationJsonMergePatch) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *ApplicationJsonMergePatch) HasId() bool`

HasId returns a boolean if a field has been set.

### GetDeletedAt

`func (o *ApplicationJsonMergePatch) GetDeletedAt() time.Time`

GetDeletedAt returns the DeletedAt field if non-nil, zero value otherwise.

### GetDeletedAtOk

`func (o *ApplicationJsonMergePatch) GetDeletedAtOk() (*time.Time, bool)`

GetDeletedAtOk returns a tuple with the DeletedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeletedAt

`func (o *ApplicationJsonMergePatch) SetDeletedAt(v time.Time)`

SetDeletedAt sets DeletedAt field to given value.

### HasDeletedAt

`func (o *ApplicationJsonMergePatch) HasDeletedAt() bool`

HasDeletedAt returns a boolean if a field has been set.

### SetDeletedAtNil

`func (o *ApplicationJsonMergePatch) SetDeletedAtNil(b bool)`

 SetDeletedAtNil sets the value for DeletedAt to be an explicit nil

### UnsetDeletedAt
`func (o *ApplicationJsonMergePatch) UnsetDeletedAt()`

UnsetDeletedAt ensures that no value is present for DeletedAt, not even an explicit nil
### GetCreatedAt

`func (o *ApplicationJsonMergePatch) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *ApplicationJsonMergePatch) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *ApplicationJsonMergePatch) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *ApplicationJsonMergePatch) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *ApplicationJsonMergePatch) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *ApplicationJsonMergePatch) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *ApplicationJsonMergePatch) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *ApplicationJsonMergePatch) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.

### SetUpdatedAtNil

`func (o *ApplicationJsonMergePatch) SetUpdatedAtNil(b bool)`

 SetUpdatedAtNil sets the value for UpdatedAt to be an explicit nil

### UnsetUpdatedAt
`func (o *ApplicationJsonMergePatch) UnsetUpdatedAt()`

UnsetUpdatedAt ensures that no value is present for UpdatedAt, not even an explicit nil
### GetBuildCredential

`func (o *ApplicationJsonMergePatch) GetBuildCredential() SealedSecret`

GetBuildCredential returns the BuildCredential field if non-nil, zero value otherwise.

### GetBuildCredentialOk

`func (o *ApplicationJsonMergePatch) GetBuildCredentialOk() (*SealedSecret, bool)`

GetBuildCredentialOk returns a tuple with the BuildCredential field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBuildCredential

`func (o *ApplicationJsonMergePatch) SetBuildCredential(v SealedSecret)`

SetBuildCredential sets BuildCredential field to given value.

### HasBuildCredential

`func (o *ApplicationJsonMergePatch) HasBuildCredential() bool`

HasBuildCredential returns a boolean if a field has been set.

### GetAccessGateCredential

`func (o *ApplicationJsonMergePatch) GetAccessGateCredential() SealedSecret`

GetAccessGateCredential returns the AccessGateCredential field if non-nil, zero value otherwise.

### GetAccessGateCredentialOk

`func (o *ApplicationJsonMergePatch) GetAccessGateCredentialOk() (*SealedSecret, bool)`

GetAccessGateCredentialOk returns a tuple with the AccessGateCredential field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccessGateCredential

`func (o *ApplicationJsonMergePatch) SetAccessGateCredential(v SealedSecret)`

SetAccessGateCredential sets AccessGateCredential field to given value.

### HasAccessGateCredential

`func (o *ApplicationJsonMergePatch) HasAccessGateCredential() bool`

HasAccessGateCredential returns a boolean if a field has been set.

### SetAccessGateCredentialNil

`func (o *ApplicationJsonMergePatch) SetAccessGateCredentialNil(b bool)`

 SetAccessGateCredentialNil sets the value for AccessGateCredential to be an explicit nil

### UnsetAccessGateCredential
`func (o *ApplicationJsonMergePatch) UnsetAccessGateCredential()`

UnsetAccessGateCredential ensures that no value is present for AccessGateCredential, not even an explicit nil
### GetIcon

`func (o *ApplicationJsonMergePatch) GetIcon() string`

GetIcon returns the Icon field if non-nil, zero value otherwise.

### GetIconOk

`func (o *ApplicationJsonMergePatch) GetIconOk() (*string, bool)`

GetIconOk returns a tuple with the Icon field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIcon

`func (o *ApplicationJsonMergePatch) SetIcon(v string)`

SetIcon sets Icon field to given value.

### HasIcon

`func (o *ApplicationJsonMergePatch) HasIcon() bool`

HasIcon returns a boolean if a field has been set.

### SetIconNil

`func (o *ApplicationJsonMergePatch) SetIconNil(b bool)`

 SetIconNil sets the value for Icon to be an explicit nil

### UnsetIcon
`func (o *ApplicationJsonMergePatch) UnsetIcon()`

UnsetIcon ensures that no value is present for Icon, not even an explicit nil
### GetOperatorChosenIcon

`func (o *ApplicationJsonMergePatch) GetOperatorChosenIcon() bool`

GetOperatorChosenIcon returns the OperatorChosenIcon field if non-nil, zero value otherwise.

### GetOperatorChosenIconOk

`func (o *ApplicationJsonMergePatch) GetOperatorChosenIconOk() (*bool, bool)`

GetOperatorChosenIconOk returns a tuple with the OperatorChosenIcon field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOperatorChosenIcon

`func (o *ApplicationJsonMergePatch) SetOperatorChosenIcon(v bool)`

SetOperatorChosenIcon sets OperatorChosenIcon field to given value.

### HasOperatorChosenIcon

`func (o *ApplicationJsonMergePatch) HasOperatorChosenIcon() bool`

HasOperatorChosenIcon returns a boolean if a field has been set.

### GetIconVersion

`func (o *ApplicationJsonMergePatch) GetIconVersion() string`

GetIconVersion returns the IconVersion field if non-nil, zero value otherwise.

### GetIconVersionOk

`func (o *ApplicationJsonMergePatch) GetIconVersionOk() (*string, bool)`

GetIconVersionOk returns a tuple with the IconVersion field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIconVersion

`func (o *ApplicationJsonMergePatch) SetIconVersion(v string)`

SetIconVersion sets IconVersion field to given value.

### HasIconVersion

`func (o *ApplicationJsonMergePatch) HasIconVersion() bool`

HasIconVersion returns a boolean if a field has been set.

### SetIconVersionNil

`func (o *ApplicationJsonMergePatch) SetIconVersionNil(b bool)`

 SetIconVersionNil sets the value for IconVersion to be an explicit nil

### UnsetIconVersion
`func (o *ApplicationJsonMergePatch) UnsetIconVersion()`

UnsetIconVersion ensures that no value is present for IconVersion, not even an explicit nil
### GetDeleted

`func (o *ApplicationJsonMergePatch) GetDeleted() bool`

GetDeleted returns the Deleted field if non-nil, zero value otherwise.

### GetDeletedOk

`func (o *ApplicationJsonMergePatch) GetDeletedOk() (*bool, bool)`

GetDeletedOk returns a tuple with the Deleted field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeleted

`func (o *ApplicationJsonMergePatch) SetDeleted(v bool)`

SetDeleted sets Deleted field to given value.

### HasDeleted

`func (o *ApplicationJsonMergePatch) HasDeleted() bool`

HasDeleted returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


