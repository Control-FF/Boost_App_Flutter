import 'package:freezed_annotation/freezed_annotation.dart';

part 'onetouch.freezed.dart';
part 'onetouch.g.dart';

@freezed
class OneTouch with _$OneTouch {
  factory OneTouch({
    @Default('') String it_id,
    @Default('') String it_name,
    @Default(0) int it_cust_price,
    @Default(0) int it_price,
    @Default('') String it_img1,
    @Default('') String it_time,
    @Default(0) int it_use_cnt,
    @Default(0) int it_sum_qty,
  }) = _OneTouch;

  factory OneTouch.fromJson(Map<String, dynamic> json) =>
      _$OneTouchFromJson(json);
}

@freezed
class OneTouchResponse with _$OneTouchResponse {
  factory OneTouchResponse({
    required int status,
    @Default('') String message,
    @Default([]) @JsonKey(name: 'data') List<OneTouch>? items,
    @Default(0) int total_cnt
  }) = _OneTouchResponse;

  factory OneTouchResponse.fromJson(Map<String, dynamic> json) =>
      _$OneTouchResponseFromJson(json);
}
