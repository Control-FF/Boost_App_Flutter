import 'package:freezed_annotation/freezed_annotation.dart';

part 'policy.freezed.dart';
part 'policy.g.dart';

@freezed
class Policy with _$Policy {
  factory Policy({
    @Default('') String co_subject,
    @Default('') String co_content,
  }) = _Policy;

  factory Policy.fromJson(Map<String, dynamic> json) =>
      _$PolicyFromJson(json);
}

@freezed
class PolicyResponse with _$PolicyResponse {
  factory PolicyResponse({
    required int status,
    @Default('') String message,
    @Default([]) @JsonKey(name: 'data') List<Policy>? items,
  }) = _PolicyResponse;

  factory PolicyResponse.fromJson(Map<String, dynamic> json) =>
      _$PolicyResponseFromJson(json);
}
