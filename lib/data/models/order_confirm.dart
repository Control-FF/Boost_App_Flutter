import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_confirm.freezed.dart';
part 'order_confirm.g.dart';

@freezed
class OrderData with _$OrderData {
  factory OrderData({
    @Default('') String od_id,
    @Default([]) @JsonKey(name: 'order_item') List<OrderItem>? orderItem,
    @Default([]) @JsonKey(name: 'order_shipping') List<OrderShipping>? orderShipping,
    @Default([]) @JsonKey(name: 'order_coupon') List<OrderCoupon>? orderCoupon,
    @Default([]) @JsonKey(name: 'order_shipping_requests') List<ShippingRequest>? shippingRequest,
    @Default([]) @JsonKey(name: 'payment_method') List<PaymentMethod>? paymentMethod,
    @Default([]) @JsonKey(name: 'totalPayment') List<TotalPayment>? totalPayment,
  }) = _OrderData;

  factory OrderData.fromJson(Map<String, dynamic> json) =>
      _$OrderDataFromJson(json);
}

@freezed
class OrderItem with _$OrderItem {
  factory OrderItem({
    @Default(0) int ct_id,
    @Default('') String it_id,
    @Default('') String it_name,
    @Default(0) int ct_price,
    @Default(0) int ct_qty,
    @Default('') String it_delivery_type,
  }) = _OrderItem;

  factory OrderItem.fromJson(Map<String, dynamic> json) =>
      _$OrderItemFromJson(json);
}

@freezed
class OrderShipping with _$OrderShipping {
  factory OrderShipping({
    @Default('') String od_name,
    @Default('') String od_hp,
    @Default('') String zip,
    @Default('') String address,
  }) = _OrderShipping;

  factory OrderShipping.fromJson(Map<String, dynamic> json) =>
      _$OrderShippingFromJson(json);
}

@freezed
class OrderCoupon with _$OrderCoupon {
  factory OrderCoupon({
    @Default(0) int mb_point,
    @Default(0) int od_cash,
    @Default(0) int unused_coupon_count,
    @Default(0) int od_coupon,
  }) = _OrderCoupon;

  factory OrderCoupon.fromJson(Map<String, dynamic> json) =>
      _$OrderCouponFromJson(json);
}

@freezed
class ShippingRequest with _$ShippingRequest {
  factory ShippingRequest({
    @Default('') String location,
  }) = _ShippingRequest;

  factory ShippingRequest.fromJson(Map<String, dynamic> json) =>
      _$ShippingRequestFromJson(json);
}

@freezed
class PaymentMethod with _$PaymentMethod {
  factory PaymentMethod({
    @Default('') String subject,
    @Default('') String number,
  }) = _PaymentMethod;

  factory PaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodFromJson(json);
}

@freezed
class TotalPayment with _$TotalPayment {
  factory TotalPayment({
    @Default(0) int od_cart_price,
    @Default(0) int od_coupon,
    @Default(0) int od_receipt_point,
    @Default(0) int od_send_cost,
    @Default('') String total_payment,
    @Default('') String expected_points,
  }) = _TotalPayment;

  factory TotalPayment.fromJson(Map<String, dynamic> json) =>
      _$TotalPaymentFromJson(json);
}

@freezed
class OrderConfirmResponse with _$OrderConfirmResponse {
  factory OrderConfirmResponse({
    required int status,
    @Default('') String message,
    OrderData? data,
  }) = _OrderConfirmResponse;

  factory OrderConfirmResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderConfirmResponseFromJson(json);
}
