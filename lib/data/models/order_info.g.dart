// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderInfoAddress _$$_OrderInfoAddressFromJson(Map<String, dynamic> json) =>
    _$_OrderInfoAddress(
      ad_id: json['ad_id'] as int? ?? 0,
      ad_name: json['ad_name'] as String? ?? '',
      ad_hp: json['ad_hp'] as String? ?? '',
      address1: json['address1'] as String? ?? '',
      address2: json['address2'] as String? ?? '',
    );

Map<String, dynamic> _$$_OrderInfoAddressToJson(_$_OrderInfoAddress instance) =>
    <String, dynamic>{
      'ad_id': instance.ad_id,
      'ad_name': instance.ad_name,
      'ad_hp': instance.ad_hp,
      'address1': instance.address1,
      'address2': instance.address2,
    };

_$_OrderInfoPayment _$$_OrderInfoPaymentFromJson(Map<String, dynamic> json) =>
    _$_OrderInfoPayment(
      pay_id: json['pay_id'] as int? ?? 0,
      pay_name: json['pay_name'] as String? ?? '',
    );

Map<String, dynamic> _$$_OrderInfoPaymentToJson(_$_OrderInfoPayment instance) =>
    <String, dynamic>{
      'pay_id': instance.pay_id,
      'pay_name': instance.pay_name,
    };

_$_OrderInfoResponse _$$_OrderInfoResponseFromJson(Map<String, dynamic> json) =>
    _$_OrderInfoResponse(
      status: json['status'] as int,
      message: json['message'] as String? ?? '',
      mb_point: json['mb_point'] as int? ?? 0,
      mb_coupon_cnt: json['mb_coupon_cnt'] as int? ?? 0,
      addressItem: json['addressItem'] == null
          ? null
          : OrderInfoAddress.fromJson(
              json['addressItem'] as Map<String, dynamic>),
      paymentItem: json['paymentItem'] == null
          ? null
          : OrderInfoPayment.fromJson(
              json['paymentItem'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OrderInfoResponseToJson(
        _$_OrderInfoResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'mb_point': instance.mb_point,
      'mb_coupon_cnt': instance.mb_coupon_cnt,
      'addressItem': instance.addressItem,
      'paymentItem': instance.paymentItem,
    };
