# ServiceInstance

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | Pointer to **string** | Operator-facing handle, unique across the estate: &#x60;pg17-1&#x60;, &#x60;mysql80-1&#x60;. | [optional] 
**Kind** | Pointer to **string** |  | [optional] 
**MajorVersion** | Pointer to **string** | The major version this engine *is*, as the catalogue names it: &#x60;17&#x60;, &#x60;16&#x60;, &#x60;11.8&#x60;, &#x60;8.4&#x60;, &#x60;8.0&#x60;. | [optional] 
**ImageRef** | Pointer to **string** | The exact image this instance runs, pinned — never a floating upstream tag. | [optional] 
**Swarm** | Pointer to **string** | Repoint the instance at a different context. | [optional] 
**OverlayNetwork** | Pointer to **string** | The internal overlay this engine and every sidecar bound to it share. | [optional] 
**State** | Pointer to **string** | Moving to any state other than {@see ServiceInstanceState::Failed} clears a stale failure. | [optional] [default to "requested"]
**FailureReason** | Pointer to **NullableString** | Why the instance failed, carried beside the state as &#x60;Machine::$failure&#x60; already does. | [optional] [readonly] 
**CapacityBytes** | Pointer to [**NullableServiceInstanceCapacityBytes**](ServiceInstanceCapacityBytes.md) |  | [optional] 
**ObservedUsageBytes** | Pointer to [**NullableServiceInstanceObservedUsageBytes**](ServiceInstanceObservedUsageBytes.md) |  | [optional] 
**ObservedAt** | Pointer to **NullableTime** |  | [optional] [readonly] 
**Id** | Pointer to **string** |  | [optional] [readonly] 
**CreatedAt** | Pointer to **time.Time** |  | [optional] [readonly] 
**UpdatedAt** | Pointer to **NullableTime** |  | [optional] [readonly] 
**CatalogueEntry** | Pointer to **string** | &#x60;postgres 17&#x60;, &#x60;mysql 8.0&#x60; — the catalogue entry this instance serves. | [optional] [readonly] 
**Serving** | Pointer to **bool** |  | [optional] [readonly] 
**AdminCredential** | Pointer to [**SealedSecret**](SealedSecret.md) |  | [optional] 

## Methods

### NewServiceInstance

`func NewServiceInstance() *ServiceInstance`

NewServiceInstance instantiates a new ServiceInstance object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewServiceInstanceWithDefaults

`func NewServiceInstanceWithDefaults() *ServiceInstance`

NewServiceInstanceWithDefaults instantiates a new ServiceInstance object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *ServiceInstance) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *ServiceInstance) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *ServiceInstance) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *ServiceInstance) HasName() bool`

HasName returns a boolean if a field has been set.

### GetKind

`func (o *ServiceInstance) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *ServiceInstance) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *ServiceInstance) SetKind(v string)`

SetKind sets Kind field to given value.

### HasKind

`func (o *ServiceInstance) HasKind() bool`

HasKind returns a boolean if a field has been set.

### GetMajorVersion

`func (o *ServiceInstance) GetMajorVersion() string`

GetMajorVersion returns the MajorVersion field if non-nil, zero value otherwise.

### GetMajorVersionOk

`func (o *ServiceInstance) GetMajorVersionOk() (*string, bool)`

GetMajorVersionOk returns a tuple with the MajorVersion field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMajorVersion

`func (o *ServiceInstance) SetMajorVersion(v string)`

SetMajorVersion sets MajorVersion field to given value.

### HasMajorVersion

`func (o *ServiceInstance) HasMajorVersion() bool`

HasMajorVersion returns a boolean if a field has been set.

### GetImageRef

`func (o *ServiceInstance) GetImageRef() string`

GetImageRef returns the ImageRef field if non-nil, zero value otherwise.

### GetImageRefOk

`func (o *ServiceInstance) GetImageRefOk() (*string, bool)`

GetImageRefOk returns a tuple with the ImageRef field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImageRef

`func (o *ServiceInstance) SetImageRef(v string)`

SetImageRef sets ImageRef field to given value.

### HasImageRef

`func (o *ServiceInstance) HasImageRef() bool`

HasImageRef returns a boolean if a field has been set.

### GetSwarm

`func (o *ServiceInstance) GetSwarm() string`

GetSwarm returns the Swarm field if non-nil, zero value otherwise.

### GetSwarmOk

`func (o *ServiceInstance) GetSwarmOk() (*string, bool)`

GetSwarmOk returns a tuple with the Swarm field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSwarm

`func (o *ServiceInstance) SetSwarm(v string)`

SetSwarm sets Swarm field to given value.

### HasSwarm

`func (o *ServiceInstance) HasSwarm() bool`

HasSwarm returns a boolean if a field has been set.

### GetOverlayNetwork

`func (o *ServiceInstance) GetOverlayNetwork() string`

GetOverlayNetwork returns the OverlayNetwork field if non-nil, zero value otherwise.

### GetOverlayNetworkOk

`func (o *ServiceInstance) GetOverlayNetworkOk() (*string, bool)`

GetOverlayNetworkOk returns a tuple with the OverlayNetwork field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOverlayNetwork

`func (o *ServiceInstance) SetOverlayNetwork(v string)`

SetOverlayNetwork sets OverlayNetwork field to given value.

### HasOverlayNetwork

`func (o *ServiceInstance) HasOverlayNetwork() bool`

HasOverlayNetwork returns a boolean if a field has been set.

### GetState

`func (o *ServiceInstance) GetState() string`

GetState returns the State field if non-nil, zero value otherwise.

### GetStateOk

`func (o *ServiceInstance) GetStateOk() (*string, bool)`

GetStateOk returns a tuple with the State field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetState

`func (o *ServiceInstance) SetState(v string)`

SetState sets State field to given value.

### HasState

`func (o *ServiceInstance) HasState() bool`

HasState returns a boolean if a field has been set.

### GetFailureReason

`func (o *ServiceInstance) GetFailureReason() string`

GetFailureReason returns the FailureReason field if non-nil, zero value otherwise.

### GetFailureReasonOk

`func (o *ServiceInstance) GetFailureReasonOk() (*string, bool)`

GetFailureReasonOk returns a tuple with the FailureReason field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFailureReason

`func (o *ServiceInstance) SetFailureReason(v string)`

SetFailureReason sets FailureReason field to given value.

### HasFailureReason

`func (o *ServiceInstance) HasFailureReason() bool`

HasFailureReason returns a boolean if a field has been set.

### SetFailureReasonNil

`func (o *ServiceInstance) SetFailureReasonNil(b bool)`

 SetFailureReasonNil sets the value for FailureReason to be an explicit nil

### UnsetFailureReason
`func (o *ServiceInstance) UnsetFailureReason()`

UnsetFailureReason ensures that no value is present for FailureReason, not even an explicit nil
### GetCapacityBytes

`func (o *ServiceInstance) GetCapacityBytes() ServiceInstanceCapacityBytes`

GetCapacityBytes returns the CapacityBytes field if non-nil, zero value otherwise.

### GetCapacityBytesOk

`func (o *ServiceInstance) GetCapacityBytesOk() (*ServiceInstanceCapacityBytes, bool)`

GetCapacityBytesOk returns a tuple with the CapacityBytes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCapacityBytes

`func (o *ServiceInstance) SetCapacityBytes(v ServiceInstanceCapacityBytes)`

SetCapacityBytes sets CapacityBytes field to given value.

### HasCapacityBytes

`func (o *ServiceInstance) HasCapacityBytes() bool`

HasCapacityBytes returns a boolean if a field has been set.

### SetCapacityBytesNil

`func (o *ServiceInstance) SetCapacityBytesNil(b bool)`

 SetCapacityBytesNil sets the value for CapacityBytes to be an explicit nil

### UnsetCapacityBytes
`func (o *ServiceInstance) UnsetCapacityBytes()`

UnsetCapacityBytes ensures that no value is present for CapacityBytes, not even an explicit nil
### GetObservedUsageBytes

`func (o *ServiceInstance) GetObservedUsageBytes() ServiceInstanceObservedUsageBytes`

GetObservedUsageBytes returns the ObservedUsageBytes field if non-nil, zero value otherwise.

### GetObservedUsageBytesOk

`func (o *ServiceInstance) GetObservedUsageBytesOk() (*ServiceInstanceObservedUsageBytes, bool)`

GetObservedUsageBytesOk returns a tuple with the ObservedUsageBytes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetObservedUsageBytes

`func (o *ServiceInstance) SetObservedUsageBytes(v ServiceInstanceObservedUsageBytes)`

SetObservedUsageBytes sets ObservedUsageBytes field to given value.

### HasObservedUsageBytes

`func (o *ServiceInstance) HasObservedUsageBytes() bool`

HasObservedUsageBytes returns a boolean if a field has been set.

### SetObservedUsageBytesNil

`func (o *ServiceInstance) SetObservedUsageBytesNil(b bool)`

 SetObservedUsageBytesNil sets the value for ObservedUsageBytes to be an explicit nil

### UnsetObservedUsageBytes
`func (o *ServiceInstance) UnsetObservedUsageBytes()`

UnsetObservedUsageBytes ensures that no value is present for ObservedUsageBytes, not even an explicit nil
### GetObservedAt

`func (o *ServiceInstance) GetObservedAt() time.Time`

GetObservedAt returns the ObservedAt field if non-nil, zero value otherwise.

### GetObservedAtOk

`func (o *ServiceInstance) GetObservedAtOk() (*time.Time, bool)`

GetObservedAtOk returns a tuple with the ObservedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetObservedAt

`func (o *ServiceInstance) SetObservedAt(v time.Time)`

SetObservedAt sets ObservedAt field to given value.

### HasObservedAt

`func (o *ServiceInstance) HasObservedAt() bool`

HasObservedAt returns a boolean if a field has been set.

### SetObservedAtNil

`func (o *ServiceInstance) SetObservedAtNil(b bool)`

 SetObservedAtNil sets the value for ObservedAt to be an explicit nil

### UnsetObservedAt
`func (o *ServiceInstance) UnsetObservedAt()`

UnsetObservedAt ensures that no value is present for ObservedAt, not even an explicit nil
### GetId

`func (o *ServiceInstance) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *ServiceInstance) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *ServiceInstance) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *ServiceInstance) HasId() bool`

HasId returns a boolean if a field has been set.

### GetCreatedAt

`func (o *ServiceInstance) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *ServiceInstance) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *ServiceInstance) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *ServiceInstance) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *ServiceInstance) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *ServiceInstance) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *ServiceInstance) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *ServiceInstance) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.

### SetUpdatedAtNil

`func (o *ServiceInstance) SetUpdatedAtNil(b bool)`

 SetUpdatedAtNil sets the value for UpdatedAt to be an explicit nil

### UnsetUpdatedAt
`func (o *ServiceInstance) UnsetUpdatedAt()`

UnsetUpdatedAt ensures that no value is present for UpdatedAt, not even an explicit nil
### GetCatalogueEntry

`func (o *ServiceInstance) GetCatalogueEntry() string`

GetCatalogueEntry returns the CatalogueEntry field if non-nil, zero value otherwise.

### GetCatalogueEntryOk

`func (o *ServiceInstance) GetCatalogueEntryOk() (*string, bool)`

GetCatalogueEntryOk returns a tuple with the CatalogueEntry field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCatalogueEntry

`func (o *ServiceInstance) SetCatalogueEntry(v string)`

SetCatalogueEntry sets CatalogueEntry field to given value.

### HasCatalogueEntry

`func (o *ServiceInstance) HasCatalogueEntry() bool`

HasCatalogueEntry returns a boolean if a field has been set.

### GetServing

`func (o *ServiceInstance) GetServing() bool`

GetServing returns the Serving field if non-nil, zero value otherwise.

### GetServingOk

`func (o *ServiceInstance) GetServingOk() (*bool, bool)`

GetServingOk returns a tuple with the Serving field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServing

`func (o *ServiceInstance) SetServing(v bool)`

SetServing sets Serving field to given value.

### HasServing

`func (o *ServiceInstance) HasServing() bool`

HasServing returns a boolean if a field has been set.

### GetAdminCredential

`func (o *ServiceInstance) GetAdminCredential() SealedSecret`

GetAdminCredential returns the AdminCredential field if non-nil, zero value otherwise.

### GetAdminCredentialOk

`func (o *ServiceInstance) GetAdminCredentialOk() (*SealedSecret, bool)`

GetAdminCredentialOk returns a tuple with the AdminCredential field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAdminCredential

`func (o *ServiceInstance) SetAdminCredential(v SealedSecret)`

SetAdminCredential sets AdminCredential field to given value.

### HasAdminCredential

`func (o *ServiceInstance) HasAdminCredential() bool`

HasAdminCredential returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


