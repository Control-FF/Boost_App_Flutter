// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faq.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FAQImpl _$$FAQImplFromJson(Map<String, dynamic> json) => _$FAQImpl(
      fa_id: json['fa_id'] as int? ?? 0,
      fa_subject: json['fa_subject'] as String? ?? '',
      fa_content: json['fa_content'] as String? ?? '',
      fa_order: json['fa_order'] as int? ?? 0,
      isExpand: json['isExpand'] as bool? ?? false,
    );

Map<String, dynamic> _$$FAQImplToJson(_$FAQImpl instance) => <String, dynamic>{
      'fa_id': instance.fa_id,
      'fa_subject': instance.fa_subject,
      'fa_content': instance.fa_content,
      'fa_order': instance.fa_order,
      'isExpand': instance.isExpand,
    };

_$FAQResponseImpl _$$FAQResponseImplFromJson(Map<String, dynamic> json) =>
    _$FAQResponseImpl(
      status: json['status'] as int,
      message: json['message'] as String? ?? '',
      items: (json['data'] as List<dynamic>?)
              ?.map((e) => FAQ.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$FAQResponseImplToJson(_$FAQResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.items,
    };
