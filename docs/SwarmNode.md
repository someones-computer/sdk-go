# SwarmNode

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Swarm** | Pointer to **string** |  | [optional] 
**NodeId** | Pointer to **string** | The swarm-assigned node id. | [optional] 
**Hostname** | Pointer to **NullableString** |  | [optional] 
**State** | Pointer to **NullableString** |  | [optional] 
**Capacity** | Pointer to **map[string]string** | This node&#39;s share of the cluster&#39;s capacity, as the reconciler read it. | [optional] 
**Id** | Pointer to **string** |  | [optional] [readonly] 
**CreatedAt** | Pointer to **time.Time** |  | [optional] [readonly] 
**UpdatedAt** | Pointer to **NullableTime** |  | [optional] [readonly] 

## Methods

### NewSwarmNode

`func NewSwarmNode() *SwarmNode`

NewSwarmNode instantiates a new SwarmNode object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSwarmNodeWithDefaults

`func NewSwarmNodeWithDefaults() *SwarmNode`

NewSwarmNodeWithDefaults instantiates a new SwarmNode object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSwarm

`func (o *SwarmNode) GetSwarm() string`

GetSwarm returns the Swarm field if non-nil, zero value otherwise.

### GetSwarmOk

`func (o *SwarmNode) GetSwarmOk() (*string, bool)`

GetSwarmOk returns a tuple with the Swarm field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSwarm

`func (o *SwarmNode) SetSwarm(v string)`

SetSwarm sets Swarm field to given value.

### HasSwarm

`func (o *SwarmNode) HasSwarm() bool`

HasSwarm returns a boolean if a field has been set.

### GetNodeId

`func (o *SwarmNode) GetNodeId() string`

GetNodeId returns the NodeId field if non-nil, zero value otherwise.

### GetNodeIdOk

`func (o *SwarmNode) GetNodeIdOk() (*string, bool)`

GetNodeIdOk returns a tuple with the NodeId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNodeId

`func (o *SwarmNode) SetNodeId(v string)`

SetNodeId sets NodeId field to given value.

### HasNodeId

`func (o *SwarmNode) HasNodeId() bool`

HasNodeId returns a boolean if a field has been set.

### GetHostname

`func (o *SwarmNode) GetHostname() string`

GetHostname returns the Hostname field if non-nil, zero value otherwise.

### GetHostnameOk

`func (o *SwarmNode) GetHostnameOk() (*string, bool)`

GetHostnameOk returns a tuple with the Hostname field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHostname

`func (o *SwarmNode) SetHostname(v string)`

SetHostname sets Hostname field to given value.

### HasHostname

`func (o *SwarmNode) HasHostname() bool`

HasHostname returns a boolean if a field has been set.

### SetHostnameNil

`func (o *SwarmNode) SetHostnameNil(b bool)`

 SetHostnameNil sets the value for Hostname to be an explicit nil

### UnsetHostname
`func (o *SwarmNode) UnsetHostname()`

UnsetHostname ensures that no value is present for Hostname, not even an explicit nil
### GetState

`func (o *SwarmNode) GetState() string`

GetState returns the State field if non-nil, zero value otherwise.

### GetStateOk

`func (o *SwarmNode) GetStateOk() (*string, bool)`

GetStateOk returns a tuple with the State field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetState

`func (o *SwarmNode) SetState(v string)`

SetState sets State field to given value.

### HasState

`func (o *SwarmNode) HasState() bool`

HasState returns a boolean if a field has been set.

### SetStateNil

`func (o *SwarmNode) SetStateNil(b bool)`

 SetStateNil sets the value for State to be an explicit nil

### UnsetState
`func (o *SwarmNode) UnsetState()`

UnsetState ensures that no value is present for State, not even an explicit nil
### GetCapacity

`func (o *SwarmNode) GetCapacity() map[string]string`

GetCapacity returns the Capacity field if non-nil, zero value otherwise.

### GetCapacityOk

`func (o *SwarmNode) GetCapacityOk() (*map[string]string, bool)`

GetCapacityOk returns a tuple with the Capacity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCapacity

`func (o *SwarmNode) SetCapacity(v map[string]string)`

SetCapacity sets Capacity field to given value.

### HasCapacity

`func (o *SwarmNode) HasCapacity() bool`

HasCapacity returns a boolean if a field has been set.

### GetId

`func (o *SwarmNode) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *SwarmNode) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *SwarmNode) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *SwarmNode) HasId() bool`

HasId returns a boolean if a field has been set.

### GetCreatedAt

`func (o *SwarmNode) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *SwarmNode) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *SwarmNode) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *SwarmNode) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *SwarmNode) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *SwarmNode) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *SwarmNode) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *SwarmNode) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.

### SetUpdatedAtNil

`func (o *SwarmNode) SetUpdatedAtNil(b bool)`

 SetUpdatedAtNil sets the value for UpdatedAt to be an explicit nil

### UnsetUpdatedAt
`func (o *SwarmNode) UnsetUpdatedAt()`

UnsetUpdatedAt ensures that no value is present for UpdatedAt, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


