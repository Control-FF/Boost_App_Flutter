// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keyword_auto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KeywordAutoResponseImpl _$$KeywordAutoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$KeywordAutoResponseImpl(
      status: json['status'] as int,
      message: json['message'] as String? ?? '',
      items:
          (json['data'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
    );

Map<String, dynamic> _$$KeywordAutoResponseImplToJson(
        _$KeywordAutoResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.items,
    };
