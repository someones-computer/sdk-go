# Machine

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Instance** | Pointer to [**ProxmoxInstance**](ProxmoxInstance.md) |  | [optional] 
**Node** | Pointer to **string** | The node within the instance — same string &#x60;app:proxmox:template&#x60; builds on. | [optional] 
**Vmid** | Pointer to **int32** |  | [optional] 
**Name** | Pointer to **string** | How an operator addresses it; also the guest hostname the seed sets. | [optional] 
**Size** | Pointer to **string** |  | [optional] 
**DiskBlocks** | Pointer to **int32** | Disk as a block count, never gigabytes: a thin volume grows and never shrinks, so the invariant worth enforcing is \&quot;this number only goes up\&quot;, and a count makes that checkable where a free-form size would not. | [optional] [readonly] [default to 1]
**TemplateVmid** | Pointer to **int32** | The template this was cloned from, by vmid. The reference count that decides when a superseded template may be deleted (§03): linked clones pin their base disk, and Proxmox will refuse — rightly — to delete a template that still has children. | [optional] 
**Address** | Pointer to **NullableString** | The island address chosen by the control plane&#39;s pool and registered with Proxmox, which is what dnsmasq then answers the machine&#39;s DHCP request with (docs/island-network.md — Proxmox&#39;s IPAM cannot allocate, so the platform still picks). Null until allocation; unique so the pool cannot double-allocate even if two provisions race. | [optional] 
**State** | Pointer to **string** |  | [optional] [default to "requested"]
**Failure** | Pointer to **NullableString** | Why &#x60;Failed&#x60;, when it is. Carries the task&#39;s own words, never a paraphrase. | [optional] [readonly] 
**ProvisionAttempt** | Pointer to **int32** | Which run through the flow this is, starting at 1 and incremented on every {@see self::reprovision()}. {@see \\App\\Entity\\ProvisioningLogLine} tags each captured line with the value that was current when it was written, so a retry&#39;s transcript starts fresh rather than appending to the failed attempt before it. | [optional] [readonly] [default to 1]
**ProvisionStartedAt** | Pointer to **NullableTime** | When the current run through the flow began — set at construction and reset on every {@see self::reprovision()}, mirroring {@see ProxmoxInstance::$templateBuildStartedAt}. What {@see self::isProvisioningStale()} measures against: the real ceiling is the flow&#39;s own step deadlines ({@see \\App\\MessageHandler\\ProvisionMachineHandler}&#39;s &#x60;BOOT_DEADLINE&#x60;/&#x60;TASK_DEADLINE&#x60;), and a run still going past {@see self::PROVISION_PRESUMED_DEAD_AFTER} is a worker that died holding it — a crash, an OOM, a deploy restart — rather than one still working. | [optional] [readonly] 
**Swarm** | Pointer to **NullableString** | The context this machine serves, if any. Nullable on purpose — see the class docblock. | [optional] 
**Organization** | Pointer to **NullableString** | The organization this machine was self-service-provisioned for, or null for one an operator made through &#x60;/admin/machines&#x60;. Nullable for the same reason &#x60;$swarm&#x60; is: an admin-made machine belongs to nobody&#39;s tenancy, and this column must not invent an owner for it. Set once, at creation, to the same organization that owns the paired &#x60;$swarm&#x60; — {@see Organization::markDeleted()} detaches it rather than deleting the row, matching how a BYO context&#39;s owner is handled. | [optional] 
**Id** | Pointer to **string** |  | [optional] [readonly] 
**CreatedAt** | Pointer to **time.Time** |  | [optional] [readonly] 
**UpdatedAt** | Pointer to **NullableTime** |  | [optional] [readonly] 
**DiskGigabytes** | Pointer to **int32** |  | [optional] [readonly] 
**ProvisioningStale** | Pointer to **bool** | Still mid-flow, and has been for longer than any healthy run takes — what {@see \\App\\MessageHandler\\SweepStaleMachineProvisionsHandler} sweeps for. A worker that crashed, OOM&#39;d, or was recycled mid-step leaves the row exactly where it stood; nothing else ever revisits it, since the handler&#39;s own guard is \&quot;state is Requested\&quot; and every other step only ever moves the flow forward. | [optional] [readonly] 

## Methods

### NewMachine

`func NewMachine() *Machine`

NewMachine instantiates a new Machine object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewMachineWithDefaults

`func NewMachineWithDefaults() *Machine`

NewMachineWithDefaults instantiates a new Machine object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetInstance

`func (o *Machine) GetInstance() ProxmoxInstance`

GetInstance returns the Instance field if non-nil, zero value otherwise.

### GetInstanceOk

`func (o *Machine) GetInstanceOk() (*ProxmoxInstance, bool)`

GetInstanceOk returns a tuple with the Instance field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstance

`func (o *Machine) SetInstance(v ProxmoxInstance)`

SetInstance sets Instance field to given value.

### HasInstance

`func (o *Machine) HasInstance() bool`

HasInstance returns a boolean if a field has been set.

### GetNode

`func (o *Machine) GetNode() string`

GetNode returns the Node field if non-nil, zero value otherwise.

### GetNodeOk

`func (o *Machine) GetNodeOk() (*string, bool)`

GetNodeOk returns a tuple with the Node field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNode

`func (o *Machine) SetNode(v string)`

SetNode sets Node field to given value.

### HasNode

`func (o *Machine) HasNode() bool`

HasNode returns a boolean if a field has been set.

### GetVmid

`func (o *Machine) GetVmid() int32`

GetVmid returns the Vmid field if non-nil, zero value otherwise.

### GetVmidOk

`func (o *Machine) GetVmidOk() (*int32, bool)`

GetVmidOk returns a tuple with the Vmid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVmid

`func (o *Machine) SetVmid(v int32)`

SetVmid sets Vmid field to given value.

### HasVmid

`func (o *Machine) HasVmid() bool`

HasVmid returns a boolean if a field has been set.

### GetName

`func (o *Machine) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *Machine) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *Machine) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *Machine) HasName() bool`

HasName returns a boolean if a field has been set.

### GetSize

`func (o *Machine) GetSize() string`

GetSize returns the Size field if non-nil, zero value otherwise.

### GetSizeOk

`func (o *Machine) GetSizeOk() (*string, bool)`

GetSizeOk returns a tuple with the Size field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSize

`func (o *Machine) SetSize(v string)`

SetSize sets Size field to given value.

### HasSize

`func (o *Machine) HasSize() bool`

HasSize returns a boolean if a field has been set.

### GetDiskBlocks

`func (o *Machine) GetDiskBlocks() int32`

GetDiskBlocks returns the DiskBlocks field if non-nil, zero value otherwise.

### GetDiskBlocksOk

`func (o *Machine) GetDiskBlocksOk() (*int32, bool)`

GetDiskBlocksOk returns a tuple with the DiskBlocks field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDiskBlocks

`func (o *Machine) SetDiskBlocks(v int32)`

SetDiskBlocks sets DiskBlocks field to given value.

### HasDiskBlocks

`func (o *Machine) HasDiskBlocks() bool`

HasDiskBlocks returns a boolean if a field has been set.

### GetTemplateVmid

`func (o *Machine) GetTemplateVmid() int32`

GetTemplateVmid returns the TemplateVmid field if non-nil, zero value otherwise.

### GetTemplateVmidOk

`func (o *Machine) GetTemplateVmidOk() (*int32, bool)`

GetTemplateVmidOk returns a tuple with the TemplateVmid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTemplateVmid

`func (o *Machine) SetTemplateVmid(v int32)`

SetTemplateVmid sets TemplateVmid field to given value.

### HasTemplateVmid

`func (o *Machine) HasTemplateVmid() bool`

HasTemplateVmid returns a boolean if a field has been set.

### GetAddress

`func (o *Machine) GetAddress() string`

GetAddress returns the Address field if non-nil, zero value otherwise.

### GetAddressOk

`func (o *Machine) GetAddressOk() (*string, bool)`

GetAddressOk returns a tuple with the Address field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAddress

`func (o *Machine) SetAddress(v string)`

SetAddress sets Address field to given value.

### HasAddress

`func (o *Machine) HasAddress() bool`

HasAddress returns a boolean if a field has been set.

### SetAddressNil

`func (o *Machine) SetAddressNil(b bool)`

 SetAddressNil sets the value for Address to be an explicit nil

### UnsetAddress
`func (o *Machine) UnsetAddress()`

UnsetAddress ensures that no value is present for Address, not even an explicit nil
### GetState

`func (o *Machine) GetState() string`

GetState returns the State field if non-nil, zero value otherwise.

### GetStateOk

`func (o *Machine) GetStateOk() (*string, bool)`

GetStateOk returns a tuple with the State field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetState

`func (o *Machine) SetState(v string)`

SetState sets State field to given value.

### HasState

`func (o *Machine) HasState() bool`

HasState returns a boolean if a field has been set.

### GetFailure

`func (o *Machine) GetFailure() string`

GetFailure returns the Failure field if non-nil, zero value otherwise.

### GetFailureOk

`func (o *Machine) GetFailureOk() (*string, bool)`

GetFailureOk returns a tuple with the Failure field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFailure

`func (o *Machine) SetFailure(v string)`

SetFailure sets Failure field to given value.

### HasFailure

`func (o *Machine) HasFailure() bool`

HasFailure returns a boolean if a field has been set.

### SetFailureNil

`func (o *Machine) SetFailureNil(b bool)`

 SetFailureNil sets the value for Failure to be an explicit nil

### UnsetFailure
`func (o *Machine) UnsetFailure()`

UnsetFailure ensures that no value is present for Failure, not even an explicit nil
### GetProvisionAttempt

`func (o *Machine) GetProvisionAttempt() int32`

GetProvisionAttempt returns the ProvisionAttempt field if non-nil, zero value otherwise.

### GetProvisionAttemptOk

`func (o *Machine) GetProvisionAttemptOk() (*int32, bool)`

GetProvisionAttemptOk returns a tuple with the ProvisionAttempt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProvisionAttempt

`func (o *Machine) SetProvisionAttempt(v int32)`

SetProvisionAttempt sets ProvisionAttempt field to given value.

### HasProvisionAttempt

`func (o *Machine) HasProvisionAttempt() bool`

HasProvisionAttempt returns a boolean if a field has been set.

### GetProvisionStartedAt

`func (o *Machine) GetProvisionStartedAt() time.Time`

GetProvisionStartedAt returns the ProvisionStartedAt field if non-nil, zero value otherwise.

### GetProvisionStartedAtOk

`func (o *Machine) GetProvisionStartedAtOk() (*time.Time, bool)`

GetProvisionStartedAtOk returns a tuple with the ProvisionStartedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProvisionStartedAt

`func (o *Machine) SetProvisionStartedAt(v time.Time)`

SetProvisionStartedAt sets ProvisionStartedAt field to given value.

### HasProvisionStartedAt

`func (o *Machine) HasProvisionStartedAt() bool`

HasProvisionStartedAt returns a boolean if a field has been set.

### SetProvisionStartedAtNil

`func (o *Machine) SetProvisionStartedAtNil(b bool)`

 SetProvisionStartedAtNil sets the value for ProvisionStartedAt to be an explicit nil

### UnsetProvisionStartedAt
`func (o *Machine) UnsetProvisionStartedAt()`

UnsetProvisionStartedAt ensures that no value is present for ProvisionStartedAt, not even an explicit nil
### GetSwarm

`func (o *Machine) GetSwarm() string`

GetSwarm returns the Swarm field if non-nil, zero value otherwise.

### GetSwarmOk

`func (o *Machine) GetSwarmOk() (*string, bool)`

GetSwarmOk returns a tuple with the Swarm field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSwarm

`func (o *Machine) SetSwarm(v string)`

SetSwarm sets Swarm field to given value.

### HasSwarm

`func (o *Machine) HasSwarm() bool`

HasSwarm returns a boolean if a field has been set.

### SetSwarmNil

`func (o *Machine) SetSwarmNil(b bool)`

 SetSwarmNil sets the value for Swarm to be an explicit nil

### UnsetSwarm
`func (o *Machine) UnsetSwarm()`

UnsetSwarm ensures that no value is present for Swarm, not even an explicit nil
### GetOrganization

`func (o *Machine) GetOrganization() string`

GetOrganization returns the Organization field if non-nil, zero value otherwise.

### GetOrganizationOk

`func (o *Machine) GetOrganizationOk() (*string, bool)`

GetOrganizationOk returns a tuple with the Organization field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrganization

`func (o *Machine) SetOrganization(v string)`

SetOrganization sets Organization field to given value.

### HasOrganization

`func (o *Machine) HasOrganization() bool`

HasOrganization returns a boolean if a field has been set.

### SetOrganizationNil

`func (o *Machine) SetOrganizationNil(b bool)`

 SetOrganizationNil sets the value for Organization to be an explicit nil

### UnsetOrganization
`func (o *Machine) UnsetOrganization()`

UnsetOrganization ensures that no value is present for Organization, not even an explicit nil
### GetId

`func (o *Machine) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *Machine) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *Machine) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *Machine) HasId() bool`

HasId returns a boolean if a field has been set.

### GetCreatedAt

`func (o *Machine) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *Machine) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *Machine) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *Machine) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *Machine) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *Machine) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *Machine) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *Machine) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.

### SetUpdatedAtNil

`func (o *Machine) SetUpdatedAtNil(b bool)`

 SetUpdatedAtNil sets the value for UpdatedAt to be an explicit nil

### UnsetUpdatedAt
`func (o *Machine) UnsetUpdatedAt()`

UnsetUpdatedAt ensures that no value is present for UpdatedAt, not even an explicit nil
### GetDiskGigabytes

`func (o *Machine) GetDiskGigabytes() int32`

GetDiskGigabytes returns the DiskGigabytes field if non-nil, zero value otherwise.

### GetDiskGigabytesOk

`func (o *Machine) GetDiskGigabytesOk() (*int32, bool)`

GetDiskGigabytesOk returns a tuple with the DiskGigabytes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDiskGigabytes

`func (o *Machine) SetDiskGigabytes(v int32)`

SetDiskGigabytes sets DiskGigabytes field to given value.

### HasDiskGigabytes

`func (o *Machine) HasDiskGigabytes() bool`

HasDiskGigabytes returns a boolean if a field has been set.

### GetProvisioningStale

`func (o *Machine) GetProvisioningStale() bool`

GetProvisioningStale returns the ProvisioningStale field if non-nil, zero value otherwise.

### GetProvisioningStaleOk

`func (o *Machine) GetProvisioningStaleOk() (*bool, bool)`

GetProvisioningStaleOk returns a tuple with the ProvisioningStale field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProvisioningStale

`func (o *Machine) SetProvisioningStale(v bool)`

SetProvisioningStale sets ProvisioningStale field to given value.

### HasProvisioningStale

`func (o *Machine) HasProvisioningStale() bool`

HasProvisioningStale returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


