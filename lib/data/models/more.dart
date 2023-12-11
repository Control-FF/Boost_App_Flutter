import 'package:freezed_annotation/freezed_annotation.dart';

part 'more.freezed.dart';
part 'more.g.dart';

@freezed
class More with _$More {
  factory More({
    @Default('') String it_id,
    @Default('') String it_name,
    @Default(0) int it_cust_price,
    @Default(0) int it_price,
    @Default('') String it_img1,
    @Default('') String it_time,
    @Default(0) int it_sum_qty,
  }) = _More;

  factory More.fromJson(Map<String, dynamic> json) =>
      _$MoreFromJson(json);
}

@freezed
class MoreResponse with _$MoreResponse {
  factory MoreResponse({
    required int status,
    @Default('') String message,
    @Default([]) @JsonKey(name: 'data') List<More>? items,
    @Default(0) int total_cnt,
  }) = _MoreResponse;

  factory MoreResponse.fromJson(Map<String, dynamic> json) =>
      _$MoreResponseFromJson(json);
}
