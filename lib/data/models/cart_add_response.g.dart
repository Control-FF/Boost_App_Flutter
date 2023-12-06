// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_add_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartAddResponseImpl _$$CartAddResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CartAddResponseImpl(
      status: json['status'] as int,
      message: json['message'] as String? ?? '',
      items:
          (json['cart_id'] as List<dynamic>?)?.map((e) => e as int).toList() ??
              const [],
    );

Map<String, dynamic> _$$CartAddResponseImplToJson(
        _$CartAddResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'cart_id': instance.items,
    };
