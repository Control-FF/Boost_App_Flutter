// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Review _$$_ReviewFromJson(Map<String, dynamic> json) => _$_Review(
      is_id: json['is_id'] as int? ?? 0,
      it_id: json['it_id'] as String? ?? '',
      is_name: json['is_name'] as String? ?? '',
      is_score: json['is_score'] as int? ?? 0,
      is_subject: json['is_subject'] as String? ?? '',
      is_content: json['is_content'] as String? ?? '',
      is_time: json['is_time'] as String? ?? '',
      is_reply_subject: json['is_reply_subject'] as String? ?? '',
      is_reply_content: json['is_reply_content'] as String? ?? '',
      is_reply_name: json['is_reply_name'] as String? ?? '',
      is_confirm: json['is_confirm'] as int? ?? 0,
      is_img1: json['is_img1'] as String? ?? '',
      is_img2: json['is_img2'] as String? ?? '',
      is_img3: json['is_img3'] as String? ?? '',
      isExpand: json['isExpand'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ReviewToJson(_$_Review instance) => <String, dynamic>{
      'is_id': instance.is_id,
      'it_id': instance.it_id,
      'is_name': instance.is_name,
      'is_score': instance.is_score,
      'is_subject': instance.is_subject,
      'is_content': instance.is_content,
      'is_time': instance.is_time,
      'is_reply_subject': instance.is_reply_subject,
      'is_reply_content': instance.is_reply_content,
      'is_reply_name': instance.is_reply_name,
      'is_confirm': instance.is_confirm,
      'is_img1': instance.is_img1,
      'is_img2': instance.is_img2,
      'is_img3': instance.is_img3,
      'isExpand': instance.isExpand,
    };

_$_ReviewResponse _$$_ReviewResponseFromJson(Map<String, dynamic> json) =>
    _$_ReviewResponse(
      message: json['message'] as String? ?? '',
      items: (json['data'] as List<dynamic>?)
              ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ReviewResponseToJson(_$_ReviewResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.items,
    };
