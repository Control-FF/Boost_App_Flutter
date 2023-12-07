// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keyword_auto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KeywordAutoResponse _$$_KeywordAutoResponseFromJson(
        Map<String, dynamic> json) =>
    _$_KeywordAutoResponse(
      status: json['status'] as int,
      message: json['message'] as String? ?? '',
      items:
          (json['data'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
    );

Map<String, dynamic> _$$_KeywordAutoResponseToJson(
        _$_KeywordAutoResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.items,
    };
