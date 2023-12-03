import 'package:freezed_annotation/freezed_annotation.dart';

part 'faq.freezed.dart';
part 'faq.g.dart';

@freezed
class FAQ with _$FAQ {
  factory FAQ({
    @Default(0) int fa_id,
    @Default('') String fa_subject,
    @Default('') String fa_content,
    @Default(0) int fa_order,
    @Default(false) bool? isExpand,
  }) = _FAQ;

  factory FAQ.fromJson(Map<String, dynamic> json) =>
      _$FAQFromJson(json);
}

@freezed
class FAQResponse with _$FAQResponse {
  factory FAQResponse({
    required int status,
    @Default('') String message,
    @Default([]) @JsonKey(name: 'data') List<FAQ>? items,
  }) = _FAQResponse;

  factory FAQResponse.fromJson(Map<String, dynamic> json) =>
      _$FAQResponseFromJson(json);
}
