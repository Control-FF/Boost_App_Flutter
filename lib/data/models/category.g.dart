// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Category _$$_CategoryFromJson(Map<String, dynamic> json) => _$_Category(
      ca_id: json['ca_id'] as String? ?? '',
      ca_name: json['ca_name'] as String? ?? '',
      sub_flag: json['sub_flag'] as String? ?? '',
    );

Map<String, dynamic> _$$_CategoryToJson(_$_Category instance) =>
    <String, dynamic>{
      'ca_id': instance.ca_id,
      'ca_name': instance.ca_name,
      'sub_flag': instance.sub_flag,
    };

_$_CategoryResponse _$$_CategoryResponseFromJson(Map<String, dynamic> json) =>
    _$_CategoryResponse(
      status: json['status'] as int,
      message: json['message'] as String,
      items: (json['data'] as List<dynamic>?)
              ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CategoryResponseToJson(_$_CategoryResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.items,
    };
