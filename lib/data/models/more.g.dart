// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'more.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_More _$$_MoreFromJson(Map<String, dynamic> json) => _$_More(
      it_id: json['it_id'] as String? ?? '',
      it_name: json['it_name'] as String? ?? '',
      it_cust_price: json['it_cust_price'] as int? ?? 0,
      it_price: json['it_price'] as int? ?? 0,
      it_img1: json['it_img1'] as String? ?? '',
      it_time: json['it_time'] as String? ?? '',
      it_sum_qty: json['it_sum_qty'] as int? ?? 0,
    );

Map<String, dynamic> _$$_MoreToJson(_$_More instance) => <String, dynamic>{
      'it_id': instance.it_id,
      'it_name': instance.it_name,
      'it_cust_price': instance.it_cust_price,
      'it_price': instance.it_price,
      'it_img1': instance.it_img1,
      'it_time': instance.it_time,
      'it_sum_qty': instance.it_sum_qty,
    };

_$_MoreResponse _$$_MoreResponseFromJson(Map<String, dynamic> json) =>
    _$_MoreResponse(
      status: json['status'] as int,
      message: json['message'] as String? ?? '',
      items: (json['data'] as List<dynamic>?)
              ?.map((e) => More.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      total_cnt: json['total_cnt'] as int? ?? 0,
    );

Map<String, dynamic> _$$_MoreResponseToJson(_$_MoreResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.items,
      'total_cnt': instance.total_cnt,
    };
