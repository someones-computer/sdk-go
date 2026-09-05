# CreditTransaction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Organization** | Pointer to **string** |  | [optional] 
**Type** | Pointer to **string** |  | [optional] 
**Status** | Pointer to **string** |  | [optional] [default to "pending"]
**AmountCents** | Pointer to **int32** | Signed integer amount in the smallest currency unit (cents for USD). | [optional] 
**Currency** | Pointer to **string** |  | [optional] [default to "usd"]
**StripeCheckoutSessionId** | Pointer to **NullableString** | Stripe Checkout Session id; a top-up row is created Pending against this before redirecting. Null on a grant and on a debit, neither of which has a Stripe session — the *type* is what says which kind of row this is, not whether this column is set. | [optional] 
**UsageHour** | Pointer to **NullableTime** | The clock hour a debit bills for, truncated to the hour and stored UTC. | [optional] [readonly] 
**ResourceKind** | Pointer to **NullableString** | Which meter wrote this row; null on every non-debit row. The other half of the unique key above, and always set on a debit — never left null the way a top-up or grant&#39;s &#x60;usageHour&#x60; is, or two debits from different meters in the same hour would stop colliding with each other but a debit from the *same* meter twice would also stop colliding with itself. | [optional] [readonly] 
**UsageSeconds** | Pointer to **NullableInt32** | Resolved container-seconds this debit was computed from; null on anything but a compute debit. | [optional] [readonly] 
**UnresolvedContainers** | Pointer to **NullableInt32** | Containers the meter saw start and never saw stop over the billed hour. | [optional] [readonly] 
**UsageBytes** | Pointer to [**NullableCreditTransactionUsageBytes**](CreditTransactionUsageBytes.md) |  | [optional] 
**EngineMillis** | Pointer to [**NullableCreditTransactionEngineMillis**](CreditTransactionEngineMillis.md) |  | [optional] 
**StripeEventId** | Pointer to **NullableString** | Stripe Event id that last transitioned this row; secondary idempotency guard for webhook delivery. | [optional] 
**CreatedBy** | Pointer to [**NullableUser**](User.md) |  | [optional] 
**Id** | Pointer to **string** |  | [optional] [readonly] 
**CreatedAt** | Pointer to **time.Time** |  | [optional] [readonly] 
**UpdatedAt** | Pointer to **NullableTime** |  | [optional] [readonly] 

## Methods

### NewCreditTransaction

`func NewCreditTransaction() *CreditTransaction`

NewCreditTransaction instantiates a new CreditTransaction object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCreditTransactionWithDefaults

`func NewCreditTransactionWithDefaults() *CreditTransaction`

NewCreditTransactionWithDefaults instantiates a new CreditTransaction object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOrganization

`func (o *CreditTransaction) GetOrganization() string`

GetOrganization returns the Organization field if non-nil, zero value otherwise.

### GetOrganizationOk

`func (o *CreditTransaction) GetOrganizationOk() (*string, bool)`

GetOrganizationOk returns a tuple with the Organization field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrganization

`func (o *CreditTransaction) SetOrganization(v string)`

SetOrganization sets Organization field to given value.

### HasOrganization

`func (o *CreditTransaction) HasOrganization() bool`

HasOrganization returns a boolean if a field has been set.

### GetType

`func (o *CreditTransaction) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *CreditTransaction) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *CreditTransaction) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *CreditTransaction) HasType() bool`

HasType returns a boolean if a field has been set.

### GetStatus

`func (o *CreditTransaction) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *CreditTransaction) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *CreditTransaction) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *CreditTransaction) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetAmountCents

`func (o *CreditTransaction) GetAmountCents() int32`

GetAmountCents returns the AmountCents field if non-nil, zero value otherwise.

### GetAmountCentsOk

`func (o *CreditTransaction) GetAmountCentsOk() (*int32, bool)`

GetAmountCentsOk returns a tuple with the AmountCents field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmountCents

`func (o *CreditTransaction) SetAmountCents(v int32)`

SetAmountCents sets AmountCents field to given value.

### HasAmountCents

`func (o *CreditTransaction) HasAmountCents() bool`

HasAmountCents returns a boolean if a field has been set.

### GetCurrency

`func (o *CreditTransaction) GetCurrency() string`

GetCurrency returns the Currency field if non-nil, zero value otherwise.

### GetCurrencyOk

`func (o *CreditTransaction) GetCurrencyOk() (*string, bool)`

GetCurrencyOk returns a tuple with the Currency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrency

`func (o *CreditTransaction) SetCurrency(v string)`

SetCurrency sets Currency field to given value.

### HasCurrency

`func (o *CreditTransaction) HasCurrency() bool`

HasCurrency returns a boolean if a field has been set.

### GetStripeCheckoutSessionId

`func (o *CreditTransaction) GetStripeCheckoutSessionId() string`

GetStripeCheckoutSessionId returns the StripeCheckoutSessionId field if non-nil, zero value otherwise.

### GetStripeCheckoutSessionIdOk

`func (o *CreditTransaction) GetStripeCheckoutSessionIdOk() (*string, bool)`

GetStripeCheckoutSessionIdOk returns a tuple with the StripeCheckoutSessionId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStripeCheckoutSessionId

`func (o *CreditTransaction) SetStripeCheckoutSessionId(v string)`

SetStripeCheckoutSessionId sets StripeCheckoutSessionId field to given value.

### HasStripeCheckoutSessionId

`func (o *CreditTransaction) HasStripeCheckoutSessionId() bool`

HasStripeCheckoutSessionId returns a boolean if a field has been set.

### SetStripeCheckoutSessionIdNil

`func (o *CreditTransaction) SetStripeCheckoutSessionIdNil(b bool)`

 SetStripeCheckoutSessionIdNil sets the value for StripeCheckoutSessionId to be an explicit nil

### UnsetStripeCheckoutSessionId
`func (o *CreditTransaction) UnsetStripeCheckoutSessionId()`

UnsetStripeCheckoutSessionId ensures that no value is present for StripeCheckoutSessionId, not even an explicit nil
### GetUsageHour

`func (o *CreditTransaction) GetUsageHour() time.Time`

GetUsageHour returns the UsageHour field if non-nil, zero value otherwise.

### GetUsageHourOk

`func (o *CreditTransaction) GetUsageHourOk() (*time.Time, bool)`

GetUsageHourOk returns a tuple with the UsageHour field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUsageHour

`func (o *CreditTransaction) SetUsageHour(v time.Time)`

SetUsageHour sets UsageHour field to given value.

### HasUsageHour

`func (o *CreditTransaction) HasUsageHour() bool`

HasUsageHour returns a boolean if a field has been set.

### SetUsageHourNil

`func (o *CreditTransaction) SetUsageHourNil(b bool)`

 SetUsageHourNil sets the value for UsageHour to be an explicit nil

### UnsetUsageHour
`func (o *CreditTransaction) UnsetUsageHour()`

UnsetUsageHour ensures that no value is present for UsageHour, not even an explicit nil
### GetResourceKind

`func (o *CreditTransaction) GetResourceKind() string`

GetResourceKind returns the ResourceKind field if non-nil, zero value otherwise.

### GetResourceKindOk

`func (o *CreditTransaction) GetResourceKindOk() (*string, bool)`

GetResourceKindOk returns a tuple with the ResourceKind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResourceKind

`func (o *CreditTransaction) SetResourceKind(v string)`

SetResourceKind sets ResourceKind field to given value.

### HasResourceKind

`func (o *CreditTransaction) HasResourceKind() bool`

HasResourceKind returns a boolean if a field has been set.

### SetResourceKindNil

`func (o *CreditTransaction) SetResourceKindNil(b bool)`

 SetResourceKindNil sets the value for ResourceKind to be an explicit nil

### UnsetResourceKind
`func (o *CreditTransaction) UnsetResourceKind()`

UnsetResourceKind ensures that no value is present for ResourceKind, not even an explicit nil
### GetUsageSeconds

`func (o *CreditTransaction) GetUsageSeconds() int32`

GetUsageSeconds returns the UsageSeconds field if non-nil, zero value otherwise.

### GetUsageSecondsOk

`func (o *CreditTransaction) GetUsageSecondsOk() (*int32, bool)`

GetUsageSecondsOk returns a tuple with the UsageSeconds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUsageSeconds

`func (o *CreditTransaction) SetUsageSeconds(v int32)`

SetUsageSeconds sets UsageSeconds field to given value.

### HasUsageSeconds

`func (o *CreditTransaction) HasUsageSeconds() bool`

HasUsageSeconds returns a boolean if a field has been set.

### SetUsageSecondsNil

`func (o *CreditTransaction) SetUsageSecondsNil(b bool)`

 SetUsageSecondsNil sets the value for UsageSeconds to be an explicit nil

### UnsetUsageSeconds
`func (o *CreditTransaction) UnsetUsageSeconds()`

UnsetUsageSeconds ensures that no value is present for UsageSeconds, not even an explicit nil
### GetUnresolvedContainers

`func (o *CreditTransaction) GetUnresolvedContainers() int32`

GetUnresolvedContainers returns the UnresolvedContainers field if non-nil, zero value otherwise.

### GetUnresolvedContainersOk

`func (o *CreditTransaction) GetUnresolvedContainersOk() (*int32, bool)`

GetUnresolvedContainersOk returns a tuple with the UnresolvedContainers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnresolvedContainers

`func (o *CreditTransaction) SetUnresolvedContainers(v int32)`

SetUnresolvedContainers sets UnresolvedContainers field to given value.

### HasUnresolvedContainers

`func (o *CreditTransaction) HasUnresolvedContainers() bool`

HasUnresolvedContainers returns a boolean if a field has been set.

### SetUnresolvedContainersNil

`func (o *CreditTransaction) SetUnresolvedContainersNil(b bool)`

 SetUnresolvedContainersNil sets the value for UnresolvedContainers to be an explicit nil

### UnsetUnresolvedContainers
`func (o *CreditTransaction) UnsetUnresolvedContainers()`

UnsetUnresolvedContainers ensures that no value is present for UnresolvedContainers, not even an explicit nil
### GetUsageBytes

`func (o *CreditTransaction) GetUsageBytes() CreditTransactionUsageBytes`

GetUsageBytes returns the UsageBytes field if non-nil, zero value otherwise.

### GetUsageBytesOk

`func (o *CreditTransaction) GetUsageBytesOk() (*CreditTransactionUsageBytes, bool)`

GetUsageBytesOk returns a tuple with the UsageBytes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUsageBytes

`func (o *CreditTransaction) SetUsageBytes(v CreditTransactionUsageBytes)`

SetUsageBytes sets UsageBytes field to given value.

### HasUsageBytes

`func (o *CreditTransaction) HasUsageBytes() bool`

HasUsageBytes returns a boolean if a field has been set.

### SetUsageBytesNil

`func (o *CreditTransaction) SetUsageBytesNil(b bool)`

 SetUsageBytesNil sets the value for UsageBytes to be an explicit nil

### UnsetUsageBytes
`func (o *CreditTransaction) UnsetUsageBytes()`

UnsetUsageBytes ensures that no value is present for UsageBytes, not even an explicit nil
### GetEngineMillis

`func (o *CreditTransaction) GetEngineMillis() CreditTransactionEngineMillis`

GetEngineMillis returns the EngineMillis field if non-nil, zero value otherwise.

### GetEngineMillisOk

`func (o *CreditTransaction) GetEngineMillisOk() (*CreditTransactionEngineMillis, bool)`

GetEngineMillisOk returns a tuple with the EngineMillis field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEngineMillis

`func (o *CreditTransaction) SetEngineMillis(v CreditTransactionEngineMillis)`

SetEngineMillis sets EngineMillis field to given value.

### HasEngineMillis

`func (o *CreditTransaction) HasEngineMillis() bool`

HasEngineMillis returns a boolean if a field has been set.

### SetEngineMillisNil

`func (o *CreditTransaction) SetEngineMillisNil(b bool)`

 SetEngineMillisNil sets the value for EngineMillis to be an explicit nil

### UnsetEngineMillis
`func (o *CreditTransaction) UnsetEngineMillis()`

UnsetEngineMillis ensures that no value is present for EngineMillis, not even an explicit nil
### GetStripeEventId

`func (o *CreditTransaction) GetStripeEventId() string`

GetStripeEventId returns the StripeEventId field if non-nil, zero value otherwise.

### GetStripeEventIdOk

`func (o *CreditTransaction) GetStripeEventIdOk() (*string, bool)`

GetStripeEventIdOk returns a tuple with the StripeEventId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStripeEventId

`func (o *CreditTransaction) SetStripeEventId(v string)`

SetStripeEventId sets StripeEventId field to given value.

### HasStripeEventId

`func (o *CreditTransaction) HasStripeEventId() bool`

HasStripeEventId returns a boolean if a field has been set.

### SetStripeEventIdNil

`func (o *CreditTransaction) SetStripeEventIdNil(b bool)`

 SetStripeEventIdNil sets the value for StripeEventId to be an explicit nil

### UnsetStripeEventId
`func (o *CreditTransaction) UnsetStripeEventId()`

UnsetStripeEventId ensures that no value is present for StripeEventId, not even an explicit nil
### GetCreatedBy

`func (o *CreditTransaction) GetCreatedBy() User`

GetCreatedBy returns the CreatedBy field if non-nil, zero value otherwise.

### GetCreatedByOk

`func (o *CreditTransaction) GetCreatedByOk() (*User, bool)`

GetCreatedByOk returns a tuple with the CreatedBy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedBy

`func (o *CreditTransaction) SetCreatedBy(v User)`

SetCreatedBy sets CreatedBy field to given value.

### HasCreatedBy

`func (o *CreditTransaction) HasCreatedBy() bool`

HasCreatedBy returns a boolean if a field has been set.

### SetCreatedByNil

`func (o *CreditTransaction) SetCreatedByNil(b bool)`

 SetCreatedByNil sets the value for CreatedBy to be an explicit nil

### UnsetCreatedBy
`func (o *CreditTransaction) UnsetCreatedBy()`

UnsetCreatedBy ensures that no value is present for CreatedBy, not even an explicit nil
### GetId

`func (o *CreditTransaction) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *CreditTransaction) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *CreditTransaction) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *CreditTransaction) HasId() bool`

HasId returns a boolean if a field has been set.

### GetCreatedAt

`func (o *CreditTransaction) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *CreditTransaction) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *CreditTransaction) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *CreditTransaction) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *CreditTransaction) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *CreditTransaction) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *CreditTransaction) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *CreditTransaction) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.

### SetUpdatedAtNil

`func (o *CreditTransaction) SetUpdatedAtNil(b bool)`

 SetUpdatedAtNil sets the value for UpdatedAt to be an explicit nil

### UnsetUpdatedAt
`func (o *CreditTransaction) UnsetUpdatedAt()`

UnsetUpdatedAt ensures that no value is present for UpdatedAt, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


