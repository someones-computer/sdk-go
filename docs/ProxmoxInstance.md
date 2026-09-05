# ProxmoxInstance

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | Pointer to **string** |  | [optional] 
**Endpoint** | Pointer to **string** | Base URL of the API, scheme and authority only — &#x60;https://10.0.0.68:8006&#x60;. | [optional] 
**TokenId** | Pointer to **string** | Full token identifier, &#x60;user@realm!tokenid&#x60; — e.g. &#x60;root@pam!someones-computer&#x60;. | [optional] 
**TokenSecret** | Pointer to **string** | The token&#39;s secret (a UUID as Proxmox issues it), encrypted at rest and never serialized. Proxmox shows it exactly once, at creation. | [optional] 
**VerifyTls** | Pointer to **bool** | Whether the certificate must validate against a CA chain. | [optional] [default to true]
**PublicKeyPin** | Pointer to **NullableString** | base64 SHA-256 of the endpoint&#39;s SubjectPublicKeyInfo — curl&#39;s &#x60;pin-sha256&#x60;. The right answer for a self-signed Proxmox: it authenticates *this specific host* without any CA, so the connection is still protected against interception, which &#x60;verifyTls &#x3D; false&#x60; alone is not. | [optional] 
**Status** | Pointer to **string** |  | [optional] [default to "unreachable"]
**LastSeenAt** | Pointer to **NullableTime** |  | [optional] 
**LastError** | Pointer to **NullableString** | Why the last probe failed, kept so an operator can tell a revoked token from a dead host without re-running anything. Cleared on success. | [optional] 
**Version** | Pointer to **map[string]string** | Observed &#x60;GET /version&#x60; snapshot (release, repoid). Observed state, so it is whatever the last probe saw and is never authoritative. | [optional] 
**TemplateVmid** | Pointer to **NullableInt32** | The vmid of the Alpine template &#x60;app:proxmox:template&#x60; last built here, or null if it has never been run against this endpoint. This is what makes a template&#39;s existence something the app can answer without an SSH session and a &#x60;qm list&#x60; — the gap that sent an operator to do exactly that. | [optional] [readonly] 
**TemplateAlpineVersion** | Pointer to **NullableString** | The Alpine version baked into {@see $templateVmid}, e.g. &#x60;3.23.0&#x60;. | [optional] [readonly] 
**TemplateBuiltAt** | Pointer to **NullableTime** |  | [optional] [readonly] 
**TemplateBuildStartedAt** | Pointer to **NullableTime** | When a background template build was dispatched for this endpoint, or null when none is in flight — the only trace a build leaves while it runs. | [optional] [readonly] 
**TemplateBuildFailures** | Pointer to **int32** | How many builds in a row have failed since the last success, incremented by {@see \\App\\MessageHandler\\BuildProxmoxTemplateHandler}&#39;s catch block and cleared by {@see recordTemplateBuilt()}. This is what {@see templateBuildIsBackedOff()} backs the retry off against — without it, {@see \\App\\MessageHandler\\CheckProxmoxTemplatesHandler} redispatches a build every tick regardless of how many times it has already failed (#1059). | [optional] [readonly] [default to 0]
**Id** | Pointer to **string** |  | [optional] [readonly] 
**CreatedAt** | Pointer to **time.Time** |  | [optional] [readonly] 
**UpdatedAt** | Pointer to **NullableTime** |  | [optional] [readonly] 
**Template** | Pointer to **bool** | Whether &#x60;app:proxmox:template&#x60; has ever recorded a build against this endpoint. | [optional] [readonly] 

## Methods

### NewProxmoxInstance

`func NewProxmoxInstance() *ProxmoxInstance`

NewProxmoxInstance instantiates a new ProxmoxInstance object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewProxmoxInstanceWithDefaults

`func NewProxmoxInstanceWithDefaults() *ProxmoxInstance`

NewProxmoxInstanceWithDefaults instantiates a new ProxmoxInstance object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *ProxmoxInstance) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *ProxmoxInstance) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *ProxmoxInstance) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *ProxmoxInstance) HasName() bool`

HasName returns a boolean if a field has been set.

### GetEndpoint

`func (o *ProxmoxInstance) GetEndpoint() string`

GetEndpoint returns the Endpoint field if non-nil, zero value otherwise.

### GetEndpointOk

`func (o *ProxmoxInstance) GetEndpointOk() (*string, bool)`

GetEndpointOk returns a tuple with the Endpoint field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEndpoint

`func (o *ProxmoxInstance) SetEndpoint(v string)`

SetEndpoint sets Endpoint field to given value.

### HasEndpoint

`func (o *ProxmoxInstance) HasEndpoint() bool`

HasEndpoint returns a boolean if a field has been set.

### GetTokenId

`func (o *ProxmoxInstance) GetTokenId() string`

GetTokenId returns the TokenId field if non-nil, zero value otherwise.

### GetTokenIdOk

`func (o *ProxmoxInstance) GetTokenIdOk() (*string, bool)`

GetTokenIdOk returns a tuple with the TokenId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenId

`func (o *ProxmoxInstance) SetTokenId(v string)`

SetTokenId sets TokenId field to given value.

### HasTokenId

`func (o *ProxmoxInstance) HasTokenId() bool`

HasTokenId returns a boolean if a field has been set.

### GetTokenSecret

`func (o *ProxmoxInstance) GetTokenSecret() string`

GetTokenSecret returns the TokenSecret field if non-nil, zero value otherwise.

### GetTokenSecretOk

`func (o *ProxmoxInstance) GetTokenSecretOk() (*string, bool)`

GetTokenSecretOk returns a tuple with the TokenSecret field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenSecret

`func (o *ProxmoxInstance) SetTokenSecret(v string)`

SetTokenSecret sets TokenSecret field to given value.

### HasTokenSecret

`func (o *ProxmoxInstance) HasTokenSecret() bool`

HasTokenSecret returns a boolean if a field has been set.

### GetVerifyTls

`func (o *ProxmoxInstance) GetVerifyTls() bool`

GetVerifyTls returns the VerifyTls field if non-nil, zero value otherwise.

### GetVerifyTlsOk

`func (o *ProxmoxInstance) GetVerifyTlsOk() (*bool, bool)`

GetVerifyTlsOk returns a tuple with the VerifyTls field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVerifyTls

`func (o *ProxmoxInstance) SetVerifyTls(v bool)`

SetVerifyTls sets VerifyTls field to given value.

### HasVerifyTls

`func (o *ProxmoxInstance) HasVerifyTls() bool`

HasVerifyTls returns a boolean if a field has been set.

### GetPublicKeyPin

`func (o *ProxmoxInstance) GetPublicKeyPin() string`

GetPublicKeyPin returns the PublicKeyPin field if non-nil, zero value otherwise.

### GetPublicKeyPinOk

`func (o *ProxmoxInstance) GetPublicKeyPinOk() (*string, bool)`

GetPublicKeyPinOk returns a tuple with the PublicKeyPin field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPublicKeyPin

`func (o *ProxmoxInstance) SetPublicKeyPin(v string)`

SetPublicKeyPin sets PublicKeyPin field to given value.

### HasPublicKeyPin

`func (o *ProxmoxInstance) HasPublicKeyPin() bool`

HasPublicKeyPin returns a boolean if a field has been set.

### SetPublicKeyPinNil

`func (o *ProxmoxInstance) SetPublicKeyPinNil(b bool)`

 SetPublicKeyPinNil sets the value for PublicKeyPin to be an explicit nil

### UnsetPublicKeyPin
`func (o *ProxmoxInstance) UnsetPublicKeyPin()`

UnsetPublicKeyPin ensures that no value is present for PublicKeyPin, not even an explicit nil
### GetStatus

`func (o *ProxmoxInstance) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *ProxmoxInstance) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *ProxmoxInstance) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *ProxmoxInstance) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetLastSeenAt

`func (o *ProxmoxInstance) GetLastSeenAt() time.Time`

GetLastSeenAt returns the LastSeenAt field if non-nil, zero value otherwise.

### GetLastSeenAtOk

`func (o *ProxmoxInstance) GetLastSeenAtOk() (*time.Time, bool)`

GetLastSeenAtOk returns a tuple with the LastSeenAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastSeenAt

`func (o *ProxmoxInstance) SetLastSeenAt(v time.Time)`

SetLastSeenAt sets LastSeenAt field to given value.

### HasLastSeenAt

`func (o *ProxmoxInstance) HasLastSeenAt() bool`

HasLastSeenAt returns a boolean if a field has been set.

### SetLastSeenAtNil

`func (o *ProxmoxInstance) SetLastSeenAtNil(b bool)`

 SetLastSeenAtNil sets the value for LastSeenAt to be an explicit nil

### UnsetLastSeenAt
`func (o *ProxmoxInstance) UnsetLastSeenAt()`

UnsetLastSeenAt ensures that no value is present for LastSeenAt, not even an explicit nil
### GetLastError

`func (o *ProxmoxInstance) GetLastError() string`

GetLastError returns the LastError field if non-nil, zero value otherwise.

### GetLastErrorOk

`func (o *ProxmoxInstance) GetLastErrorOk() (*string, bool)`

GetLastErrorOk returns a tuple with the LastError field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastError

`func (o *ProxmoxInstance) SetLastError(v string)`

SetLastError sets LastError field to given value.

### HasLastError

`func (o *ProxmoxInstance) HasLastError() bool`

HasLastError returns a boolean if a field has been set.

### SetLastErrorNil

`func (o *ProxmoxInstance) SetLastErrorNil(b bool)`

 SetLastErrorNil sets the value for LastError to be an explicit nil

### UnsetLastError
`func (o *ProxmoxInstance) UnsetLastError()`

UnsetLastError ensures that no value is present for LastError, not even an explicit nil
### GetVersion

`func (o *ProxmoxInstance) GetVersion() map[string]string`

GetVersion returns the Version field if non-nil, zero value otherwise.

### GetVersionOk

`func (o *ProxmoxInstance) GetVersionOk() (*map[string]string, bool)`

GetVersionOk returns a tuple with the Version field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVersion

`func (o *ProxmoxInstance) SetVersion(v map[string]string)`

SetVersion sets Version field to given value.

### HasVersion

`func (o *ProxmoxInstance) HasVersion() bool`

HasVersion returns a boolean if a field has been set.

### GetTemplateVmid

`func (o *ProxmoxInstance) GetTemplateVmid() int32`

GetTemplateVmid returns the TemplateVmid field if non-nil, zero value otherwise.

### GetTemplateVmidOk

`func (o *ProxmoxInstance) GetTemplateVmidOk() (*int32, bool)`

GetTemplateVmidOk returns a tuple with the TemplateVmid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTemplateVmid

`func (o *ProxmoxInstance) SetTemplateVmid(v int32)`

SetTemplateVmid sets TemplateVmid field to given value.

### HasTemplateVmid

`func (o *ProxmoxInstance) HasTemplateVmid() bool`

HasTemplateVmid returns a boolean if a field has been set.

### SetTemplateVmidNil

`func (o *ProxmoxInstance) SetTemplateVmidNil(b bool)`

 SetTemplateVmidNil sets the value for TemplateVmid to be an explicit nil

### UnsetTemplateVmid
`func (o *ProxmoxInstance) UnsetTemplateVmid()`

UnsetTemplateVmid ensures that no value is present for TemplateVmid, not even an explicit nil
### GetTemplateAlpineVersion

`func (o *ProxmoxInstance) GetTemplateAlpineVersion() string`

GetTemplateAlpineVersion returns the TemplateAlpineVersion field if non-nil, zero value otherwise.

### GetTemplateAlpineVersionOk

`func (o *ProxmoxInstance) GetTemplateAlpineVersionOk() (*string, bool)`

GetTemplateAlpineVersionOk returns a tuple with the TemplateAlpineVersion field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTemplateAlpineVersion

`func (o *ProxmoxInstance) SetTemplateAlpineVersion(v string)`

SetTemplateAlpineVersion sets TemplateAlpineVersion field to given value.

### HasTemplateAlpineVersion

`func (o *ProxmoxInstance) HasTemplateAlpineVersion() bool`

HasTemplateAlpineVersion returns a boolean if a field has been set.

### SetTemplateAlpineVersionNil

`func (o *ProxmoxInstance) SetTemplateAlpineVersionNil(b bool)`

 SetTemplateAlpineVersionNil sets the value for TemplateAlpineVersion to be an explicit nil

### UnsetTemplateAlpineVersion
`func (o *ProxmoxInstance) UnsetTemplateAlpineVersion()`

UnsetTemplateAlpineVersion ensures that no value is present for TemplateAlpineVersion, not even an explicit nil
### GetTemplateBuiltAt

`func (o *ProxmoxInstance) GetTemplateBuiltAt() time.Time`

GetTemplateBuiltAt returns the TemplateBuiltAt field if non-nil, zero value otherwise.

### GetTemplateBuiltAtOk

`func (o *ProxmoxInstance) GetTemplateBuiltAtOk() (*time.Time, bool)`

GetTemplateBuiltAtOk returns a tuple with the TemplateBuiltAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTemplateBuiltAt

`func (o *ProxmoxInstance) SetTemplateBuiltAt(v time.Time)`

SetTemplateBuiltAt sets TemplateBuiltAt field to given value.

### HasTemplateBuiltAt

`func (o *ProxmoxInstance) HasTemplateBuiltAt() bool`

HasTemplateBuiltAt returns a boolean if a field has been set.

### SetTemplateBuiltAtNil

`func (o *ProxmoxInstance) SetTemplateBuiltAtNil(b bool)`

 SetTemplateBuiltAtNil sets the value for TemplateBuiltAt to be an explicit nil

### UnsetTemplateBuiltAt
`func (o *ProxmoxInstance) UnsetTemplateBuiltAt()`

UnsetTemplateBuiltAt ensures that no value is present for TemplateBuiltAt, not even an explicit nil
### GetTemplateBuildStartedAt

`func (o *ProxmoxInstance) GetTemplateBuildStartedAt() time.Time`

GetTemplateBuildStartedAt returns the TemplateBuildStartedAt field if non-nil, zero value otherwise.

### GetTemplateBuildStartedAtOk

`func (o *ProxmoxInstance) GetTemplateBuildStartedAtOk() (*time.Time, bool)`

GetTemplateBuildStartedAtOk returns a tuple with the TemplateBuildStartedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTemplateBuildStartedAt

`func (o *ProxmoxInstance) SetTemplateBuildStartedAt(v time.Time)`

SetTemplateBuildStartedAt sets TemplateBuildStartedAt field to given value.

### HasTemplateBuildStartedAt

`func (o *ProxmoxInstance) HasTemplateBuildStartedAt() bool`

HasTemplateBuildStartedAt returns a boolean if a field has been set.

### SetTemplateBuildStartedAtNil

`func (o *ProxmoxInstance) SetTemplateBuildStartedAtNil(b bool)`

 SetTemplateBuildStartedAtNil sets the value for TemplateBuildStartedAt to be an explicit nil

### UnsetTemplateBuildStartedAt
`func (o *ProxmoxInstance) UnsetTemplateBuildStartedAt()`

UnsetTemplateBuildStartedAt ensures that no value is present for TemplateBuildStartedAt, not even an explicit nil
### GetTemplateBuildFailures

`func (o *ProxmoxInstance) GetTemplateBuildFailures() int32`

GetTemplateBuildFailures returns the TemplateBuildFailures field if non-nil, zero value otherwise.

### GetTemplateBuildFailuresOk

`func (o *ProxmoxInstance) GetTemplateBuildFailuresOk() (*int32, bool)`

GetTemplateBuildFailuresOk returns a tuple with the TemplateBuildFailures field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTemplateBuildFailures

`func (o *ProxmoxInstance) SetTemplateBuildFailures(v int32)`

SetTemplateBuildFailures sets TemplateBuildFailures field to given value.

### HasTemplateBuildFailures

`func (o *ProxmoxInstance) HasTemplateBuildFailures() bool`

HasTemplateBuildFailures returns a boolean if a field has been set.

### GetId

`func (o *ProxmoxInstance) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *ProxmoxInstance) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *ProxmoxInstance) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *ProxmoxInstance) HasId() bool`

HasId returns a boolean if a field has been set.

### GetCreatedAt

`func (o *ProxmoxInstance) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *ProxmoxInstance) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *ProxmoxInstance) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *ProxmoxInstance) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *ProxmoxInstance) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *ProxmoxInstance) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *ProxmoxInstance) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *ProxmoxInstance) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.

### SetUpdatedAtNil

`func (o *ProxmoxInstance) SetUpdatedAtNil(b bool)`

 SetUpdatedAtNil sets the value for UpdatedAt to be an explicit nil

### UnsetUpdatedAt
`func (o *ProxmoxInstance) UnsetUpdatedAt()`

UnsetUpdatedAt ensures that no value is present for UpdatedAt, not even an explicit nil
### GetTemplate

`func (o *ProxmoxInstance) GetTemplate() bool`

GetTemplate returns the Template field if non-nil, zero value otherwise.

### GetTemplateOk

`func (o *ProxmoxInstance) GetTemplateOk() (*bool, bool)`

GetTemplateOk returns a tuple with the Template field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTemplate

`func (o *ProxmoxInstance) SetTemplate(v bool)`

SetTemplate sets Template field to given value.

### HasTemplate

`func (o *ProxmoxInstance) HasTemplate() bool`

HasTemplate returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


