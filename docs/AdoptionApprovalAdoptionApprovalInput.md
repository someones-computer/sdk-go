# AdoptionApprovalAdoptionApprovalInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Application** | **NullableString** |  | 
**ComposeServiceName** | **string** |  | [default to ""]
**Approved** | Pointer to **bool** |  | [optional] [default to false]

## Methods

### NewAdoptionApprovalAdoptionApprovalInput

`func NewAdoptionApprovalAdoptionApprovalInput(application NullableString, composeServiceName string, ) *AdoptionApprovalAdoptionApprovalInput`

NewAdoptionApprovalAdoptionApprovalInput instantiates a new AdoptionApprovalAdoptionApprovalInput object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdoptionApprovalAdoptionApprovalInputWithDefaults

`func NewAdoptionApprovalAdoptionApprovalInputWithDefaults() *AdoptionApprovalAdoptionApprovalInput`

NewAdoptionApprovalAdoptionApprovalInputWithDefaults instantiates a new AdoptionApprovalAdoptionApprovalInput object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetApplication

`func (o *AdoptionApprovalAdoptionApprovalInput) GetApplication() string`

GetApplication returns the Application field if non-nil, zero value otherwise.

### GetApplicationOk

`func (o *AdoptionApprovalAdoptionApprovalInput) GetApplicationOk() (*string, bool)`

GetApplicationOk returns a tuple with the Application field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApplication

`func (o *AdoptionApprovalAdoptionApprovalInput) SetApplication(v string)`

SetApplication sets Application field to given value.


### SetApplicationNil

`func (o *AdoptionApprovalAdoptionApprovalInput) SetApplicationNil(b bool)`

 SetApplicationNil sets the value for Application to be an explicit nil

### UnsetApplication
`func (o *AdoptionApprovalAdoptionApprovalInput) UnsetApplication()`

UnsetApplication ensures that no value is present for Application, not even an explicit nil
### GetComposeServiceName

`func (o *AdoptionApprovalAdoptionApprovalInput) GetComposeServiceName() string`

GetComposeServiceName returns the ComposeServiceName field if non-nil, zero value otherwise.

### GetComposeServiceNameOk

`func (o *AdoptionApprovalAdoptionApprovalInput) GetComposeServiceNameOk() (*string, bool)`

GetComposeServiceNameOk returns a tuple with the ComposeServiceName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetComposeServiceName

`func (o *AdoptionApprovalAdoptionApprovalInput) SetComposeServiceName(v string)`

SetComposeServiceName sets ComposeServiceName field to given value.


### GetApproved

`func (o *AdoptionApprovalAdoptionApprovalInput) GetApproved() bool`

GetApproved returns the Approved field if non-nil, zero value otherwise.

### GetApprovedOk

`func (o *AdoptionApprovalAdoptionApprovalInput) GetApprovedOk() (*bool, bool)`

GetApprovedOk returns a tuple with the Approved field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApproved

`func (o *AdoptionApprovalAdoptionApprovalInput) SetApproved(v bool)`

SetApproved sets Approved field to given value.

### HasApproved

`func (o *AdoptionApprovalAdoptionApprovalInput) HasApproved() bool`

HasApproved returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


