@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface - Booking'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Z_I_BOOKING_RANV
  as select from ztb_booking_ranv as Booking
  composition [0..*] of Z_I_BOOKSUP_RANV  as _BookSup
  association        to parent Z_I_TRAVEL_RANV   as _Travel on $projection.TravelID = _Travel.TravelID
  association [1..1] to /DMO/I_Customer   as _Customer      on $projection.CustomerID = _Customer.CustomerID
  association [1..1] to /DMO/I_Carrier    as _Carrier       on $projection.CarrierID = _Carrier.AirlineID
  association [1..*] to /DMO/I_Connection as _Connection    on $projection.ConnectionID = _Connection.ConnectionID
{
  key travel_id       as TravelID,
  key booking_id      as BookingID,
      booking_date    as BookingDate,
      customer_id     as CustomerID,
      carrier_id      as CarrierID,
      connection_id   as ConnectionID,
      flight_date     as FlightDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      flight_price    as FlightPrice,
      currency_code   as CurrencyCode,
      booking_status  as BookingStatus,
      last_changed_at as LastChangedAt,
      _Travel,
      _BookSup,
      _Customer,
      _Carrier,
      _Connection
}
