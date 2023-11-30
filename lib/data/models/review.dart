import 'package:freezed_annotation/freezed_annotation.dart';

part 'review.freezed.dart';
part 'review.g.dart';

@freezed
class Review with _$Review {
  factory Review({
    @Default(0) int is_id,
    @Default('') String it_id,
    @Default('') String is_name,
    @Default(0) int is_score,
    @Default('') String is_subject,
    @Default('') String is_content,
    @Default('') String is_time,
    @Default('') String is_reply_subject,
    @Default('') String is_reply_content,
    @Default('') String is_reply_name,
    @Default(0) int is_confirm,
    @Default('') String is_img1,
    @Default('') String is_img2,
    @Default('') String is_img3,
    @Default(false) bool? isExpand
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) =>
      _$ReviewFromJson(json);
}

@freezed
class ReviewResponse with _$ReviewResponse {
  factory ReviewResponse({
    @Default('') String message,
    @Default([]) @JsonKey(name: 'data') List<Review>? items,
  }) = _ReviewResponse;

  factory ReviewResponse.fromJson(Map<String, dynamic> json) =>
      _$ReviewResponseFromJson(json);
}
