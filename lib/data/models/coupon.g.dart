// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Coupon _$$_CouponFromJson(Map<String, dynamic> json) => _$_Coupon(
      cp_no: json['cp_no'] as int? ?? 0,
      cp_id: json['cp_id'] as String? ?? '',
      cp_subject: json['cp_subject'] as String? ?? '',
      cp_method: json['cp_method'] as int? ?? 0,
      cp_target: json['cp_target'] as String? ?? '',
      mb_id: json['mb_id'] as String? ?? '',
      cz_id: json['cz_id'] as int? ?? 0,
      cp_start: json['cp_start'] as String? ?? '',
      cp_end: json['cp_end'] as String? ?? '',
      cp_price: json['cp_price'] as int? ?? 0,
      cp_type: json['cp_type'] as int? ?? 0,
      cp_trunc: json['cp_trunc'] as int? ?? 0,
      cp_minimum: json['cp_minimum'] as int? ?? 0,
      cp_maximum: json['cp_maximum'] as int? ?? 0,
      od_id: json['od_id'] as int? ?? 0,
      cp_datetime: json['cp_datetime'] as String? ?? '',
    );

Map<String, dynamic> _$$_CouponToJson(_$_Coupon instance) => <String, dynamic>{
      'cp_no': instance.cp_no,
      'cp_id': instance.cp_id,
      'cp_subject': instance.cp_subject,
      'cp_method': instance.cp_method,
      'cp_target': instance.cp_target,
      'mb_id': instance.mb_id,
      'cz_id': instance.cz_id,
      'cp_start': instance.cp_start,
      'cp_end': instance.cp_end,
      'cp_price': instance.cp_price,
      'cp_type': instance.cp_type,
      'cp_trunc': instance.cp_trunc,
      'cp_minimum': instance.cp_minimum,
      'cp_maximum': instance.cp_maximum,
      'od_id': instance.od_id,
      'cp_datetime': instance.cp_datetime,
    };

_$_CouponResponse _$$_CouponResponseFromJson(Map<String, dynamic> json) =>
    _$_CouponResponse(
      status: json['status'] as int,
      message: json['message'] as String? ?? '',
      items: (json['data'] as List<dynamic>?)
              ?.map((e) => Coupon.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CouponResponseToJson(_$_CouponResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.items,
    };
