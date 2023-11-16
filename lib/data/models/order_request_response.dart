import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_request_response.freezed.dart';
part 'order_request_response.g.dart';

@freezed
class OrderRequestResponse with _$OrderRequestResponse {
  factory OrderRequestResponse({
    required int status,
    @Default('') String message,
    @Default('') String od_id,
  }) = _OrderRequestResponse;

  factory OrderRequestResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderRequestResponseFromJson(json);
}
