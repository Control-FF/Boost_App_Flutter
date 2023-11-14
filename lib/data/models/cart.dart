import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart.freezed.dart';
part 'cart.g.dart';

@freezed
class Cart with _$Cart {
  factory Cart({
    @Default(0) int ct_id,
    @Default(0) int od_id,
    @Default('') String it_id,
    @Default('') String it_name,
    @Default(0) int ct_price,
    @Default(0) int ct_qty,
    @Default('') String ct_option,
    @Default(0) int it_stock_qty,
    @Default('') String img,
    @Default(false) bool outOfStock,
    @Default('') String stockStatus,
    @Default(true) bool isCheck,
  }) = _Cart;

  factory Cart.fromJson(Map<String, dynamic> json) =>
      _$CartFromJson(json);
}

@freezed
class CartResponse with _$CartResponse {
  factory CartResponse({
    required int status,
    @Default('') String message,
    @Default([]) @JsonKey(name: 'data') List<Cart>? items,
  }) = _CartResponse;

  factory CartResponse.fromJson(Map<String, dynamic> json) =>
      _$CartResponseFromJson(json);
}
