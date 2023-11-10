import 'package:freezed_annotation/freezed_annotation.dart';

part 'keyword_auto.freezed.dart';
part 'keyword_auto.g.dart';

@freezed
class KeywordAutoResponse with _$KeywordAutoResponse {
  factory KeywordAutoResponse({
    required int status,
    @Default('') String message,
    @Default([]) @JsonKey(name: 'data') List<String>? items,
  }) = _KeywordAutoResponse;

  factory KeywordAutoResponse.fromJson(Map<String, dynamic> json) =>
      _$KeywordAutoResponseFromJson(json);
}
