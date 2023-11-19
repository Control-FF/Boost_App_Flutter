import 'package:freezed_annotation/freezed_annotation.dart';

part 'inquiry.freezed.dart';
part 'inquiry.g.dart';

@freezed
class Inquiry with _$Inquiry {
  factory Inquiry({
    @Default(0) int iq_id,
    @Default('') String? iq_type,
    @Default('') String iq_question,
    @Default('') String iq_answer,
    @Default('') String is_secret,
    @Default('') String iq_time,
    @Default('') String? iq_answer_time,
  }) = _Inquiry;

  factory Inquiry.fromJson(Map<String, dynamic> json) =>
      _$InquiryFromJson(json);
}

@freezed
class InquiryResponse with _$InquiryResponse {
  factory InquiryResponse({
    required int status,
    @Default('') String message,
    @Default(0) int page,
    @Default(0) int listSize,
    @Default(0) int totalPage,
    @Default(0) int totalCount,
    @Default('') String isLastPage,
    @Default([]) @JsonKey(name: 'list') List<Inquiry>? items,
  }) = _InquiryResponse;

  factory InquiryResponse.fromJson(Map<String, dynamic> json) =>
      _$InquiryResponseFromJson(json);
}
