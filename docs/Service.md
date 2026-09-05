# Service

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Deployment** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**Image** | Pointer to **string** |  | [optional] 
**Replicas** | Pointer to **int32** |  | [optional] [default to 1]
**CpuLimit** | Pointer to [**NullableServiceCpuLimit**](ServiceCpuLimit.md) |  | [optional] 
**MemLimit** | Pointer to [**NullableServiceMemLimit**](ServiceMemLimit.md) |  | [optional] 
**CpuReservation** | Pointer to [**NullableServiceCpuReservation**](ServiceCpuReservation.md) |  | [optional] 
**MemReservation** | Pointer to [**NullableServiceMemReservation**](ServiceMemReservation.md) |  | [optional] 
**Ports** | Pointer to [**[]map[string]ServicePortsInnerValue**](map[string]ServicePortsInnerValue.md) |  | [optional] 
**HttpPort** | Pointer to **NullableInt32** | The container port this service speaks HTTP on, as compose&#39;s &#x60;x-someones.http&#x60; declared it — null means nothing was declared and {@see \\App\\Service\\Ingress\\IngressPlanner} falls back to the well-known ports. | [optional] 
**Command** | Pointer to **[]string** | The container&#39;s argv, as compose &#x60;command:&#x60; declared it — already split into words by the parser, because Swarm&#39;s &#x60;Args&#x60; is argv rather than a line. | [optional] 
**Entrypoint** | Pointer to **[]string** | The container&#39;s &#x60;Command&#x60; — compose &#x60;entrypoint:&#x60;, which replaces the image&#39;s own &#x60;ENTRYPOINT&#x60; rather than feeding it, unlike {@see $command}. | [optional] 
**Healthcheck** | Pointer to [**map[string]ServiceHealthcheckValue**](ServiceHealthcheckValue.md) | Compose &#x60;healthcheck:&#x60;, projected straight from {@see \\App\\Service\\Compose\\ComposeParser::healthcheck()} into the shape {@see \\App\\Service\\Deploy\\StackDeployer} sends as Swarm&#39;s &#x60;ContainerSpec.Healthcheck&#x60; — &#x60;test&#x60; is a &#x60;NONE&#x60;/&#x60;CMD&#x60;/&#x60;CMD-SHELL&#x60; argv, the rest are nanoseconds/a count. Null means nothing was declared, so an image&#39;s own baked-in &#x60;HEALTHCHECK&#x60; (or none) stands; &#x60;disable: true&#x60; in the compose file is not null, it is &#x60;test: [\&quot;NONE\&quot;]&#x60; — an explicit instruction rather than silence. | [optional] 
**Restart** | Pointer to **string** | What happens when a container exits; also decides service vs job. | [optional] [default to "always"]
**ForwardedUnscanned** | Pointer to **bool** | Set while this service&#39;s image arrived by client-side forwarding (docs/registry.md&#39;s \&quot;Client-side forwarding\&quot; callout) and no scan verdict is yet on record for the digest it was pinned to — bytes from a user&#39;s machine, not a source tree we built or a registry we chose to trust. A forwarded image is scanned as it loads ({@see \\App\\MessageHandler\\BuildBundleHandler}), so this is normally cleared by the time the service is projected; one left set is a forwarded image that reached deploy unvetted, which {@see \\App\\MessageHandler\\DeployRevisionHandler} refuses to run (docs/image-scanning.md). | [optional] [default to false]
**Id** | Pointer to **string** |  | [optional] [readonly] 
**CreatedAt** | Pointer to **time.Time** |  | [optional] [readonly] 
**UpdatedAt** | Pointer to **NullableTime** |  | [optional] [readonly] 

## Methods

### NewService

`func NewService() *Service`

NewService instantiates a new Service object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewServiceWithDefaults

`func NewServiceWithDefaults() *Service`

NewServiceWithDefaults instantiates a new Service object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDeployment

`func (o *Service) GetDeployment() string`

GetDeployment returns the Deployment field if non-nil, zero value otherwise.

### GetDeploymentOk

`func (o *Service) GetDeploymentOk() (*string, bool)`

GetDeploymentOk returns a tuple with the Deployment field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeployment

`func (o *Service) SetDeployment(v string)`

SetDeployment sets Deployment field to given value.

### HasDeployment

`func (o *Service) HasDeployment() bool`

HasDeployment returns a boolean if a field has been set.

### GetName

`func (o *Service) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *Service) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *Service) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *Service) HasName() bool`

HasName returns a boolean if a field has been set.

### GetImage

`func (o *Service) GetImage() string`

GetImage returns the Image field if non-nil, zero value otherwise.

### GetImageOk

`func (o *Service) GetImageOk() (*string, bool)`

GetImageOk returns a tuple with the Image field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImage

`func (o *Service) SetImage(v string)`

SetImage sets Image field to given value.

### HasImage

`func (o *Service) HasImage() bool`

HasImage returns a boolean if a field has been set.

### GetReplicas

`func (o *Service) GetReplicas() int32`

GetReplicas returns the Replicas field if non-nil, zero value otherwise.

### GetReplicasOk

`func (o *Service) GetReplicasOk() (*int32, bool)`

GetReplicasOk returns a tuple with the Replicas field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReplicas

`func (o *Service) SetReplicas(v int32)`

SetReplicas sets Replicas field to given value.

### HasReplicas

`func (o *Service) HasReplicas() bool`

HasReplicas returns a boolean if a field has been set.

### GetCpuLimit

`func (o *Service) GetCpuLimit() ServiceCpuLimit`

GetCpuLimit returns the CpuLimit field if non-nil, zero value otherwise.

### GetCpuLimitOk

`func (o *Service) GetCpuLimitOk() (*ServiceCpuLimit, bool)`

GetCpuLimitOk returns a tuple with the CpuLimit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCpuLimit

`func (o *Service) SetCpuLimit(v ServiceCpuLimit)`

SetCpuLimit sets CpuLimit field to given value.

### HasCpuLimit

`func (o *Service) HasCpuLimit() bool`

HasCpuLimit returns a boolean if a field has been set.

### SetCpuLimitNil

`func (o *Service) SetCpuLimitNil(b bool)`

 SetCpuLimitNil sets the value for CpuLimit to be an explicit nil

### UnsetCpuLimit
`func (o *Service) UnsetCpuLimit()`

UnsetCpuLimit ensures that no value is present for CpuLimit, not even an explicit nil
### GetMemLimit

`func (o *Service) GetMemLimit() ServiceMemLimit`

GetMemLimit returns the MemLimit field if non-nil, zero value otherwise.

### GetMemLimitOk

`func (o *Service) GetMemLimitOk() (*ServiceMemLimit, bool)`

GetMemLimitOk returns a tuple with the MemLimit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMemLimit

`func (o *Service) SetMemLimit(v ServiceMemLimit)`

SetMemLimit sets MemLimit field to given value.

### HasMemLimit

`func (o *Service) HasMemLimit() bool`

HasMemLimit returns a boolean if a field has been set.

### SetMemLimitNil

`func (o *Service) SetMemLimitNil(b bool)`

 SetMemLimitNil sets the value for MemLimit to be an explicit nil

### UnsetMemLimit
`func (o *Service) UnsetMemLimit()`

UnsetMemLimit ensures that no value is present for MemLimit, not even an explicit nil
### GetCpuReservation

`func (o *Service) GetCpuReservation() ServiceCpuReservation`

GetCpuReservation returns the CpuReservation field if non-nil, zero value otherwise.

### GetCpuReservationOk

`func (o *Service) GetCpuReservationOk() (*ServiceCpuReservation, bool)`

GetCpuReservationOk returns a tuple with the CpuReservation field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCpuReservation

`func (o *Service) SetCpuReservation(v ServiceCpuReservation)`

SetCpuReservation sets CpuReservation field to given value.

### HasCpuReservation

`func (o *Service) HasCpuReservation() bool`

HasCpuReservation returns a boolean if a field has been set.

### SetCpuReservationNil

`func (o *Service) SetCpuReservationNil(b bool)`

 SetCpuReservationNil sets the value for CpuReservation to be an explicit nil

### UnsetCpuReservation
`func (o *Service) UnsetCpuReservation()`

UnsetCpuReservation ensures that no value is present for CpuReservation, not even an explicit nil
### GetMemReservation

`func (o *Service) GetMemReservation() ServiceMemReservation`

GetMemReservation returns the MemReservation field if non-nil, zero value otherwise.

### GetMemReservationOk

`func (o *Service) GetMemReservationOk() (*ServiceMemReservation, bool)`

GetMemReservationOk returns a tuple with the MemReservation field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMemReservation

`func (o *Service) SetMemReservation(v ServiceMemReservation)`

SetMemReservation sets MemReservation field to given value.

### HasMemReservation

`func (o *Service) HasMemReservation() bool`

HasMemReservation returns a boolean if a field has been set.

### SetMemReservationNil

`func (o *Service) SetMemReservationNil(b bool)`

 SetMemReservationNil sets the value for MemReservation to be an explicit nil

### UnsetMemReservation
`func (o *Service) UnsetMemReservation()`

UnsetMemReservation ensures that no value is present for MemReservation, not even an explicit nil
### GetPorts

`func (o *Service) GetPorts() []map[string]ServicePortsInnerValue`

GetPorts returns the Ports field if non-nil, zero value otherwise.

### GetPortsOk

`func (o *Service) GetPortsOk() (*[]map[string]ServicePortsInnerValue, bool)`

GetPortsOk returns a tuple with the Ports field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPorts

`func (o *Service) SetPorts(v []map[string]ServicePortsInnerValue)`

SetPorts sets Ports field to given value.

### HasPorts

`func (o *Service) HasPorts() bool`

HasPorts returns a boolean if a field has been set.

### SetPortsNil

`func (o *Service) SetPortsNil(b bool)`

 SetPortsNil sets the value for Ports to be an explicit nil

### UnsetPorts
`func (o *Service) UnsetPorts()`

UnsetPorts ensures that no value is present for Ports, not even an explicit nil
### GetHttpPort

`func (o *Service) GetHttpPort() int32`

GetHttpPort returns the HttpPort field if non-nil, zero value otherwise.

### GetHttpPortOk

`func (o *Service) GetHttpPortOk() (*int32, bool)`

GetHttpPortOk returns a tuple with the HttpPort field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHttpPort

`func (o *Service) SetHttpPort(v int32)`

SetHttpPort sets HttpPort field to given value.

### HasHttpPort

`func (o *Service) HasHttpPort() bool`

HasHttpPort returns a boolean if a field has been set.

### SetHttpPortNil

`func (o *Service) SetHttpPortNil(b bool)`

 SetHttpPortNil sets the value for HttpPort to be an explicit nil

### UnsetHttpPort
`func (o *Service) UnsetHttpPort()`

UnsetHttpPort ensures that no value is present for HttpPort, not even an explicit nil
### GetCommand

`func (o *Service) GetCommand() []string`

GetCommand returns the Command field if non-nil, zero value otherwise.

### GetCommandOk

`func (o *Service) GetCommandOk() (*[]string, bool)`

GetCommandOk returns a tuple with the Command field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCommand

`func (o *Service) SetCommand(v []string)`

SetCommand sets Command field to given value.

### HasCommand

`func (o *Service) HasCommand() bool`

HasCommand returns a boolean if a field has been set.

### SetCommandNil

`func (o *Service) SetCommandNil(b bool)`

 SetCommandNil sets the value for Command to be an explicit nil

### UnsetCommand
`func (o *Service) UnsetCommand()`

UnsetCommand ensures that no value is present for Command, not even an explicit nil
### GetEntrypoint

`func (o *Service) GetEntrypoint() []string`

GetEntrypoint returns the Entrypoint field if non-nil, zero value otherwise.

### GetEntrypointOk

`func (o *Service) GetEntrypointOk() (*[]string, bool)`

GetEntrypointOk returns a tuple with the Entrypoint field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntrypoint

`func (o *Service) SetEntrypoint(v []string)`

SetEntrypoint sets Entrypoint field to given value.

### HasEntrypoint

`func (o *Service) HasEntrypoint() bool`

HasEntrypoint returns a boolean if a field has been set.

### SetEntrypointNil

`func (o *Service) SetEntrypointNil(b bool)`

 SetEntrypointNil sets the value for Entrypoint to be an explicit nil

### UnsetEntrypoint
`func (o *Service) UnsetEntrypoint()`

UnsetEntrypoint ensures that no value is present for Entrypoint, not even an explicit nil
### GetHealthcheck

`func (o *Service) GetHealthcheck() map[string]ServiceHealthcheckValue`

GetHealthcheck returns the Healthcheck field if non-nil, zero value otherwise.

### GetHealthcheckOk

`func (o *Service) GetHealthcheckOk() (*map[string]ServiceHealthcheckValue, bool)`

GetHealthcheckOk returns a tuple with the Healthcheck field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHealthcheck

`func (o *Service) SetHealthcheck(v map[string]ServiceHealthcheckValue)`

SetHealthcheck sets Healthcheck field to given value.

### HasHealthcheck

`func (o *Service) HasHealthcheck() bool`

HasHealthcheck returns a boolean if a field has been set.

### GetRestart

`func (o *Service) GetRestart() string`

GetRestart returns the Restart field if non-nil, zero value otherwise.

### GetRestartOk

`func (o *Service) GetRestartOk() (*string, bool)`

GetRestartOk returns a tuple with the Restart field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRestart

`func (o *Service) SetRestart(v string)`

SetRestart sets Restart field to given value.

### HasRestart

`func (o *Service) HasRestart() bool`

HasRestart returns a boolean if a field has been set.

### GetForwardedUnscanned

`func (o *Service) GetForwardedUnscanned() bool`

GetForwardedUnscanned returns the ForwardedUnscanned field if non-nil, zero value otherwise.

### GetForwardedUnscannedOk

`func (o *Service) GetForwardedUnscannedOk() (*bool, bool)`

GetForwardedUnscannedOk returns a tuple with the ForwardedUnscanned field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetForwardedUnscanned

`func (o *Service) SetForwardedUnscanned(v bool)`

SetForwardedUnscanned sets ForwardedUnscanned field to given value.

### HasForwardedUnscanned

`func (o *Service) HasForwardedUnscanned() bool`

HasForwardedUnscanned returns a boolean if a field has been set.

### GetId

`func (o *Service) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *Service) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *Service) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *Service) HasId() bool`

HasId returns a boolean if a field has been set.

### GetCreatedAt

`func (o *Service) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *Service) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *Service) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *Service) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *Service) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *Service) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *Service) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *Service) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.

### SetUpdatedAtNil

`func (o *Service) SetUpdatedAtNil(b bool)`

 SetUpdatedAtNil sets the value for UpdatedAt to be an explicit nil

### UnsetUpdatedAt
`func (o *Service) UnsetUpdatedAt()`

UnsetUpdatedAt ensures that no value is present for UpdatedAt, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


