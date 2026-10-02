# ManagedService

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Organization** | Pointer to **string** |  | [optional] 
**Slug** | Pointer to **string** |  | [optional] 
**Kind** | Pointer to **string** | The catalogue entry the tenant picked, as &#x60;(kind, majorVersion)&#x60;. | [optional] 
**MajorVersion** | Pointer to **string** |  | [optional] 
**Instance** | Pointer to [**NullableServiceInstance**](ServiceInstance.md) |  | [optional] 
**BackingName** | Pointer to **string** | What the object is actually called inside the engine — &#x60;acme_hearth_db&#x60; for a database, &#x60;acme-hearth-media&#x60; for a bucket. | [optional] 
**ExternalKeyId** | Pointer to **NullableString** | A bucket&#39;s access key id — the non-secret half of a Garage key, paired with {@see $credentialCiphertext}&#39;s sealed secret access key. Null for every database kind, which has no such pair: its one credential is a password, sealed whole into the four columns above. | [optional] 
**QuotaBytes** | Pointer to [**NullableManagedServiceQuotaBytes**](ManagedServiceQuotaBytes.md) |  | [optional] 
**PoolSizeOverride** | Pointer to **NullableInt32** | Operator override of the backend pool size — how many connections each of this service&#39;s proxies holds open to the engine (&#x60;default_pool_size&#x60; on pgbouncer, &#x60;mysql_servers.max_connections&#x60; on ProxySQL). Null means the generator&#39;s own default; the effective number is always asked of the generator ({@see \\App\\Service\\ManagedService\\Sidecar\\SidecarConfigGenerator::poolSizeFor()}), never read from here directly, so the default lives in one place. | [optional] 
**ClientConnectionsOverride** | Pointer to **NullableInt32** | Operator override of the client-side connection ceiling — how many client connections each proxy will accept (&#x60;max_client_conn&#x60; on pgbouncer, &#x60;mysql-max_connections&#x60; on ProxySQL). Same null-means-default and ask-the-generator contract as {@see $poolSizeOverride}. | [optional] 
**State** | Pointer to **string** |  | [optional] [default to "requested"]
**FailureReason** | Pointer to **NullableString** |  | [optional] [readonly] 
**SuspensionReason** | Pointer to **NullableString** | Why the service is suspended, or null when a state of &#x60;suspended&#x60; was put there by an operator or the tenant rather than by the platform. | [optional] 
**UsageBytes** | Pointer to [**NullableManagedServiceUsageBytes**](ManagedServiceUsageBytes.md) |  | [optional] 
**UsageSampledAt** | Pointer to **NullableTime** |  | [optional] [readonly] 
**LastLoadMillis** | Pointer to [**NullableManagedServiceLastLoadMillis**](ManagedServiceLastLoadMillis.md) |  | [optional] 
**LastLoadSampledAt** | Pointer to **NullableTime** |  | [optional] [readonly] 
**PendingLoadMillis** | Pointer to [**ManagedServicePendingLoadMillis**](ManagedServicePendingLoadMillis.md) |  | [optional] 
**Bindings** | Pointer to **[]string** |  | [optional] 
**Id** | Pointer to **string** |  | [optional] [readonly] 
**DeletedAt** | Pointer to **NullableTime** |  | [optional] [readonly] 
**CreatedAt** | Pointer to **time.Time** |  | [optional] [readonly] 
**UpdatedAt** | Pointer to **NullableTime** |  | [optional] [readonly] 
**CatalogueEntry** | Pointer to **string** | &#x60;postgres 17&#x60;, &#x60;mysql 8.0&#x60; — the catalogue entry, as one string. | [optional] [readonly] 
**Credential** | Pointer to [**SealedSecret**](SealedSecret.md) |  | [optional] 
**Available** | Pointer to **bool** |  | [optional] [readonly] 
**Deleted** | Pointer to **bool** |  | [optional] [readonly] 

## Methods

### NewManagedService

`func NewManagedService() *ManagedService`

NewManagedService instantiates a new ManagedService object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewManagedServiceWithDefaults

`func NewManagedServiceWithDefaults() *ManagedService`

NewManagedServiceWithDefaults instantiates a new ManagedService object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOrganization

`func (o *ManagedService) GetOrganization() string`

GetOrganization returns the Organization field if non-nil, zero value otherwise.

### GetOrganizationOk

`func (o *ManagedService) GetOrganizationOk() (*string, bool)`

GetOrganizationOk returns a tuple with the Organization field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrganization

`func (o *ManagedService) SetOrganization(v string)`

SetOrganization sets Organization field to given value.

### HasOrganization

`func (o *ManagedService) HasOrganization() bool`

HasOrganization returns a boolean if a field has been set.

### GetSlug

`func (o *ManagedService) GetSlug() string`

GetSlug returns the Slug field if non-nil, zero value otherwise.

### GetSlugOk

`func (o *ManagedService) GetSlugOk() (*string, bool)`

GetSlugOk returns a tuple with the Slug field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSlug

`func (o *ManagedService) SetSlug(v string)`

SetSlug sets Slug field to given value.

### HasSlug

`func (o *ManagedService) HasSlug() bool`

HasSlug returns a boolean if a field has been set.

### GetKind

`func (o *ManagedService) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *ManagedService) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *ManagedService) SetKind(v string)`

SetKind sets Kind field to given value.

### HasKind

`func (o *ManagedService) HasKind() bool`

HasKind returns a boolean if a field has been set.

### GetMajorVersion

`func (o *ManagedService) GetMajorVersion() string`

GetMajorVersion returns the MajorVersion field if non-nil, zero value otherwise.

### GetMajorVersionOk

`func (o *ManagedService) GetMajorVersionOk() (*string, bool)`

GetMajorVersionOk returns a tuple with the MajorVersion field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMajorVersion

`func (o *ManagedService) SetMajorVersion(v string)`

SetMajorVersion sets MajorVersion field to given value.

### HasMajorVersion

`func (o *ManagedService) HasMajorVersion() bool`

HasMajorVersion returns a boolean if a field has been set.

### GetInstance

`func (o *ManagedService) GetInstance() ServiceInstance`

GetInstance returns the Instance field if non-nil, zero value otherwise.

### GetInstanceOk

`func (o *ManagedService) GetInstanceOk() (*ServiceInstance, bool)`

GetInstanceOk returns a tuple with the Instance field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstance

`func (o *ManagedService) SetInstance(v ServiceInstance)`

SetInstance sets Instance field to given value.

### HasInstance

`func (o *ManagedService) HasInstance() bool`

HasInstance returns a boolean if a field has been set.

### SetInstanceNil

`func (o *ManagedService) SetInstanceNil(b bool)`

 SetInstanceNil sets the value for Instance to be an explicit nil

### UnsetInstance
`func (o *ManagedService) UnsetInstance()`

UnsetInstance ensures that no value is present for Instance, not even an explicit nil
### GetBackingName

`func (o *ManagedService) GetBackingName() string`

GetBackingName returns the BackingName field if non-nil, zero value otherwise.

### GetBackingNameOk

`func (o *ManagedService) GetBackingNameOk() (*string, bool)`

GetBackingNameOk returns a tuple with the BackingName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBackingName

`func (o *ManagedService) SetBackingName(v string)`

SetBackingName sets BackingName field to given value.

### HasBackingName

`func (o *ManagedService) HasBackingName() bool`

HasBackingName returns a boolean if a field has been set.

### GetExternalKeyId

`func (o *ManagedService) GetExternalKeyId() string`

GetExternalKeyId returns the ExternalKeyId field if non-nil, zero value otherwise.

### GetExternalKeyIdOk

`func (o *ManagedService) GetExternalKeyIdOk() (*string, bool)`

GetExternalKeyIdOk returns a tuple with the ExternalKeyId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExternalKeyId

`func (o *ManagedService) SetExternalKeyId(v string)`

SetExternalKeyId sets ExternalKeyId field to given value.

### HasExternalKeyId

`func (o *ManagedService) HasExternalKeyId() bool`

HasExternalKeyId returns a boolean if a field has been set.

### SetExternalKeyIdNil

`func (o *ManagedService) SetExternalKeyIdNil(b bool)`

 SetExternalKeyIdNil sets the value for ExternalKeyId to be an explicit nil

### UnsetExternalKeyId
`func (o *ManagedService) UnsetExternalKeyId()`

UnsetExternalKeyId ensures that no value is present for ExternalKeyId, not even an explicit nil
### GetQuotaBytes

`func (o *ManagedService) GetQuotaBytes() ManagedServiceQuotaBytes`

GetQuotaBytes returns the QuotaBytes field if non-nil, zero value otherwise.

### GetQuotaBytesOk

`func (o *ManagedService) GetQuotaBytesOk() (*ManagedServiceQuotaBytes, bool)`

GetQuotaBytesOk returns a tuple with the QuotaBytes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQuotaBytes

`func (o *ManagedService) SetQuotaBytes(v ManagedServiceQuotaBytes)`

SetQuotaBytes sets QuotaBytes field to given value.

### HasQuotaBytes

`func (o *ManagedService) HasQuotaBytes() bool`

HasQuotaBytes returns a boolean if a field has been set.

### SetQuotaBytesNil

`func (o *ManagedService) SetQuotaBytesNil(b bool)`

 SetQuotaBytesNil sets the value for QuotaBytes to be an explicit nil

### UnsetQuotaBytes
`func (o *ManagedService) UnsetQuotaBytes()`

UnsetQuotaBytes ensures that no value is present for QuotaBytes, not even an explicit nil
### GetPoolSizeOverride

`func (o *ManagedService) GetPoolSizeOverride() int32`

GetPoolSizeOverride returns the PoolSizeOverride field if non-nil, zero value otherwise.

### GetPoolSizeOverrideOk

`func (o *ManagedService) GetPoolSizeOverrideOk() (*int32, bool)`

GetPoolSizeOverrideOk returns a tuple with the PoolSizeOverride field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPoolSizeOverride

`func (o *ManagedService) SetPoolSizeOverride(v int32)`

SetPoolSizeOverride sets PoolSizeOverride field to given value.

### HasPoolSizeOverride

`func (o *ManagedService) HasPoolSizeOverride() bool`

HasPoolSizeOverride returns a boolean if a field has been set.

### SetPoolSizeOverrideNil

`func (o *ManagedService) SetPoolSizeOverrideNil(b bool)`

 SetPoolSizeOverrideNil sets the value for PoolSizeOverride to be an explicit nil

### UnsetPoolSizeOverride
`func (o *ManagedService) UnsetPoolSizeOverride()`

UnsetPoolSizeOverride ensures that no value is present for PoolSizeOverride, not even an explicit nil
### GetClientConnectionsOverride

`func (o *ManagedService) GetClientConnectionsOverride() int32`

GetClientConnectionsOverride returns the ClientConnectionsOverride field if non-nil, zero value otherwise.

### GetClientConnectionsOverrideOk

`func (o *ManagedService) GetClientConnectionsOverrideOk() (*int32, bool)`

GetClientConnectionsOverrideOk returns a tuple with the ClientConnectionsOverride field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientConnectionsOverride

`func (o *ManagedService) SetClientConnectionsOverride(v int32)`

SetClientConnectionsOverride sets ClientConnectionsOverride field to given value.

### HasClientConnectionsOverride

`func (o *ManagedService) HasClientConnectionsOverride() bool`

HasClientConnectionsOverride returns a boolean if a field has been set.

### SetClientConnectionsOverrideNil

`func (o *ManagedService) SetClientConnectionsOverrideNil(b bool)`

 SetClientConnectionsOverrideNil sets the value for ClientConnectionsOverride to be an explicit nil

### UnsetClientConnectionsOverride
`func (o *ManagedService) UnsetClientConnectionsOverride()`

UnsetClientConnectionsOverride ensures that no value is present for ClientConnectionsOverride, not even an explicit nil
### GetState

`func (o *ManagedService) GetState() string`

GetState returns the State field if non-nil, zero value otherwise.

### GetStateOk

`func (o *ManagedService) GetStateOk() (*string, bool)`

GetStateOk returns a tuple with the State field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetState

`func (o *ManagedService) SetState(v string)`

SetState sets State field to given value.

### HasState

`func (o *ManagedService) HasState() bool`

HasState returns a boolean if a field has been set.

### GetFailureReason

`func (o *ManagedService) GetFailureReason() string`

GetFailureReason returns the FailureReason field if non-nil, zero value otherwise.

### GetFailureReasonOk

`func (o *ManagedService) GetFailureReasonOk() (*string, bool)`

GetFailureReasonOk returns a tuple with the FailureReason field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFailureReason

`func (o *ManagedService) SetFailureReason(v string)`

SetFailureReason sets FailureReason field to given value.

### HasFailureReason

`func (o *ManagedService) HasFailureReason() bool`

HasFailureReason returns a boolean if a field has been set.

### SetFailureReasonNil

`func (o *ManagedService) SetFailureReasonNil(b bool)`

 SetFailureReasonNil sets the value for FailureReason to be an explicit nil

### UnsetFailureReason
`func (o *ManagedService) UnsetFailureReason()`

UnsetFailureReason ensures that no value is present for FailureReason, not even an explicit nil
### GetSuspensionReason

`func (o *ManagedService) GetSuspensionReason() string`

GetSuspensionReason returns the SuspensionReason field if non-nil, zero value otherwise.

### GetSuspensionReasonOk

`func (o *ManagedService) GetSuspensionReasonOk() (*string, bool)`

GetSuspensionReasonOk returns a tuple with the SuspensionReason field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSuspensionReason

`func (o *ManagedService) SetSuspensionReason(v string)`

SetSuspensionReason sets SuspensionReason field to given value.

### HasSuspensionReason

`func (o *ManagedService) HasSuspensionReason() bool`

HasSuspensionReason returns a boolean if a field has been set.

### SetSuspensionReasonNil

`func (o *ManagedService) SetSuspensionReasonNil(b bool)`

 SetSuspensionReasonNil sets the value for SuspensionReason to be an explicit nil

### UnsetSuspensionReason
`func (o *ManagedService) UnsetSuspensionReason()`

UnsetSuspensionReason ensures that no value is present for SuspensionReason, not even an explicit nil
### GetUsageBytes

`func (o *ManagedService) GetUsageBytes() ManagedServiceUsageBytes`

GetUsageBytes returns the UsageBytes field if non-nil, zero value otherwise.

### GetUsageBytesOk

`func (o *ManagedService) GetUsageBytesOk() (*ManagedServiceUsageBytes, bool)`

GetUsageBytesOk returns a tuple with the UsageBytes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUsageBytes

`func (o *ManagedService) SetUsageBytes(v ManagedServiceUsageBytes)`

SetUsageBytes sets UsageBytes field to given value.

### HasUsageBytes

`func (o *ManagedService) HasUsageBytes() bool`

HasUsageBytes returns a boolean if a field has been set.

### SetUsageBytesNil

`func (o *ManagedService) SetUsageBytesNil(b bool)`

 SetUsageBytesNil sets the value for UsageBytes to be an explicit nil

### UnsetUsageBytes
`func (o *ManagedService) UnsetUsageBytes()`

UnsetUsageBytes ensures that no value is present for UsageBytes, not even an explicit nil
### GetUsageSampledAt

`func (o *ManagedService) GetUsageSampledAt() time.Time`

GetUsageSampledAt returns the UsageSampledAt field if non-nil, zero value otherwise.

### GetUsageSampledAtOk

`func (o *ManagedService) GetUsageSampledAtOk() (*time.Time, bool)`

GetUsageSampledAtOk returns a tuple with the UsageSampledAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUsageSampledAt

`func (o *ManagedService) SetUsageSampledAt(v time.Time)`

SetUsageSampledAt sets UsageSampledAt field to given value.

### HasUsageSampledAt

`func (o *ManagedService) HasUsageSampledAt() bool`

HasUsageSampledAt returns a boolean if a field has been set.

### SetUsageSampledAtNil

`func (o *ManagedService) SetUsageSampledAtNil(b bool)`

 SetUsageSampledAtNil sets the value for UsageSampledAt to be an explicit nil

### UnsetUsageSampledAt
`func (o *ManagedService) UnsetUsageSampledAt()`

UnsetUsageSampledAt ensures that no value is present for UsageSampledAt, not even an explicit nil
### GetLastLoadMillis

`func (o *ManagedService) GetLastLoadMillis() ManagedServiceLastLoadMillis`

GetLastLoadMillis returns the LastLoadMillis field if non-nil, zero value otherwise.

### GetLastLoadMillisOk

`func (o *ManagedService) GetLastLoadMillisOk() (*ManagedServiceLastLoadMillis, bool)`

GetLastLoadMillisOk returns a tuple with the LastLoadMillis field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastLoadMillis

`func (o *ManagedService) SetLastLoadMillis(v ManagedServiceLastLoadMillis)`

SetLastLoadMillis sets LastLoadMillis field to given value.

### HasLastLoadMillis

`func (o *ManagedService) HasLastLoadMillis() bool`

HasLastLoadMillis returns a boolean if a field has been set.

### SetLastLoadMillisNil

`func (o *ManagedService) SetLastLoadMillisNil(b bool)`

 SetLastLoadMillisNil sets the value for LastLoadMillis to be an explicit nil

### UnsetLastLoadMillis
`func (o *ManagedService) UnsetLastLoadMillis()`

UnsetLastLoadMillis ensures that no value is present for LastLoadMillis, not even an explicit nil
### GetLastLoadSampledAt

`func (o *ManagedService) GetLastLoadSampledAt() time.Time`

GetLastLoadSampledAt returns the LastLoadSampledAt field if non-nil, zero value otherwise.

### GetLastLoadSampledAtOk

`func (o *ManagedService) GetLastLoadSampledAtOk() (*time.Time, bool)`

GetLastLoadSampledAtOk returns a tuple with the LastLoadSampledAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastLoadSampledAt

`func (o *ManagedService) SetLastLoadSampledAt(v time.Time)`

SetLastLoadSampledAt sets LastLoadSampledAt field to given value.

### HasLastLoadSampledAt

`func (o *ManagedService) HasLastLoadSampledAt() bool`

HasLastLoadSampledAt returns a boolean if a field has been set.

### SetLastLoadSampledAtNil

`func (o *ManagedService) SetLastLoadSampledAtNil(b bool)`

 SetLastLoadSampledAtNil sets the value for LastLoadSampledAt to be an explicit nil

### UnsetLastLoadSampledAt
`func (o *ManagedService) UnsetLastLoadSampledAt()`

UnsetLastLoadSampledAt ensures that no value is present for LastLoadSampledAt, not even an explicit nil
### GetPendingLoadMillis

`func (o *ManagedService) GetPendingLoadMillis() ManagedServicePendingLoadMillis`

GetPendingLoadMillis returns the PendingLoadMillis field if non-nil, zero value otherwise.

### GetPendingLoadMillisOk

`func (o *ManagedService) GetPendingLoadMillisOk() (*ManagedServicePendingLoadMillis, bool)`

GetPendingLoadMillisOk returns a tuple with the PendingLoadMillis field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPendingLoadMillis

`func (o *ManagedService) SetPendingLoadMillis(v ManagedServicePendingLoadMillis)`

SetPendingLoadMillis sets PendingLoadMillis field to given value.

### HasPendingLoadMillis

`func (o *ManagedService) HasPendingLoadMillis() bool`

HasPendingLoadMillis returns a boolean if a field has been set.

### GetBindings

`func (o *ManagedService) GetBindings() []string`

GetBindings returns the Bindings field if non-nil, zero value otherwise.

### GetBindingsOk

`func (o *ManagedService) GetBindingsOk() (*[]string, bool)`

GetBindingsOk returns a tuple with the Bindings field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBindings

`func (o *ManagedService) SetBindings(v []string)`

SetBindings sets Bindings field to given value.

### HasBindings

`func (o *ManagedService) HasBindings() bool`

HasBindings returns a boolean if a field has been set.

### GetId

`func (o *ManagedService) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *ManagedService) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *ManagedService) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *ManagedService) HasId() bool`

HasId returns a boolean if a field has been set.

### GetDeletedAt

`func (o *ManagedService) GetDeletedAt() time.Time`

GetDeletedAt returns the DeletedAt field if non-nil, zero value otherwise.

### GetDeletedAtOk

`func (o *ManagedService) GetDeletedAtOk() (*time.Time, bool)`

GetDeletedAtOk returns a tuple with the DeletedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeletedAt

`func (o *ManagedService) SetDeletedAt(v time.Time)`

SetDeletedAt sets DeletedAt field to given value.

### HasDeletedAt

`func (o *ManagedService) HasDeletedAt() bool`

HasDeletedAt returns a boolean if a field has been set.

### SetDeletedAtNil

`func (o *ManagedService) SetDeletedAtNil(b bool)`

 SetDeletedAtNil sets the value for DeletedAt to be an explicit nil

### UnsetDeletedAt
`func (o *ManagedService) UnsetDeletedAt()`

UnsetDeletedAt ensures that no value is present for DeletedAt, not even an explicit nil
### GetCreatedAt

`func (o *ManagedService) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *ManagedService) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *ManagedService) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *ManagedService) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *ManagedService) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *ManagedService) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *ManagedService) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *ManagedService) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.

### SetUpdatedAtNil

`func (o *ManagedService) SetUpdatedAtNil(b bool)`

 SetUpdatedAtNil sets the value for UpdatedAt to be an explicit nil

### UnsetUpdatedAt
`func (o *ManagedService) UnsetUpdatedAt()`

UnsetUpdatedAt ensures that no value is present for UpdatedAt, not even an explicit nil
### GetCatalogueEntry

`func (o *ManagedService) GetCatalogueEntry() string`

GetCatalogueEntry returns the CatalogueEntry field if non-nil, zero value otherwise.

### GetCatalogueEntryOk

`func (o *ManagedService) GetCatalogueEntryOk() (*string, bool)`

GetCatalogueEntryOk returns a tuple with the CatalogueEntry field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCatalogueEntry

`func (o *ManagedService) SetCatalogueEntry(v string)`

SetCatalogueEntry sets CatalogueEntry field to given value.

### HasCatalogueEntry

`func (o *ManagedService) HasCatalogueEntry() bool`

HasCatalogueEntry returns a boolean if a field has been set.

### GetCredential

`func (o *ManagedService) GetCredential() SealedSecret`

GetCredential returns the Credential field if non-nil, zero value otherwise.

### GetCredentialOk

`func (o *ManagedService) GetCredentialOk() (*SealedSecret, bool)`

GetCredentialOk returns a tuple with the Credential field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCredential

`func (o *ManagedService) SetCredential(v SealedSecret)`

SetCredential sets Credential field to given value.

### HasCredential

`func (o *ManagedService) HasCredential() bool`

HasCredential returns a boolean if a field has been set.

### GetAvailable

`func (o *ManagedService) GetAvailable() bool`

GetAvailable returns the Available field if non-nil, zero value otherwise.

### GetAvailableOk

`func (o *ManagedService) GetAvailableOk() (*bool, bool)`

GetAvailableOk returns a tuple with the Available field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAvailable

`func (o *ManagedService) SetAvailable(v bool)`

SetAvailable sets Available field to given value.

### HasAvailable

`func (o *ManagedService) HasAvailable() bool`

HasAvailable returns a boolean if a field has been set.

### GetDeleted

`func (o *ManagedService) GetDeleted() bool`

GetDeleted returns the Deleted field if non-nil, zero value otherwise.

### GetDeletedOk

`func (o *ManagedService) GetDeletedOk() (*bool, bool)`

GetDeletedOk returns a tuple with the Deleted field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeleted

`func (o *ManagedService) SetDeleted(v bool)`

SetDeleted sets Deleted field to given value.

### HasDeleted

`func (o *ManagedService) HasDeleted() bool`

HasDeleted returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


