# ManagedServiceManagedServiceInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Engine** | **string** | The engine, as the catalogue names it — &#x60;postgres:17&#x60;, &#x60;mysql:8.0&#x60;. | [default to ""]
**Slug** | **string** | The tenant&#39;s own name for it — what appears in the UI and in &#x60;sc service ls&#x60;. | [default to ""]
**Organization** | **NullableString** |  | 

## Methods

### NewManagedServiceManagedServiceInput

`func NewManagedServiceManagedServiceInput(engine string, slug string, organization NullableString, ) *ManagedServiceManagedServiceInput`

NewManagedServiceManagedServiceInput instantiates a new ManagedServiceManagedServiceInput object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewManagedServiceManagedServiceInputWithDefaults

`func NewManagedServiceManagedServiceInputWithDefaults() *ManagedServiceManagedServiceInput`

NewManagedServiceManagedServiceInputWithDefaults instantiates a new ManagedServiceManagedServiceInput object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEngine

`func (o *ManagedServiceManagedServiceInput) GetEngine() string`

GetEngine returns the Engine field if non-nil, zero value otherwise.

### GetEngineOk

`func (o *ManagedServiceManagedServiceInput) GetEngineOk() (*string, bool)`

GetEngineOk returns a tuple with the Engine field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEngine

`func (o *ManagedServiceManagedServiceInput) SetEngine(v string)`

SetEngine sets Engine field to given value.


### GetSlug

`func (o *ManagedServiceManagedServiceInput) GetSlug() string`

GetSlug returns the Slug field if non-nil, zero value otherwise.

### GetSlugOk

`func (o *ManagedServiceManagedServiceInput) GetSlugOk() (*string, bool)`

GetSlugOk returns a tuple with the Slug field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSlug

`func (o *ManagedServiceManagedServiceInput) SetSlug(v string)`

SetSlug sets Slug field to given value.


### GetOrganization

`func (o *ManagedServiceManagedServiceInput) GetOrganization() string`

GetOrganization returns the Organization field if non-nil, zero value otherwise.

### GetOrganizationOk

`func (o *ManagedServiceManagedServiceInput) GetOrganizationOk() (*string, bool)`

GetOrganizationOk returns a tuple with the Organization field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrganization

`func (o *ManagedServiceManagedServiceInput) SetOrganization(v string)`

SetOrganization sets Organization field to given value.


### SetOrganizationNil

`func (o *ManagedServiceManagedServiceInput) SetOrganizationNil(b bool)`

 SetOrganizationNil sets the value for Organization to be an explicit nil

### UnsetOrganization
`func (o *ManagedServiceManagedServiceInput) UnsetOrganization()`

UnsetOrganization ensures that no value is present for Organization, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


