@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - Booking Supplement'
@Metadata.ignorePropagatedAnnotations: true
define view entity Z_C_BOOKSUP_RANV
  as projection on Z_I_BOOKSUP_RANV
{
  key TravelID,
  key BookingID,
  key BookingSupplementID,
      SupplementID,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      Price,
      CurrencyCode,
      LastChangedAt,
      /* Associations */
      _Booking,
      _Supplement,
      _SupplementText,
      _Travel
}
