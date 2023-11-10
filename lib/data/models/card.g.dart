// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Card _$$_CardFromJson(Map<String, dynamic> json) => _$_Card(
      cd_no: json['cd_no'] as int? ?? 0,
      type: json['type'] as String? ?? '',
      subject: json['subject'] as String? ?? '',
      number: json['number'] as String? ?? '',
      expired_MM: json['expired_MM'] as String? ?? '',
      expired_YY: json['expired_YY'] as String? ?? '',
    );

Map<String, dynamic> _$$_CardToJson(_$_Card instance) => <String, dynamic>{
      'cd_no': instance.cd_no,
      'type': instance.type,
      'subject': instance.subject,
      'number': instance.number,
      'expired_MM': instance.expired_MM,
      'expired_YY': instance.expired_YY,
    };

_$_CardResponse _$$_CardResponseFromJson(Map<String, dynamic> json) =>
    _$_CardResponse(
      status: json['status'] as int,
      message: json['message'] as String? ?? '',
      items: (json['lists'] as List<dynamic>?)
              ?.map((e) => Card.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CardResponseToJson(_$_CardResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'lists': instance.items,
    };
