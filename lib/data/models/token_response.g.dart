// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TokenResponse _$$_TokenResponseFromJson(Map<String, dynamic> json) =>
    _$_TokenResponse(
      status: json['status'] as int,
      message: json['message'] as String? ?? '',
      accessToken: json['accessToken'] as String? ?? '',
      refreshToken: json['refreshToken'] as String? ?? '',
    );

Map<String, dynamic> _$$_TokenResponseToJson(_$_TokenResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
