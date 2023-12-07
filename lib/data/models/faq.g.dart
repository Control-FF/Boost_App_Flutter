// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faq.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FAQ _$$_FAQFromJson(Map<String, dynamic> json) => _$_FAQ(
      fa_id: json['fa_id'] as int? ?? 0,
      fa_subject: json['fa_subject'] as String? ?? '',
      fa_content: json['fa_content'] as String? ?? '',
      fa_order: json['fa_order'] as int? ?? 0,
      isExpand: json['isExpand'] as bool? ?? false,
    );

Map<String, dynamic> _$$_FAQToJson(_$_FAQ instance) => <String, dynamic>{
      'fa_id': instance.fa_id,
      'fa_subject': instance.fa_subject,
      'fa_content': instance.fa_content,
      'fa_order': instance.fa_order,
      'isExpand': instance.isExpand,
    };

_$_FAQResponse _$$_FAQResponseFromJson(Map<String, dynamic> json) =>
    _$_FAQResponse(
      status: json['status'] as int,
      message: json['message'] as String? ?? '',
      items: (json['data'] as List<dynamic>?)
              ?.map((e) => FAQ.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_FAQResponseToJson(_$_FAQResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.items,
    };
