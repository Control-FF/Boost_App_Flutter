import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info.freezed.dart';
part 'user_info.g.dart';

@freezed
class Order with _$Order {
  factory Order({
    @Default(0) int deposit_cnt,
    @Default(0) int prepare_cnt,
    @Default(0) int delivery_cnt,
    @Default(0) int complete_cnt,
    @Default(0) int cancel_cnt,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) =>
      _$OrderFromJson(json);
}

@freezed
class UserInfo with _$UserInfo {
  factory UserInfo({
    @Default('') String name,
    @Default('') String nickname,
    @Default('') String recommend_code,
    @Default(0) int point,
    @Default(0) int coupon_cnt,
    @Default(0) int review_cnt,
    Order? order,
  }) = _UserInfo;

  factory UserInfo.fromJson(Map<String, dynamic> json) =>
      _$UserInfoFromJson(json);
}

@freezed
class UserInfoResponse with _$UserInfoResponse {
  factory UserInfoResponse({
    required int status,
    required String message,
    UserInfo? data,
  }) = _UserInfoResponse;

  factory UserInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$UserInfoResponseFromJson(json);
}