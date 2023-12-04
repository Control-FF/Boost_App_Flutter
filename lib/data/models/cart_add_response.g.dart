// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_add_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartAddResponse _$$_CartAddResponseFromJson(Map<String, dynamic> json) =>
    _$_CartAddResponse(
      status: json['status'] as int,
      message: json['message'] as String? ?? '',
      items:
          (json['cart_id'] as List<dynamic>?)?.map((e) => e as int).toList() ??
              const [],
    );

Map<String, dynamic> _$$_CartAddResponseToJson(_$_CartAddResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'cart_id': instance.items,
    };
