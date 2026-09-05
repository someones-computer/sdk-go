# AdoptionApproval

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Application** | Pointer to **string** |  | [optional] 
**ComposeServiceName** | Pointer to **string** | The compose service name this decision is about — joined against a live plan by name. | [optional] 
**Approved** | Pointer to **bool** |  | [optional] 
**DecidedAt** | Pointer to **NullableTime** |  | [optional] 
**Id** | Pointer to **string** |  | [optional] [readonly] 

## Methods

### NewAdoptionApproval

`func NewAdoptionApproval() *AdoptionApproval`

NewAdoptionApproval instantiates a new AdoptionApproval object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdoptionApprovalWithDefaults

`func NewAdoptionApprovalWithDefaults() *AdoptionApproval`

NewAdoptionApprovalWithDefaults instantiates a new AdoptionApproval object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetApplication

`func (o *AdoptionApproval) GetApplication() string`

GetApplication returns the Application field if non-nil, zero value otherwise.

### GetApplicationOk

`func (o *AdoptionApproval) GetApplicationOk() (*string, bool)`

GetApplicationOk returns a tuple with the Application field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApplication

`func (o *AdoptionApproval) SetApplication(v string)`

SetApplication sets Application field to given value.

### HasApplication

`func (o *AdoptionApproval) HasApplication() bool`

HasApplication returns a boolean if a field has been set.

### GetComposeServiceName

`func (o *AdoptionApproval) GetComposeServiceName() string`

GetComposeServiceName returns the ComposeServiceName field if non-nil, zero value otherwise.

### GetComposeServiceNameOk

`func (o *AdoptionApproval) GetComposeServiceNameOk() (*string, bool)`

GetComposeServiceNameOk returns a tuple with the ComposeServiceName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetComposeServiceName

`func (o *AdoptionApproval) SetComposeServiceName(v string)`

SetComposeServiceName sets ComposeServiceName field to given value.

### HasComposeServiceName

`func (o *AdoptionApproval) HasComposeServiceName() bool`

HasComposeServiceName returns a boolean if a field has been set.

### GetApproved

`func (o *AdoptionApproval) GetApproved() bool`

GetApproved returns the Approved field if non-nil, zero value otherwise.

### GetApprovedOk

`func (o *AdoptionApproval) GetApprovedOk() (*bool, bool)`

GetApprovedOk returns a tuple with the Approved field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApproved

`func (o *AdoptionApproval) SetApproved(v bool)`

SetApproved sets Approved field to given value.

### HasApproved

`func (o *AdoptionApproval) HasApproved() bool`

HasApproved returns a boolean if a field has been set.

### GetDecidedAt

`func (o *AdoptionApproval) GetDecidedAt() time.Time`

GetDecidedAt returns the DecidedAt field if non-nil, zero value otherwise.

### GetDecidedAtOk

`func (o *AdoptionApproval) GetDecidedAtOk() (*time.Time, bool)`

GetDecidedAtOk returns a tuple with the DecidedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDecidedAt

`func (o *AdoptionApproval) SetDecidedAt(v time.Time)`

SetDecidedAt sets DecidedAt field to given value.

### HasDecidedAt

`func (o *AdoptionApproval) HasDecidedAt() bool`

HasDecidedAt returns a boolean if a field has been set.

### SetDecidedAtNil

`func (o *AdoptionApproval) SetDecidedAtNil(b bool)`

 SetDecidedAtNil sets the value for DecidedAt to be an explicit nil

### UnsetDecidedAt
`func (o *AdoptionApproval) UnsetDecidedAt()`

UnsetDecidedAt ensures that no value is present for DecidedAt, not even an explicit nil
### GetId

`func (o *AdoptionApproval) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *AdoptionApproval) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *AdoptionApproval) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *AdoptionApproval) HasId() bool`

HasId returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


