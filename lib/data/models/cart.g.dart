// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartImpl _$$CartImplFromJson(Map<String, dynamic> json) => _$CartImpl(
      item_count: json['item_count'] as int? ?? 0,
      items: (json['cart_items'] as List<dynamic>?)
              ?.map((e) => CartItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CartImplToJson(_$CartImpl instance) =>
    <String, dynamic>{
      'item_count': instance.item_count,
      'cart_items': instance.items,
    };

_$CartItemImpl _$$CartItemImplFromJson(Map<String, dynamic> json) =>
    _$CartItemImpl(
      ct_id: json['ct_id'] as int? ?? 0,
      od_id: json['od_id'] as int? ?? 0,
      it_id: json['it_id'] as String? ?? '',
      it_name: json['it_name'] as String? ?? '',
      it_cust_price: json['it_cust_price'] as int? ?? 0,
      ct_price: json['ct_price'] as int? ?? 0,
      ct_qty: json['ct_qty'] as int? ?? 0,
      ct_option: json['ct_option'] as String? ?? '',
      it_stock_qty: json['it_stock_qty'] as int? ?? 0,
      img: json['img'] as String? ?? '',
      it_sc_type: json['it_sc_type'] as int? ?? 0,
      it_sc_price: json['it_sc_price'] as int? ?? 0,
      it_sc_qty: json['it_sc_qty'] as int? ?? 0,
      sendcost: json['sendcost'] as int? ?? 0,
      outOfStock: json['outOfStock'] as bool? ?? false,
      stockStatus: json['stockStatus'] as String? ?? '',
      isCheck: json['isCheck'] as bool? ?? true,
    );

Map<String, dynamic> _$$CartItemImplToJson(_$CartItemImpl instance) =>
    <String, dynamic>{
      'ct_id': instance.ct_id,
      'od_id': instance.od_id,
      'it_id': instance.it_id,
      'it_name': instance.it_name,
      'it_cust_price': instance.it_cust_price,
      'ct_price': instance.ct_price,
      'ct_qty': instance.ct_qty,
      'ct_option': instance.ct_option,
      'it_stock_qty': instance.it_stock_qty,
      'img': instance.img,
      'it_sc_type': instance.it_sc_type,
      'it_sc_price': instance.it_sc_price,
      'it_sc_qty': instance.it_sc_qty,
      'sendcost': instance.sendcost,
      'outOfStock': instance.outOfStock,
      'stockStatus': instance.stockStatus,
      'isCheck': instance.isCheck,
    };

_$CartResponseImpl _$$CartResponseImplFromJson(Map<String, dynamic> json) =>
    _$CartResponseImpl(
      status: json['status'] as int,
      message: json['message'] as String? ?? '',
      data: json['data'] == null
          ? null
          : Cart.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CartResponseImplToJson(_$CartResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
