# DeploymentDeploymentEndpoint

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Service** | Pointer to **string** |  | [optional] 
**Protocol** | Pointer to **string** |  | [optional] 
**Host** | Pointer to **NullableString** |  | [optional] 
**Port** | Pointer to **NullableInt32** |  | [optional] 
**TargetPort** | Pointer to **int32** |  | [optional] 
**Assigned** | Pointer to **bool** |  | [optional] 
**EdgeRouted** | Pointer to **bool** |  | [optional] 
**Url** | Pointer to **NullableString** |  | [optional] 
**HostUnknownReason** | Pointer to **NullableString** |  | [optional] 

## Methods

### NewDeploymentDeploymentEndpoint

`func NewDeploymentDeploymentEndpoint() *DeploymentDeploymentEndpoint`

NewDeploymentDeploymentEndpoint instantiates a new DeploymentDeploymentEndpoint object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDeploymentDeploymentEndpointWithDefaults

`func NewDeploymentDeploymentEndpointWithDefaults() *DeploymentDeploymentEndpoint`

NewDeploymentDeploymentEndpointWithDefaults instantiates a new DeploymentDeploymentEndpoint object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetService

`func (o *DeploymentDeploymentEndpoint) GetService() string`

GetService returns the Service field if non-nil, zero value otherwise.

### GetServiceOk

`func (o *DeploymentDeploymentEndpoint) GetServiceOk() (*string, bool)`

GetServiceOk returns a tuple with the Service field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetService

`func (o *DeploymentDeploymentEndpoint) SetService(v string)`

SetService sets Service field to given value.

### HasService

`func (o *DeploymentDeploymentEndpoint) HasService() bool`

HasService returns a boolean if a field has been set.

### GetProtocol

`func (o *DeploymentDeploymentEndpoint) GetProtocol() string`

GetProtocol returns the Protocol field if non-nil, zero value otherwise.

### GetProtocolOk

`func (o *DeploymentDeploymentEndpoint) GetProtocolOk() (*string, bool)`

GetProtocolOk returns a tuple with the Protocol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProtocol

`func (o *DeploymentDeploymentEndpoint) SetProtocol(v string)`

SetProtocol sets Protocol field to given value.

### HasProtocol

`func (o *DeploymentDeploymentEndpoint) HasProtocol() bool`

HasProtocol returns a boolean if a field has been set.

### GetHost

`func (o *DeploymentDeploymentEndpoint) GetHost() string`

GetHost returns the Host field if non-nil, zero value otherwise.

### GetHostOk

`func (o *DeploymentDeploymentEndpoint) GetHostOk() (*string, bool)`

GetHostOk returns a tuple with the Host field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHost

`func (o *DeploymentDeploymentEndpoint) SetHost(v string)`

SetHost sets Host field to given value.

### HasHost

`func (o *DeploymentDeploymentEndpoint) HasHost() bool`

HasHost returns a boolean if a field has been set.

### SetHostNil

`func (o *DeploymentDeploymentEndpoint) SetHostNil(b bool)`

 SetHostNil sets the value for Host to be an explicit nil

### UnsetHost
`func (o *DeploymentDeploymentEndpoint) UnsetHost()`

UnsetHost ensures that no value is present for Host, not even an explicit nil
### GetPort

`func (o *DeploymentDeploymentEndpoint) GetPort() int32`

GetPort returns the Port field if non-nil, zero value otherwise.

### GetPortOk

`func (o *DeploymentDeploymentEndpoint) GetPortOk() (*int32, bool)`

GetPortOk returns a tuple with the Port field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPort

`func (o *DeploymentDeploymentEndpoint) SetPort(v int32)`

SetPort sets Port field to given value.

### HasPort

`func (o *DeploymentDeploymentEndpoint) HasPort() bool`

HasPort returns a boolean if a field has been set.

### SetPortNil

`func (o *DeploymentDeploymentEndpoint) SetPortNil(b bool)`

 SetPortNil sets the value for Port to be an explicit nil

### UnsetPort
`func (o *DeploymentDeploymentEndpoint) UnsetPort()`

UnsetPort ensures that no value is present for Port, not even an explicit nil
### GetTargetPort

`func (o *DeploymentDeploymentEndpoint) GetTargetPort() int32`

GetTargetPort returns the TargetPort field if non-nil, zero value otherwise.

### GetTargetPortOk

`func (o *DeploymentDeploymentEndpoint) GetTargetPortOk() (*int32, bool)`

GetTargetPortOk returns a tuple with the TargetPort field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTargetPort

`func (o *DeploymentDeploymentEndpoint) SetTargetPort(v int32)`

SetTargetPort sets TargetPort field to given value.

### HasTargetPort

`func (o *DeploymentDeploymentEndpoint) HasTargetPort() bool`

HasTargetPort returns a boolean if a field has been set.

### GetAssigned

`func (o *DeploymentDeploymentEndpoint) GetAssigned() bool`

GetAssigned returns the Assigned field if non-nil, zero value otherwise.

### GetAssignedOk

`func (o *DeploymentDeploymentEndpoint) GetAssignedOk() (*bool, bool)`

GetAssignedOk returns a tuple with the Assigned field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAssigned

`func (o *DeploymentDeploymentEndpoint) SetAssigned(v bool)`

SetAssigned sets Assigned field to given value.

### HasAssigned

`func (o *DeploymentDeploymentEndpoint) HasAssigned() bool`

HasAssigned returns a boolean if a field has been set.

### GetEdgeRouted

`func (o *DeploymentDeploymentEndpoint) GetEdgeRouted() bool`

GetEdgeRouted returns the EdgeRouted field if non-nil, zero value otherwise.

### GetEdgeRoutedOk

`func (o *DeploymentDeploymentEndpoint) GetEdgeRoutedOk() (*bool, bool)`

GetEdgeRoutedOk returns a tuple with the EdgeRouted field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEdgeRouted

`func (o *DeploymentDeploymentEndpoint) SetEdgeRouted(v bool)`

SetEdgeRouted sets EdgeRouted field to given value.

### HasEdgeRouted

`func (o *DeploymentDeploymentEndpoint) HasEdgeRouted() bool`

HasEdgeRouted returns a boolean if a field has been set.

### GetUrl

`func (o *DeploymentDeploymentEndpoint) GetUrl() string`

GetUrl returns the Url field if non-nil, zero value otherwise.

### GetUrlOk

`func (o *DeploymentDeploymentEndpoint) GetUrlOk() (*string, bool)`

GetUrlOk returns a tuple with the Url field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUrl

`func (o *DeploymentDeploymentEndpoint) SetUrl(v string)`

SetUrl sets Url field to given value.

### HasUrl

`func (o *DeploymentDeploymentEndpoint) HasUrl() bool`

HasUrl returns a boolean if a field has been set.

### SetUrlNil

`func (o *DeploymentDeploymentEndpoint) SetUrlNil(b bool)`

 SetUrlNil sets the value for Url to be an explicit nil

### UnsetUrl
`func (o *DeploymentDeploymentEndpoint) UnsetUrl()`

UnsetUrl ensures that no value is present for Url, not even an explicit nil
### GetHostUnknownReason

`func (o *DeploymentDeploymentEndpoint) GetHostUnknownReason() string`

GetHostUnknownReason returns the HostUnknownReason field if non-nil, zero value otherwise.

### GetHostUnknownReasonOk

`func (o *DeploymentDeploymentEndpoint) GetHostUnknownReasonOk() (*string, bool)`

GetHostUnknownReasonOk returns a tuple with the HostUnknownReason field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHostUnknownReason

`func (o *DeploymentDeploymentEndpoint) SetHostUnknownReason(v string)`

SetHostUnknownReason sets HostUnknownReason field to given value.

### HasHostUnknownReason

`func (o *DeploymentDeploymentEndpoint) HasHostUnknownReason() bool`

HasHostUnknownReason returns a boolean if a field has been set.

### SetHostUnknownReasonNil

`func (o *DeploymentDeploymentEndpoint) SetHostUnknownReasonNil(b bool)`

 SetHostUnknownReasonNil sets the value for HostUnknownReason to be an explicit nil

### UnsetHostUnknownReason
`func (o *DeploymentDeploymentEndpoint) UnsetHostUnknownReason()`

UnsetHostUnknownReason ensures that no value is present for HostUnknownReason, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


