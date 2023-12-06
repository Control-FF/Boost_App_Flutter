import 'package:freezed_annotation/freezed_annotation.dart';

part 'cs.freezed.dart';
part 'cs.g.dart';

@freezed
class CS with _$CS {
  factory CS({
    @Default(0) int qa_id,
    @Default('') String mb_id,
    @Default('') String qa_name,
    @Default('') String qa_subject,
    @Default('') String qa_content,
    @Default(0) int qa_status,
    @Default('') String qa_file1,
    @Default('') String qa_file2,
    @Default('') String? qa_datetime,
    @Default('') String? answer_content,
    @Default(false) bool? isExpand,
  }) = _CS;

  factory CS.fromJson(Map<String, dynamic> json) =>
      _$CSFromJson(json);
}

@freezed
class CSResponse with _$CSResponse {
  factory CSResponse({
    required int status,
    @Default('') String message,
    @Default([]) @JsonKey(name: 'data') List<CS>? items,
  }) = _CSResponse;

  factory CSResponse.fromJson(Map<String, dynamic> json) =>
      _$CSResponseFromJson(json);
}
