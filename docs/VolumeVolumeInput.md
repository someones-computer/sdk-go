# VolumeVolumeInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Slug** | **string** | The tenant&#39;s own name for it. It shows in the panel and in a game server&#39;s settings. | [default to ""]
**Organization** | **NullableString** |  | 

## Methods

### NewVolumeVolumeInput

`func NewVolumeVolumeInput(slug string, organization NullableString, ) *VolumeVolumeInput`

NewVolumeVolumeInput instantiates a new VolumeVolumeInput object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewVolumeVolumeInputWithDefaults

`func NewVolumeVolumeInputWithDefaults() *VolumeVolumeInput`

NewVolumeVolumeInputWithDefaults instantiates a new VolumeVolumeInput object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSlug

`func (o *VolumeVolumeInput) GetSlug() string`

GetSlug returns the Slug field if non-nil, zero value otherwise.

### GetSlugOk

`func (o *VolumeVolumeInput) GetSlugOk() (*string, bool)`

GetSlugOk returns a tuple with the Slug field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSlug

`func (o *VolumeVolumeInput) SetSlug(v string)`

SetSlug sets Slug field to given value.


### GetOrganization

`func (o *VolumeVolumeInput) GetOrganization() string`

GetOrganization returns the Organization field if non-nil, zero value otherwise.

### GetOrganizationOk

`func (o *VolumeVolumeInput) GetOrganizationOk() (*string, bool)`

GetOrganizationOk returns a tuple with the Organization field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrganization

`func (o *VolumeVolumeInput) SetOrganization(v string)`

SetOrganization sets Organization field to given value.


### SetOrganizationNil

`func (o *VolumeVolumeInput) SetOrganizationNil(b bool)`

 SetOrganizationNil sets the value for Organization to be an explicit nil

### UnsetOrganization
`func (o *VolumeVolumeInput) UnsetOrganization()`

UnsetOrganization ensures that no value is present for Organization, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


