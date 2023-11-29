import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment.freezed.dart';
part 'payment.g.dart';

@freezed
class Payment with _$Payment {
  factory Payment({
    @Default(0) int ct_id,
    @Default(0) int od_id,
    @Default('') String it_name,
    @Default('') String it_id,
    @Default('') String ct_status,
    @Default(0) int ct_price,
    @Default(0) int cp_price,
    @Default(0) int ct_qty,
    @Default(0) int ct_point_use,
    @Default('') String io_id,
    @Default(0) int io_price,
    @Default('') String it_basic,
    @Default('') String ct_time,
    @Default('') String it_img1,
    @Default('') String it_img2,
    @Default('') String it_img3,
    @Default('') String it_img4,
    @Default('') String it_img5,
    @Default('') String it_img6,
    @Default('') String it_img7,
    @Default('') String it_img8,
    @Default('') String it_img9,
    @Default('') String it_img10,
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
    @Default(0) int page,
    @Default(0) int totalCount,
  }) = _PaymentResponse;

  factory PaymentResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentResponseFromJson(json);
}
