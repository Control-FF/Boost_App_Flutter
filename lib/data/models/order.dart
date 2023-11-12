import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class Order with _$Order {
  factory Order({
    @Default(0) int ct_id,
    @Default(0) int od_id,
    @Default('') String it_id,
    @Default('') String it_name,
    @Default('') String ct_status,
    @Default(0) int ct_price,
    @Default('') String ct_option,
    @Default('') String ct_time,
    @Default(0) int cp_price,
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
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) =>
      _$OrderFromJson(json);
}

@freezed
class OrderResponse with _$OrderResponse {
  factory OrderResponse({
    required int status,
    @Default('') String message,
    @Default([]) @JsonKey(name: 'data') List<Order>? items,
  }) = _OrderResponse;

  factory OrderResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderResponseFromJson(json);
}
