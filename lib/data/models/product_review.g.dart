// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductReview _$$_ProductReviewFromJson(Map<String, dynamic> json) =>
    _$_ProductReview(
      is_id: json['is_id'] as int? ?? 0,
      it_id: json['it_id'] as String? ?? '',
      mb_id: json['mb_id'] as String? ?? '',
      is_name: json['is_name'] as String? ?? '',
      is_score: json['is_score'] as int? ?? 0,
      is_subject: json['is_subject'] as String? ?? '',
      is_content: json['is_content'] as String? ?? '',
      is_time: json['is_time'] as String? ?? '',
      is_reply_subject: json['is_reply_subject'] as String? ?? '',
      is_reply_content: json['is_reply_content'] as String? ?? '',
      is_img1: json['is_img1'] as String? ?? '',
      is_img2: json['is_img2'] as String? ?? '',
      is_img3: json['is_img3'] as String? ?? '',
      isExpand: json['isExpand'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ProductReviewToJson(_$_ProductReview instance) =>
    <String, dynamic>{
      'is_id': instance.is_id,
      'it_id': instance.it_id,
      'mb_id': instance.mb_id,
      'is_name': instance.is_name,
      'is_score': instance.is_score,
      'is_subject': instance.is_subject,
      'is_content': instance.is_content,
      'is_time': instance.is_time,
      'is_reply_subject': instance.is_reply_subject,
      'is_reply_content': instance.is_reply_content,
      'is_img1': instance.is_img1,
      'is_img2': instance.is_img2,
      'is_img3': instance.is_img3,
      'isExpand': instance.isExpand,
    };

_$_ProductReviewResponse _$$_ProductReviewResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ProductReviewResponse(
      status: json['status'] as int,
      message: json['message'] as String? ?? '',
      page: json['page'] as int? ?? 1,
      listSize: json['listSize'] as int? ?? 0,
      totalPage: json['totalPage'] as int? ?? 0,
      totalCount: json['totalCount'] as int? ?? 0,
      isLastPage: json['isLastPage'] as String? ?? 'true',
      items: (json['list'] as List<dynamic>?)
              ?.map((e) => ProductReview.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ProductReviewResponseToJson(
        _$_ProductReviewResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'page': instance.page,
      'listSize': instance.listSize,
      'totalPage': instance.totalPage,
      'totalCount': instance.totalCount,
      'isLastPage': instance.isLastPage,
      'list': instance.items,
    };
