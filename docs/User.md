# User

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Email** | Pointer to **string** |  | [optional] 
**Username** | Pointer to **string** | Handle the user can sign in with instead of their email. | [optional] 
**DisplayName** | Pointer to **NullableString** |  | [optional] 
**Theme** | Pointer to **NullableString** | Which skin this person prefers, or null to take whatever their organization or the instance says. | [optional] 
**Locale** | Pointer to **NullableString** | Which locale this person prefers, or null for no explicit choice — the same shape as {@see self::$theme}: null is not &#x60;en_GB&#x60;, it is \&quot;let the cascade decide\&quot; (cookie, then &#x60;Accept-Language&#x60;, then the instance default). See {@see \\App\\Service\\LocaleResolver} and docs/internationalization.md. | [optional] 
**Timezone** | Pointer to **NullableString** | The IANA timezone identifier (e.g. &#x60;Europe/London&#x60;) this person prefers, or null for no explicit choice — the same shape as {@see self::$locale}: null is not UTC, it is \&quot;let the cascade decide\&quot; (cookie written by the browser&#39;s own auto-detection, then the instance default). A plain validated string rather than a backed enum like {@see self::$theme}/{@see self::$locale}: the IANA database has ~400 identifiers, too many for an enum to curate the way {@see \\App\\Enum\\Locale} deliberately does for its two cases. See {@see \\App\\Service\\TimezoneResolver}. | [optional] 
**Password** | Pointer to **NullableString** | Hashed password; null for accounts that authenticate only via OAuth or LDAP. | [optional] 
**LdapDn** | Pointer to **NullableString** | The bound entry&#39;s distinguished name in LLDAP. Presence means the account is LDAP-authoritative: {@see App\\Service\\LdapAccountLinker} clears any local password when it sets this, and it is never set alongside one. | [optional] 
**AvatarPhoto** | Pointer to [**NullableUserAvatarPhoto**](UserAvatarPhoto.md) |  | [optional] 
**Roles** | Pointer to **[]string** |  | [optional] 
**DisabledAt** | Pointer to **NullableTime** | Set when a platform operator suspends the account; null &#x3D; active. | [optional] [readonly] 
**SpamMarkedAt** | Pointer to **NullableTime** | When an operator judged this account to be spam; null &#x3D; not spam. | [optional] [readonly] 
**SpamMarkedBy** | Pointer to [**NullableUser**](User.md) |  | [optional] 
**ApprovedAt** | Pointer to **NullableTime** | When an operator approved the account; null means it is still waiting and can reach nothing but the holding page ({@see self::getRoles()}). | [optional] [readonly] 
**EmailConfirmedAt** | Pointer to **NullableTime** | When the address on this account was proven to be one the person can read; null means it never was ({@see \\App\\Service\\EmailConfirmationService}). | [optional] [readonly] 
**CreditGrantedAt** | Pointer to **NullableTime** | When the one-off signup credit was granted ({@see \\App\\Service\\Credit\\SignupGrant}). | [optional] [readonly] 
**TierPin** | Pointer to **NullableString** | An operator&#39;s override of the trust tier this account would otherwise progress into on its own; null means the automatic rule decides ({@see \\App\\Service\\Trust\\TierResolver}). | [optional] [readonly] 
**TierPinnedAt** | Pointer to **NullableTime** |  | [optional] [readonly] 
**TierPinnedBy** | Pointer to [**NullableUser**](User.md) |  | [optional] 
**TierPinReason** | Pointer to **NullableString** |  | [optional] [readonly] 
**Memberships** | Pointer to [**[]Membership**](Membership.md) |  | [optional] 
**OauthIdentities** | Pointer to [**[]OAuthIdentity**](OAuthIdentity.md) |  | [optional] 
**TotpSecret** | Pointer to **NullableString** | The TOTP shared secret, **encrypted at rest** ({@see \\App\\Service\\TwoFactor\\TotpSecretCipher}), or null for an account that has not enabled a second factor. | [optional] 
**TotpSecretKeyId** | Pointer to **NullableString** | Which key wrapped {@see self::$totpSecret}, so a key rotation can re-wrap it without users re-enrolling ({@see \\App\\Service\\TwoFactor\\TotpSecretCipher}). | [optional] [readonly] 
**TotpConfirmedAt** | Pointer to **NullableTime** | When the person proved the authenticator by entering a live code; null means 2FA is not in force for this account. This is the flag the step-up gate reads ({@see \\App\\EventSubscriber\\TwoFactorStepUpSubscriber}). | [optional] [readonly] 
**RecoveryCodes** | Pointer to [**[]RecoveryCode**](RecoveryCode.md) |  | [optional] 
**MachineFor** | Pointer to **NullableString** | The organization this account exists to act for, or null for a person. | [optional] 
**Id** | Pointer to **string** |  | [optional] [readonly] 
**DeletedAt** | Pointer to **NullableTime** |  | [optional] [readonly] 
**CreatedAt** | Pointer to **time.Time** |  | [optional] [readonly] 
**UpdatedAt** | Pointer to **NullableTime** |  | [optional] [readonly] 
**DisplayLabel** | Pointer to **string** | How this person is named in the UI. Registration requires a display name, but an OAuth provider may not share one, so the handle stands in — never the email address, which is not ours to show. | [optional] [readonly] 
**Machine** | Pointer to **bool** | Whether this account is a machine acting for an organization, not a person. | [optional] [readonly] 
**LdapManaged** | Pointer to **bool** |  | [optional] [readonly] 
**AvatarPhotoType** | Pointer to **NullableString** |  | [optional] [readonly] 
**UserIdentifier** | Pointer to **string** | The identifier stored in the session token. Sign-in accepts either the email or the username ({@see UserRepository::loadUserByIdentifier()}); this is the canonical one the token is refreshed from. | [optional] [readonly] 
**GrantedRoles** | Pointer to **[]string** | The roles the account actually carries, whether or not it has been approved — what the admin panel shows and what the feature toggles flip. | [optional] 
**Disabled** | Pointer to **bool** |  | [optional] [readonly] 
**Spam** | Pointer to **bool** |  | [optional] [readonly] 
**Approved** | Pointer to **bool** |  | [optional] [readonly] 
**EmailConfirmed** | Pointer to **bool** |  | [optional] [readonly] 
**TierPinned** | Pointer to **bool** |  | [optional] [readonly] 
**TotpEnabled** | Pointer to **bool** | True once the person has proved the authenticator — the gate&#39;s on/off switch. | [optional] [readonly] 
**Deleted** | Pointer to **bool** |  | [optional] [readonly] 

## Methods

### NewUser

`func NewUser() *User`

NewUser instantiates a new User object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUserWithDefaults

`func NewUserWithDefaults() *User`

NewUserWithDefaults instantiates a new User object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEmail

`func (o *User) GetEmail() string`

GetEmail returns the Email field if non-nil, zero value otherwise.

### GetEmailOk

`func (o *User) GetEmailOk() (*string, bool)`

GetEmailOk returns a tuple with the Email field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmail

`func (o *User) SetEmail(v string)`

SetEmail sets Email field to given value.

### HasEmail

`func (o *User) HasEmail() bool`

HasEmail returns a boolean if a field has been set.

### GetUsername

`func (o *User) GetUsername() string`

GetUsername returns the Username field if non-nil, zero value otherwise.

### GetUsernameOk

`func (o *User) GetUsernameOk() (*string, bool)`

GetUsernameOk returns a tuple with the Username field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUsername

`func (o *User) SetUsername(v string)`

SetUsername sets Username field to given value.

### HasUsername

`func (o *User) HasUsername() bool`

HasUsername returns a boolean if a field has been set.

### GetDisplayName

`func (o *User) GetDisplayName() string`

GetDisplayName returns the DisplayName field if non-nil, zero value otherwise.

### GetDisplayNameOk

`func (o *User) GetDisplayNameOk() (*string, bool)`

GetDisplayNameOk returns a tuple with the DisplayName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisplayName

`func (o *User) SetDisplayName(v string)`

SetDisplayName sets DisplayName field to given value.

### HasDisplayName

`func (o *User) HasDisplayName() bool`

HasDisplayName returns a boolean if a field has been set.

### SetDisplayNameNil

`func (o *User) SetDisplayNameNil(b bool)`

 SetDisplayNameNil sets the value for DisplayName to be an explicit nil

### UnsetDisplayName
`func (o *User) UnsetDisplayName()`

UnsetDisplayName ensures that no value is present for DisplayName, not even an explicit nil
### GetTheme

`func (o *User) GetTheme() string`

GetTheme returns the Theme field if non-nil, zero value otherwise.

### GetThemeOk

`func (o *User) GetThemeOk() (*string, bool)`

GetThemeOk returns a tuple with the Theme field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTheme

`func (o *User) SetTheme(v string)`

SetTheme sets Theme field to given value.

### HasTheme

`func (o *User) HasTheme() bool`

HasTheme returns a boolean if a field has been set.

### SetThemeNil

`func (o *User) SetThemeNil(b bool)`

 SetThemeNil sets the value for Theme to be an explicit nil

### UnsetTheme
`func (o *User) UnsetTheme()`

UnsetTheme ensures that no value is present for Theme, not even an explicit nil
### GetLocale

`func (o *User) GetLocale() string`

GetLocale returns the Locale field if non-nil, zero value otherwise.

### GetLocaleOk

`func (o *User) GetLocaleOk() (*string, bool)`

GetLocaleOk returns a tuple with the Locale field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLocale

`func (o *User) SetLocale(v string)`

SetLocale sets Locale field to given value.

### HasLocale

`func (o *User) HasLocale() bool`

HasLocale returns a boolean if a field has been set.

### SetLocaleNil

`func (o *User) SetLocaleNil(b bool)`

 SetLocaleNil sets the value for Locale to be an explicit nil

### UnsetLocale
`func (o *User) UnsetLocale()`

UnsetLocale ensures that no value is present for Locale, not even an explicit nil
### GetTimezone

`func (o *User) GetTimezone() string`

GetTimezone returns the Timezone field if non-nil, zero value otherwise.

### GetTimezoneOk

`func (o *User) GetTimezoneOk() (*string, bool)`

GetTimezoneOk returns a tuple with the Timezone field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimezone

`func (o *User) SetTimezone(v string)`

SetTimezone sets Timezone field to given value.

### HasTimezone

`func (o *User) HasTimezone() bool`

HasTimezone returns a boolean if a field has been set.

### SetTimezoneNil

`func (o *User) SetTimezoneNil(b bool)`

 SetTimezoneNil sets the value for Timezone to be an explicit nil

### UnsetTimezone
`func (o *User) UnsetTimezone()`

UnsetTimezone ensures that no value is present for Timezone, not even an explicit nil
### GetPassword

`func (o *User) GetPassword() string`

GetPassword returns the Password field if non-nil, zero value otherwise.

### GetPasswordOk

`func (o *User) GetPasswordOk() (*string, bool)`

GetPasswordOk returns a tuple with the Password field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPassword

`func (o *User) SetPassword(v string)`

SetPassword sets Password field to given value.

### HasPassword

`func (o *User) HasPassword() bool`

HasPassword returns a boolean if a field has been set.

### SetPasswordNil

`func (o *User) SetPasswordNil(b bool)`

 SetPasswordNil sets the value for Password to be an explicit nil

### UnsetPassword
`func (o *User) UnsetPassword()`

UnsetPassword ensures that no value is present for Password, not even an explicit nil
### GetLdapDn

`func (o *User) GetLdapDn() string`

GetLdapDn returns the LdapDn field if non-nil, zero value otherwise.

### GetLdapDnOk

`func (o *User) GetLdapDnOk() (*string, bool)`

GetLdapDnOk returns a tuple with the LdapDn field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLdapDn

`func (o *User) SetLdapDn(v string)`

SetLdapDn sets LdapDn field to given value.

### HasLdapDn

`func (o *User) HasLdapDn() bool`

HasLdapDn returns a boolean if a field has been set.

### SetLdapDnNil

`func (o *User) SetLdapDnNil(b bool)`

 SetLdapDnNil sets the value for LdapDn to be an explicit nil

### UnsetLdapDn
`func (o *User) UnsetLdapDn()`

UnsetLdapDn ensures that no value is present for LdapDn, not even an explicit nil
### GetAvatarPhoto

`func (o *User) GetAvatarPhoto() UserAvatarPhoto`

GetAvatarPhoto returns the AvatarPhoto field if non-nil, zero value otherwise.

### GetAvatarPhotoOk

`func (o *User) GetAvatarPhotoOk() (*UserAvatarPhoto, bool)`

GetAvatarPhotoOk returns a tuple with the AvatarPhoto field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAvatarPhoto

`func (o *User) SetAvatarPhoto(v UserAvatarPhoto)`

SetAvatarPhoto sets AvatarPhoto field to given value.

### HasAvatarPhoto

`func (o *User) HasAvatarPhoto() bool`

HasAvatarPhoto returns a boolean if a field has been set.

### SetAvatarPhotoNil

`func (o *User) SetAvatarPhotoNil(b bool)`

 SetAvatarPhotoNil sets the value for AvatarPhoto to be an explicit nil

### UnsetAvatarPhoto
`func (o *User) UnsetAvatarPhoto()`

UnsetAvatarPhoto ensures that no value is present for AvatarPhoto, not even an explicit nil
### GetRoles

`func (o *User) GetRoles() []string`

GetRoles returns the Roles field if non-nil, zero value otherwise.

### GetRolesOk

`func (o *User) GetRolesOk() (*[]string, bool)`

GetRolesOk returns a tuple with the Roles field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRoles

`func (o *User) SetRoles(v []string)`

SetRoles sets Roles field to given value.

### HasRoles

`func (o *User) HasRoles() bool`

HasRoles returns a boolean if a field has been set.

### GetDisabledAt

`func (o *User) GetDisabledAt() time.Time`

GetDisabledAt returns the DisabledAt field if non-nil, zero value otherwise.

### GetDisabledAtOk

`func (o *User) GetDisabledAtOk() (*time.Time, bool)`

GetDisabledAtOk returns a tuple with the DisabledAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisabledAt

`func (o *User) SetDisabledAt(v time.Time)`

SetDisabledAt sets DisabledAt field to given value.

### HasDisabledAt

`func (o *User) HasDisabledAt() bool`

HasDisabledAt returns a boolean if a field has been set.

### SetDisabledAtNil

`func (o *User) SetDisabledAtNil(b bool)`

 SetDisabledAtNil sets the value for DisabledAt to be an explicit nil

### UnsetDisabledAt
`func (o *User) UnsetDisabledAt()`

UnsetDisabledAt ensures that no value is present for DisabledAt, not even an explicit nil
### GetSpamMarkedAt

`func (o *User) GetSpamMarkedAt() time.Time`

GetSpamMarkedAt returns the SpamMarkedAt field if non-nil, zero value otherwise.

### GetSpamMarkedAtOk

`func (o *User) GetSpamMarkedAtOk() (*time.Time, bool)`

GetSpamMarkedAtOk returns a tuple with the SpamMarkedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSpamMarkedAt

`func (o *User) SetSpamMarkedAt(v time.Time)`

SetSpamMarkedAt sets SpamMarkedAt field to given value.

### HasSpamMarkedAt

`func (o *User) HasSpamMarkedAt() bool`

HasSpamMarkedAt returns a boolean if a field has been set.

### SetSpamMarkedAtNil

`func (o *User) SetSpamMarkedAtNil(b bool)`

 SetSpamMarkedAtNil sets the value for SpamMarkedAt to be an explicit nil

### UnsetSpamMarkedAt
`func (o *User) UnsetSpamMarkedAt()`

UnsetSpamMarkedAt ensures that no value is present for SpamMarkedAt, not even an explicit nil
### GetSpamMarkedBy

`func (o *User) GetSpamMarkedBy() User`

GetSpamMarkedBy returns the SpamMarkedBy field if non-nil, zero value otherwise.

### GetSpamMarkedByOk

`func (o *User) GetSpamMarkedByOk() (*User, bool)`

GetSpamMarkedByOk returns a tuple with the SpamMarkedBy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSpamMarkedBy

`func (o *User) SetSpamMarkedBy(v User)`

SetSpamMarkedBy sets SpamMarkedBy field to given value.

### HasSpamMarkedBy

`func (o *User) HasSpamMarkedBy() bool`

HasSpamMarkedBy returns a boolean if a field has been set.

### SetSpamMarkedByNil

`func (o *User) SetSpamMarkedByNil(b bool)`

 SetSpamMarkedByNil sets the value for SpamMarkedBy to be an explicit nil

### UnsetSpamMarkedBy
`func (o *User) UnsetSpamMarkedBy()`

UnsetSpamMarkedBy ensures that no value is present for SpamMarkedBy, not even an explicit nil
### GetApprovedAt

`func (o *User) GetApprovedAt() time.Time`

GetApprovedAt returns the ApprovedAt field if non-nil, zero value otherwise.

### GetApprovedAtOk

`func (o *User) GetApprovedAtOk() (*time.Time, bool)`

GetApprovedAtOk returns a tuple with the ApprovedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApprovedAt

`func (o *User) SetApprovedAt(v time.Time)`

SetApprovedAt sets ApprovedAt field to given value.

### HasApprovedAt

`func (o *User) HasApprovedAt() bool`

HasApprovedAt returns a boolean if a field has been set.

### SetApprovedAtNil

`func (o *User) SetApprovedAtNil(b bool)`

 SetApprovedAtNil sets the value for ApprovedAt to be an explicit nil

### UnsetApprovedAt
`func (o *User) UnsetApprovedAt()`

UnsetApprovedAt ensures that no value is present for ApprovedAt, not even an explicit nil
### GetEmailConfirmedAt

`func (o *User) GetEmailConfirmedAt() time.Time`

GetEmailConfirmedAt returns the EmailConfirmedAt field if non-nil, zero value otherwise.

### GetEmailConfirmedAtOk

`func (o *User) GetEmailConfirmedAtOk() (*time.Time, bool)`

GetEmailConfirmedAtOk returns a tuple with the EmailConfirmedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmailConfirmedAt

`func (o *User) SetEmailConfirmedAt(v time.Time)`

SetEmailConfirmedAt sets EmailConfirmedAt field to given value.

### HasEmailConfirmedAt

`func (o *User) HasEmailConfirmedAt() bool`

HasEmailConfirmedAt returns a boolean if a field has been set.

### SetEmailConfirmedAtNil

`func (o *User) SetEmailConfirmedAtNil(b bool)`

 SetEmailConfirmedAtNil sets the value for EmailConfirmedAt to be an explicit nil

### UnsetEmailConfirmedAt
`func (o *User) UnsetEmailConfirmedAt()`

UnsetEmailConfirmedAt ensures that no value is present for EmailConfirmedAt, not even an explicit nil
### GetCreditGrantedAt

`func (o *User) GetCreditGrantedAt() time.Time`

GetCreditGrantedAt returns the CreditGrantedAt field if non-nil, zero value otherwise.

### GetCreditGrantedAtOk

`func (o *User) GetCreditGrantedAtOk() (*time.Time, bool)`

GetCreditGrantedAtOk returns a tuple with the CreditGrantedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreditGrantedAt

`func (o *User) SetCreditGrantedAt(v time.Time)`

SetCreditGrantedAt sets CreditGrantedAt field to given value.

### HasCreditGrantedAt

`func (o *User) HasCreditGrantedAt() bool`

HasCreditGrantedAt returns a boolean if a field has been set.

### SetCreditGrantedAtNil

`func (o *User) SetCreditGrantedAtNil(b bool)`

 SetCreditGrantedAtNil sets the value for CreditGrantedAt to be an explicit nil

### UnsetCreditGrantedAt
`func (o *User) UnsetCreditGrantedAt()`

UnsetCreditGrantedAt ensures that no value is present for CreditGrantedAt, not even an explicit nil
### GetTierPin

`func (o *User) GetTierPin() string`

GetTierPin returns the TierPin field if non-nil, zero value otherwise.

### GetTierPinOk

`func (o *User) GetTierPinOk() (*string, bool)`

GetTierPinOk returns a tuple with the TierPin field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTierPin

`func (o *User) SetTierPin(v string)`

SetTierPin sets TierPin field to given value.

### HasTierPin

`func (o *User) HasTierPin() bool`

HasTierPin returns a boolean if a field has been set.

### SetTierPinNil

`func (o *User) SetTierPinNil(b bool)`

 SetTierPinNil sets the value for TierPin to be an explicit nil

### UnsetTierPin
`func (o *User) UnsetTierPin()`

UnsetTierPin ensures that no value is present for TierPin, not even an explicit nil
### GetTierPinnedAt

`func (o *User) GetTierPinnedAt() time.Time`

GetTierPinnedAt returns the TierPinnedAt field if non-nil, zero value otherwise.

### GetTierPinnedAtOk

`func (o *User) GetTierPinnedAtOk() (*time.Time, bool)`

GetTierPinnedAtOk returns a tuple with the TierPinnedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTierPinnedAt

`func (o *User) SetTierPinnedAt(v time.Time)`

SetTierPinnedAt sets TierPinnedAt field to given value.

### HasTierPinnedAt

`func (o *User) HasTierPinnedAt() bool`

HasTierPinnedAt returns a boolean if a field has been set.

### SetTierPinnedAtNil

`func (o *User) SetTierPinnedAtNil(b bool)`

 SetTierPinnedAtNil sets the value for TierPinnedAt to be an explicit nil

### UnsetTierPinnedAt
`func (o *User) UnsetTierPinnedAt()`

UnsetTierPinnedAt ensures that no value is present for TierPinnedAt, not even an explicit nil
### GetTierPinnedBy

`func (o *User) GetTierPinnedBy() User`

GetTierPinnedBy returns the TierPinnedBy field if non-nil, zero value otherwise.

### GetTierPinnedByOk

`func (o *User) GetTierPinnedByOk() (*User, bool)`

GetTierPinnedByOk returns a tuple with the TierPinnedBy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTierPinnedBy

`func (o *User) SetTierPinnedBy(v User)`

SetTierPinnedBy sets TierPinnedBy field to given value.

### HasTierPinnedBy

`func (o *User) HasTierPinnedBy() bool`

HasTierPinnedBy returns a boolean if a field has been set.

### SetTierPinnedByNil

`func (o *User) SetTierPinnedByNil(b bool)`

 SetTierPinnedByNil sets the value for TierPinnedBy to be an explicit nil

### UnsetTierPinnedBy
`func (o *User) UnsetTierPinnedBy()`

UnsetTierPinnedBy ensures that no value is present for TierPinnedBy, not even an explicit nil
### GetTierPinReason

`func (o *User) GetTierPinReason() string`

GetTierPinReason returns the TierPinReason field if non-nil, zero value otherwise.

### GetTierPinReasonOk

`func (o *User) GetTierPinReasonOk() (*string, bool)`

GetTierPinReasonOk returns a tuple with the TierPinReason field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTierPinReason

`func (o *User) SetTierPinReason(v string)`

SetTierPinReason sets TierPinReason field to given value.

### HasTierPinReason

`func (o *User) HasTierPinReason() bool`

HasTierPinReason returns a boolean if a field has been set.

### SetTierPinReasonNil

`func (o *User) SetTierPinReasonNil(b bool)`

 SetTierPinReasonNil sets the value for TierPinReason to be an explicit nil

### UnsetTierPinReason
`func (o *User) UnsetTierPinReason()`

UnsetTierPinReason ensures that no value is present for TierPinReason, not even an explicit nil
### GetMemberships

`func (o *User) GetMemberships() []Membership`

GetMemberships returns the Memberships field if non-nil, zero value otherwise.

### GetMembershipsOk

`func (o *User) GetMembershipsOk() (*[]Membership, bool)`

GetMembershipsOk returns a tuple with the Memberships field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMemberships

`func (o *User) SetMemberships(v []Membership)`

SetMemberships sets Memberships field to given value.

### HasMemberships

`func (o *User) HasMemberships() bool`

HasMemberships returns a boolean if a field has been set.

### GetOauthIdentities

`func (o *User) GetOauthIdentities() []OAuthIdentity`

GetOauthIdentities returns the OauthIdentities field if non-nil, zero value otherwise.

### GetOauthIdentitiesOk

`func (o *User) GetOauthIdentitiesOk() (*[]OAuthIdentity, bool)`

GetOauthIdentitiesOk returns a tuple with the OauthIdentities field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOauthIdentities

`func (o *User) SetOauthIdentities(v []OAuthIdentity)`

SetOauthIdentities sets OauthIdentities field to given value.

### HasOauthIdentities

`func (o *User) HasOauthIdentities() bool`

HasOauthIdentities returns a boolean if a field has been set.

### GetTotpSecret

`func (o *User) GetTotpSecret() string`

GetTotpSecret returns the TotpSecret field if non-nil, zero value otherwise.

### GetTotpSecretOk

`func (o *User) GetTotpSecretOk() (*string, bool)`

GetTotpSecretOk returns a tuple with the TotpSecret field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotpSecret

`func (o *User) SetTotpSecret(v string)`

SetTotpSecret sets TotpSecret field to given value.

### HasTotpSecret

`func (o *User) HasTotpSecret() bool`

HasTotpSecret returns a boolean if a field has been set.

### SetTotpSecretNil

`func (o *User) SetTotpSecretNil(b bool)`

 SetTotpSecretNil sets the value for TotpSecret to be an explicit nil

### UnsetTotpSecret
`func (o *User) UnsetTotpSecret()`

UnsetTotpSecret ensures that no value is present for TotpSecret, not even an explicit nil
### GetTotpSecretKeyId

`func (o *User) GetTotpSecretKeyId() string`

GetTotpSecretKeyId returns the TotpSecretKeyId field if non-nil, zero value otherwise.

### GetTotpSecretKeyIdOk

`func (o *User) GetTotpSecretKeyIdOk() (*string, bool)`

GetTotpSecretKeyIdOk returns a tuple with the TotpSecretKeyId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotpSecretKeyId

`func (o *User) SetTotpSecretKeyId(v string)`

SetTotpSecretKeyId sets TotpSecretKeyId field to given value.

### HasTotpSecretKeyId

`func (o *User) HasTotpSecretKeyId() bool`

HasTotpSecretKeyId returns a boolean if a field has been set.

### SetTotpSecretKeyIdNil

`func (o *User) SetTotpSecretKeyIdNil(b bool)`

 SetTotpSecretKeyIdNil sets the value for TotpSecretKeyId to be an explicit nil

### UnsetTotpSecretKeyId
`func (o *User) UnsetTotpSecretKeyId()`

UnsetTotpSecretKeyId ensures that no value is present for TotpSecretKeyId, not even an explicit nil
### GetTotpConfirmedAt

`func (o *User) GetTotpConfirmedAt() time.Time`

GetTotpConfirmedAt returns the TotpConfirmedAt field if non-nil, zero value otherwise.

### GetTotpConfirmedAtOk

`func (o *User) GetTotpConfirmedAtOk() (*time.Time, bool)`

GetTotpConfirmedAtOk returns a tuple with the TotpConfirmedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotpConfirmedAt

`func (o *User) SetTotpConfirmedAt(v time.Time)`

SetTotpConfirmedAt sets TotpConfirmedAt field to given value.

### HasTotpConfirmedAt

`func (o *User) HasTotpConfirmedAt() bool`

HasTotpConfirmedAt returns a boolean if a field has been set.

### SetTotpConfirmedAtNil

`func (o *User) SetTotpConfirmedAtNil(b bool)`

 SetTotpConfirmedAtNil sets the value for TotpConfirmedAt to be an explicit nil

### UnsetTotpConfirmedAt
`func (o *User) UnsetTotpConfirmedAt()`

UnsetTotpConfirmedAt ensures that no value is present for TotpConfirmedAt, not even an explicit nil
### GetRecoveryCodes

`func (o *User) GetRecoveryCodes() []RecoveryCode`

GetRecoveryCodes returns the RecoveryCodes field if non-nil, zero value otherwise.

### GetRecoveryCodesOk

`func (o *User) GetRecoveryCodesOk() (*[]RecoveryCode, bool)`

GetRecoveryCodesOk returns a tuple with the RecoveryCodes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecoveryCodes

`func (o *User) SetRecoveryCodes(v []RecoveryCode)`

SetRecoveryCodes sets RecoveryCodes field to given value.

### HasRecoveryCodes

`func (o *User) HasRecoveryCodes() bool`

HasRecoveryCodes returns a boolean if a field has been set.

### GetMachineFor

`func (o *User) GetMachineFor() string`

GetMachineFor returns the MachineFor field if non-nil, zero value otherwise.

### GetMachineForOk

`func (o *User) GetMachineForOk() (*string, bool)`

GetMachineForOk returns a tuple with the MachineFor field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMachineFor

`func (o *User) SetMachineFor(v string)`

SetMachineFor sets MachineFor field to given value.

### HasMachineFor

`func (o *User) HasMachineFor() bool`

HasMachineFor returns a boolean if a field has been set.

### SetMachineForNil

`func (o *User) SetMachineForNil(b bool)`

 SetMachineForNil sets the value for MachineFor to be an explicit nil

### UnsetMachineFor
`func (o *User) UnsetMachineFor()`

UnsetMachineFor ensures that no value is present for MachineFor, not even an explicit nil
### GetId

`func (o *User) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *User) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *User) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *User) HasId() bool`

HasId returns a boolean if a field has been set.

### GetDeletedAt

`func (o *User) GetDeletedAt() time.Time`

GetDeletedAt returns the DeletedAt field if non-nil, zero value otherwise.

### GetDeletedAtOk

`func (o *User) GetDeletedAtOk() (*time.Time, bool)`

GetDeletedAtOk returns a tuple with the DeletedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeletedAt

`func (o *User) SetDeletedAt(v time.Time)`

SetDeletedAt sets DeletedAt field to given value.

### HasDeletedAt

`func (o *User) HasDeletedAt() bool`

HasDeletedAt returns a boolean if a field has been set.

### SetDeletedAtNil

`func (o *User) SetDeletedAtNil(b bool)`

 SetDeletedAtNil sets the value for DeletedAt to be an explicit nil

### UnsetDeletedAt
`func (o *User) UnsetDeletedAt()`

UnsetDeletedAt ensures that no value is present for DeletedAt, not even an explicit nil
### GetCreatedAt

`func (o *User) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *User) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *User) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *User) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *User) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *User) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *User) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *User) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.

### SetUpdatedAtNil

`func (o *User) SetUpdatedAtNil(b bool)`

 SetUpdatedAtNil sets the value for UpdatedAt to be an explicit nil

### UnsetUpdatedAt
`func (o *User) UnsetUpdatedAt()`

UnsetUpdatedAt ensures that no value is present for UpdatedAt, not even an explicit nil
### GetDisplayLabel

`func (o *User) GetDisplayLabel() string`

GetDisplayLabel returns the DisplayLabel field if non-nil, zero value otherwise.

### GetDisplayLabelOk

`func (o *User) GetDisplayLabelOk() (*string, bool)`

GetDisplayLabelOk returns a tuple with the DisplayLabel field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisplayLabel

`func (o *User) SetDisplayLabel(v string)`

SetDisplayLabel sets DisplayLabel field to given value.

### HasDisplayLabel

`func (o *User) HasDisplayLabel() bool`

HasDisplayLabel returns a boolean if a field has been set.

### GetMachine

`func (o *User) GetMachine() bool`

GetMachine returns the Machine field if non-nil, zero value otherwise.

### GetMachineOk

`func (o *User) GetMachineOk() (*bool, bool)`

GetMachineOk returns a tuple with the Machine field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMachine

`func (o *User) SetMachine(v bool)`

SetMachine sets Machine field to given value.

### HasMachine

`func (o *User) HasMachine() bool`

HasMachine returns a boolean if a field has been set.

### GetLdapManaged

`func (o *User) GetLdapManaged() bool`

GetLdapManaged returns the LdapManaged field if non-nil, zero value otherwise.

### GetLdapManagedOk

`func (o *User) GetLdapManagedOk() (*bool, bool)`

GetLdapManagedOk returns a tuple with the LdapManaged field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLdapManaged

`func (o *User) SetLdapManaged(v bool)`

SetLdapManaged sets LdapManaged field to given value.

### HasLdapManaged

`func (o *User) HasLdapManaged() bool`

HasLdapManaged returns a boolean if a field has been set.

### GetAvatarPhotoType

`func (o *User) GetAvatarPhotoType() string`

GetAvatarPhotoType returns the AvatarPhotoType field if non-nil, zero value otherwise.

### GetAvatarPhotoTypeOk

`func (o *User) GetAvatarPhotoTypeOk() (*string, bool)`

GetAvatarPhotoTypeOk returns a tuple with the AvatarPhotoType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAvatarPhotoType

`func (o *User) SetAvatarPhotoType(v string)`

SetAvatarPhotoType sets AvatarPhotoType field to given value.

### HasAvatarPhotoType

`func (o *User) HasAvatarPhotoType() bool`

HasAvatarPhotoType returns a boolean if a field has been set.

### SetAvatarPhotoTypeNil

`func (o *User) SetAvatarPhotoTypeNil(b bool)`

 SetAvatarPhotoTypeNil sets the value for AvatarPhotoType to be an explicit nil

### UnsetAvatarPhotoType
`func (o *User) UnsetAvatarPhotoType()`

UnsetAvatarPhotoType ensures that no value is present for AvatarPhotoType, not even an explicit nil
### GetUserIdentifier

`func (o *User) GetUserIdentifier() string`

GetUserIdentifier returns the UserIdentifier field if non-nil, zero value otherwise.

### GetUserIdentifierOk

`func (o *User) GetUserIdentifierOk() (*string, bool)`

GetUserIdentifierOk returns a tuple with the UserIdentifier field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserIdentifier

`func (o *User) SetUserIdentifier(v string)`

SetUserIdentifier sets UserIdentifier field to given value.

### HasUserIdentifier

`func (o *User) HasUserIdentifier() bool`

HasUserIdentifier returns a boolean if a field has been set.

### GetGrantedRoles

`func (o *User) GetGrantedRoles() []string`

GetGrantedRoles returns the GrantedRoles field if non-nil, zero value otherwise.

### GetGrantedRolesOk

`func (o *User) GetGrantedRolesOk() (*[]string, bool)`

GetGrantedRolesOk returns a tuple with the GrantedRoles field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGrantedRoles

`func (o *User) SetGrantedRoles(v []string)`

SetGrantedRoles sets GrantedRoles field to given value.

### HasGrantedRoles

`func (o *User) HasGrantedRoles() bool`

HasGrantedRoles returns a boolean if a field has been set.

### GetDisabled

`func (o *User) GetDisabled() bool`

GetDisabled returns the Disabled field if non-nil, zero value otherwise.

### GetDisabledOk

`func (o *User) GetDisabledOk() (*bool, bool)`

GetDisabledOk returns a tuple with the Disabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisabled

`func (o *User) SetDisabled(v bool)`

SetDisabled sets Disabled field to given value.

### HasDisabled

`func (o *User) HasDisabled() bool`

HasDisabled returns a boolean if a field has been set.

### GetSpam

`func (o *User) GetSpam() bool`

GetSpam returns the Spam field if non-nil, zero value otherwise.

### GetSpamOk

`func (o *User) GetSpamOk() (*bool, bool)`

GetSpamOk returns a tuple with the Spam field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSpam

`func (o *User) SetSpam(v bool)`

SetSpam sets Spam field to given value.

### HasSpam

`func (o *User) HasSpam() bool`

HasSpam returns a boolean if a field has been set.

### GetApproved

`func (o *User) GetApproved() bool`

GetApproved returns the Approved field if non-nil, zero value otherwise.

### GetApprovedOk

`func (o *User) GetApprovedOk() (*bool, bool)`

GetApprovedOk returns a tuple with the Approved field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApproved

`func (o *User) SetApproved(v bool)`

SetApproved sets Approved field to given value.

### HasApproved

`func (o *User) HasApproved() bool`

HasApproved returns a boolean if a field has been set.

### GetEmailConfirmed

`func (o *User) GetEmailConfirmed() bool`

GetEmailConfirmed returns the EmailConfirmed field if non-nil, zero value otherwise.

### GetEmailConfirmedOk

`func (o *User) GetEmailConfirmedOk() (*bool, bool)`

GetEmailConfirmedOk returns a tuple with the EmailConfirmed field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmailConfirmed

`func (o *User) SetEmailConfirmed(v bool)`

SetEmailConfirmed sets EmailConfirmed field to given value.

### HasEmailConfirmed

`func (o *User) HasEmailConfirmed() bool`

HasEmailConfirmed returns a boolean if a field has been set.

### GetTierPinned

`func (o *User) GetTierPinned() bool`

GetTierPinned returns the TierPinned field if non-nil, zero value otherwise.

### GetTierPinnedOk

`func (o *User) GetTierPinnedOk() (*bool, bool)`

GetTierPinnedOk returns a tuple with the TierPinned field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTierPinned

`func (o *User) SetTierPinned(v bool)`

SetTierPinned sets TierPinned field to given value.

### HasTierPinned

`func (o *User) HasTierPinned() bool`

HasTierPinned returns a boolean if a field has been set.

### GetTotpEnabled

`func (o *User) GetTotpEnabled() bool`

GetTotpEnabled returns the TotpEnabled field if non-nil, zero value otherwise.

### GetTotpEnabledOk

`func (o *User) GetTotpEnabledOk() (*bool, bool)`

GetTotpEnabledOk returns a tuple with the TotpEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotpEnabled

`func (o *User) SetTotpEnabled(v bool)`

SetTotpEnabled sets TotpEnabled field to given value.

### HasTotpEnabled

`func (o *User) HasTotpEnabled() bool`

HasTotpEnabled returns a boolean if a field has been set.

### GetDeleted

`func (o *User) GetDeleted() bool`

GetDeleted returns the Deleted field if non-nil, zero value otherwise.

### GetDeletedOk

`func (o *User) GetDeletedOk() (*bool, bool)`

GetDeletedOk returns a tuple with the Deleted field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeleted

`func (o *User) SetDeleted(v bool)`

SetDeleted sets Deleted field to given value.

### HasDeleted

`func (o *User) HasDeleted() bool`

HasDeleted returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


