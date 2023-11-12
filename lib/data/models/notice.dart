import 'package:freezed_annotation/freezed_annotation.dart';

part 'notice.freezed.dart';
part 'notice.g.dart';

@freezed
class Notice with _$Notice {
  factory Notice({
    @Default(0) int fa_id,
    @Default('') String fa_subject,
    @Default('') String fa_content,
    @Default(0) int fa_order,
    @Default(false) bool isExpand,
  }) = _Notice;

  factory Notice.fromJson(Map<String, dynamic> json) =>
      _$NoticeFromJson(json);
}

@freezed
class NoticeResponse with _$NoticeResponse {
  factory NoticeResponse({
    required int status,
    @Default('') String message,
    @Default([]) @JsonKey(name: 'data') List<Notice>? items,
  }) = _NoticeResponse;

  factory NoticeResponse.fromJson(Map<String, dynamic> json) =>
      _$NoticeResponseFromJson(json);
}
