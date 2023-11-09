import 'package:freezed_annotation/freezed_annotation.dart';

part 'coupon.freezed.dart';
part 'coupon.g.dart';

@freezed
class Coupon with _$Coupon {
  factory Coupon({
    @Default(0) int cp_no,
    @Default('') String cp_id,
    @Default('') String cp_subject,
    @Default(0) int cp_method,
    @Default('') String cp_target,
    @Default('') String mb_id,
    @Default(0) int cz_id,
    @Default('') String cp_start,
    @Default('') String cp_end,
    @Default(0) int cp_price,
    @Default(0) int cp_type,
    @Default(0) int cp_trunc,
    @Default(0) int cp_minimum,
    @Default(0) int cp_maximum,
    @Default(0) int od_id,
    @Default('') String cp_datetime,
  }) = _Coupon;

  factory Coupon.fromJson(Map<String, dynamic> json) =>
      _$CouponFromJson(json);
}

@freezed
class CouponResponse with _$CouponResponse {
  factory CouponResponse({
    required int status,
    @Default('') String message,
    @Default([]) @JsonKey(name: 'data') List<Coupon>? items,
  }) = _CouponResponse;

  factory CouponResponse.fromJson(Map<String, dynamic> json) =>
      _$CouponResponseFromJson(json);
}
