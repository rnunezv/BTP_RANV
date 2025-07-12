@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - Travel'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity Z_C_TRAVEL_RANV
  as projection on Z_I_TRAVEL_RANV
{
  key TravelID,
      @ObjectModel.text.element: [ 'AgencyName' ]
      AgencyID,
      _Agency.Name       as AgencyName,
      @ObjectModel.text.element: [ 'CustomerName' ]
      CustomerID,
      _Customer.LastName as CustomerName,
      BeginDate,
      EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      TotalPrice,
      CurrencyCode,
      Description,
      OverallStatus      as TravelStatus,
      LastChangedAt,
      /* Associations */
      _Agency,
      _Booking : redirected to composition child Z_C_BOOKING_RANV,
      _Currency,
      _Customer
}
