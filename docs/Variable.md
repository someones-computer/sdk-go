# Variable

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Organization** | Pointer to **string** | Re-home this variable. Used only when an application-scoped row follows its {@see Application} across organizations — an org-shared row (&#x60;$application &#x3D;&#x3D;&#x3D; null&#x60;) has no application to follow and is never moved this way. | [optional] 
**Application** | Pointer to **NullableString** | Null &#x3D;&gt; org-shared across all of the organization&#39;s applications. | [optional] 
**Key** | Pointer to **string** | The environment variable name. (\&quot;key\&quot; is reserved in some SQL dialects.) | [optional] 
**Sensitive** | Pointer to **bool** |  | [optional] [default to false]
**SecretFileDelivery** | Pointer to **bool** | Opt-in only, and meaningless unless {@see $sensitive} is also true: whether this secret is delivered to its containers as a mounted Swarm secret file (plus a &#x60;&lt;KEY&gt;_FILE&#x60; env var naming its path) rather than as a plain &#x60;Env&#x60; entry — {@see \\App\\Service\\Deploy\\StackDeployer}. | [optional] [default to false]
**Versions** | Pointer to [**[]VariableVersion**](VariableVersion.md) |  | [optional] 
**Id** | Pointer to **string** |  | [optional] [readonly] 
**DeletedAt** | Pointer to **NullableTime** |  | [optional] [readonly] 
**CreatedAt** | Pointer to **time.Time** |  | [optional] [readonly] 
**UpdatedAt** | Pointer to **NullableTime** |  | [optional] [readonly] 
**OrgShared** | Pointer to **bool** |  | [optional] [readonly] 
**Deleted** | Pointer to **bool** |  | [optional] [readonly] 

## Methods

### NewVariable

`func NewVariable() *Variable`

NewVariable instantiates a new Variable object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewVariableWithDefaults

`func NewVariableWithDefaults() *Variable`

NewVariableWithDefaults instantiates a new Variable object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOrganization

`func (o *Variable) GetOrganization() string`

GetOrganization returns the Organization field if non-nil, zero value otherwise.

### GetOrganizationOk

`func (o *Variable) GetOrganizationOk() (*string, bool)`

GetOrganizationOk returns a tuple with the Organization field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrganization

`func (o *Variable) SetOrganization(v string)`

SetOrganization sets Organization field to given value.

### HasOrganization

`func (o *Variable) HasOrganization() bool`

HasOrganization returns a boolean if a field has been set.

### GetApplication

`func (o *Variable) GetApplication() string`

GetApplication returns the Application field if non-nil, zero value otherwise.

### GetApplicationOk

`func (o *Variable) GetApplicationOk() (*string, bool)`

GetApplicationOk returns a tuple with the Application field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApplication

`func (o *Variable) SetApplication(v string)`

SetApplication sets Application field to given value.

### HasApplication

`func (o *Variable) HasApplication() bool`

HasApplication returns a boolean if a field has been set.

### SetApplicationNil

`func (o *Variable) SetApplicationNil(b bool)`

 SetApplicationNil sets the value for Application to be an explicit nil

### UnsetApplication
`func (o *Variable) UnsetApplication()`

UnsetApplication ensures that no value is present for Application, not even an explicit nil
### GetKey

`func (o *Variable) GetKey() string`

GetKey returns the Key field if non-nil, zero value otherwise.

### GetKeyOk

`func (o *Variable) GetKeyOk() (*string, bool)`

GetKeyOk returns a tuple with the Key field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKey

`func (o *Variable) SetKey(v string)`

SetKey sets Key field to given value.

### HasKey

`func (o *Variable) HasKey() bool`

HasKey returns a boolean if a field has been set.

### GetSensitive

`func (o *Variable) GetSensitive() bool`

GetSensitive returns the Sensitive field if non-nil, zero value otherwise.

### GetSensitiveOk

`func (o *Variable) GetSensitiveOk() (*bool, bool)`

GetSensitiveOk returns a tuple with the Sensitive field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSensitive

`func (o *Variable) SetSensitive(v bool)`

SetSensitive sets Sensitive field to given value.

### HasSensitive

`func (o *Variable) HasSensitive() bool`

HasSensitive returns a boolean if a field has been set.

### GetSecretFileDelivery

`func (o *Variable) GetSecretFileDelivery() bool`

GetSecretFileDelivery returns the SecretFileDelivery field if non-nil, zero value otherwise.

### GetSecretFileDeliveryOk

`func (o *Variable) GetSecretFileDeliveryOk() (*bool, bool)`

GetSecretFileDeliveryOk returns a tuple with the SecretFileDelivery field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSecretFileDelivery

`func (o *Variable) SetSecretFileDelivery(v bool)`

SetSecretFileDelivery sets SecretFileDelivery field to given value.

### HasSecretFileDelivery

`func (o *Variable) HasSecretFileDelivery() bool`

HasSecretFileDelivery returns a boolean if a field has been set.

### GetVersions

`func (o *Variable) GetVersions() []VariableVersion`

GetVersions returns the Versions field if non-nil, zero value otherwise.

### GetVersionsOk

`func (o *Variable) GetVersionsOk() (*[]VariableVersion, bool)`

GetVersionsOk returns a tuple with the Versions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVersions

`func (o *Variable) SetVersions(v []VariableVersion)`

SetVersions sets Versions field to given value.

### HasVersions

`func (o *Variable) HasVersions() bool`

HasVersions returns a boolean if a field has been set.

### GetId

`func (o *Variable) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *Variable) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *Variable) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *Variable) HasId() bool`

HasId returns a boolean if a field has been set.

### GetDeletedAt

`func (o *Variable) GetDeletedAt() time.Time`

GetDeletedAt returns the DeletedAt field if non-nil, zero value otherwise.

### GetDeletedAtOk

`func (o *Variable) GetDeletedAtOk() (*time.Time, bool)`

GetDeletedAtOk returns a tuple with the DeletedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeletedAt

`func (o *Variable) SetDeletedAt(v time.Time)`

SetDeletedAt sets DeletedAt field to given value.

### HasDeletedAt

`func (o *Variable) HasDeletedAt() bool`

HasDeletedAt returns a boolean if a field has been set.

### SetDeletedAtNil

`func (o *Variable) SetDeletedAtNil(b bool)`

 SetDeletedAtNil sets the value for DeletedAt to be an explicit nil

### UnsetDeletedAt
`func (o *Variable) UnsetDeletedAt()`

UnsetDeletedAt ensures that no value is present for DeletedAt, not even an explicit nil
### GetCreatedAt

`func (o *Variable) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *Variable) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *Variable) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *Variable) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *Variable) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *Variable) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *Variable) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *Variable) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.

### SetUpdatedAtNil

`func (o *Variable) SetUpdatedAtNil(b bool)`

 SetUpdatedAtNil sets the value for UpdatedAt to be an explicit nil

### UnsetUpdatedAt
`func (o *Variable) UnsetUpdatedAt()`

UnsetUpdatedAt ensures that no value is present for UpdatedAt, not even an explicit nil
### GetOrgShared

`func (o *Variable) GetOrgShared() bool`

GetOrgShared returns the OrgShared field if non-nil, zero value otherwise.

### GetOrgSharedOk

`func (o *Variable) GetOrgSharedOk() (*bool, bool)`

GetOrgSharedOk returns a tuple with the OrgShared field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrgShared

`func (o *Variable) SetOrgShared(v bool)`

SetOrgShared sets OrgShared field to given value.

### HasOrgShared

`func (o *Variable) HasOrgShared() bool`

HasOrgShared returns a boolean if a field has been set.

### GetDeleted

`func (o *Variable) GetDeleted() bool`

GetDeleted returns the Deleted field if non-nil, zero value otherwise.

### GetDeletedOk

`func (o *Variable) GetDeletedOk() (*bool, bool)`

GetDeletedOk returns a tuple with the Deleted field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeleted

`func (o *Variable) SetDeleted(v bool)`

SetDeleted sets Deleted field to given value.

### HasDeleted

`func (o *Variable) HasDeleted() bool`

HasDeleted returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


