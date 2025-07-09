@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - Travel'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Z_C_TRAVEL_RANV
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
      _Agency,
      _Booking,
      _Currency,
      _Customer
}
