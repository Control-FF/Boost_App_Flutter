// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressDetailImpl _$$AddressDetailImplFromJson(Map<String, dynamic> json) =>
    _$AddressDetailImpl(
      ad_id: json['ad_id'] as int? ?? 0,
      ad_subject: json['ad_subject'] as String? ?? '',
      address1: json['address1'] as String? ?? '',
      address2: json['address2'] as String? ?? '',
      address3: json['address3'] as String? ?? '',
      name: json['name'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      ad_default: json['ad_default'] as String? ?? '',
    );

Map<String, dynamic> _$$AddressDetailImplToJson(_$AddressDetailImpl instance) =>
    <String, dynamic>{
      'ad_id': instance.ad_id,
      'ad_subject': instance.ad_subject,
      'address1': instance.address1,
      'address2': instance.address2,
      'address3': instance.address3,
      'name': instance.name,
      'phone': instance.phone,
      'ad_default': instance.ad_default,
    };

_$AddressDetailResponseImpl _$$AddressDetailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AddressDetailResponseImpl(
      status: json['status'] as int,
      message: json['message'] as String,
      data: AddressDetail.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddressDetailResponseImplToJson(
        _$AddressDetailResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
