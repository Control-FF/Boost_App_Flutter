// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'policy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Policy _$$_PolicyFromJson(Map<String, dynamic> json) => _$_Policy(
      co_subject: json['co_subject'] as String? ?? '',
      co_content: json['co_content'] as String? ?? '',
    );

Map<String, dynamic> _$$_PolicyToJson(_$_Policy instance) => <String, dynamic>{
      'co_subject': instance.co_subject,
      'co_content': instance.co_content,
    };

_$_PolicyResponse _$$_PolicyResponseFromJson(Map<String, dynamic> json) =>
    _$_PolicyResponse(
      status: json['status'] as int,
      message: json['message'] as String? ?? '',
      items: (json['data'] as List<dynamic>?)
              ?.map((e) => Policy.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_PolicyResponseToJson(_$_PolicyResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.items,
    };
