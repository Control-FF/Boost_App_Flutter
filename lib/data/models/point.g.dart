// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PointImpl _$$PointImplFromJson(Map<String, dynamic> json) => _$PointImpl(
      subject: json['subject'] as String? ?? '',
      point: json['point'] as int? ?? 0,
      reg_time: json['reg_time'] as String? ?? '',
    );

Map<String, dynamic> _$$PointImplToJson(_$PointImpl instance) =>
    <String, dynamic>{
      'subject': instance.subject,
      'point': instance.point,
      'reg_time': instance.reg_time,
    };

_$PointResponseImpl _$$PointResponseImplFromJson(Map<String, dynamic> json) =>
    _$PointResponseImpl(
      status: json['status'] as int,
      message: json['message'] as String? ?? '',
      point: json['point'] as int? ?? 0,
      items: (json['list'] as List<dynamic>?)
              ?.map((e) => Point.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PointResponseImplToJson(_$PointResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'point': instance.point,
      'list': instance.items,
    };
