import 'package:freezed_annotation/freezed_annotation.dart';

part 'recommend.freezed.dart';
part 'recommend.g.dart';

@freezed
class Recommend with _$Recommend {
  factory Recommend({
    @Default('') String it_id,
    @Default('') String it_name,
    @Default(0) int it_cust_price,
    @Default(0) int it_price,
    @Default('') String it_img1,
    @Default('') String it_time,
    @Default(0) int it_use_cnt,
    @Default(0) int it_sum_qty,
    @Default(0) int reviews,
  }) = _Recommend;

  factory Recommend.fromJson(Map<String, dynamic> json) =>
      _$RecommendFromJson(json);
}

@freezed
class RecommendResponse with _$RecommendResponse {
  factory RecommendResponse({
    required int status,
    @Default('') String message,
    @Default([]) @JsonKey(name: 'data') List<Recommend>? items,
    @Default(0) int total_cnt,
  }) = _RecommendResponse;

  factory RecommendResponse.fromJson(Map<String, dynamic> json) =>
      _$RecommendResponseFromJson(json);
}
