// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardImpl _$$CardImplFromJson(Map<String, dynamic> json) => _$CardImpl(
      id: json['id'] as int? ?? 0,
      billingkey: json['billingkey'] as String? ?? '',
      card_name: json['card_name'] as String? ?? '',
      is_default: json['is_default'] as int? ?? 0,
      mb_id: json['mb_id'] as String? ?? '',
      disabled: json['disabled'] as int? ?? 0,
      is_company: json['is_company'] as int? ?? 0,
    );

Map<String, dynamic> _$$CardImplToJson(_$CardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'billingkey': instance.billingkey,
      'card_name': instance.card_name,
      'is_default': instance.is_default,
      'mb_id': instance.mb_id,
      'disabled': instance.disabled,
      'is_company': instance.is_company,
    };

_$CardResponseImpl _$$CardResponseImplFromJson(Map<String, dynamic> json) =>
    _$CardResponseImpl(
      status: json['status'] as int,
      message: json['message'] as String? ?? '',
      items: (json['data'] as List<dynamic>?)
              ?.map((e) => Card.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CardResponseImplToJson(_$CardResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.items,
    };
