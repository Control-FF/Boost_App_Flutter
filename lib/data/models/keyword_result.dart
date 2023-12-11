import 'package:freezed_annotation/freezed_annotation.dart';

part 'keyword_result.freezed.dart';
part 'keyword_result.g.dart';

@freezed
class KeywordResult with _$KeywordResult {
  factory KeywordResult({
    @Default('') String it_id,
    @Default('') String it_name,
    @Default(0) int it_cust_price,
    @Default(0) int it_price,
    @Default('') String it_img1,
    @Default('') String it_time,
    @Default(0) int it_sum_qty,
  }) = _KeywordResult;

  factory KeywordResult.fromJson(Map<String, dynamic> json) =>
      _$KeywordResultFromJson(json);
}

@freezed
class KeywordResultResponse with _$KeywordResultResponse {
  factory KeywordResultResponse({
    required int status,
    @Default('') String message,
    @Default([]) @JsonKey(name: 'data') List<KeywordResult>? items,
    @Default(0) int total_cnt,
  }) = _KeywordResultResponse;

  factory KeywordResultResponse.fromJson(Map<String, dynamic> json) =>
      _$KeywordResultResponseFromJson(json);
}
