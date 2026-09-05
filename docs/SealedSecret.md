# SealedSecret

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Algo** | Pointer to **string** |  | [optional] 
**KeyId** | Pointer to **string** |  | [optional] 
**Nonce** | Pointer to **string** |  | [optional] 
**Ciphertext** | Pointer to **string** |  | [optional] 

## Methods

### NewSealedSecret

`func NewSealedSecret() *SealedSecret`

NewSealedSecret instantiates a new SealedSecret object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSealedSecretWithDefaults

`func NewSealedSecretWithDefaults() *SealedSecret`

NewSealedSecretWithDefaults instantiates a new SealedSecret object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAlgo

`func (o *SealedSecret) GetAlgo() string`

GetAlgo returns the Algo field if non-nil, zero value otherwise.

### GetAlgoOk

`func (o *SealedSecret) GetAlgoOk() (*string, bool)`

GetAlgoOk returns a tuple with the Algo field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAlgo

`func (o *SealedSecret) SetAlgo(v string)`

SetAlgo sets Algo field to given value.

### HasAlgo

`func (o *SealedSecret) HasAlgo() bool`

HasAlgo returns a boolean if a field has been set.

### GetKeyId

`func (o *SealedSecret) GetKeyId() string`

GetKeyId returns the KeyId field if non-nil, zero value otherwise.

### GetKeyIdOk

`func (o *SealedSecret) GetKeyIdOk() (*string, bool)`

GetKeyIdOk returns a tuple with the KeyId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKeyId

`func (o *SealedSecret) SetKeyId(v string)`

SetKeyId sets KeyId field to given value.

### HasKeyId

`func (o *SealedSecret) HasKeyId() bool`

HasKeyId returns a boolean if a field has been set.

### GetNonce

`func (o *SealedSecret) GetNonce() string`

GetNonce returns the Nonce field if non-nil, zero value otherwise.

### GetNonceOk

`func (o *SealedSecret) GetNonceOk() (*string, bool)`

GetNonceOk returns a tuple with the Nonce field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNonce

`func (o *SealedSecret) SetNonce(v string)`

SetNonce sets Nonce field to given value.

### HasNonce

`func (o *SealedSecret) HasNonce() bool`

HasNonce returns a boolean if a field has been set.

### GetCiphertext

`func (o *SealedSecret) GetCiphertext() string`

GetCiphertext returns the Ciphertext field if non-nil, zero value otherwise.

### GetCiphertextOk

`func (o *SealedSecret) GetCiphertextOk() (*string, bool)`

GetCiphertextOk returns a tuple with the Ciphertext field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCiphertext

`func (o *SealedSecret) SetCiphertext(v string)`

SetCiphertext sets Ciphertext field to given value.

### HasCiphertext

`func (o *SealedSecret) HasCiphertext() bool`

HasCiphertext returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


