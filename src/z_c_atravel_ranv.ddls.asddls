@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - Travel Approval'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Z_C_ATRAVEL_RANV
  as projection on Z_I_TRAVEL_RANV
{
  key TravelID,
      AgencyID,
      CustomerID,
      BeginDate,
      EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      TotalPrice,
      CurrencyCode,
      Description,
      OverallStatus as TravelStatus,
      LastChangedAt,
      /* Associations */
      _Booking,
      _Customer
}
