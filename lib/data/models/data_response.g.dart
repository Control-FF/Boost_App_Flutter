// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataResponseImpl _$$DataResponseImplFromJson(Map<String, dynamic> json) =>
    _$DataResponseImpl(
      status: json['status'] as int,
      message: json['message'] as String? ?? '',
      data: json['data'] as String? ?? '',
      code: json['code'] as String? ?? '',
      terms: json['terms'] as String? ?? '',
    );

Map<String, dynamic> _$$DataResponseImplToJson(_$DataResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'code': instance.code,
      'terms': instance.terms,
    };
