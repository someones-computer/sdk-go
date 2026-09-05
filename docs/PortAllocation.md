# PortAllocation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Swarm** | Pointer to **string** | The cluster this port is claimed on. Deleting the cluster takes its allocations with it — a reservation on a swarm that no longer exists is not holding anything back. | [optional] 
**Application** | Pointer to **string** |  | [optional] 
**DeploymentName** | Pointer to **string** | The deployment name this reservation belongs to — {@see Deployment::$name}, or &#x60;&#39;&#39;&#x60; for a revision that carries no name (before the field existed, or a client that never sent one), which is its own stable scope rather than a wildcard: every unnamed revision of an application shares it, exactly the single continuous scope every application had before this column existed. | [optional] 
**ServiceName** | Pointer to **string** | The compose service name, as the customer&#39;s file spells it. | [optional] 
**TargetPort** | Pointer to **int32** | The container port traffic is forwarded to. | [optional] 
**Protocol** | Pointer to **string** |  | [optional] 
**PublishedPort** | Pointer to **int32** | What the world connects to. Unique per protocol on this cluster. | [optional] 
**Assigned** | Pointer to **bool** | Whether the platform chose this number or the compose file did. | [optional] 
**Id** | Pointer to **string** |  | [optional] [readonly] 
**CreatedAt** | Pointer to **time.Time** |  | [optional] [readonly] 
**UpdatedAt** | Pointer to **NullableTime** |  | [optional] [readonly] 

## Methods

### NewPortAllocation

`func NewPortAllocation() *PortAllocation`

NewPortAllocation instantiates a new PortAllocation object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPortAllocationWithDefaults

`func NewPortAllocationWithDefaults() *PortAllocation`

NewPortAllocationWithDefaults instantiates a new PortAllocation object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSwarm

`func (o *PortAllocation) GetSwarm() string`

GetSwarm returns the Swarm field if non-nil, zero value otherwise.

### GetSwarmOk

`func (o *PortAllocation) GetSwarmOk() (*string, bool)`

GetSwarmOk returns a tuple with the Swarm field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSwarm

`func (o *PortAllocation) SetSwarm(v string)`

SetSwarm sets Swarm field to given value.

### HasSwarm

`func (o *PortAllocation) HasSwarm() bool`

HasSwarm returns a boolean if a field has been set.

### GetApplication

`func (o *PortAllocation) GetApplication() string`

GetApplication returns the Application field if non-nil, zero value otherwise.

### GetApplicationOk

`func (o *PortAllocation) GetApplicationOk() (*string, bool)`

GetApplicationOk returns a tuple with the Application field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApplication

`func (o *PortAllocation) SetApplication(v string)`

SetApplication sets Application field to given value.

### HasApplication

`func (o *PortAllocation) HasApplication() bool`

HasApplication returns a boolean if a field has been set.

### GetDeploymentName

`func (o *PortAllocation) GetDeploymentName() string`

GetDeploymentName returns the DeploymentName field if non-nil, zero value otherwise.

### GetDeploymentNameOk

`func (o *PortAllocation) GetDeploymentNameOk() (*string, bool)`

GetDeploymentNameOk returns a tuple with the DeploymentName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeploymentName

`func (o *PortAllocation) SetDeploymentName(v string)`

SetDeploymentName sets DeploymentName field to given value.

### HasDeploymentName

`func (o *PortAllocation) HasDeploymentName() bool`

HasDeploymentName returns a boolean if a field has been set.

### GetServiceName

`func (o *PortAllocation) GetServiceName() string`

GetServiceName returns the ServiceName field if non-nil, zero value otherwise.

### GetServiceNameOk

`func (o *PortAllocation) GetServiceNameOk() (*string, bool)`

GetServiceNameOk returns a tuple with the ServiceName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServiceName

`func (o *PortAllocation) SetServiceName(v string)`

SetServiceName sets ServiceName field to given value.

### HasServiceName

`func (o *PortAllocation) HasServiceName() bool`

HasServiceName returns a boolean if a field has been set.

### GetTargetPort

`func (o *PortAllocation) GetTargetPort() int32`

GetTargetPort returns the TargetPort field if non-nil, zero value otherwise.

### GetTargetPortOk

`func (o *PortAllocation) GetTargetPortOk() (*int32, bool)`

GetTargetPortOk returns a tuple with the TargetPort field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTargetPort

`func (o *PortAllocation) SetTargetPort(v int32)`

SetTargetPort sets TargetPort field to given value.

### HasTargetPort

`func (o *PortAllocation) HasTargetPort() bool`

HasTargetPort returns a boolean if a field has been set.

### GetProtocol

`func (o *PortAllocation) GetProtocol() string`

GetProtocol returns the Protocol field if non-nil, zero value otherwise.

### GetProtocolOk

`func (o *PortAllocation) GetProtocolOk() (*string, bool)`

GetProtocolOk returns a tuple with the Protocol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProtocol

`func (o *PortAllocation) SetProtocol(v string)`

SetProtocol sets Protocol field to given value.

### HasProtocol

`func (o *PortAllocation) HasProtocol() bool`

HasProtocol returns a boolean if a field has been set.

### GetPublishedPort

`func (o *PortAllocation) GetPublishedPort() int32`

GetPublishedPort returns the PublishedPort field if non-nil, zero value otherwise.

### GetPublishedPortOk

`func (o *PortAllocation) GetPublishedPortOk() (*int32, bool)`

GetPublishedPortOk returns a tuple with the PublishedPort field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPublishedPort

`func (o *PortAllocation) SetPublishedPort(v int32)`

SetPublishedPort sets PublishedPort field to given value.

### HasPublishedPort

`func (o *PortAllocation) HasPublishedPort() bool`

HasPublishedPort returns a boolean if a field has been set.

### GetAssigned

`func (o *PortAllocation) GetAssigned() bool`

GetAssigned returns the Assigned field if non-nil, zero value otherwise.

### GetAssignedOk

`func (o *PortAllocation) GetAssignedOk() (*bool, bool)`

GetAssignedOk returns a tuple with the Assigned field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAssigned

`func (o *PortAllocation) SetAssigned(v bool)`

SetAssigned sets Assigned field to given value.

### HasAssigned

`func (o *PortAllocation) HasAssigned() bool`

HasAssigned returns a boolean if a field has been set.

### GetId

`func (o *PortAllocation) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *PortAllocation) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *PortAllocation) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *PortAllocation) HasId() bool`

HasId returns a boolean if a field has been set.

### GetCreatedAt

`func (o *PortAllocation) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *PortAllocation) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *PortAllocation) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *PortAllocation) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *PortAllocation) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *PortAllocation) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *PortAllocation) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *PortAllocation) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.

### SetUpdatedAtNil

`func (o *PortAllocation) SetUpdatedAtNil(b bool)`

 SetUpdatedAtNil sets the value for UpdatedAt to be an explicit nil

### UnsetUpdatedAt
`func (o *PortAllocation) UnsetUpdatedAt()`

UnsetUpdatedAt ensures that no value is present for UpdatedAt, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


