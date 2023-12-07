// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onetouch_cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OneTouchData _$$_OneTouchDataFromJson(Map<String, dynamic> json) =>
    _$_OneTouchData(
      item_count: json['item_count'] as int? ?? 0,
      items: (json['cart_items'] as List<dynamic>?)
              ?.map((e) => OneTouchCart.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_OneTouchDataToJson(_$_OneTouchData instance) =>
    <String, dynamic>{
      'item_count': instance.item_count,
      'cart_items': instance.items,
    };

_$_OneTouchCart _$$_OneTouchCartFromJson(Map<String, dynamic> json) =>
    _$_OneTouchCart(
      ot_id: json['ot_id'] as int? ?? 0,
      it_id: json['it_id'] as String? ?? '',
      it_name: json['it_name'] as String? ?? '',
      it_cust_price: json['it_cust_price'] as int? ?? 0,
      it_price: json['it_price'] as int? ?? 0,
      ct_qty: json['ct_qty'] as int? ?? 0,
      io_no: json['io_no'] as int? ?? 0,
      io_id: json['io_id'] as String? ?? '',
      img: json['img'] as String? ?? '',
      outOfStock: json['outOfStock'] ?? false,
      stockStatus: json['stockStatus'] as String? ?? '',
    );

Map<String, dynamic> _$$_OneTouchCartToJson(_$_OneTouchCart instance) =>
    <String, dynamic>{
      'ot_id': instance.ot_id,
      'it_id': instance.it_id,
      'it_name': instance.it_name,
      'it_cust_price': instance.it_cust_price,
      'it_price': instance.it_price,
      'ct_qty': instance.ct_qty,
      'io_no': instance.io_no,
      'io_id': instance.io_id,
      'img': instance.img,
      'outOfStock': instance.outOfStock,
      'stockStatus': instance.stockStatus,
    };

_$_OneTouchCartResponse _$$_OneTouchCartResponseFromJson(
        Map<String, dynamic> json) =>
    _$_OneTouchCartResponse(
      status: json['status'] as int,
      message: json['message'] as String? ?? '',
      data: json['data'] == null
          ? null
          : OneTouchData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OneTouchCartResponseToJson(
        _$_OneTouchCartResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
