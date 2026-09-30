# Application

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
**PoolDomain** | Pointer to **NullableString** | Which of the app-hosting pool domains (&#x60;snarl.dev&#x60;, &#x60;starshp.dev&#x60; — {@see \\App\\Service\\Ingress\\DomainPoolAssigner}) this application&#39;s deployments answer under, in addition to &#x60;someones.computer&#x60;. Null until its first successful deploy assigns one, and never moved after — a redeploy must resolve to the same pool hostnames it already handed out, the same reason {@see $firstRunningAt} is a latch rather than a rolling value. | [optional] [readonly] 
**PoolLabel** | Pointer to **NullableString** | Overrides the auto-slugified application name in the pool-domain hostname&#39;s &#x60;{service}.{deployment}.{label}.{poolDomain}&#x60; shape ({@see \\App\\Service\\Ingress\\PoolHostname}) — null for every application that has not opted into a custom one, which is what {@see poolLabelOrSlug()} falls back to. Unique platform-wide, the same reasoning as {@see \\App\\Entity\\Domain::$name}: two applications sharing a label would collide on the exact same DNS name the moment they also shared a deployment and service name. | [optional] 
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

### NewApplication

`func NewApplication() *Application`

NewApplication instantiates a new Application object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewApplicationWithDefaults

`func NewApplicationWithDefaults() *Application`

NewApplicationWithDefaults instantiates a new Application object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOrganization

`func (o *Application) GetOrganization() string`

GetOrganization returns the Organization field if non-nil, zero value otherwise.

### GetOrganizationOk

`func (o *Application) GetOrganizationOk() (*string, bool)`

GetOrganizationOk returns a tuple with the Organization field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrganization

`func (o *Application) SetOrganization(v string)`

SetOrganization sets Organization field to given value.

### HasOrganization

`func (o *Application) HasOrganization() bool`

HasOrganization returns a boolean if a field has been set.

### GetSlug

`func (o *Application) GetSlug() string`

GetSlug returns the Slug field if non-nil, zero value otherwise.

### GetSlugOk

`func (o *Application) GetSlugOk() (*string, bool)`

GetSlugOk returns a tuple with the Slug field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSlug

`func (o *Application) SetSlug(v string)`

SetSlug sets Slug field to given value.

### HasSlug

`func (o *Application) HasSlug() bool`

HasSlug returns a boolean if a field has been set.

### GetName

`func (o *Application) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *Application) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *Application) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *Application) HasName() bool`

HasName returns a boolean if a field has been set.

### GetIsolationLevel

`func (o *Application) GetIsolationLevel() string`

GetIsolationLevel returns the IsolationLevel field if non-nil, zero value otherwise.

### GetIsolationLevelOk

`func (o *Application) GetIsolationLevelOk() (*string, bool)`

GetIsolationLevelOk returns a tuple with the IsolationLevel field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsolationLevel

`func (o *Application) SetIsolationLevel(v string)`

SetIsolationLevel sets IsolationLevel field to given value.

### HasIsolationLevel

`func (o *Application) HasIsolationLevel() bool`

HasIsolationLevel returns a boolean if a field has been set.

### GetServiceAdoption

`func (o *Application) GetServiceAdoption() string`

GetServiceAdoption returns the ServiceAdoption field if non-nil, zero value otherwise.

### GetServiceAdoptionOk

`func (o *Application) GetServiceAdoptionOk() (*string, bool)`

GetServiceAdoptionOk returns a tuple with the ServiceAdoption field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServiceAdoption

`func (o *Application) SetServiceAdoption(v string)`

SetServiceAdoption sets ServiceAdoption field to given value.

### HasServiceAdoption

`func (o *Application) HasServiceAdoption() bool`

HasServiceAdoption returns a boolean if a field has been set.

### GetAccessGate

`func (o *Application) GetAccessGate() string`

GetAccessGate returns the AccessGate field if non-nil, zero value otherwise.

### GetAccessGateOk

`func (o *Application) GetAccessGateOk() (*string, bool)`

GetAccessGateOk returns a tuple with the AccessGate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccessGate

`func (o *Application) SetAccessGate(v string)`

SetAccessGate sets AccessGate field to given value.

### HasAccessGate

`func (o *Application) HasAccessGate() bool`

HasAccessGate returns a boolean if a field has been set.

### GetCurrentDeployment

`func (o *Application) GetCurrentDeployment() string`

GetCurrentDeployment returns the CurrentDeployment field if non-nil, zero value otherwise.

### GetCurrentDeploymentOk

`func (o *Application) GetCurrentDeploymentOk() (*string, bool)`

GetCurrentDeploymentOk returns a tuple with the CurrentDeployment field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrentDeployment

`func (o *Application) SetCurrentDeployment(v string)`

SetCurrentDeployment sets CurrentDeployment field to given value.

### HasCurrentDeployment

`func (o *Application) HasCurrentDeployment() bool`

HasCurrentDeployment returns a boolean if a field has been set.

### SetCurrentDeploymentNil

`func (o *Application) SetCurrentDeploymentNil(b bool)`

 SetCurrentDeploymentNil sets the value for CurrentDeployment to be an explicit nil

### UnsetCurrentDeployment
`func (o *Application) UnsetCurrentDeployment()`

UnsetCurrentDeployment ensures that no value is present for CurrentDeployment, not even an explicit nil
### GetFirstRunningAt

`func (o *Application) GetFirstRunningAt() time.Time`

GetFirstRunningAt returns the FirstRunningAt field if non-nil, zero value otherwise.

### GetFirstRunningAtOk

`func (o *Application) GetFirstRunningAtOk() (*time.Time, bool)`

GetFirstRunningAtOk returns a tuple with the FirstRunningAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFirstRunningAt

`func (o *Application) SetFirstRunningAt(v time.Time)`

SetFirstRunningAt sets FirstRunningAt field to given value.

### HasFirstRunningAt

`func (o *Application) HasFirstRunningAt() bool`

HasFirstRunningAt returns a boolean if a field has been set.

### SetFirstRunningAtNil

`func (o *Application) SetFirstRunningAtNil(b bool)`

 SetFirstRunningAtNil sets the value for FirstRunningAt to be an explicit nil

### UnsetFirstRunningAt
`func (o *Application) UnsetFirstRunningAt()`

UnsetFirstRunningAt ensures that no value is present for FirstRunningAt, not even an explicit nil
### GetPrimaryDeploymentName

`func (o *Application) GetPrimaryDeploymentName() string`

GetPrimaryDeploymentName returns the PrimaryDeploymentName field if non-nil, zero value otherwise.

### GetPrimaryDeploymentNameOk

`func (o *Application) GetPrimaryDeploymentNameOk() (*string, bool)`

GetPrimaryDeploymentNameOk returns a tuple with the PrimaryDeploymentName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrimaryDeploymentName

`func (o *Application) SetPrimaryDeploymentName(v string)`

SetPrimaryDeploymentName sets PrimaryDeploymentName field to given value.

### HasPrimaryDeploymentName

`func (o *Application) HasPrimaryDeploymentName() bool`

HasPrimaryDeploymentName returns a boolean if a field has been set.

### SetPrimaryDeploymentNameNil

`func (o *Application) SetPrimaryDeploymentNameNil(b bool)`

 SetPrimaryDeploymentNameNil sets the value for PrimaryDeploymentName to be an explicit nil

### UnsetPrimaryDeploymentName
`func (o *Application) UnsetPrimaryDeploymentName()`

UnsetPrimaryDeploymentName ensures that no value is present for PrimaryDeploymentName, not even an explicit nil
### GetLegacyStackBase

`func (o *Application) GetLegacyStackBase() string`

GetLegacyStackBase returns the LegacyStackBase field if non-nil, zero value otherwise.

### GetLegacyStackBaseOk

`func (o *Application) GetLegacyStackBaseOk() (*string, bool)`

GetLegacyStackBaseOk returns a tuple with the LegacyStackBase field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLegacyStackBase

`func (o *Application) SetLegacyStackBase(v string)`

SetLegacyStackBase sets LegacyStackBase field to given value.

### HasLegacyStackBase

`func (o *Application) HasLegacyStackBase() bool`

HasLegacyStackBase returns a boolean if a field has been set.

### SetLegacyStackBaseNil

`func (o *Application) SetLegacyStackBaseNil(b bool)`

 SetLegacyStackBaseNil sets the value for LegacyStackBase to be an explicit nil

### UnsetLegacyStackBase
`func (o *Application) UnsetLegacyStackBase()`

UnsetLegacyStackBase ensures that no value is present for LegacyStackBase, not even an explicit nil
### GetIconKey

`func (o *Application) GetIconKey() string`

GetIconKey returns the IconKey field if non-nil, zero value otherwise.

### GetIconKeyOk

`func (o *Application) GetIconKeyOk() (*string, bool)`

GetIconKeyOk returns a tuple with the IconKey field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIconKey

`func (o *Application) SetIconKey(v string)`

SetIconKey sets IconKey field to given value.

### HasIconKey

`func (o *Application) HasIconKey() bool`

HasIconKey returns a boolean if a field has been set.

### SetIconKeyNil

`func (o *Application) SetIconKeyNil(b bool)`

 SetIconKeyNil sets the value for IconKey to be an explicit nil

### UnsetIconKey
`func (o *Application) UnsetIconKey()`

UnsetIconKey ensures that no value is present for IconKey, not even an explicit nil
### GetIconSource

`func (o *Application) GetIconSource() string`

GetIconSource returns the IconSource field if non-nil, zero value otherwise.

### GetIconSourceOk

`func (o *Application) GetIconSourceOk() (*string, bool)`

GetIconSourceOk returns a tuple with the IconSource field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIconSource

`func (o *Application) SetIconSource(v string)`

SetIconSource sets IconSource field to given value.

### HasIconSource

`func (o *Application) HasIconSource() bool`

HasIconSource returns a boolean if a field has been set.

### SetIconSourceNil

`func (o *Application) SetIconSourceNil(b bool)`

 SetIconSourceNil sets the value for IconSource to be an explicit nil

### UnsetIconSource
`func (o *Application) UnsetIconSource()`

UnsetIconSource ensures that no value is present for IconSource, not even an explicit nil
### GetBuildBucket

`func (o *Application) GetBuildBucket() string`

GetBuildBucket returns the BuildBucket field if non-nil, zero value otherwise.

### GetBuildBucketOk

`func (o *Application) GetBuildBucketOk() (*string, bool)`

GetBuildBucketOk returns a tuple with the BuildBucket field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBuildBucket

`func (o *Application) SetBuildBucket(v string)`

SetBuildBucket sets BuildBucket field to given value.

### HasBuildBucket

`func (o *Application) HasBuildBucket() bool`

HasBuildBucket returns a boolean if a field has been set.

### SetBuildBucketNil

`func (o *Application) SetBuildBucketNil(b bool)`

 SetBuildBucketNil sets the value for BuildBucket to be an explicit nil

### UnsetBuildBucket
`func (o *Application) UnsetBuildBucket()`

UnsetBuildBucket ensures that no value is present for BuildBucket, not even an explicit nil
### GetBuildKeyId

`func (o *Application) GetBuildKeyId() string`

GetBuildKeyId returns the BuildKeyId field if non-nil, zero value otherwise.

### GetBuildKeyIdOk

`func (o *Application) GetBuildKeyIdOk() (*string, bool)`

GetBuildKeyIdOk returns a tuple with the BuildKeyId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBuildKeyId

`func (o *Application) SetBuildKeyId(v string)`

SetBuildKeyId sets BuildKeyId field to given value.

### HasBuildKeyId

`func (o *Application) HasBuildKeyId() bool`

HasBuildKeyId returns a boolean if a field has been set.

### SetBuildKeyIdNil

`func (o *Application) SetBuildKeyIdNil(b bool)`

 SetBuildKeyIdNil sets the value for BuildKeyId to be an explicit nil

### UnsetBuildKeyId
`func (o *Application) UnsetBuildKeyId()`

UnsetBuildKeyId ensures that no value is present for BuildKeyId, not even an explicit nil
### GetDeployments

`func (o *Application) GetDeployments() []string`

GetDeployments returns the Deployments field if non-nil, zero value otherwise.

### GetDeploymentsOk

`func (o *Application) GetDeploymentsOk() (*[]string, bool)`

GetDeploymentsOk returns a tuple with the Deployments field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeployments

`func (o *Application) SetDeployments(v []string)`

SetDeployments sets Deployments field to given value.

### HasDeployments

`func (o *Application) HasDeployments() bool`

HasDeployments returns a boolean if a field has been set.

### GetVariables

`func (o *Application) GetVariables() []Variable`

GetVariables returns the Variables field if non-nil, zero value otherwise.

### GetVariablesOk

`func (o *Application) GetVariablesOk() (*[]Variable, bool)`

GetVariablesOk returns a tuple with the Variables field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVariables

`func (o *Application) SetVariables(v []Variable)`

SetVariables sets Variables field to given value.

### HasVariables

`func (o *Application) HasVariables() bool`

HasVariables returns a boolean if a field has been set.

### GetPortAllocations

`func (o *Application) GetPortAllocations() []PortAllocation`

GetPortAllocations returns the PortAllocations field if non-nil, zero value otherwise.

### GetPortAllocationsOk

`func (o *Application) GetPortAllocationsOk() (*[]PortAllocation, bool)`

GetPortAllocationsOk returns a tuple with the PortAllocations field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPortAllocations

`func (o *Application) SetPortAllocations(v []PortAllocation)`

SetPortAllocations sets PortAllocations field to given value.

### HasPortAllocations

`func (o *Application) HasPortAllocations() bool`

HasPortAllocations returns a boolean if a field has been set.

### GetPoolDomain

`func (o *Application) GetPoolDomain() string`

GetPoolDomain returns the PoolDomain field if non-nil, zero value otherwise.

### GetPoolDomainOk

`func (o *Application) GetPoolDomainOk() (*string, bool)`

GetPoolDomainOk returns a tuple with the PoolDomain field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPoolDomain

`func (o *Application) SetPoolDomain(v string)`

SetPoolDomain sets PoolDomain field to given value.

### HasPoolDomain

`func (o *Application) HasPoolDomain() bool`

HasPoolDomain returns a boolean if a field has been set.

### SetPoolDomainNil

`func (o *Application) SetPoolDomainNil(b bool)`

 SetPoolDomainNil sets the value for PoolDomain to be an explicit nil

### UnsetPoolDomain
`func (o *Application) UnsetPoolDomain()`

UnsetPoolDomain ensures that no value is present for PoolDomain, not even an explicit nil
### GetPoolLabel

`func (o *Application) GetPoolLabel() string`

GetPoolLabel returns the PoolLabel field if non-nil, zero value otherwise.

### GetPoolLabelOk

`func (o *Application) GetPoolLabelOk() (*string, bool)`

GetPoolLabelOk returns a tuple with the PoolLabel field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPoolLabel

`func (o *Application) SetPoolLabel(v string)`

SetPoolLabel sets PoolLabel field to given value.

### HasPoolLabel

`func (o *Application) HasPoolLabel() bool`

HasPoolLabel returns a boolean if a field has been set.

### SetPoolLabelNil

`func (o *Application) SetPoolLabelNil(b bool)`

 SetPoolLabelNil sets the value for PoolLabel to be an explicit nil

### UnsetPoolLabel
`func (o *Application) UnsetPoolLabel()`

UnsetPoolLabel ensures that no value is present for PoolLabel, not even an explicit nil
### GetId

`func (o *Application) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *Application) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *Application) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *Application) HasId() bool`

HasId returns a boolean if a field has been set.

### GetDeletedAt

`func (o *Application) GetDeletedAt() time.Time`

GetDeletedAt returns the DeletedAt field if non-nil, zero value otherwise.

### GetDeletedAtOk

`func (o *Application) GetDeletedAtOk() (*time.Time, bool)`

GetDeletedAtOk returns a tuple with the DeletedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeletedAt

`func (o *Application) SetDeletedAt(v time.Time)`

SetDeletedAt sets DeletedAt field to given value.

### HasDeletedAt

`func (o *Application) HasDeletedAt() bool`

HasDeletedAt returns a boolean if a field has been set.

### SetDeletedAtNil

`func (o *Application) SetDeletedAtNil(b bool)`

 SetDeletedAtNil sets the value for DeletedAt to be an explicit nil

### UnsetDeletedAt
`func (o *Application) UnsetDeletedAt()`

UnsetDeletedAt ensures that no value is present for DeletedAt, not even an explicit nil
### GetCreatedAt

`func (o *Application) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *Application) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *Application) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *Application) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *Application) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *Application) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *Application) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *Application) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.

### SetUpdatedAtNil

`func (o *Application) SetUpdatedAtNil(b bool)`

 SetUpdatedAtNil sets the value for UpdatedAt to be an explicit nil

### UnsetUpdatedAt
`func (o *Application) UnsetUpdatedAt()`

UnsetUpdatedAt ensures that no value is present for UpdatedAt, not even an explicit nil
### GetBuildCredential

`func (o *Application) GetBuildCredential() SealedSecret`

GetBuildCredential returns the BuildCredential field if non-nil, zero value otherwise.

### GetBuildCredentialOk

`func (o *Application) GetBuildCredentialOk() (*SealedSecret, bool)`

GetBuildCredentialOk returns a tuple with the BuildCredential field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBuildCredential

`func (o *Application) SetBuildCredential(v SealedSecret)`

SetBuildCredential sets BuildCredential field to given value.

### HasBuildCredential

`func (o *Application) HasBuildCredential() bool`

HasBuildCredential returns a boolean if a field has been set.

### GetAccessGateCredential

`func (o *Application) GetAccessGateCredential() SealedSecret`

GetAccessGateCredential returns the AccessGateCredential field if non-nil, zero value otherwise.

### GetAccessGateCredentialOk

`func (o *Application) GetAccessGateCredentialOk() (*SealedSecret, bool)`

GetAccessGateCredentialOk returns a tuple with the AccessGateCredential field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccessGateCredential

`func (o *Application) SetAccessGateCredential(v SealedSecret)`

SetAccessGateCredential sets AccessGateCredential field to given value.

### HasAccessGateCredential

`func (o *Application) HasAccessGateCredential() bool`

HasAccessGateCredential returns a boolean if a field has been set.

### SetAccessGateCredentialNil

`func (o *Application) SetAccessGateCredentialNil(b bool)`

 SetAccessGateCredentialNil sets the value for AccessGateCredential to be an explicit nil

### UnsetAccessGateCredential
`func (o *Application) UnsetAccessGateCredential()`

UnsetAccessGateCredential ensures that no value is present for AccessGateCredential, not even an explicit nil
### GetIcon

`func (o *Application) GetIcon() string`

GetIcon returns the Icon field if non-nil, zero value otherwise.

### GetIconOk

`func (o *Application) GetIconOk() (*string, bool)`

GetIconOk returns a tuple with the Icon field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIcon

`func (o *Application) SetIcon(v string)`

SetIcon sets Icon field to given value.

### HasIcon

`func (o *Application) HasIcon() bool`

HasIcon returns a boolean if a field has been set.

### SetIconNil

`func (o *Application) SetIconNil(b bool)`

 SetIconNil sets the value for Icon to be an explicit nil

### UnsetIcon
`func (o *Application) UnsetIcon()`

UnsetIcon ensures that no value is present for Icon, not even an explicit nil
### GetOperatorChosenIcon

`func (o *Application) GetOperatorChosenIcon() bool`

GetOperatorChosenIcon returns the OperatorChosenIcon field if non-nil, zero value otherwise.

### GetOperatorChosenIconOk

`func (o *Application) GetOperatorChosenIconOk() (*bool, bool)`

GetOperatorChosenIconOk returns a tuple with the OperatorChosenIcon field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOperatorChosenIcon

`func (o *Application) SetOperatorChosenIcon(v bool)`

SetOperatorChosenIcon sets OperatorChosenIcon field to given value.

### HasOperatorChosenIcon

`func (o *Application) HasOperatorChosenIcon() bool`

HasOperatorChosenIcon returns a boolean if a field has been set.

### GetIconVersion

`func (o *Application) GetIconVersion() string`

GetIconVersion returns the IconVersion field if non-nil, zero value otherwise.

### GetIconVersionOk

`func (o *Application) GetIconVersionOk() (*string, bool)`

GetIconVersionOk returns a tuple with the IconVersion field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIconVersion

`func (o *Application) SetIconVersion(v string)`

SetIconVersion sets IconVersion field to given value.

### HasIconVersion

`func (o *Application) HasIconVersion() bool`

HasIconVersion returns a boolean if a field has been set.

### SetIconVersionNil

`func (o *Application) SetIconVersionNil(b bool)`

 SetIconVersionNil sets the value for IconVersion to be an explicit nil

### UnsetIconVersion
`func (o *Application) UnsetIconVersion()`

UnsetIconVersion ensures that no value is present for IconVersion, not even an explicit nil
### GetDeleted

`func (o *Application) GetDeleted() bool`

GetDeleted returns the Deleted field if non-nil, zero value otherwise.

### GetDeletedOk

`func (o *Application) GetDeletedOk() (*bool, bool)`

GetDeletedOk returns a tuple with the Deleted field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeleted

`func (o *Application) SetDeleted(v bool)`

SetDeleted sets Deleted field to given value.

### HasDeleted

`func (o *Application) HasDeleted() bool`

HasDeleted returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


