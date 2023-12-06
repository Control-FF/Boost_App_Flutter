// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_request_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderRequestResponseImpl _$$OrderRequestResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderRequestResponseImpl(
      status: json['status'] as int,
      message: json['message'] as String? ?? '',
      od_id: json['od_id'] as String? ?? '',
    );

Map<String, dynamic> _$$OrderRequestResponseImplToJson(
        _$OrderRequestResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'od_id': instance.od_id,
    };
