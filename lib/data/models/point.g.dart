// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Point _$$_PointFromJson(Map<String, dynamic> json) => _$_Point(
      subject: json['subject'] as String? ?? '',
      point: json['point'] as int? ?? 0,
      reg_time: json['reg_time'] as String? ?? '',
    );

Map<String, dynamic> _$$_PointToJson(_$_Point instance) => <String, dynamic>{
      'subject': instance.subject,
      'point': instance.point,
      'reg_time': instance.reg_time,
    };

_$_PointResponse _$$_PointResponseFromJson(Map<String, dynamic> json) =>
    _$_PointResponse(
      status: json['status'] as int,
      message: json['message'] as String? ?? '',
      point: json['point'] as int? ?? 0,
      items: (json['list'] as List<dynamic>?)
              ?.map((e) => Point.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_PointResponseToJson(_$_PointResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'point': instance.point,
      'list': instance.items,
    };
