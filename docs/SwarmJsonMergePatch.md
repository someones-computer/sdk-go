# SwarmJsonMergePatch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Owner** | Pointer to **NullableString** | Null for the platform pool; set for a customer BYO cluster. | [optional] 
**Kind** | Pointer to **string** |  | [optional] [readonly] 
**Name** | Pointer to **string** |  | [optional] 
**Endpoint** | Pointer to **string** | Manager API endpoint (tcp+TLS) or SSH target. | [optional] 
**Status** | Pointer to **string** |  | [optional] [default to "unreachable"]
**PublicHost** | Pointer to **NullableString** | The address a client *outside* the cluster reaches this context&#39;s published ports on — a hostname or an IP, no scheme and no port. | [optional] 
**Roles** | Pointer to **[]string** | What this context is used for — builds, runtime, or both. Stored as the enum&#39;s string values rather than a relation: it is a small fixed set, and a json column needs no join to answer \&quot;where can I build?\&quot;. | [optional] [default to [runtime]]
**LastSeenAt** | Pointer to **NullableTime** |  | [optional] 
**Capacity** | Pointer to **map[string]string** | Observed capacity snapshot (cpu/mem/nodes), reconciled from the swarm — whatever {@see \\App\\Service\\Swarm\\SwarmHealth::$capacity} carried at the last successful probe. | [optional] 
**Labels** | Pointer to **map[string]string** |  | [optional] [readonly] 
**IngressInstalledAt** | Pointer to **NullableTime** | When {@see \\App\\Service\\Ingress\\TraefikInstaller} last stood up (or confirmed) the edge on this context, dispatched automatically once it becomes a platform-owned runtime context. | [optional] [readonly] 
**IngressError** | Pointer to **NullableString** | What the last automatic install attempt said, when it failed. Cleared on a success so the row never shows a stale complaint next to a working edge. | [optional] [readonly] 
**IngressNetwork** | Pointer to **NullableString** | The shared overlay that install put the edge on — the one Traefik&#39;s &#x60;--providers.swarm.network&#x60; names, and therefore the only network a service can be routed from. | [optional] [readonly] 
**IngressVerifiedAt** | Pointer to **NullableTime** | When the edge was last *observed* routing — the overlay present, the edge service on it, watching it, with a task running ({@see \\App\\Service\\Ingress\\IngressVerifier}). | [optional] [readonly] 
**IngressVerificationError** | Pointer to **NullableString** | What the last verification found wrong, or null when the edge was routing. | [optional] [readonly] 
**Nodes** | Pointer to [**[]SwarmNode**](SwarmNode.md) |  | [optional] 
**Machines** | Pointer to [**[]Machine**](Machine.md) |  | [optional] 
**Deployments** | Pointer to **[]string** | The revisions placed here. Mapped for the same single reason as {@see self::$machines} — so a delete can let go of them — rather than as a collection anything reads; {@see \\App\\Repository\\DeploymentRepository} is where a caller asks what is on a context. | [optional] 
**Id** | Pointer to **string** |  | [optional] [readonly] 
**DeletedAt** | Pointer to **NullableTime** |  | [optional] [readonly] 
**CreatedAt** | Pointer to **time.Time** |  | [optional] [readonly] 
**UpdatedAt** | Pointer to **NullableTime** |  | [optional] [readonly] 
**PlatformOwned** | Pointer to **bool** |  | [optional] [readonly] 
**PlatformProvisioned** | Pointer to **bool** | Whether the platform itself stood this context up, whoever currently owns the row — a machine {@see \\App\\MessageHandler\\ProvisionMachineHandler} provisioned, running this platform&#39;s own trusted image, versus a customer&#39;s own cluster registered straight through {@see \\App\\Controller\\Admin\\SwarmController}. | [optional] [readonly] 
**WorkingEdge** | Pointer to **bool** | Whether a revision that publishes a port can be routed here. | [optional] [readonly] 
**Deleted** | Pointer to **bool** |  | [optional] [readonly] 

## Methods

### NewSwarmJsonMergePatch

`func NewSwarmJsonMergePatch() *SwarmJsonMergePatch`

NewSwarmJsonMergePatch instantiates a new SwarmJsonMergePatch object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSwarmJsonMergePatchWithDefaults

`func NewSwarmJsonMergePatchWithDefaults() *SwarmJsonMergePatch`

NewSwarmJsonMergePatchWithDefaults instantiates a new SwarmJsonMergePatch object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOwner

`func (o *SwarmJsonMergePatch) GetOwner() string`

GetOwner returns the Owner field if non-nil, zero value otherwise.

### GetOwnerOk

`func (o *SwarmJsonMergePatch) GetOwnerOk() (*string, bool)`

GetOwnerOk returns a tuple with the Owner field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOwner

`func (o *SwarmJsonMergePatch) SetOwner(v string)`

SetOwner sets Owner field to given value.

### HasOwner

`func (o *SwarmJsonMergePatch) HasOwner() bool`

HasOwner returns a boolean if a field has been set.

### SetOwnerNil

`func (o *SwarmJsonMergePatch) SetOwnerNil(b bool)`

 SetOwnerNil sets the value for Owner to be an explicit nil

### UnsetOwner
`func (o *SwarmJsonMergePatch) UnsetOwner()`

UnsetOwner ensures that no value is present for Owner, not even an explicit nil
### GetKind

`func (o *SwarmJsonMergePatch) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *SwarmJsonMergePatch) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *SwarmJsonMergePatch) SetKind(v string)`

SetKind sets Kind field to given value.

### HasKind

`func (o *SwarmJsonMergePatch) HasKind() bool`

HasKind returns a boolean if a field has been set.

### GetName

`func (o *SwarmJsonMergePatch) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *SwarmJsonMergePatch) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *SwarmJsonMergePatch) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *SwarmJsonMergePatch) HasName() bool`

HasName returns a boolean if a field has been set.

### GetEndpoint

`func (o *SwarmJsonMergePatch) GetEndpoint() string`

GetEndpoint returns the Endpoint field if non-nil, zero value otherwise.

### GetEndpointOk

`func (o *SwarmJsonMergePatch) GetEndpointOk() (*string, bool)`

GetEndpointOk returns a tuple with the Endpoint field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEndpoint

`func (o *SwarmJsonMergePatch) SetEndpoint(v string)`

SetEndpoint sets Endpoint field to given value.

### HasEndpoint

`func (o *SwarmJsonMergePatch) HasEndpoint() bool`

HasEndpoint returns a boolean if a field has been set.

### GetStatus

`func (o *SwarmJsonMergePatch) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *SwarmJsonMergePatch) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *SwarmJsonMergePatch) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *SwarmJsonMergePatch) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetPublicHost

`func (o *SwarmJsonMergePatch) GetPublicHost() string`

GetPublicHost returns the PublicHost field if non-nil, zero value otherwise.

### GetPublicHostOk

`func (o *SwarmJsonMergePatch) GetPublicHostOk() (*string, bool)`

GetPublicHostOk returns a tuple with the PublicHost field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPublicHost

`func (o *SwarmJsonMergePatch) SetPublicHost(v string)`

SetPublicHost sets PublicHost field to given value.

### HasPublicHost

`func (o *SwarmJsonMergePatch) HasPublicHost() bool`

HasPublicHost returns a boolean if a field has been set.

### SetPublicHostNil

`func (o *SwarmJsonMergePatch) SetPublicHostNil(b bool)`

 SetPublicHostNil sets the value for PublicHost to be an explicit nil

### UnsetPublicHost
`func (o *SwarmJsonMergePatch) UnsetPublicHost()`

UnsetPublicHost ensures that no value is present for PublicHost, not even an explicit nil
### GetRoles

`func (o *SwarmJsonMergePatch) GetRoles() []string`

GetRoles returns the Roles field if non-nil, zero value otherwise.

### GetRolesOk

`func (o *SwarmJsonMergePatch) GetRolesOk() (*[]string, bool)`

GetRolesOk returns a tuple with the Roles field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRoles

`func (o *SwarmJsonMergePatch) SetRoles(v []string)`

SetRoles sets Roles field to given value.

### HasRoles

`func (o *SwarmJsonMergePatch) HasRoles() bool`

HasRoles returns a boolean if a field has been set.

### GetLastSeenAt

`func (o *SwarmJsonMergePatch) GetLastSeenAt() time.Time`

GetLastSeenAt returns the LastSeenAt field if non-nil, zero value otherwise.

### GetLastSeenAtOk

`func (o *SwarmJsonMergePatch) GetLastSeenAtOk() (*time.Time, bool)`

GetLastSeenAtOk returns a tuple with the LastSeenAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastSeenAt

`func (o *SwarmJsonMergePatch) SetLastSeenAt(v time.Time)`

SetLastSeenAt sets LastSeenAt field to given value.

### HasLastSeenAt

`func (o *SwarmJsonMergePatch) HasLastSeenAt() bool`

HasLastSeenAt returns a boolean if a field has been set.

### SetLastSeenAtNil

`func (o *SwarmJsonMergePatch) SetLastSeenAtNil(b bool)`

 SetLastSeenAtNil sets the value for LastSeenAt to be an explicit nil

### UnsetLastSeenAt
`func (o *SwarmJsonMergePatch) UnsetLastSeenAt()`

UnsetLastSeenAt ensures that no value is present for LastSeenAt, not even an explicit nil
### GetCapacity

`func (o *SwarmJsonMergePatch) GetCapacity() map[string]string`

GetCapacity returns the Capacity field if non-nil, zero value otherwise.

### GetCapacityOk

`func (o *SwarmJsonMergePatch) GetCapacityOk() (*map[string]string, bool)`

GetCapacityOk returns a tuple with the Capacity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCapacity

`func (o *SwarmJsonMergePatch) SetCapacity(v map[string]string)`

SetCapacity sets Capacity field to given value.

### HasCapacity

`func (o *SwarmJsonMergePatch) HasCapacity() bool`

HasCapacity returns a boolean if a field has been set.

### GetLabels

`func (o *SwarmJsonMergePatch) GetLabels() map[string]string`

GetLabels returns the Labels field if non-nil, zero value otherwise.

### GetLabelsOk

`func (o *SwarmJsonMergePatch) GetLabelsOk() (*map[string]string, bool)`

GetLabelsOk returns a tuple with the Labels field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLabels

`func (o *SwarmJsonMergePatch) SetLabels(v map[string]string)`

SetLabels sets Labels field to given value.

### HasLabels

`func (o *SwarmJsonMergePatch) HasLabels() bool`

HasLabels returns a boolean if a field has been set.

### GetIngressInstalledAt

`func (o *SwarmJsonMergePatch) GetIngressInstalledAt() time.Time`

GetIngressInstalledAt returns the IngressInstalledAt field if non-nil, zero value otherwise.

### GetIngressInstalledAtOk

`func (o *SwarmJsonMergePatch) GetIngressInstalledAtOk() (*time.Time, bool)`

GetIngressInstalledAtOk returns a tuple with the IngressInstalledAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIngressInstalledAt

`func (o *SwarmJsonMergePatch) SetIngressInstalledAt(v time.Time)`

SetIngressInstalledAt sets IngressInstalledAt field to given value.

### HasIngressInstalledAt

`func (o *SwarmJsonMergePatch) HasIngressInstalledAt() bool`

HasIngressInstalledAt returns a boolean if a field has been set.

### SetIngressInstalledAtNil

`func (o *SwarmJsonMergePatch) SetIngressInstalledAtNil(b bool)`

 SetIngressInstalledAtNil sets the value for IngressInstalledAt to be an explicit nil

### UnsetIngressInstalledAt
`func (o *SwarmJsonMergePatch) UnsetIngressInstalledAt()`

UnsetIngressInstalledAt ensures that no value is present for IngressInstalledAt, not even an explicit nil
### GetIngressError

`func (o *SwarmJsonMergePatch) GetIngressError() string`

GetIngressError returns the IngressError field if non-nil, zero value otherwise.

### GetIngressErrorOk

`func (o *SwarmJsonMergePatch) GetIngressErrorOk() (*string, bool)`

GetIngressErrorOk returns a tuple with the IngressError field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIngressError

`func (o *SwarmJsonMergePatch) SetIngressError(v string)`

SetIngressError sets IngressError field to given value.

### HasIngressError

`func (o *SwarmJsonMergePatch) HasIngressError() bool`

HasIngressError returns a boolean if a field has been set.

### SetIngressErrorNil

`func (o *SwarmJsonMergePatch) SetIngressErrorNil(b bool)`

 SetIngressErrorNil sets the value for IngressError to be an explicit nil

### UnsetIngressError
`func (o *SwarmJsonMergePatch) UnsetIngressError()`

UnsetIngressError ensures that no value is present for IngressError, not even an explicit nil
### GetIngressNetwork

`func (o *SwarmJsonMergePatch) GetIngressNetwork() string`

GetIngressNetwork returns the IngressNetwork field if non-nil, zero value otherwise.

### GetIngressNetworkOk

`func (o *SwarmJsonMergePatch) GetIngressNetworkOk() (*string, bool)`

GetIngressNetworkOk returns a tuple with the IngressNetwork field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIngressNetwork

`func (o *SwarmJsonMergePatch) SetIngressNetwork(v string)`

SetIngressNetwork sets IngressNetwork field to given value.

### HasIngressNetwork

`func (o *SwarmJsonMergePatch) HasIngressNetwork() bool`

HasIngressNetwork returns a boolean if a field has been set.

### SetIngressNetworkNil

`func (o *SwarmJsonMergePatch) SetIngressNetworkNil(b bool)`

 SetIngressNetworkNil sets the value for IngressNetwork to be an explicit nil

### UnsetIngressNetwork
`func (o *SwarmJsonMergePatch) UnsetIngressNetwork()`

UnsetIngressNetwork ensures that no value is present for IngressNetwork, not even an explicit nil
### GetIngressVerifiedAt

`func (o *SwarmJsonMergePatch) GetIngressVerifiedAt() time.Time`

GetIngressVerifiedAt returns the IngressVerifiedAt field if non-nil, zero value otherwise.

### GetIngressVerifiedAtOk

`func (o *SwarmJsonMergePatch) GetIngressVerifiedAtOk() (*time.Time, bool)`

GetIngressVerifiedAtOk returns a tuple with the IngressVerifiedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIngressVerifiedAt

`func (o *SwarmJsonMergePatch) SetIngressVerifiedAt(v time.Time)`

SetIngressVerifiedAt sets IngressVerifiedAt field to given value.

### HasIngressVerifiedAt

`func (o *SwarmJsonMergePatch) HasIngressVerifiedAt() bool`

HasIngressVerifiedAt returns a boolean if a field has been set.

### SetIngressVerifiedAtNil

`func (o *SwarmJsonMergePatch) SetIngressVerifiedAtNil(b bool)`

 SetIngressVerifiedAtNil sets the value for IngressVerifiedAt to be an explicit nil

### UnsetIngressVerifiedAt
`func (o *SwarmJsonMergePatch) UnsetIngressVerifiedAt()`

UnsetIngressVerifiedAt ensures that no value is present for IngressVerifiedAt, not even an explicit nil
### GetIngressVerificationError

`func (o *SwarmJsonMergePatch) GetIngressVerificationError() string`

GetIngressVerificationError returns the IngressVerificationError field if non-nil, zero value otherwise.

### GetIngressVerificationErrorOk

`func (o *SwarmJsonMergePatch) GetIngressVerificationErrorOk() (*string, bool)`

GetIngressVerificationErrorOk returns a tuple with the IngressVerificationError field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIngressVerificationError

`func (o *SwarmJsonMergePatch) SetIngressVerificationError(v string)`

SetIngressVerificationError sets IngressVerificationError field to given value.

### HasIngressVerificationError

`func (o *SwarmJsonMergePatch) HasIngressVerificationError() bool`

HasIngressVerificationError returns a boolean if a field has been set.

### SetIngressVerificationErrorNil

`func (o *SwarmJsonMergePatch) SetIngressVerificationErrorNil(b bool)`

 SetIngressVerificationErrorNil sets the value for IngressVerificationError to be an explicit nil

### UnsetIngressVerificationError
`func (o *SwarmJsonMergePatch) UnsetIngressVerificationError()`

UnsetIngressVerificationError ensures that no value is present for IngressVerificationError, not even an explicit nil
### GetNodes

`func (o *SwarmJsonMergePatch) GetNodes() []SwarmNode`

GetNodes returns the Nodes field if non-nil, zero value otherwise.

### GetNodesOk

`func (o *SwarmJsonMergePatch) GetNodesOk() (*[]SwarmNode, bool)`

GetNodesOk returns a tuple with the Nodes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNodes

`func (o *SwarmJsonMergePatch) SetNodes(v []SwarmNode)`

SetNodes sets Nodes field to given value.

### HasNodes

`func (o *SwarmJsonMergePatch) HasNodes() bool`

HasNodes returns a boolean if a field has been set.

### GetMachines

`func (o *SwarmJsonMergePatch) GetMachines() []Machine`

GetMachines returns the Machines field if non-nil, zero value otherwise.

### GetMachinesOk

`func (o *SwarmJsonMergePatch) GetMachinesOk() (*[]Machine, bool)`

GetMachinesOk returns a tuple with the Machines field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMachines

`func (o *SwarmJsonMergePatch) SetMachines(v []Machine)`

SetMachines sets Machines field to given value.

### HasMachines

`func (o *SwarmJsonMergePatch) HasMachines() bool`

HasMachines returns a boolean if a field has been set.

### GetDeployments

`func (o *SwarmJsonMergePatch) GetDeployments() []string`

GetDeployments returns the Deployments field if non-nil, zero value otherwise.

### GetDeploymentsOk

`func (o *SwarmJsonMergePatch) GetDeploymentsOk() (*[]string, bool)`

GetDeploymentsOk returns a tuple with the Deployments field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeployments

`func (o *SwarmJsonMergePatch) SetDeployments(v []string)`

SetDeployments sets Deployments field to given value.

### HasDeployments

`func (o *SwarmJsonMergePatch) HasDeployments() bool`

HasDeployments returns a boolean if a field has been set.

### GetId

`func (o *SwarmJsonMergePatch) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *SwarmJsonMergePatch) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *SwarmJsonMergePatch) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *SwarmJsonMergePatch) HasId() bool`

HasId returns a boolean if a field has been set.

### GetDeletedAt

`func (o *SwarmJsonMergePatch) GetDeletedAt() time.Time`

GetDeletedAt returns the DeletedAt field if non-nil, zero value otherwise.

### GetDeletedAtOk

`func (o *SwarmJsonMergePatch) GetDeletedAtOk() (*time.Time, bool)`

GetDeletedAtOk returns a tuple with the DeletedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeletedAt

`func (o *SwarmJsonMergePatch) SetDeletedAt(v time.Time)`

SetDeletedAt sets DeletedAt field to given value.

### HasDeletedAt

`func (o *SwarmJsonMergePatch) HasDeletedAt() bool`

HasDeletedAt returns a boolean if a field has been set.

### SetDeletedAtNil

`func (o *SwarmJsonMergePatch) SetDeletedAtNil(b bool)`

 SetDeletedAtNil sets the value for DeletedAt to be an explicit nil

### UnsetDeletedAt
`func (o *SwarmJsonMergePatch) UnsetDeletedAt()`

UnsetDeletedAt ensures that no value is present for DeletedAt, not even an explicit nil
### GetCreatedAt

`func (o *SwarmJsonMergePatch) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *SwarmJsonMergePatch) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *SwarmJsonMergePatch) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *SwarmJsonMergePatch) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *SwarmJsonMergePatch) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *SwarmJsonMergePatch) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *SwarmJsonMergePatch) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *SwarmJsonMergePatch) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.

### SetUpdatedAtNil

`func (o *SwarmJsonMergePatch) SetUpdatedAtNil(b bool)`

 SetUpdatedAtNil sets the value for UpdatedAt to be an explicit nil

### UnsetUpdatedAt
`func (o *SwarmJsonMergePatch) UnsetUpdatedAt()`

UnsetUpdatedAt ensures that no value is present for UpdatedAt, not even an explicit nil
### GetPlatformOwned

`func (o *SwarmJsonMergePatch) GetPlatformOwned() bool`

GetPlatformOwned returns the PlatformOwned field if non-nil, zero value otherwise.

### GetPlatformOwnedOk

`func (o *SwarmJsonMergePatch) GetPlatformOwnedOk() (*bool, bool)`

GetPlatformOwnedOk returns a tuple with the PlatformOwned field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPlatformOwned

`func (o *SwarmJsonMergePatch) SetPlatformOwned(v bool)`

SetPlatformOwned sets PlatformOwned field to given value.

### HasPlatformOwned

`func (o *SwarmJsonMergePatch) HasPlatformOwned() bool`

HasPlatformOwned returns a boolean if a field has been set.

### GetPlatformProvisioned

`func (o *SwarmJsonMergePatch) GetPlatformProvisioned() bool`

GetPlatformProvisioned returns the PlatformProvisioned field if non-nil, zero value otherwise.

### GetPlatformProvisionedOk

`func (o *SwarmJsonMergePatch) GetPlatformProvisionedOk() (*bool, bool)`

GetPlatformProvisionedOk returns a tuple with the PlatformProvisioned field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPlatformProvisioned

`func (o *SwarmJsonMergePatch) SetPlatformProvisioned(v bool)`

SetPlatformProvisioned sets PlatformProvisioned field to given value.

### HasPlatformProvisioned

`func (o *SwarmJsonMergePatch) HasPlatformProvisioned() bool`

HasPlatformProvisioned returns a boolean if a field has been set.

### GetWorkingEdge

`func (o *SwarmJsonMergePatch) GetWorkingEdge() bool`

GetWorkingEdge returns the WorkingEdge field if non-nil, zero value otherwise.

### GetWorkingEdgeOk

`func (o *SwarmJsonMergePatch) GetWorkingEdgeOk() (*bool, bool)`

GetWorkingEdgeOk returns a tuple with the WorkingEdge field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWorkingEdge

`func (o *SwarmJsonMergePatch) SetWorkingEdge(v bool)`

SetWorkingEdge sets WorkingEdge field to given value.

### HasWorkingEdge

`func (o *SwarmJsonMergePatch) HasWorkingEdge() bool`

HasWorkingEdge returns a boolean if a field has been set.

### GetDeleted

`func (o *SwarmJsonMergePatch) GetDeleted() bool`

GetDeleted returns the Deleted field if non-nil, zero value otherwise.

### GetDeletedOk

`func (o *SwarmJsonMergePatch) GetDeletedOk() (*bool, bool)`

GetDeletedOk returns a tuple with the Deleted field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeleted

`func (o *SwarmJsonMergePatch) SetDeleted(v bool)`

SetDeleted sets Deleted field to given value.

### HasDeleted

`func (o *SwarmJsonMergePatch) HasDeleted() bool`

HasDeleted returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


