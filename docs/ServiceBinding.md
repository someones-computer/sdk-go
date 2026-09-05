# ServiceBinding

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Application** | Pointer to **string** |  | [optional] 
**Service** | Pointer to **string** |  | [optional] 
**InjectedKeys** | Pointer to **[]string** | The environment variable names this binding contributes — one &#x60;DATABASE_URL&#x60; for a database, the four &#x60;S3_*&#x60; names for a bucket. | [optional] 
**SidecarServiceName** | Pointer to **string** | What the sidecar is called inside the tenant&#39;s stack — &#x60;db&#x60; unless something else claimed the name first. | [optional] [default to "db"]
**AdoptedComposeService** | Pointer to **NullableString** | The compose service this binding replaced, or null for a binding somebody asked for directly. | [optional] 
**Id** | Pointer to **string** |  | [optional] [readonly] 
**CreatedAt** | Pointer to **time.Time** |  | [optional] [readonly] 
**UpdatedAt** | Pointer to **NullableTime** |  | [optional] [readonly] 
**Adopted** | Pointer to **bool** |  | [optional] [readonly] 
**SidecarCredential** | Pointer to [**SealedSecret**](SealedSecret.md) |  | [optional] 

## Methods

### NewServiceBinding

`func NewServiceBinding() *ServiceBinding`

NewServiceBinding instantiates a new ServiceBinding object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewServiceBindingWithDefaults

`func NewServiceBindingWithDefaults() *ServiceBinding`

NewServiceBindingWithDefaults instantiates a new ServiceBinding object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetApplication

`func (o *ServiceBinding) GetApplication() string`

GetApplication returns the Application field if non-nil, zero value otherwise.

### GetApplicationOk

`func (o *ServiceBinding) GetApplicationOk() (*string, bool)`

GetApplicationOk returns a tuple with the Application field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApplication

`func (o *ServiceBinding) SetApplication(v string)`

SetApplication sets Application field to given value.

### HasApplication

`func (o *ServiceBinding) HasApplication() bool`

HasApplication returns a boolean if a field has been set.

### GetService

`func (o *ServiceBinding) GetService() string`

GetService returns the Service field if non-nil, zero value otherwise.

### GetServiceOk

`func (o *ServiceBinding) GetServiceOk() (*string, bool)`

GetServiceOk returns a tuple with the Service field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetService

`func (o *ServiceBinding) SetService(v string)`

SetService sets Service field to given value.

### HasService

`func (o *ServiceBinding) HasService() bool`

HasService returns a boolean if a field has been set.

### GetInjectedKeys

`func (o *ServiceBinding) GetInjectedKeys() []string`

GetInjectedKeys returns the InjectedKeys field if non-nil, zero value otherwise.

### GetInjectedKeysOk

`func (o *ServiceBinding) GetInjectedKeysOk() (*[]string, bool)`

GetInjectedKeysOk returns a tuple with the InjectedKeys field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInjectedKeys

`func (o *ServiceBinding) SetInjectedKeys(v []string)`

SetInjectedKeys sets InjectedKeys field to given value.

### HasInjectedKeys

`func (o *ServiceBinding) HasInjectedKeys() bool`

HasInjectedKeys returns a boolean if a field has been set.

### GetSidecarServiceName

`func (o *ServiceBinding) GetSidecarServiceName() string`

GetSidecarServiceName returns the SidecarServiceName field if non-nil, zero value otherwise.

### GetSidecarServiceNameOk

`func (o *ServiceBinding) GetSidecarServiceNameOk() (*string, bool)`

GetSidecarServiceNameOk returns a tuple with the SidecarServiceName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSidecarServiceName

`func (o *ServiceBinding) SetSidecarServiceName(v string)`

SetSidecarServiceName sets SidecarServiceName field to given value.

### HasSidecarServiceName

`func (o *ServiceBinding) HasSidecarServiceName() bool`

HasSidecarServiceName returns a boolean if a field has been set.

### GetAdoptedComposeService

`func (o *ServiceBinding) GetAdoptedComposeService() string`

GetAdoptedComposeService returns the AdoptedComposeService field if non-nil, zero value otherwise.

### GetAdoptedComposeServiceOk

`func (o *ServiceBinding) GetAdoptedComposeServiceOk() (*string, bool)`

GetAdoptedComposeServiceOk returns a tuple with the AdoptedComposeService field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAdoptedComposeService

`func (o *ServiceBinding) SetAdoptedComposeService(v string)`

SetAdoptedComposeService sets AdoptedComposeService field to given value.

### HasAdoptedComposeService

`func (o *ServiceBinding) HasAdoptedComposeService() bool`

HasAdoptedComposeService returns a boolean if a field has been set.

### SetAdoptedComposeServiceNil

`func (o *ServiceBinding) SetAdoptedComposeServiceNil(b bool)`

 SetAdoptedComposeServiceNil sets the value for AdoptedComposeService to be an explicit nil

### UnsetAdoptedComposeService
`func (o *ServiceBinding) UnsetAdoptedComposeService()`

UnsetAdoptedComposeService ensures that no value is present for AdoptedComposeService, not even an explicit nil
### GetId

`func (o *ServiceBinding) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *ServiceBinding) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *ServiceBinding) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *ServiceBinding) HasId() bool`

HasId returns a boolean if a field has been set.

### GetCreatedAt

`func (o *ServiceBinding) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *ServiceBinding) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *ServiceBinding) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *ServiceBinding) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *ServiceBinding) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *ServiceBinding) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *ServiceBinding) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *ServiceBinding) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.

### SetUpdatedAtNil

`func (o *ServiceBinding) SetUpdatedAtNil(b bool)`

 SetUpdatedAtNil sets the value for UpdatedAt to be an explicit nil

### UnsetUpdatedAt
`func (o *ServiceBinding) UnsetUpdatedAt()`

UnsetUpdatedAt ensures that no value is present for UpdatedAt, not even an explicit nil
### GetAdopted

`func (o *ServiceBinding) GetAdopted() bool`

GetAdopted returns the Adopted field if non-nil, zero value otherwise.

### GetAdoptedOk

`func (o *ServiceBinding) GetAdoptedOk() (*bool, bool)`

GetAdoptedOk returns a tuple with the Adopted field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAdopted

`func (o *ServiceBinding) SetAdopted(v bool)`

SetAdopted sets Adopted field to given value.

### HasAdopted

`func (o *ServiceBinding) HasAdopted() bool`

HasAdopted returns a boolean if a field has been set.

### GetSidecarCredential

`func (o *ServiceBinding) GetSidecarCredential() SealedSecret`

GetSidecarCredential returns the SidecarCredential field if non-nil, zero value otherwise.

### GetSidecarCredentialOk

`func (o *ServiceBinding) GetSidecarCredentialOk() (*SealedSecret, bool)`

GetSidecarCredentialOk returns a tuple with the SidecarCredential field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSidecarCredential

`func (o *ServiceBinding) SetSidecarCredential(v SealedSecret)`

SetSidecarCredential sets SidecarCredential field to given value.

### HasSidecarCredential

`func (o *ServiceBinding) HasSidecarCredential() bool`

HasSidecarCredential returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


