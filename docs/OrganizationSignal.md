# OrganizationSignal

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Organization** | Pointer to **string** |  | [optional] 
**Application** | Pointer to **NullableString** | Which application&#39;s compose file produced it — deleting the application does not un-say what it asked for. | [optional] 
**Reason** | Pointer to **string** | Verbatim, as {@see \\App\\Service\\Compose\\ComposeParser::parse()} produced it. | [optional] 
**Id** | Pointer to **string** |  | [optional] [readonly] 
**CreatedAt** | Pointer to **time.Time** |  | [optional] [readonly] 
**UpdatedAt** | Pointer to **NullableTime** |  | [optional] [readonly] 

## Methods

### NewOrganizationSignal

`func NewOrganizationSignal() *OrganizationSignal`

NewOrganizationSignal instantiates a new OrganizationSignal object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOrganizationSignalWithDefaults

`func NewOrganizationSignalWithDefaults() *OrganizationSignal`

NewOrganizationSignalWithDefaults instantiates a new OrganizationSignal object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOrganization

`func (o *OrganizationSignal) GetOrganization() string`

GetOrganization returns the Organization field if non-nil, zero value otherwise.

### GetOrganizationOk

`func (o *OrganizationSignal) GetOrganizationOk() (*string, bool)`

GetOrganizationOk returns a tuple with the Organization field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrganization

`func (o *OrganizationSignal) SetOrganization(v string)`

SetOrganization sets Organization field to given value.

### HasOrganization

`func (o *OrganizationSignal) HasOrganization() bool`

HasOrganization returns a boolean if a field has been set.

### GetApplication

`func (o *OrganizationSignal) GetApplication() string`

GetApplication returns the Application field if non-nil, zero value otherwise.

### GetApplicationOk

`func (o *OrganizationSignal) GetApplicationOk() (*string, bool)`

GetApplicationOk returns a tuple with the Application field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApplication

`func (o *OrganizationSignal) SetApplication(v string)`

SetApplication sets Application field to given value.

### HasApplication

`func (o *OrganizationSignal) HasApplication() bool`

HasApplication returns a boolean if a field has been set.

### SetApplicationNil

`func (o *OrganizationSignal) SetApplicationNil(b bool)`

 SetApplicationNil sets the value for Application to be an explicit nil

### UnsetApplication
`func (o *OrganizationSignal) UnsetApplication()`

UnsetApplication ensures that no value is present for Application, not even an explicit nil
### GetReason

`func (o *OrganizationSignal) GetReason() string`

GetReason returns the Reason field if non-nil, zero value otherwise.

### GetReasonOk

`func (o *OrganizationSignal) GetReasonOk() (*string, bool)`

GetReasonOk returns a tuple with the Reason field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReason

`func (o *OrganizationSignal) SetReason(v string)`

SetReason sets Reason field to given value.

### HasReason

`func (o *OrganizationSignal) HasReason() bool`

HasReason returns a boolean if a field has been set.

### GetId

`func (o *OrganizationSignal) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *OrganizationSignal) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *OrganizationSignal) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *OrganizationSignal) HasId() bool`

HasId returns a boolean if a field has been set.

### GetCreatedAt

`func (o *OrganizationSignal) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *OrganizationSignal) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *OrganizationSignal) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *OrganizationSignal) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *OrganizationSignal) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *OrganizationSignal) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *OrganizationSignal) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *OrganizationSignal) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.

### SetUpdatedAtNil

`func (o *OrganizationSignal) SetUpdatedAtNil(b bool)`

 SetUpdatedAtNil sets the value for UpdatedAt to be an explicit nil

### UnsetUpdatedAt
`func (o *OrganizationSignal) UnsetUpdatedAt()`

UnsetUpdatedAt ensures that no value is present for UpdatedAt, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


