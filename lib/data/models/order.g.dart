// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Order _$$_OrderFromJson(Map<String, dynamic> json) => _$_Order(
      ct_id: json['ct_id'] as int? ?? 0,
      od_id: json['od_id'] as int? ?? 0,
      mb_id: json['mb_id'] as String? ?? '',
      it_id: json['it_id'] as String? ?? '',
      it_name: json['it_name'] as String? ?? '',
      it_sc_type: json['it_sc_type'] as int? ?? 0,
      it_sc_method: json['it_sc_method'] as int? ?? 0,
      it_sc_price: json['it_sc_price'] as int? ?? 0,
      it_sc_minimum: json['it_sc_minimum'] as int? ?? 0,
      it_sc_qty: json['it_sc_qty'] as int? ?? 0,
      ct_status: json['ct_status'] as String? ?? '',
      ct_history: json['ct_history'] as String? ?? '',
      ct_price: json['ct_price'] as int? ?? 0,
      ct_point: json['ct_point'] as int? ?? 0,
      cp_price: json['cp_price'] as int? ?? 0,
      ct_point_use: json['ct_point_use'] as int? ?? 0,
      ct_stock_use: json['ct_stock_use'] as int? ?? 0,
      ct_option: json['ct_option'] as String? ?? '',
      ct_qty: json['ct_qty'] as int? ?? 0,
      ct_notax: json['ct_notax'] as int? ?? 0,
      io_id: json['io_id'] as String? ?? '',
      io_type: json['io_type'] as int? ?? 0,
      io_price: json['io_price'] as int? ?? 0,
      ct_time: json['ct_time'] as String? ?? '',
      ct_ip: json['ct_ip'] as String? ?? '',
      ct_send_cost: json['ct_send_cost'] as int? ?? 0,
      ct_direct: json['ct_direct'] as int? ?? 0,
      ct_select: json['ct_select'] as int? ?? 0,
      ct_select_time: json['ct_select_time'] as String? ?? '',
    );

Map<String, dynamic> _$$_OrderToJson(_$_Order instance) => <String, dynamic>{
      'ct_id': instance.ct_id,
      'od_id': instance.od_id,
      'mb_id': instance.mb_id,
      'it_id': instance.it_id,
      'it_name': instance.it_name,
      'it_sc_type': instance.it_sc_type,
      'it_sc_method': instance.it_sc_method,
      'it_sc_price': instance.it_sc_price,
      'it_sc_minimum': instance.it_sc_minimum,
      'it_sc_qty': instance.it_sc_qty,
      'ct_status': instance.ct_status,
      'ct_history': instance.ct_history,
      'ct_price': instance.ct_price,
      'ct_point': instance.ct_point,
      'cp_price': instance.cp_price,
      'ct_point_use': instance.ct_point_use,
      'ct_stock_use': instance.ct_stock_use,
      'ct_option': instance.ct_option,
      'ct_qty': instance.ct_qty,
      'ct_notax': instance.ct_notax,
      'io_id': instance.io_id,
      'io_type': instance.io_type,
      'io_price': instance.io_price,
      'ct_time': instance.ct_time,
      'ct_ip': instance.ct_ip,
      'ct_send_cost': instance.ct_send_cost,
      'ct_direct': instance.ct_direct,
      'ct_select': instance.ct_select,
      'ct_select_time': instance.ct_select_time,
    };

_$_OrderResponse _$$_OrderResponseFromJson(Map<String, dynamic> json) =>
    _$_OrderResponse(
      status: json['status'] as int,
      message: json['message'] as String? ?? '',
      items: (json['data'] as List<dynamic>?)
              ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_OrderResponseToJson(_$_OrderResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.items,
    };
