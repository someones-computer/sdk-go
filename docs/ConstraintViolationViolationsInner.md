# ConstraintViolationViolationsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PropertyPath** | **string** | The property path of the violation | 
**Message** | **string** | The message associated with the violation | 
**Code** | Pointer to **string** | The code of the violation | [optional] 
**Hint** | Pointer to **string** | An extra hint to understand the violation | [optional] 
**Payload** | Pointer to **map[string]interface{}** | The serialized payload of the violation | [optional] 

## Methods

### NewConstraintViolationViolationsInner

`func NewConstraintViolationViolationsInner(propertyPath string, message string, ) *ConstraintViolationViolationsInner`

NewConstraintViolationViolationsInner instantiates a new ConstraintViolationViolationsInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewConstraintViolationViolationsInnerWithDefaults

`func NewConstraintViolationViolationsInnerWithDefaults() *ConstraintViolationViolationsInner`

NewConstraintViolationViolationsInnerWithDefaults instantiates a new ConstraintViolationViolationsInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetPropertyPath

`func (o *ConstraintViolationViolationsInner) GetPropertyPath() string`

GetPropertyPath returns the PropertyPath field if non-nil, zero value otherwise.

### GetPropertyPathOk

`func (o *ConstraintViolationViolationsInner) GetPropertyPathOk() (*string, bool)`

GetPropertyPathOk returns a tuple with the PropertyPath field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPropertyPath

`func (o *ConstraintViolationViolationsInner) SetPropertyPath(v string)`

SetPropertyPath sets PropertyPath field to given value.


### GetMessage

`func (o *ConstraintViolationViolationsInner) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *ConstraintViolationViolationsInner) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *ConstraintViolationViolationsInner) SetMessage(v string)`

SetMessage sets Message field to given value.


### GetCode

`func (o *ConstraintViolationViolationsInner) GetCode() string`

GetCode returns the Code field if non-nil, zero value otherwise.

### GetCodeOk

`func (o *ConstraintViolationViolationsInner) GetCodeOk() (*string, bool)`

GetCodeOk returns a tuple with the Code field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCode

`func (o *ConstraintViolationViolationsInner) SetCode(v string)`

SetCode sets Code field to given value.

### HasCode

`func (o *ConstraintViolationViolationsInner) HasCode() bool`

HasCode returns a boolean if a field has been set.

### GetHint

`func (o *ConstraintViolationViolationsInner) GetHint() string`

GetHint returns the Hint field if non-nil, zero value otherwise.

### GetHintOk

`func (o *ConstraintViolationViolationsInner) GetHintOk() (*string, bool)`

GetHintOk returns a tuple with the Hint field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHint

`func (o *ConstraintViolationViolationsInner) SetHint(v string)`

SetHint sets Hint field to given value.

### HasHint

`func (o *ConstraintViolationViolationsInner) HasHint() bool`

HasHint returns a boolean if a field has been set.

### GetPayload

`func (o *ConstraintViolationViolationsInner) GetPayload() map[string]interface{}`

GetPayload returns the Payload field if non-nil, zero value otherwise.

### GetPayloadOk

`func (o *ConstraintViolationViolationsInner) GetPayloadOk() (*map[string]interface{}, bool)`

GetPayloadOk returns a tuple with the Payload field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPayload

`func (o *ConstraintViolationViolationsInner) SetPayload(v map[string]interface{})`

SetPayload sets Payload field to given value.

### HasPayload

`func (o *ConstraintViolationViolationsInner) HasPayload() bool`

HasPayload returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


