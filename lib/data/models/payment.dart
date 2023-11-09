import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment.freezed.dart';
part 'payment.g.dart';

@freezed
class Payment with _$Payment {
  factory Payment({
    @Default(0) int ct_id,
    @Default(0) int od_id,
    @Default('') String mb_id,
    @Default('') String it_id,
    @Default('') String it_name,
    @Default(0) int it_sc_type,
    @Default(0) int it_sc_method,
    @Default(0) int it_sc_price,
    @Default(0) int it_sc_minimum,
    @Default(0) int it_sc_qty,
    @Default('') String ct_status,
    @Default('') String ct_history,
    @Default(0) int ct_price,
    @Default(0) int ct_point,
    @Default(0) int cp_price,
    @Default(0) int ct_point_use,
    @Default(0) int ct_stock_use,
    @Default('') String ct_option,
    @Default(0) int ct_qty,
    @Default(0) int ct_notax,
    @Default('') String io_id,
    @Default(0) int io_type,
    @Default(0) int io_price,
    @Default('') String ct_time,
    @Default('') String ct_ip,
    @Default(0) int ct_send_cost,
    @Default(0) int ct_direct,
    @Default(0) int ct_select,
    @Default('') String ct_select_time,
  }) = _Payment;

  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);
}

@freezed
class PaymentResponse with _$PaymentResponse {
  factory PaymentResponse({
    required int status,
    @Default('') String message,
    @Default([]) @JsonKey(name: 'data') List<Payment>? items,
  }) = _PaymentResponse;

  factory PaymentResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentResponseFromJson(json);
}
