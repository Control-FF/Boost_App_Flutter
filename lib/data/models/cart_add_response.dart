import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_add_response.freezed.dart';
part 'cart_add_response.g.dart';

@freezed
class CartAddResponse with _$CartAddResponse {
  factory CartAddResponse({
    required int status,
    @Default('') String message,
    @Default([]) @JsonKey(name: 'cart_id') List<int>? items,
  }) = _CartAddResponse;

  factory CartAddResponse.fromJson(Map<String, dynamic> json) =>
      _$CartAddResponseFromJson(json);
}
