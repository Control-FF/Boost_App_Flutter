// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryProductImpl _$$CategoryProductImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryProductImpl(
      it_id: json['it_id'] as String? ?? '',
      it_name: json['it_name'] as String? ?? '',
      it_cust_price: json['it_cust_price'] as int? ?? 0,
      it_price: json['it_price'] as int? ?? 0,
      it_img1: json['it_img1'] as String? ?? '',
      it_time: json['it_time'] as String? ?? '',
      it_use_cnt: json['it_use_cnt'] as int? ?? 0,
      it_sum_qty: json['it_sum_qty'] as int? ?? 0,
    );

Map<String, dynamic> _$$CategoryProductImplToJson(
        _$CategoryProductImpl instance) =>
    <String, dynamic>{
      'it_id': instance.it_id,
      'it_name': instance.it_name,
      'it_cust_price': instance.it_cust_price,
      'it_price': instance.it_price,
      'it_img1': instance.it_img1,
      'it_time': instance.it_time,
      'it_use_cnt': instance.it_use_cnt,
      'it_sum_qty': instance.it_sum_qty,
    };

_$CategoryProductResponseImpl _$$CategoryProductResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryProductResponseImpl(
      status: json['status'] as int,
      message: json['message'] as String? ?? '',
      items: (json['data'] as List<dynamic>?)
              ?.map((e) => CategoryProduct.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      total_cnt: json['total_cnt'] ?? 0,
    );

Map<String, dynamic> _$$CategoryProductResponseImplToJson(
        _$CategoryProductResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.items,
      'total_cnt': instance.total_cnt,
    };
