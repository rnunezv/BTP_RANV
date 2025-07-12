@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - Booking Supplement'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity Z_C_BOOKSUP_RANV
  as projection on Z_I_BOOKSUP_RANV
{
  key TravelID,
  key BookingID,
  key BookingSupplementID,
      SupplementID,
      _SupplementText.Description as SupplementDescription : localized,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      Price,
      CurrencyCode,
      LastChangedAt,
      /* Associations */
      _Travel  : redirected to Z_C_TRAVEL_RANV,
      _Booking : redirected to parent Z_C_BOOKING_RANV,
      _Supplement,
      _SupplementText
}
