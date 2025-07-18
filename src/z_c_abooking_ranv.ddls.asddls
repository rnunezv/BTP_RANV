@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption- Booking Approval'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity Z_C_ABOOKING_RANV
  as projection on Z_I_BOOKING_RANV
{
  key TravelID,
  key BookingID,
      BookingDate,
      CustomerID,
      @ObjectModel.text.element: [ 'CarrierName' ]
      CarrierID,
      _Carrier.Name as CarrierName,
      ConnectionID,
      FlightDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      FlightPrice,
      CurrencyCode,
      BookingStatus,
      LastChangedAt,
      /* Associations */
      _Travel : redirected to parent Z_C_ATRAVEL_RANV,
      _Customer,
      _Carrier
}
