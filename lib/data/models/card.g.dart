// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Card _$$_CardFromJson(Map<String, dynamic> json) => _$_Card(
      id: json['id'] as int? ?? 0,
      billingkey: json['billingkey'] as String? ?? '',
      card_name: json['card_name'] as String? ?? '',
      is_default: json['is_default'] as int? ?? 0,
      mb_id: json['mb_id'] as String? ?? '',
      disabled: json['disabled'] as int? ?? 0,
      is_company: json['is_company'] as int? ?? 0,
    );

Map<String, dynamic> _$$_CardToJson(_$_Card instance) => <String, dynamic>{
      'id': instance.id,
      'billingkey': instance.billingkey,
      'card_name': instance.card_name,
      'is_default': instance.is_default,
      'mb_id': instance.mb_id,
      'disabled': instance.disabled,
      'is_company': instance.is_company,
    };

_$_CardResponse _$$_CardResponseFromJson(Map<String, dynamic> json) =>
    _$_CardResponse(
      status: json['status'] as int,
      message: json['message'] as String? ?? '',
      items: (json['data'] as List<dynamic>?)
              ?.map((e) => Card.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CardResponseToJson(_$_CardResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.items,
    };
