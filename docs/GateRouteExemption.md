# GateRouteExemption

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Application** | Pointer to **string** |  | [optional] 
**ServiceName** | Pointer to **string** |  | [optional] 
**Host** | Pointer to **string** |  | [optional] [readonly] 
**PathPrefix** | Pointer to **string** |  | [optional] [readonly] 
**Methods** | Pointer to **string** | Comma-joined, sorted verbs: {@see GateExemption::methodsKey()}. | [optional] [readonly] 
**ApprovedAt** | Pointer to **NullableTime** |  | [optional] 
**Id** | Pointer to **string** |  | [optional] [readonly] 

## Methods

### NewGateRouteExemption

`func NewGateRouteExemption() *GateRouteExemption`

NewGateRouteExemption instantiates a new GateRouteExemption object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGateRouteExemptionWithDefaults

`func NewGateRouteExemptionWithDefaults() *GateRouteExemption`

NewGateRouteExemptionWithDefaults instantiates a new GateRouteExemption object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetApplication

`func (o *GateRouteExemption) GetApplication() string`

GetApplication returns the Application field if non-nil, zero value otherwise.

### GetApplicationOk

`func (o *GateRouteExemption) GetApplicationOk() (*string, bool)`

GetApplicationOk returns a tuple with the Application field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApplication

`func (o *GateRouteExemption) SetApplication(v string)`

SetApplication sets Application field to given value.

### HasApplication

`func (o *GateRouteExemption) HasApplication() bool`

HasApplication returns a boolean if a field has been set.

### GetServiceName

`func (o *GateRouteExemption) GetServiceName() string`

GetServiceName returns the ServiceName field if non-nil, zero value otherwise.

### GetServiceNameOk

`func (o *GateRouteExemption) GetServiceNameOk() (*string, bool)`

GetServiceNameOk returns a tuple with the ServiceName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServiceName

`func (o *GateRouteExemption) SetServiceName(v string)`

SetServiceName sets ServiceName field to given value.

### HasServiceName

`func (o *GateRouteExemption) HasServiceName() bool`

HasServiceName returns a boolean if a field has been set.

### GetHost

`func (o *GateRouteExemption) GetHost() string`

GetHost returns the Host field if non-nil, zero value otherwise.

### GetHostOk

`func (o *GateRouteExemption) GetHostOk() (*string, bool)`

GetHostOk returns a tuple with the Host field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHost

`func (o *GateRouteExemption) SetHost(v string)`

SetHost sets Host field to given value.

### HasHost

`func (o *GateRouteExemption) HasHost() bool`

HasHost returns a boolean if a field has been set.

### GetPathPrefix

`func (o *GateRouteExemption) GetPathPrefix() string`

GetPathPrefix returns the PathPrefix field if non-nil, zero value otherwise.

### GetPathPrefixOk

`func (o *GateRouteExemption) GetPathPrefixOk() (*string, bool)`

GetPathPrefixOk returns a tuple with the PathPrefix field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPathPrefix

`func (o *GateRouteExemption) SetPathPrefix(v string)`

SetPathPrefix sets PathPrefix field to given value.

### HasPathPrefix

`func (o *GateRouteExemption) HasPathPrefix() bool`

HasPathPrefix returns a boolean if a field has been set.

### GetMethods

`func (o *GateRouteExemption) GetMethods() string`

GetMethods returns the Methods field if non-nil, zero value otherwise.

### GetMethodsOk

`func (o *GateRouteExemption) GetMethodsOk() (*string, bool)`

GetMethodsOk returns a tuple with the Methods field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMethods

`func (o *GateRouteExemption) SetMethods(v string)`

SetMethods sets Methods field to given value.

### HasMethods

`func (o *GateRouteExemption) HasMethods() bool`

HasMethods returns a boolean if a field has been set.

### GetApprovedAt

`func (o *GateRouteExemption) GetApprovedAt() time.Time`

GetApprovedAt returns the ApprovedAt field if non-nil, zero value otherwise.

### GetApprovedAtOk

`func (o *GateRouteExemption) GetApprovedAtOk() (*time.Time, bool)`

GetApprovedAtOk returns a tuple with the ApprovedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApprovedAt

`func (o *GateRouteExemption) SetApprovedAt(v time.Time)`

SetApprovedAt sets ApprovedAt field to given value.

### HasApprovedAt

`func (o *GateRouteExemption) HasApprovedAt() bool`

HasApprovedAt returns a boolean if a field has been set.

### SetApprovedAtNil

`func (o *GateRouteExemption) SetApprovedAtNil(b bool)`

 SetApprovedAtNil sets the value for ApprovedAt to be an explicit nil

### UnsetApprovedAt
`func (o *GateRouteExemption) UnsetApprovedAt()`

UnsetApprovedAt ensures that no value is present for ApprovedAt, not even an explicit nil
### GetId

`func (o *GateRouteExemption) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *GateRouteExemption) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *GateRouteExemption) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *GateRouteExemption) HasId() bool`

HasId returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


