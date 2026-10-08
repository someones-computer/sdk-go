# ManagedServiceEngine

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | Pointer to **string** | The engine&#39;s handle, such as &#x60;pg17-1&#x60;. | [optional] 
**State** | Pointer to **string** | The state of the engine, such as &#x60;serving&#x60; or &#x60;failed&#x60;. | [optional] 

## Methods

### NewManagedServiceEngine

`func NewManagedServiceEngine() *ManagedServiceEngine`

NewManagedServiceEngine instantiates a new ManagedServiceEngine object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewManagedServiceEngineWithDefaults

`func NewManagedServiceEngineWithDefaults() *ManagedServiceEngine`

NewManagedServiceEngineWithDefaults instantiates a new ManagedServiceEngine object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *ManagedServiceEngine) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *ManagedServiceEngine) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *ManagedServiceEngine) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *ManagedServiceEngine) HasName() bool`

HasName returns a boolean if a field has been set.

### GetState

`func (o *ManagedServiceEngine) GetState() string`

GetState returns the State field if non-nil, zero value otherwise.

### GetStateOk

`func (o *ManagedServiceEngine) GetStateOk() (*string, bool)`

GetStateOk returns a tuple with the State field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetState

`func (o *ManagedServiceEngine) SetState(v string)`

SetState sets State field to given value.

### HasState

`func (o *ManagedServiceEngine) HasState() bool`

HasState returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


