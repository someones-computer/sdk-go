# ConstraintViolation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | Pointer to **int32** |  | [optional] [default to 422]
**Violations** | Pointer to [**[]ConstraintViolationViolationsInner**](ConstraintViolationViolationsInner.md) |  | [optional] 
**Detail** | Pointer to **string** |  | [optional] [readonly] 
**Type** | Pointer to **string** |  | [optional] [readonly] 
**Title** | Pointer to **NullableString** |  | [optional] [readonly] 
**Instance** | Pointer to **NullableString** |  | [optional] [readonly] 

## Methods

### NewConstraintViolation

`func NewConstraintViolation() *ConstraintViolation`

NewConstraintViolation instantiates a new ConstraintViolation object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewConstraintViolationWithDefaults

`func NewConstraintViolationWithDefaults() *ConstraintViolation`

NewConstraintViolationWithDefaults instantiates a new ConstraintViolation object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetStatus

`func (o *ConstraintViolation) GetStatus() int32`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *ConstraintViolation) GetStatusOk() (*int32, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *ConstraintViolation) SetStatus(v int32)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *ConstraintViolation) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetViolations

`func (o *ConstraintViolation) GetViolations() []ConstraintViolationViolationsInner`

GetViolations returns the Violations field if non-nil, zero value otherwise.

### GetViolationsOk

`func (o *ConstraintViolation) GetViolationsOk() (*[]ConstraintViolationViolationsInner, bool)`

GetViolationsOk returns a tuple with the Violations field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetViolations

`func (o *ConstraintViolation) SetViolations(v []ConstraintViolationViolationsInner)`

SetViolations sets Violations field to given value.

### HasViolations

`func (o *ConstraintViolation) HasViolations() bool`

HasViolations returns a boolean if a field has been set.

### GetDetail

`func (o *ConstraintViolation) GetDetail() string`

GetDetail returns the Detail field if non-nil, zero value otherwise.

### GetDetailOk

`func (o *ConstraintViolation) GetDetailOk() (*string, bool)`

GetDetailOk returns a tuple with the Detail field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDetail

`func (o *ConstraintViolation) SetDetail(v string)`

SetDetail sets Detail field to given value.

### HasDetail

`func (o *ConstraintViolation) HasDetail() bool`

HasDetail returns a boolean if a field has been set.

### GetType

`func (o *ConstraintViolation) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *ConstraintViolation) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *ConstraintViolation) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *ConstraintViolation) HasType() bool`

HasType returns a boolean if a field has been set.

### GetTitle

`func (o *ConstraintViolation) GetTitle() string`

GetTitle returns the Title field if non-nil, zero value otherwise.

### GetTitleOk

`func (o *ConstraintViolation) GetTitleOk() (*string, bool)`

GetTitleOk returns a tuple with the Title field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTitle

`func (o *ConstraintViolation) SetTitle(v string)`

SetTitle sets Title field to given value.

### HasTitle

`func (o *ConstraintViolation) HasTitle() bool`

HasTitle returns a boolean if a field has been set.

### SetTitleNil

`func (o *ConstraintViolation) SetTitleNil(b bool)`

 SetTitleNil sets the value for Title to be an explicit nil

### UnsetTitle
`func (o *ConstraintViolation) UnsetTitle()`

UnsetTitle ensures that no value is present for Title, not even an explicit nil
### GetInstance

`func (o *ConstraintViolation) GetInstance() string`

GetInstance returns the Instance field if non-nil, zero value otherwise.

### GetInstanceOk

`func (o *ConstraintViolation) GetInstanceOk() (*string, bool)`

GetInstanceOk returns a tuple with the Instance field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstance

`func (o *ConstraintViolation) SetInstance(v string)`

SetInstance sets Instance field to given value.

### HasInstance

`func (o *ConstraintViolation) HasInstance() bool`

HasInstance returns a boolean if a field has been set.

### SetInstanceNil

`func (o *ConstraintViolation) SetInstanceNil(b bool)`

 SetInstanceNil sets the value for Instance to be an explicit nil

### UnsetInstance
`func (o *ConstraintViolation) UnsetInstance()`

UnsetInstance ensures that no value is present for Instance, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


