import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_review.freezed.dart';
part 'product_review.g.dart';

@freezed
class ProductReview with _$ProductReview {
  factory ProductReview({
    @Default(0) int is_id,
    @Default('') String it_id,
    @Default('') String mb_id,
    @Default('') String is_name,
    @Default(0) int is_score,
    @Default('') String is_subject,
    @Default('') String is_content,
    @Default('') String is_time,
    @Default('') String is_reply_subject,
    @Default('') String is_reply_content,
    @Default('') String is_img1,
    @Default('') String is_img2,
    @Default('') String is_img3,
    @Default(false) bool? isExpand
  }) = _ProductReview;

  factory ProductReview.fromJson(Map<String, dynamic> json) =>
      _$ProductReviewFromJson(json);
}

@freezed
class ProductReviewResponse with _$ProductReviewResponse {
  factory ProductReviewResponse({
    required int status,
    @Default('') String message,
    @Default(1) int page,
    @Default(0) int listSize,
    @Default(0) int totalPage,
    @Default(0) int totalCount,
    @Default('true') String isLastPage,
    @Default([]) @JsonKey(name: 'list') List<ProductReview>? items,
  }) = _ProductReviewResponse;

  factory ProductReviewResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductReviewResponseFromJson(json);
}
