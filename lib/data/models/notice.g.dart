// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoticeImpl _$$NoticeImplFromJson(Map<String, dynamic> json) => _$NoticeImpl(
      fa_id: json['fa_id'] as int? ?? 0,
      fa_subject: json['fa_subject'] as String? ?? '',
      fa_content: json['fa_content'] as String? ?? '',
      fa_order: json['fa_order'] as int? ?? 0,
      isExpand: json['isExpand'] as bool? ?? false,
    );

Map<String, dynamic> _$$NoticeImplToJson(_$NoticeImpl instance) =>
    <String, dynamic>{
      'fa_id': instance.fa_id,
      'fa_subject': instance.fa_subject,
      'fa_content': instance.fa_content,
      'fa_order': instance.fa_order,
      'isExpand': instance.isExpand,
    };

_$NoticeResponseImpl _$$NoticeResponseImplFromJson(Map<String, dynamic> json) =>
    _$NoticeResponseImpl(
      status: json['status'] as int,
      message: json['message'] as String? ?? '',
      items: (json['data'] as List<dynamic>?)
              ?.map((e) => Notice.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$NoticeResponseImplToJson(
        _$NoticeResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.items,
    };
