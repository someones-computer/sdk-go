# Organization

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MachineAccount** | Pointer to [**NullableUser**](User.md) |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**Slug** | Pointer to **string** | &#x60;unique: true&#x60; stops two organizations holding the same *string*; the constraint stops two holding strings that fold to the same **stack name**, which the database has no way to express (#860). Both are needed: the column guards the identifier, the constraint guards what is derived from it. | [optional] 
**Theme** | Pointer to **NullableString** | The skin this organization&#39;s members see, or null to take the instance&#39;s. | [optional] 
**TierPin** | Pointer to **NullableString** | An operator&#39;s grant of a tier this organization would not reach through any member — {@see \\App\\Enum\\AccountTier::Verified} in particular, which is granted rather than earned and belongs to a contractual relationship with the *organization*, not incidentally to whichever of its members happens to carry the highest personal tier ({@see \\App\\Service\\Trust\\TierResolver::forOrganization()}). A member individually pinned &#x60;Verified&#x60; still lifts the org the same way a &#x60;Trusted&#x60; member always has — this pin is for granting it to the org directly, without needing a person to hang it on. | [optional] [readonly] 
**TierPinnedAt** | Pointer to **NullableTime** |  | [optional] [readonly] 
**TierPinnedBy** | Pointer to [**NullableUser**](User.md) |  | [optional] 
**TierPinReason** | Pointer to **NullableString** |  | [optional] [readonly] 
**LowBalanceWarnedAt** | Pointer to **NullableTime** | When {@see \\App\\MessageHandler\\CheckRunwayHandler} last warned this organization that its projected runway had dropped below the threshold; null once no warning is outstanding. Set once per crossing and cleared the moment the projection recovers — by a top-up or by the burn easing off — which is what makes \&quot;warn once, re-arm on recovery\&quot; a fact this column can answer rather than something re-derived from the notification table on every tick. | [optional] [readonly] 
**TwoFactorRequiredAt** | Pointer to **NullableTime** | When an Owner/Admin turned on the requirement that every member of this organization protects their account with a second factor; null means it is optional. A reversible policy toggle, stamped like {@see User::$disabledAt} rather than a verdict, so no \&quot;who set it\&quot; attribution. | [optional] [readonly] 
**Memberships** | Pointer to [**[]Membership**](Membership.md) |  | [optional] 
**Applications** | Pointer to **[]string** |  | [optional] 
**Swarms** | Pointer to **[]string** | BYO swarms owned by this organization. | [optional] 
**Machines** | Pointer to [**[]Machine**](Machine.md) |  | [optional] 
**CreditTransactions** | Pointer to **[]string** | The append-only credit ledger. | [optional] 
**Variables** | Pointer to [**[]Variable**](Variable.md) |  | [optional] 
**Signals** | Pointer to [**[]OrganizationSignal**](OrganizationSignal.md) |  | [optional] 
**Id** | Pointer to **string** |  | [optional] [readonly] 
**DeletedAt** | Pointer to **NullableTime** |  | [optional] [readonly] 
**CreatedAt** | Pointer to **time.Time** |  | [optional] [readonly] 
**UpdatedAt** | Pointer to **NullableTime** |  | [optional] [readonly] 
**TierPinned** | Pointer to **bool** |  | [optional] [readonly] 
**Deleted** | Pointer to **bool** |  | [optional] [readonly] 

## Methods

### NewOrganization

`func NewOrganization() *Organization`

NewOrganization instantiates a new Organization object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOrganizationWithDefaults

`func NewOrganizationWithDefaults() *Organization`

NewOrganizationWithDefaults instantiates a new Organization object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetMachineAccount

`func (o *Organization) GetMachineAccount() User`

GetMachineAccount returns the MachineAccount field if non-nil, zero value otherwise.

### GetMachineAccountOk

`func (o *Organization) GetMachineAccountOk() (*User, bool)`

GetMachineAccountOk returns a tuple with the MachineAccount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMachineAccount

`func (o *Organization) SetMachineAccount(v User)`

SetMachineAccount sets MachineAccount field to given value.

### HasMachineAccount

`func (o *Organization) HasMachineAccount() bool`

HasMachineAccount returns a boolean if a field has been set.

### SetMachineAccountNil

`func (o *Organization) SetMachineAccountNil(b bool)`

 SetMachineAccountNil sets the value for MachineAccount to be an explicit nil

### UnsetMachineAccount
`func (o *Organization) UnsetMachineAccount()`

UnsetMachineAccount ensures that no value is present for MachineAccount, not even an explicit nil
### GetName

`func (o *Organization) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *Organization) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *Organization) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *Organization) HasName() bool`

HasName returns a boolean if a field has been set.

### GetSlug

`func (o *Organization) GetSlug() string`

GetSlug returns the Slug field if non-nil, zero value otherwise.

### GetSlugOk

`func (o *Organization) GetSlugOk() (*string, bool)`

GetSlugOk returns a tuple with the Slug field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSlug

`func (o *Organization) SetSlug(v string)`

SetSlug sets Slug field to given value.

### HasSlug

`func (o *Organization) HasSlug() bool`

HasSlug returns a boolean if a field has been set.

### GetTheme

`func (o *Organization) GetTheme() string`

GetTheme returns the Theme field if non-nil, zero value otherwise.

### GetThemeOk

`func (o *Organization) GetThemeOk() (*string, bool)`

GetThemeOk returns a tuple with the Theme field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTheme

`func (o *Organization) SetTheme(v string)`

SetTheme sets Theme field to given value.

### HasTheme

`func (o *Organization) HasTheme() bool`

HasTheme returns a boolean if a field has been set.

### SetThemeNil

`func (o *Organization) SetThemeNil(b bool)`

 SetThemeNil sets the value for Theme to be an explicit nil

### UnsetTheme
`func (o *Organization) UnsetTheme()`

UnsetTheme ensures that no value is present for Theme, not even an explicit nil
### GetTierPin

`func (o *Organization) GetTierPin() string`

GetTierPin returns the TierPin field if non-nil, zero value otherwise.

### GetTierPinOk

`func (o *Organization) GetTierPinOk() (*string, bool)`

GetTierPinOk returns a tuple with the TierPin field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTierPin

`func (o *Organization) SetTierPin(v string)`

SetTierPin sets TierPin field to given value.

### HasTierPin

`func (o *Organization) HasTierPin() bool`

HasTierPin returns a boolean if a field has been set.

### SetTierPinNil

`func (o *Organization) SetTierPinNil(b bool)`

 SetTierPinNil sets the value for TierPin to be an explicit nil

### UnsetTierPin
`func (o *Organization) UnsetTierPin()`

UnsetTierPin ensures that no value is present for TierPin, not even an explicit nil
### GetTierPinnedAt

`func (o *Organization) GetTierPinnedAt() time.Time`

GetTierPinnedAt returns the TierPinnedAt field if non-nil, zero value otherwise.

### GetTierPinnedAtOk

`func (o *Organization) GetTierPinnedAtOk() (*time.Time, bool)`

GetTierPinnedAtOk returns a tuple with the TierPinnedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTierPinnedAt

`func (o *Organization) SetTierPinnedAt(v time.Time)`

SetTierPinnedAt sets TierPinnedAt field to given value.

### HasTierPinnedAt

`func (o *Organization) HasTierPinnedAt() bool`

HasTierPinnedAt returns a boolean if a field has been set.

### SetTierPinnedAtNil

`func (o *Organization) SetTierPinnedAtNil(b bool)`

 SetTierPinnedAtNil sets the value for TierPinnedAt to be an explicit nil

### UnsetTierPinnedAt
`func (o *Organization) UnsetTierPinnedAt()`

UnsetTierPinnedAt ensures that no value is present for TierPinnedAt, not even an explicit nil
### GetTierPinnedBy

`func (o *Organization) GetTierPinnedBy() User`

GetTierPinnedBy returns the TierPinnedBy field if non-nil, zero value otherwise.

### GetTierPinnedByOk

`func (o *Organization) GetTierPinnedByOk() (*User, bool)`

GetTierPinnedByOk returns a tuple with the TierPinnedBy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTierPinnedBy

`func (o *Organization) SetTierPinnedBy(v User)`

SetTierPinnedBy sets TierPinnedBy field to given value.

### HasTierPinnedBy

`func (o *Organization) HasTierPinnedBy() bool`

HasTierPinnedBy returns a boolean if a field has been set.

### SetTierPinnedByNil

`func (o *Organization) SetTierPinnedByNil(b bool)`

 SetTierPinnedByNil sets the value for TierPinnedBy to be an explicit nil

### UnsetTierPinnedBy
`func (o *Organization) UnsetTierPinnedBy()`

UnsetTierPinnedBy ensures that no value is present for TierPinnedBy, not even an explicit nil
### GetTierPinReason

`func (o *Organization) GetTierPinReason() string`

GetTierPinReason returns the TierPinReason field if non-nil, zero value otherwise.

### GetTierPinReasonOk

`func (o *Organization) GetTierPinReasonOk() (*string, bool)`

GetTierPinReasonOk returns a tuple with the TierPinReason field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTierPinReason

`func (o *Organization) SetTierPinReason(v string)`

SetTierPinReason sets TierPinReason field to given value.

### HasTierPinReason

`func (o *Organization) HasTierPinReason() bool`

HasTierPinReason returns a boolean if a field has been set.

### SetTierPinReasonNil

`func (o *Organization) SetTierPinReasonNil(b bool)`

 SetTierPinReasonNil sets the value for TierPinReason to be an explicit nil

### UnsetTierPinReason
`func (o *Organization) UnsetTierPinReason()`

UnsetTierPinReason ensures that no value is present for TierPinReason, not even an explicit nil
### GetLowBalanceWarnedAt

`func (o *Organization) GetLowBalanceWarnedAt() time.Time`

GetLowBalanceWarnedAt returns the LowBalanceWarnedAt field if non-nil, zero value otherwise.

### GetLowBalanceWarnedAtOk

`func (o *Organization) GetLowBalanceWarnedAtOk() (*time.Time, bool)`

GetLowBalanceWarnedAtOk returns a tuple with the LowBalanceWarnedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLowBalanceWarnedAt

`func (o *Organization) SetLowBalanceWarnedAt(v time.Time)`

SetLowBalanceWarnedAt sets LowBalanceWarnedAt field to given value.

### HasLowBalanceWarnedAt

`func (o *Organization) HasLowBalanceWarnedAt() bool`

HasLowBalanceWarnedAt returns a boolean if a field has been set.

### SetLowBalanceWarnedAtNil

`func (o *Organization) SetLowBalanceWarnedAtNil(b bool)`

 SetLowBalanceWarnedAtNil sets the value for LowBalanceWarnedAt to be an explicit nil

### UnsetLowBalanceWarnedAt
`func (o *Organization) UnsetLowBalanceWarnedAt()`

UnsetLowBalanceWarnedAt ensures that no value is present for LowBalanceWarnedAt, not even an explicit nil
### GetTwoFactorRequiredAt

`func (o *Organization) GetTwoFactorRequiredAt() time.Time`

GetTwoFactorRequiredAt returns the TwoFactorRequiredAt field if non-nil, zero value otherwise.

### GetTwoFactorRequiredAtOk

`func (o *Organization) GetTwoFactorRequiredAtOk() (*time.Time, bool)`

GetTwoFactorRequiredAtOk returns a tuple with the TwoFactorRequiredAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTwoFactorRequiredAt

`func (o *Organization) SetTwoFactorRequiredAt(v time.Time)`

SetTwoFactorRequiredAt sets TwoFactorRequiredAt field to given value.

### HasTwoFactorRequiredAt

`func (o *Organization) HasTwoFactorRequiredAt() bool`

HasTwoFactorRequiredAt returns a boolean if a field has been set.

### SetTwoFactorRequiredAtNil

`func (o *Organization) SetTwoFactorRequiredAtNil(b bool)`

 SetTwoFactorRequiredAtNil sets the value for TwoFactorRequiredAt to be an explicit nil

### UnsetTwoFactorRequiredAt
`func (o *Organization) UnsetTwoFactorRequiredAt()`

UnsetTwoFactorRequiredAt ensures that no value is present for TwoFactorRequiredAt, not even an explicit nil
### GetMemberships

`func (o *Organization) GetMemberships() []Membership`

GetMemberships returns the Memberships field if non-nil, zero value otherwise.

### GetMembershipsOk

`func (o *Organization) GetMembershipsOk() (*[]Membership, bool)`

GetMembershipsOk returns a tuple with the Memberships field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMemberships

`func (o *Organization) SetMemberships(v []Membership)`

SetMemberships sets Memberships field to given value.

### HasMemberships

`func (o *Organization) HasMemberships() bool`

HasMemberships returns a boolean if a field has been set.

### GetApplications

`func (o *Organization) GetApplications() []string`

GetApplications returns the Applications field if non-nil, zero value otherwise.

### GetApplicationsOk

`func (o *Organization) GetApplicationsOk() (*[]string, bool)`

GetApplicationsOk returns a tuple with the Applications field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApplications

`func (o *Organization) SetApplications(v []string)`

SetApplications sets Applications field to given value.

### HasApplications

`func (o *Organization) HasApplications() bool`

HasApplications returns a boolean if a field has been set.

### GetSwarms

`func (o *Organization) GetSwarms() []string`

GetSwarms returns the Swarms field if non-nil, zero value otherwise.

### GetSwarmsOk

`func (o *Organization) GetSwarmsOk() (*[]string, bool)`

GetSwarmsOk returns a tuple with the Swarms field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSwarms

`func (o *Organization) SetSwarms(v []string)`

SetSwarms sets Swarms field to given value.

### HasSwarms

`func (o *Organization) HasSwarms() bool`

HasSwarms returns a boolean if a field has been set.

### GetMachines

`func (o *Organization) GetMachines() []Machine`

GetMachines returns the Machines field if non-nil, zero value otherwise.

### GetMachinesOk

`func (o *Organization) GetMachinesOk() (*[]Machine, bool)`

GetMachinesOk returns a tuple with the Machines field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMachines

`func (o *Organization) SetMachines(v []Machine)`

SetMachines sets Machines field to given value.

### HasMachines

`func (o *Organization) HasMachines() bool`

HasMachines returns a boolean if a field has been set.

### GetCreditTransactions

`func (o *Organization) GetCreditTransactions() []string`

GetCreditTransactions returns the CreditTransactions field if non-nil, zero value otherwise.

### GetCreditTransactionsOk

`func (o *Organization) GetCreditTransactionsOk() (*[]string, bool)`

GetCreditTransactionsOk returns a tuple with the CreditTransactions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreditTransactions

`func (o *Organization) SetCreditTransactions(v []string)`

SetCreditTransactions sets CreditTransactions field to given value.

### HasCreditTransactions

`func (o *Organization) HasCreditTransactions() bool`

HasCreditTransactions returns a boolean if a field has been set.

### GetVariables

`func (o *Organization) GetVariables() []Variable`

GetVariables returns the Variables field if non-nil, zero value otherwise.

### GetVariablesOk

`func (o *Organization) GetVariablesOk() (*[]Variable, bool)`

GetVariablesOk returns a tuple with the Variables field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVariables

`func (o *Organization) SetVariables(v []Variable)`

SetVariables sets Variables field to given value.

### HasVariables

`func (o *Organization) HasVariables() bool`

HasVariables returns a boolean if a field has been set.

### GetSignals

`func (o *Organization) GetSignals() []OrganizationSignal`

GetSignals returns the Signals field if non-nil, zero value otherwise.

### GetSignalsOk

`func (o *Organization) GetSignalsOk() (*[]OrganizationSignal, bool)`

GetSignalsOk returns a tuple with the Signals field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSignals

`func (o *Organization) SetSignals(v []OrganizationSignal)`

SetSignals sets Signals field to given value.

### HasSignals

`func (o *Organization) HasSignals() bool`

HasSignals returns a boolean if a field has been set.

### GetId

`func (o *Organization) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *Organization) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *Organization) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *Organization) HasId() bool`

HasId returns a boolean if a field has been set.

### GetDeletedAt

`func (o *Organization) GetDeletedAt() time.Time`

GetDeletedAt returns the DeletedAt field if non-nil, zero value otherwise.

### GetDeletedAtOk

`func (o *Organization) GetDeletedAtOk() (*time.Time, bool)`

GetDeletedAtOk returns a tuple with the DeletedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeletedAt

`func (o *Organization) SetDeletedAt(v time.Time)`

SetDeletedAt sets DeletedAt field to given value.

### HasDeletedAt

`func (o *Organization) HasDeletedAt() bool`

HasDeletedAt returns a boolean if a field has been set.

### SetDeletedAtNil

`func (o *Organization) SetDeletedAtNil(b bool)`

 SetDeletedAtNil sets the value for DeletedAt to be an explicit nil

### UnsetDeletedAt
`func (o *Organization) UnsetDeletedAt()`

UnsetDeletedAt ensures that no value is present for DeletedAt, not even an explicit nil
### GetCreatedAt

`func (o *Organization) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *Organization) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *Organization) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *Organization) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *Organization) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *Organization) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *Organization) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *Organization) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.

### SetUpdatedAtNil

`func (o *Organization) SetUpdatedAtNil(b bool)`

 SetUpdatedAtNil sets the value for UpdatedAt to be an explicit nil

### UnsetUpdatedAt
`func (o *Organization) UnsetUpdatedAt()`

UnsetUpdatedAt ensures that no value is present for UpdatedAt, not even an explicit nil
### GetTierPinned

`func (o *Organization) GetTierPinned() bool`

GetTierPinned returns the TierPinned field if non-nil, zero value otherwise.

### GetTierPinnedOk

`func (o *Organization) GetTierPinnedOk() (*bool, bool)`

GetTierPinnedOk returns a tuple with the TierPinned field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTierPinned

`func (o *Organization) SetTierPinned(v bool)`

SetTierPinned sets TierPinned field to given value.

### HasTierPinned

`func (o *Organization) HasTierPinned() bool`

HasTierPinned returns a boolean if a field has been set.

### GetDeleted

`func (o *Organization) GetDeleted() bool`

GetDeleted returns the Deleted field if non-nil, zero value otherwise.

### GetDeletedOk

`func (o *Organization) GetDeletedOk() (*bool, bool)`

GetDeletedOk returns a tuple with the Deleted field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeleted

`func (o *Organization) SetDeleted(v bool)`

SetDeleted sets Deleted field to given value.

### HasDeleted

`func (o *Organization) HasDeleted() bool`

HasDeleted returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


