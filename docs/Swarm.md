# Swarm

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

### NewSwarm

`func NewSwarm() *Swarm`

NewSwarm instantiates a new Swarm object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSwarmWithDefaults

`func NewSwarmWithDefaults() *Swarm`

NewSwarmWithDefaults instantiates a new Swarm object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOwner

`func (o *Swarm) GetOwner() string`

GetOwner returns the Owner field if non-nil, zero value otherwise.

### GetOwnerOk

`func (o *Swarm) GetOwnerOk() (*string, bool)`

GetOwnerOk returns a tuple with the Owner field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOwner

`func (o *Swarm) SetOwner(v string)`

SetOwner sets Owner field to given value.

### HasOwner

`func (o *Swarm) HasOwner() bool`

HasOwner returns a boolean if a field has been set.

### SetOwnerNil

`func (o *Swarm) SetOwnerNil(b bool)`

 SetOwnerNil sets the value for Owner to be an explicit nil

### UnsetOwner
`func (o *Swarm) UnsetOwner()`

UnsetOwner ensures that no value is present for Owner, not even an explicit nil
### GetKind

`func (o *Swarm) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *Swarm) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *Swarm) SetKind(v string)`

SetKind sets Kind field to given value.

### HasKind

`func (o *Swarm) HasKind() bool`

HasKind returns a boolean if a field has been set.

### GetName

`func (o *Swarm) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *Swarm) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *Swarm) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *Swarm) HasName() bool`

HasName returns a boolean if a field has been set.

### GetEndpoint

`func (o *Swarm) GetEndpoint() string`

GetEndpoint returns the Endpoint field if non-nil, zero value otherwise.

### GetEndpointOk

`func (o *Swarm) GetEndpointOk() (*string, bool)`

GetEndpointOk returns a tuple with the Endpoint field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEndpoint

`func (o *Swarm) SetEndpoint(v string)`

SetEndpoint sets Endpoint field to given value.

### HasEndpoint

`func (o *Swarm) HasEndpoint() bool`

HasEndpoint returns a boolean if a field has been set.

### GetStatus

`func (o *Swarm) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *Swarm) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *Swarm) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *Swarm) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetPublicHost

`func (o *Swarm) GetPublicHost() string`

GetPublicHost returns the PublicHost field if non-nil, zero value otherwise.

### GetPublicHostOk

`func (o *Swarm) GetPublicHostOk() (*string, bool)`

GetPublicHostOk returns a tuple with the PublicHost field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPublicHost

`func (o *Swarm) SetPublicHost(v string)`

SetPublicHost sets PublicHost field to given value.

### HasPublicHost

`func (o *Swarm) HasPublicHost() bool`

HasPublicHost returns a boolean if a field has been set.

### SetPublicHostNil

`func (o *Swarm) SetPublicHostNil(b bool)`

 SetPublicHostNil sets the value for PublicHost to be an explicit nil

### UnsetPublicHost
`func (o *Swarm) UnsetPublicHost()`

UnsetPublicHost ensures that no value is present for PublicHost, not even an explicit nil
### GetRoles

`func (o *Swarm) GetRoles() []string`

GetRoles returns the Roles field if non-nil, zero value otherwise.

### GetRolesOk

`func (o *Swarm) GetRolesOk() (*[]string, bool)`

GetRolesOk returns a tuple with the Roles field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRoles

`func (o *Swarm) SetRoles(v []string)`

SetRoles sets Roles field to given value.

### HasRoles

`func (o *Swarm) HasRoles() bool`

HasRoles returns a boolean if a field has been set.

### GetLastSeenAt

`func (o *Swarm) GetLastSeenAt() time.Time`

GetLastSeenAt returns the LastSeenAt field if non-nil, zero value otherwise.

### GetLastSeenAtOk

`func (o *Swarm) GetLastSeenAtOk() (*time.Time, bool)`

GetLastSeenAtOk returns a tuple with the LastSeenAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastSeenAt

`func (o *Swarm) SetLastSeenAt(v time.Time)`

SetLastSeenAt sets LastSeenAt field to given value.

### HasLastSeenAt

`func (o *Swarm) HasLastSeenAt() bool`

HasLastSeenAt returns a boolean if a field has been set.

### SetLastSeenAtNil

`func (o *Swarm) SetLastSeenAtNil(b bool)`

 SetLastSeenAtNil sets the value for LastSeenAt to be an explicit nil

### UnsetLastSeenAt
`func (o *Swarm) UnsetLastSeenAt()`

UnsetLastSeenAt ensures that no value is present for LastSeenAt, not even an explicit nil
### GetCapacity

`func (o *Swarm) GetCapacity() map[string]string`

GetCapacity returns the Capacity field if non-nil, zero value otherwise.

### GetCapacityOk

`func (o *Swarm) GetCapacityOk() (*map[string]string, bool)`

GetCapacityOk returns a tuple with the Capacity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCapacity

`func (o *Swarm) SetCapacity(v map[string]string)`

SetCapacity sets Capacity field to given value.

### HasCapacity

`func (o *Swarm) HasCapacity() bool`

HasCapacity returns a boolean if a field has been set.

### GetLabels

`func (o *Swarm) GetLabels() map[string]string`

GetLabels returns the Labels field if non-nil, zero value otherwise.

### GetLabelsOk

`func (o *Swarm) GetLabelsOk() (*map[string]string, bool)`

GetLabelsOk returns a tuple with the Labels field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLabels

`func (o *Swarm) SetLabels(v map[string]string)`

SetLabels sets Labels field to given value.

### HasLabels

`func (o *Swarm) HasLabels() bool`

HasLabels returns a boolean if a field has been set.

### GetIngressInstalledAt

`func (o *Swarm) GetIngressInstalledAt() time.Time`

GetIngressInstalledAt returns the IngressInstalledAt field if non-nil, zero value otherwise.

### GetIngressInstalledAtOk

`func (o *Swarm) GetIngressInstalledAtOk() (*time.Time, bool)`

GetIngressInstalledAtOk returns a tuple with the IngressInstalledAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIngressInstalledAt

`func (o *Swarm) SetIngressInstalledAt(v time.Time)`

SetIngressInstalledAt sets IngressInstalledAt field to given value.

### HasIngressInstalledAt

`func (o *Swarm) HasIngressInstalledAt() bool`

HasIngressInstalledAt returns a boolean if a field has been set.

### SetIngressInstalledAtNil

`func (o *Swarm) SetIngressInstalledAtNil(b bool)`

 SetIngressInstalledAtNil sets the value for IngressInstalledAt to be an explicit nil

### UnsetIngressInstalledAt
`func (o *Swarm) UnsetIngressInstalledAt()`

UnsetIngressInstalledAt ensures that no value is present for IngressInstalledAt, not even an explicit nil
### GetIngressError

`func (o *Swarm) GetIngressError() string`

GetIngressError returns the IngressError field if non-nil, zero value otherwise.

### GetIngressErrorOk

`func (o *Swarm) GetIngressErrorOk() (*string, bool)`

GetIngressErrorOk returns a tuple with the IngressError field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIngressError

`func (o *Swarm) SetIngressError(v string)`

SetIngressError sets IngressError field to given value.

### HasIngressError

`func (o *Swarm) HasIngressError() bool`

HasIngressError returns a boolean if a field has been set.

### SetIngressErrorNil

`func (o *Swarm) SetIngressErrorNil(b bool)`

 SetIngressErrorNil sets the value for IngressError to be an explicit nil

### UnsetIngressError
`func (o *Swarm) UnsetIngressError()`

UnsetIngressError ensures that no value is present for IngressError, not even an explicit nil
### GetIngressNetwork

`func (o *Swarm) GetIngressNetwork() string`

GetIngressNetwork returns the IngressNetwork field if non-nil, zero value otherwise.

### GetIngressNetworkOk

`func (o *Swarm) GetIngressNetworkOk() (*string, bool)`

GetIngressNetworkOk returns a tuple with the IngressNetwork field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIngressNetwork

`func (o *Swarm) SetIngressNetwork(v string)`

SetIngressNetwork sets IngressNetwork field to given value.

### HasIngressNetwork

`func (o *Swarm) HasIngressNetwork() bool`

HasIngressNetwork returns a boolean if a field has been set.

### SetIngressNetworkNil

`func (o *Swarm) SetIngressNetworkNil(b bool)`

 SetIngressNetworkNil sets the value for IngressNetwork to be an explicit nil

### UnsetIngressNetwork
`func (o *Swarm) UnsetIngressNetwork()`

UnsetIngressNetwork ensures that no value is present for IngressNetwork, not even an explicit nil
### GetIngressVerifiedAt

`func (o *Swarm) GetIngressVerifiedAt() time.Time`

GetIngressVerifiedAt returns the IngressVerifiedAt field if non-nil, zero value otherwise.

### GetIngressVerifiedAtOk

`func (o *Swarm) GetIngressVerifiedAtOk() (*time.Time, bool)`

GetIngressVerifiedAtOk returns a tuple with the IngressVerifiedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIngressVerifiedAt

`func (o *Swarm) SetIngressVerifiedAt(v time.Time)`

SetIngressVerifiedAt sets IngressVerifiedAt field to given value.

### HasIngressVerifiedAt

`func (o *Swarm) HasIngressVerifiedAt() bool`

HasIngressVerifiedAt returns a boolean if a field has been set.

### SetIngressVerifiedAtNil

`func (o *Swarm) SetIngressVerifiedAtNil(b bool)`

 SetIngressVerifiedAtNil sets the value for IngressVerifiedAt to be an explicit nil

### UnsetIngressVerifiedAt
`func (o *Swarm) UnsetIngressVerifiedAt()`

UnsetIngressVerifiedAt ensures that no value is present for IngressVerifiedAt, not even an explicit nil
### GetIngressVerificationError

`func (o *Swarm) GetIngressVerificationError() string`

GetIngressVerificationError returns the IngressVerificationError field if non-nil, zero value otherwise.

### GetIngressVerificationErrorOk

`func (o *Swarm) GetIngressVerificationErrorOk() (*string, bool)`

GetIngressVerificationErrorOk returns a tuple with the IngressVerificationError field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIngressVerificationError

`func (o *Swarm) SetIngressVerificationError(v string)`

SetIngressVerificationError sets IngressVerificationError field to given value.

### HasIngressVerificationError

`func (o *Swarm) HasIngressVerificationError() bool`

HasIngressVerificationError returns a boolean if a field has been set.

### SetIngressVerificationErrorNil

`func (o *Swarm) SetIngressVerificationErrorNil(b bool)`

 SetIngressVerificationErrorNil sets the value for IngressVerificationError to be an explicit nil

### UnsetIngressVerificationError
`func (o *Swarm) UnsetIngressVerificationError()`

UnsetIngressVerificationError ensures that no value is present for IngressVerificationError, not even an explicit nil
### GetNodes

`func (o *Swarm) GetNodes() []SwarmNode`

GetNodes returns the Nodes field if non-nil, zero value otherwise.

### GetNodesOk

`func (o *Swarm) GetNodesOk() (*[]SwarmNode, bool)`

GetNodesOk returns a tuple with the Nodes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNodes

`func (o *Swarm) SetNodes(v []SwarmNode)`

SetNodes sets Nodes field to given value.

### HasNodes

`func (o *Swarm) HasNodes() bool`

HasNodes returns a boolean if a field has been set.

### GetMachines

`func (o *Swarm) GetMachines() []Machine`

GetMachines returns the Machines field if non-nil, zero value otherwise.

### GetMachinesOk

`func (o *Swarm) GetMachinesOk() (*[]Machine, bool)`

GetMachinesOk returns a tuple with the Machines field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMachines

`func (o *Swarm) SetMachines(v []Machine)`

SetMachines sets Machines field to given value.

### HasMachines

`func (o *Swarm) HasMachines() bool`

HasMachines returns a boolean if a field has been set.

### GetDeployments

`func (o *Swarm) GetDeployments() []string`

GetDeployments returns the Deployments field if non-nil, zero value otherwise.

### GetDeploymentsOk

`func (o *Swarm) GetDeploymentsOk() (*[]string, bool)`

GetDeploymentsOk returns a tuple with the Deployments field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeployments

`func (o *Swarm) SetDeployments(v []string)`

SetDeployments sets Deployments field to given value.

### HasDeployments

`func (o *Swarm) HasDeployments() bool`

HasDeployments returns a boolean if a field has been set.

### GetId

`func (o *Swarm) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *Swarm) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *Swarm) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *Swarm) HasId() bool`

HasId returns a boolean if a field has been set.

### GetDeletedAt

`func (o *Swarm) GetDeletedAt() time.Time`

GetDeletedAt returns the DeletedAt field if non-nil, zero value otherwise.

### GetDeletedAtOk

`func (o *Swarm) GetDeletedAtOk() (*time.Time, bool)`

GetDeletedAtOk returns a tuple with the DeletedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeletedAt

`func (o *Swarm) SetDeletedAt(v time.Time)`

SetDeletedAt sets DeletedAt field to given value.

### HasDeletedAt

`func (o *Swarm) HasDeletedAt() bool`

HasDeletedAt returns a boolean if a field has been set.

### SetDeletedAtNil

`func (o *Swarm) SetDeletedAtNil(b bool)`

 SetDeletedAtNil sets the value for DeletedAt to be an explicit nil

### UnsetDeletedAt
`func (o *Swarm) UnsetDeletedAt()`

UnsetDeletedAt ensures that no value is present for DeletedAt, not even an explicit nil
### GetCreatedAt

`func (o *Swarm) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *Swarm) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *Swarm) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *Swarm) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *Swarm) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *Swarm) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *Swarm) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *Swarm) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.

### SetUpdatedAtNil

`func (o *Swarm) SetUpdatedAtNil(b bool)`

 SetUpdatedAtNil sets the value for UpdatedAt to be an explicit nil

### UnsetUpdatedAt
`func (o *Swarm) UnsetUpdatedAt()`

UnsetUpdatedAt ensures that no value is present for UpdatedAt, not even an explicit nil
### GetPlatformOwned

`func (o *Swarm) GetPlatformOwned() bool`

GetPlatformOwned returns the PlatformOwned field if non-nil, zero value otherwise.

### GetPlatformOwnedOk

`func (o *Swarm) GetPlatformOwnedOk() (*bool, bool)`

GetPlatformOwnedOk returns a tuple with the PlatformOwned field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPlatformOwned

`func (o *Swarm) SetPlatformOwned(v bool)`

SetPlatformOwned sets PlatformOwned field to given value.

### HasPlatformOwned

`func (o *Swarm) HasPlatformOwned() bool`

HasPlatformOwned returns a boolean if a field has been set.

### GetPlatformProvisioned

`func (o *Swarm) GetPlatformProvisioned() bool`

GetPlatformProvisioned returns the PlatformProvisioned field if non-nil, zero value otherwise.

### GetPlatformProvisionedOk

`func (o *Swarm) GetPlatformProvisionedOk() (*bool, bool)`

GetPlatformProvisionedOk returns a tuple with the PlatformProvisioned field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPlatformProvisioned

`func (o *Swarm) SetPlatformProvisioned(v bool)`

SetPlatformProvisioned sets PlatformProvisioned field to given value.

### HasPlatformProvisioned

`func (o *Swarm) HasPlatformProvisioned() bool`

HasPlatformProvisioned returns a boolean if a field has been set.

### GetWorkingEdge

`func (o *Swarm) GetWorkingEdge() bool`

GetWorkingEdge returns the WorkingEdge field if non-nil, zero value otherwise.

### GetWorkingEdgeOk

`func (o *Swarm) GetWorkingEdgeOk() (*bool, bool)`

GetWorkingEdgeOk returns a tuple with the WorkingEdge field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWorkingEdge

`func (o *Swarm) SetWorkingEdge(v bool)`

SetWorkingEdge sets WorkingEdge field to given value.

### HasWorkingEdge

`func (o *Swarm) HasWorkingEdge() bool`

HasWorkingEdge returns a boolean if a field has been set.

### GetDeleted

`func (o *Swarm) GetDeleted() bool`

GetDeleted returns the Deleted field if non-nil, zero value otherwise.

### GetDeletedOk

`func (o *Swarm) GetDeletedOk() (*bool, bool)`

GetDeletedOk returns a tuple with the Deleted field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeleted

`func (o *Swarm) SetDeleted(v bool)`

SetDeleted sets Deleted field to given value.

### HasDeleted

`func (o *Swarm) HasDeleted() bool`

HasDeleted returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


