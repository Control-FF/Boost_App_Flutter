// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      ad_id: json['ad_id'] as int? ?? 0,
      ad_subject: json['ad_subject'] as String? ?? '',
      address1: json['address1'] as String? ?? '',
      address2: json['address2'] as String? ?? '',
      address3: json['address3'] as String? ?? '',
      name: json['name'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      ad_default: json['ad_default'] as String? ?? '',
      isCheck: json['isCheck'] as bool? ?? false,
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'ad_id': instance.ad_id,
      'ad_subject': instance.ad_subject,
      'address1': instance.address1,
      'address2': instance.address2,
      'address3': instance.address3,
      'name': instance.name,
      'phone': instance.phone,
      'ad_default': instance.ad_default,
      'isCheck': instance.isCheck,
    };

_$AddressResponseImpl _$$AddressResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AddressResponseImpl(
      status: json['status'] as int,
      message: json['message'] as String? ?? '',
      items: (json['data'] as List<dynamic>?)
              ?.map((e) => Address.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$AddressResponseImplToJson(
        _$AddressResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.items,
    };
