import 'package:freezed_annotation/freezed_annotation.dart';

part 'keyword_rank.freezed.dart';
part 'keyword_rank.g.dart';

@freezed
class KeywordRank with _$KeywordRank {
  factory KeywordRank({
    @Default(0) int rank,
    @Default('') String keyword,
  }) = _KeywordRank;

  factory KeywordRank.fromJson(Map<String, dynamic> json) =>
      _$KeywordRankFromJson(json);
}

@freezed
class KeywordRankResponse with _$KeywordRankResponse {
  factory KeywordRankResponse({
    required int status,
    @Default('') String message,
    @Default([]) @JsonKey(name: 'data') List<KeywordRank>? items,
  }) = _KeywordRankResponse;

  factory KeywordRankResponse.fromJson(Map<String, dynamic> json) =>
      _$KeywordRankResponseFromJson(json);
}
