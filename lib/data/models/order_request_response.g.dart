// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_request_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderRequestResponse _$$_OrderRequestResponseFromJson(
        Map<String, dynamic> json) =>
    _$_OrderRequestResponse(
      status: json['status'] as int,
      message: json['message'] as String? ?? '',
      od_id: json['od_id'] as String? ?? '',
    );

Map<String, dynamic> _$$_OrderRequestResponseToJson(
        _$_OrderRequestResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'od_id': instance.od_id,
    };
