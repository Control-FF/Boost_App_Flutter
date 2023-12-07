import 'package:freezed_annotation/freezed_annotation.dart';

part 'onetouch_cart.freezed.dart';
part 'onetouch_cart.g.dart';

@freezed
class OneTouchData with _$OneTouchData {
  factory OneTouchData({
    @Default(0) int item_count,
    @Default([]) @JsonKey(name: 'cart_items') List<OneTouchCart>? items,
  }) = _OneTouchData;

  factory OneTouchData.fromJson(Map<String, dynamic> json) =>
      _$OneTouchDataFromJson(json);
}

@freezed
class OneTouchCart with _$OneTouchCart {
  factory OneTouchCart({
    @Default(0) int ot_id,
    @Default('') String it_id,
    @Default('') String it_name,
    @Default(0) int it_cust_price,
    @Default(0) int it_price,
    @Default(0) int ct_qty,
    @Default(0) int? io_no,
    @Default('') String? io_id,
    @Default('') String img,
    @Default(false) outOfStock,
    @Default('') String stockStatus,
  }) = _OneTouchCart;

  factory OneTouchCart.fromJson(Map<String, dynamic> json) =>
      _$OneTouchCartFromJson(json);
}

@freezed
class OneTouchCartResponse with _$OneTouchCartResponse {
  factory OneTouchCartResponse({
    required int status,
    @Default('') String message,
    OneTouchData? data
  }) = _OneTouchCartResponse;

  factory OneTouchCartResponse.fromJson(Map<String, dynamic> json) =>
      _$OneTouchCartResponseFromJson(json);
}
