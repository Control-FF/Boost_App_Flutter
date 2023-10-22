import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_response.freezed.dart';
part 'data_response.g.dart';

@freezed
class DataResponse with _$DataResponse {
  factory DataResponse({
    required int status,
    @Default('') String message,
    @Default('') String? data,
    @Default('') String? code,
    @Default('') String? terms,
  }) = _DataResponse;

  factory DataResponse.fromJson(Map<String, dynamic> json) =>
      _$DataResponseFromJson(json);
}
