// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_confirm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderData _$$_OrderDataFromJson(Map<String, dynamic> json) => _$_OrderData(
      od_id: json['od_id'] as String? ?? '',
      orderItem: (json['order_item'] as List<dynamic>?)
              ?.map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      orderShipping: (json['order_shipping'] as List<dynamic>?)
              ?.map((e) => OrderShipping.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      orderCoupon: (json['order_coupon'] as List<dynamic>?)
              ?.map((e) => OrderCoupon.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      shippingRequest: (json['order_shipping_requests'] as List<dynamic>?)
              ?.map((e) => ShippingRequest.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      paymentMethod: (json['payment_method'] as List<dynamic>?)
              ?.map((e) => PaymentMethod.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalPayment: (json['totalPayment'] as List<dynamic>?)
              ?.map((e) => TotalPayment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_OrderDataToJson(_$_OrderData instance) =>
    <String, dynamic>{
      'od_id': instance.od_id,
      'order_item': instance.orderItem,
      'order_shipping': instance.orderShipping,
      'order_coupon': instance.orderCoupon,
      'order_shipping_requests': instance.shippingRequest,
      'payment_method': instance.paymentMethod,
      'totalPayment': instance.totalPayment,
    };

_$_OrderItem _$$_OrderItemFromJson(Map<String, dynamic> json) => _$_OrderItem(
      ct_id: json['ct_id'] as int? ?? 0,
      it_id: json['it_id'] as String? ?? '',
      it_name: json['it_name'] as String? ?? '',
      ct_price: json['ct_price'] as int? ?? 0,
      ct_qty: json['ct_qty'] as int? ?? 0,
      it_delivery_type: json['it_delivery_type'] as String? ?? '',
    );

Map<String, dynamic> _$$_OrderItemToJson(_$_OrderItem instance) =>
    <String, dynamic>{
      'ct_id': instance.ct_id,
      'it_id': instance.it_id,
      'it_name': instance.it_name,
      'ct_price': instance.ct_price,
      'ct_qty': instance.ct_qty,
      'it_delivery_type': instance.it_delivery_type,
    };

_$_OrderShipping _$$_OrderShippingFromJson(Map<String, dynamic> json) =>
    _$_OrderShipping(
      od_name: json['od_name'] as String? ?? '',
      od_hp: json['od_hp'] as String? ?? '',
      zip: json['zip'] as String? ?? '',
      address: json['address'] as String? ?? '',
    );

Map<String, dynamic> _$$_OrderShippingToJson(_$_OrderShipping instance) =>
    <String, dynamic>{
      'od_name': instance.od_name,
      'od_hp': instance.od_hp,
      'zip': instance.zip,
      'address': instance.address,
    };

_$_OrderCoupon _$$_OrderCouponFromJson(Map<String, dynamic> json) =>
    _$_OrderCoupon(
      mb_point: json['mb_point'] as int? ?? 0,
      od_cash: json['od_cash'] as int? ?? 0,
      unused_coupon_count: json['unused_coupon_count'] as int? ?? 0,
      od_coupon: json['od_coupon'] as int? ?? 0,
    );

Map<String, dynamic> _$$_OrderCouponToJson(_$_OrderCoupon instance) =>
    <String, dynamic>{
      'mb_point': instance.mb_point,
      'od_cash': instance.od_cash,
      'unused_coupon_count': instance.unused_coupon_count,
      'od_coupon': instance.od_coupon,
    };

_$_ShippingRequest _$$_ShippingRequestFromJson(Map<String, dynamic> json) =>
    _$_ShippingRequest(
      location: json['location'] as String? ?? '',
    );

Map<String, dynamic> _$$_ShippingRequestToJson(_$_ShippingRequest instance) =>
    <String, dynamic>{
      'location': instance.location,
    };

_$_PaymentMethod _$$_PaymentMethodFromJson(Map<String, dynamic> json) =>
    _$_PaymentMethod(
      subject: json['subject'] as String? ?? '',
      number: json['number'] as String? ?? '',
    );

Map<String, dynamic> _$$_PaymentMethodToJson(_$_PaymentMethod instance) =>
    <String, dynamic>{
      'subject': instance.subject,
      'number': instance.number,
    };

_$_TotalPayment _$$_TotalPaymentFromJson(Map<String, dynamic> json) =>
    _$_TotalPayment(
      od_cart_price: json['od_cart_price'] as int? ?? 0,
      od_coupon: json['od_coupon'] as int? ?? 0,
      od_cash: json['od_cash'] as int? ?? 0,
      od_send_cost: json['od_send_cost'] as int? ?? 0,
      total_payment: json['total_payment'] as String? ?? '',
      expected_points: json['expected_points'] as String? ?? '',
    );

Map<String, dynamic> _$$_TotalPaymentToJson(_$_TotalPayment instance) =>
    <String, dynamic>{
      'od_cart_price': instance.od_cart_price,
      'od_coupon': instance.od_coupon,
      'od_cash': instance.od_cash,
      'od_send_cost': instance.od_send_cost,
      'total_payment': instance.total_payment,
      'expected_points': instance.expected_points,
    };

_$_OrderConfirmResponse _$$_OrderConfirmResponseFromJson(
        Map<String, dynamic> json) =>
    _$_OrderConfirmResponse(
      status: json['status'] as int,
      message: json['message'] as String? ?? '',
      data: json['data'] == null
          ? null
          : OrderData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OrderConfirmResponseToJson(
        _$_OrderConfirmResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
