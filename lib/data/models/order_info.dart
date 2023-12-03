import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_info.freezed.dart';
part 'order_info.g.dart';

@freezed
class OrderInfoAddress with _$OrderInfoAddress {
  factory OrderInfoAddress({
    @Default(0) int ad_id,
    @Default('') String ad_name,
    @Default('') String ad_hp,
    @Default('') String address1,
    @Default('') String address2,
  }) = _OrderInfoAddress;

  factory OrderInfoAddress.fromJson(Map<String, dynamic> json) =>
      _$OrderInfoAddressFromJson(json);
}

@freezed
class OrderInfoPayment with _$OrderInfoPayment {
  factory OrderInfoPayment({
    @Default(0) int pay_id,
    @Default('') String pay_name,
  }) = _OrderInfoPayment;

  factory OrderInfoPayment.fromJson(Map<String, dynamic> json) =>
      _$OrderInfoPaymentFromJson(json);
}

@freezed
class OrderInfoResponse with _$OrderInfoResponse {
  factory OrderInfoResponse({
    required int status,
    @Default('') String message,
    @Default(0) int mb_point,
    @Default(0) int mb_coupon_cnt,
    OrderInfoAddress? addressItem,
    OrderInfoPayment? paymentItem
  }) = _OrderInfoResponse;

  factory OrderInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderInfoResponseFromJson(json);
}
