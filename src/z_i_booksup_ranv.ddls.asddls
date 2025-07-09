@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface - Booking Supplement'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Z_I_BOOKSUP_RANV
  as select from ztb_booksup_ranv as BookSup
  association        to parent Z_I_BOOKING_RANV as _Booking        on  $projection.TravelID  = _Booking.TravelID
                                                                   and $projection.BookingID = _Booking.BookingID
  association [1..1] to Z_I_TRAVEL_RANV         as _Travel         on  $projection.TravelID = _Travel.TravelID
  association [1..1] to /DMO/I_Supplement       as _Supplement     on  $projection.SupplementID = _Supplement.SupplementID
  association [1..*] to /DMO/I_SupplementText   as _SupplementText on  $projection.SupplementID = _SupplementText.SupplementID
{

  key travel_id             as TravelID,
  key booking_id            as BookingID,
  key booking_supplement_id as BookingSupplementID,
      supplement_id         as SupplementID,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      price                 as Price,
      currency_code         as CurrencyCode,
      last_changed_at       as LastChangedAt,
      _Booking,
      _Travel,
      _Supplement,
      _SupplementText
}
