# VariableVersion

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Variable** | Pointer to [**Variable**](Variable.md) |  | [optional] 
**Version** | Pointer to **int32** |  | [optional] 
**Algo** | Pointer to **NullableString** | Encryption algorithm identifier, e.g. \&quot;xsalsa20poly1305\&quot;. Sensitive only. | [optional] [readonly] 
**KeyId** | Pointer to **NullableString** | Identifier of the key-encryption-key that wrapped this value. Sensitive only. | [optional] [readonly] 
**Nonce** | Pointer to **NullableString** |  | [optional] [readonly] 
**Ciphertext** | Pointer to **NullableString** |  | [optional] [readonly] 
**CreatedAt** | Pointer to **time.Time** |  | [optional] [readonly] 
**CreatedBy** | Pointer to [**NullableUser**](User.md) |  | [optional] 
**Id** | Pointer to **string** |  | [optional] [readonly] 
**Encrypted** | Pointer to **string** | Populate an encrypted (sensitive) value. | [optional] 
**Plaintext** | Pointer to **string** | Populate a plaintext (non-sensitive) value. | [optional] 

## Methods

### NewVariableVersion

`func NewVariableVersion() *VariableVersion`

NewVariableVersion instantiates a new VariableVersion object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewVariableVersionWithDefaults

`func NewVariableVersionWithDefaults() *VariableVersion`

NewVariableVersionWithDefaults instantiates a new VariableVersion object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetVariable

`func (o *VariableVersion) GetVariable() Variable`

GetVariable returns the Variable field if non-nil, zero value otherwise.

### GetVariableOk

`func (o *VariableVersion) GetVariableOk() (*Variable, bool)`

GetVariableOk returns a tuple with the Variable field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVariable

`func (o *VariableVersion) SetVariable(v Variable)`

SetVariable sets Variable field to given value.

### HasVariable

`func (o *VariableVersion) HasVariable() bool`

HasVariable returns a boolean if a field has been set.

### GetVersion

`func (o *VariableVersion) GetVersion() int32`

GetVersion returns the Version field if non-nil, zero value otherwise.

### GetVersionOk

`func (o *VariableVersion) GetVersionOk() (*int32, bool)`

GetVersionOk returns a tuple with the Version field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVersion

`func (o *VariableVersion) SetVersion(v int32)`

SetVersion sets Version field to given value.

### HasVersion

`func (o *VariableVersion) HasVersion() bool`

HasVersion returns a boolean if a field has been set.

### GetAlgo

`func (o *VariableVersion) GetAlgo() string`

GetAlgo returns the Algo field if non-nil, zero value otherwise.

### GetAlgoOk

`func (o *VariableVersion) GetAlgoOk() (*string, bool)`

GetAlgoOk returns a tuple with the Algo field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAlgo

`func (o *VariableVersion) SetAlgo(v string)`

SetAlgo sets Algo field to given value.

### HasAlgo

`func (o *VariableVersion) HasAlgo() bool`

HasAlgo returns a boolean if a field has been set.

### SetAlgoNil

`func (o *VariableVersion) SetAlgoNil(b bool)`

 SetAlgoNil sets the value for Algo to be an explicit nil

### UnsetAlgo
`func (o *VariableVersion) UnsetAlgo()`

UnsetAlgo ensures that no value is present for Algo, not even an explicit nil
### GetKeyId

`func (o *VariableVersion) GetKeyId() string`

GetKeyId returns the KeyId field if non-nil, zero value otherwise.

### GetKeyIdOk

`func (o *VariableVersion) GetKeyIdOk() (*string, bool)`

GetKeyIdOk returns a tuple with the KeyId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKeyId

`func (o *VariableVersion) SetKeyId(v string)`

SetKeyId sets KeyId field to given value.

### HasKeyId

`func (o *VariableVersion) HasKeyId() bool`

HasKeyId returns a boolean if a field has been set.

### SetKeyIdNil

`func (o *VariableVersion) SetKeyIdNil(b bool)`

 SetKeyIdNil sets the value for KeyId to be an explicit nil

### UnsetKeyId
`func (o *VariableVersion) UnsetKeyId()`

UnsetKeyId ensures that no value is present for KeyId, not even an explicit nil
### GetNonce

`func (o *VariableVersion) GetNonce() string`

GetNonce returns the Nonce field if non-nil, zero value otherwise.

### GetNonceOk

`func (o *VariableVersion) GetNonceOk() (*string, bool)`

GetNonceOk returns a tuple with the Nonce field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNonce

`func (o *VariableVersion) SetNonce(v string)`

SetNonce sets Nonce field to given value.

### HasNonce

`func (o *VariableVersion) HasNonce() bool`

HasNonce returns a boolean if a field has been set.

### SetNonceNil

`func (o *VariableVersion) SetNonceNil(b bool)`

 SetNonceNil sets the value for Nonce to be an explicit nil

### UnsetNonce
`func (o *VariableVersion) UnsetNonce()`

UnsetNonce ensures that no value is present for Nonce, not even an explicit nil
### GetCiphertext

`func (o *VariableVersion) GetCiphertext() string`

GetCiphertext returns the Ciphertext field if non-nil, zero value otherwise.

### GetCiphertextOk

`func (o *VariableVersion) GetCiphertextOk() (*string, bool)`

GetCiphertextOk returns a tuple with the Ciphertext field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCiphertext

`func (o *VariableVersion) SetCiphertext(v string)`

SetCiphertext sets Ciphertext field to given value.

### HasCiphertext

`func (o *VariableVersion) HasCiphertext() bool`

HasCiphertext returns a boolean if a field has been set.

### SetCiphertextNil

`func (o *VariableVersion) SetCiphertextNil(b bool)`

 SetCiphertextNil sets the value for Ciphertext to be an explicit nil

### UnsetCiphertext
`func (o *VariableVersion) UnsetCiphertext()`

UnsetCiphertext ensures that no value is present for Ciphertext, not even an explicit nil
### GetCreatedAt

`func (o *VariableVersion) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *VariableVersion) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *VariableVersion) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *VariableVersion) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetCreatedBy

`func (o *VariableVersion) GetCreatedBy() User`

GetCreatedBy returns the CreatedBy field if non-nil, zero value otherwise.

### GetCreatedByOk

`func (o *VariableVersion) GetCreatedByOk() (*User, bool)`

GetCreatedByOk returns a tuple with the CreatedBy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedBy

`func (o *VariableVersion) SetCreatedBy(v User)`

SetCreatedBy sets CreatedBy field to given value.

### HasCreatedBy

`func (o *VariableVersion) HasCreatedBy() bool`

HasCreatedBy returns a boolean if a field has been set.

### SetCreatedByNil

`func (o *VariableVersion) SetCreatedByNil(b bool)`

 SetCreatedByNil sets the value for CreatedBy to be an explicit nil

### UnsetCreatedBy
`func (o *VariableVersion) UnsetCreatedBy()`

UnsetCreatedBy ensures that no value is present for CreatedBy, not even an explicit nil
### GetId

`func (o *VariableVersion) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *VariableVersion) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *VariableVersion) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *VariableVersion) HasId() bool`

HasId returns a boolean if a field has been set.

### GetEncrypted

`func (o *VariableVersion) GetEncrypted() string`

GetEncrypted returns the Encrypted field if non-nil, zero value otherwise.

### GetEncryptedOk

`func (o *VariableVersion) GetEncryptedOk() (*string, bool)`

GetEncryptedOk returns a tuple with the Encrypted field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEncrypted

`func (o *VariableVersion) SetEncrypted(v string)`

SetEncrypted sets Encrypted field to given value.

### HasEncrypted

`func (o *VariableVersion) HasEncrypted() bool`

HasEncrypted returns a boolean if a field has been set.

### GetPlaintext

`func (o *VariableVersion) GetPlaintext() string`

GetPlaintext returns the Plaintext field if non-nil, zero value otherwise.

### GetPlaintextOk

`func (o *VariableVersion) GetPlaintextOk() (*string, bool)`

GetPlaintextOk returns a tuple with the Plaintext field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPlaintext

`func (o *VariableVersion) SetPlaintext(v string)`

SetPlaintext sets Plaintext field to given value.

### HasPlaintext

`func (o *VariableVersion) HasPlaintext() bool`

HasPlaintext returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


