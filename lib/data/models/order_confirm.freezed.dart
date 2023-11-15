// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_confirm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderData _$OrderDataFromJson(Map<String, dynamic> json) {
  return _OrderData.fromJson(json);
}

/// @nodoc
mixin _$OrderData {
  String get od_id => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_item')
  List<OrderItem>? get orderItem => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_shipping')
  List<OrderShipping>? get orderShipping => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_coupon')
  List<OrderCoupon>? get orderCoupon => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_shipping_requests')
  List<ShippingRequest>? get shippingRequest =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method')
  List<PaymentMethod>? get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalPayment')
  List<TotalPayment>? get totalPayment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDataCopyWith<OrderData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDataCopyWith<$Res> {
  factory $OrderDataCopyWith(OrderData value, $Res Function(OrderData) then) =
      _$OrderDataCopyWithImpl<$Res, OrderData>;
  @useResult
  $Res call(
      {String od_id,
      @JsonKey(name: 'order_item') List<OrderItem>? orderItem,
      @JsonKey(name: 'order_shipping') List<OrderShipping>? orderShipping,
      @JsonKey(name: 'order_coupon') List<OrderCoupon>? orderCoupon,
      @JsonKey(name: 'order_shipping_requests')
      List<ShippingRequest>? shippingRequest,
      @JsonKey(name: 'payment_method') List<PaymentMethod>? paymentMethod,
      @JsonKey(name: 'totalPayment') List<TotalPayment>? totalPayment});
}

/// @nodoc
class _$OrderDataCopyWithImpl<$Res, $Val extends OrderData>
    implements $OrderDataCopyWith<$Res> {
  _$OrderDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? od_id = null,
    Object? orderItem = freezed,
    Object? orderShipping = freezed,
    Object? orderCoupon = freezed,
    Object? shippingRequest = freezed,
    Object? paymentMethod = freezed,
    Object? totalPayment = freezed,
  }) {
    return _then(_value.copyWith(
      od_id: null == od_id
          ? _value.od_id
          : od_id // ignore: cast_nullable_to_non_nullable
              as String,
      orderItem: freezed == orderItem
          ? _value.orderItem
          : orderItem // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>?,
      orderShipping: freezed == orderShipping
          ? _value.orderShipping
          : orderShipping // ignore: cast_nullable_to_non_nullable
              as List<OrderShipping>?,
      orderCoupon: freezed == orderCoupon
          ? _value.orderCoupon
          : orderCoupon // ignore: cast_nullable_to_non_nullable
              as List<OrderCoupon>?,
      shippingRequest: freezed == shippingRequest
          ? _value.shippingRequest
          : shippingRequest // ignore: cast_nullable_to_non_nullable
              as List<ShippingRequest>?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as List<PaymentMethod>?,
      totalPayment: freezed == totalPayment
          ? _value.totalPayment
          : totalPayment // ignore: cast_nullable_to_non_nullable
              as List<TotalPayment>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderDataCopyWith<$Res> implements $OrderDataCopyWith<$Res> {
  factory _$$_OrderDataCopyWith(
          _$_OrderData value, $Res Function(_$_OrderData) then) =
      __$$_OrderDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String od_id,
      @JsonKey(name: 'order_item') List<OrderItem>? orderItem,
      @JsonKey(name: 'order_shipping') List<OrderShipping>? orderShipping,
      @JsonKey(name: 'order_coupon') List<OrderCoupon>? orderCoupon,
      @JsonKey(name: 'order_shipping_requests')
      List<ShippingRequest>? shippingRequest,
      @JsonKey(name: 'payment_method') List<PaymentMethod>? paymentMethod,
      @JsonKey(name: 'totalPayment') List<TotalPayment>? totalPayment});
}

/// @nodoc
class __$$_OrderDataCopyWithImpl<$Res>
    extends _$OrderDataCopyWithImpl<$Res, _$_OrderData>
    implements _$$_OrderDataCopyWith<$Res> {
  __$$_OrderDataCopyWithImpl(
      _$_OrderData _value, $Res Function(_$_OrderData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? od_id = null,
    Object? orderItem = freezed,
    Object? orderShipping = freezed,
    Object? orderCoupon = freezed,
    Object? shippingRequest = freezed,
    Object? paymentMethod = freezed,
    Object? totalPayment = freezed,
  }) {
    return _then(_$_OrderData(
      od_id: null == od_id
          ? _value.od_id
          : od_id // ignore: cast_nullable_to_non_nullable
              as String,
      orderItem: freezed == orderItem
          ? _value._orderItem
          : orderItem // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>?,
      orderShipping: freezed == orderShipping
          ? _value._orderShipping
          : orderShipping // ignore: cast_nullable_to_non_nullable
              as List<OrderShipping>?,
      orderCoupon: freezed == orderCoupon
          ? _value._orderCoupon
          : orderCoupon // ignore: cast_nullable_to_non_nullable
              as List<OrderCoupon>?,
      shippingRequest: freezed == shippingRequest
          ? _value._shippingRequest
          : shippingRequest // ignore: cast_nullable_to_non_nullable
              as List<ShippingRequest>?,
      paymentMethod: freezed == paymentMethod
          ? _value._paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as List<PaymentMethod>?,
      totalPayment: freezed == totalPayment
          ? _value._totalPayment
          : totalPayment // ignore: cast_nullable_to_non_nullable
              as List<TotalPayment>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderData implements _OrderData {
  _$_OrderData(
      {this.od_id = '',
      @JsonKey(name: 'order_item') final List<OrderItem>? orderItem = const [],
      @JsonKey(name: 'order_shipping')
      final List<OrderShipping>? orderShipping = const [],
      @JsonKey(name: 'order_coupon')
      final List<OrderCoupon>? orderCoupon = const [],
      @JsonKey(name: 'order_shipping_requests')
      final List<ShippingRequest>? shippingRequest = const [],
      @JsonKey(name: 'payment_method')
      final List<PaymentMethod>? paymentMethod = const [],
      @JsonKey(name: 'totalPayment')
      final List<TotalPayment>? totalPayment = const []})
      : _orderItem = orderItem,
        _orderShipping = orderShipping,
        _orderCoupon = orderCoupon,
        _shippingRequest = shippingRequest,
        _paymentMethod = paymentMethod,
        _totalPayment = totalPayment;

  factory _$_OrderData.fromJson(Map<String, dynamic> json) =>
      _$$_OrderDataFromJson(json);

  @override
  @JsonKey()
  final String od_id;
  final List<OrderItem>? _orderItem;
  @override
  @JsonKey(name: 'order_item')
  List<OrderItem>? get orderItem {
    final value = _orderItem;
    if (value == null) return null;
    if (_orderItem is EqualUnmodifiableListView) return _orderItem;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<OrderShipping>? _orderShipping;
  @override
  @JsonKey(name: 'order_shipping')
  List<OrderShipping>? get orderShipping {
    final value = _orderShipping;
    if (value == null) return null;
    if (_orderShipping is EqualUnmodifiableListView) return _orderShipping;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<OrderCoupon>? _orderCoupon;
  @override
  @JsonKey(name: 'order_coupon')
  List<OrderCoupon>? get orderCoupon {
    final value = _orderCoupon;
    if (value == null) return null;
    if (_orderCoupon is EqualUnmodifiableListView) return _orderCoupon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ShippingRequest>? _shippingRequest;
  @override
  @JsonKey(name: 'order_shipping_requests')
  List<ShippingRequest>? get shippingRequest {
    final value = _shippingRequest;
    if (value == null) return null;
    if (_shippingRequest is EqualUnmodifiableListView) return _shippingRequest;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PaymentMethod>? _paymentMethod;
  @override
  @JsonKey(name: 'payment_method')
  List<PaymentMethod>? get paymentMethod {
    final value = _paymentMethod;
    if (value == null) return null;
    if (_paymentMethod is EqualUnmodifiableListView) return _paymentMethod;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TotalPayment>? _totalPayment;
  @override
  @JsonKey(name: 'totalPayment')
  List<TotalPayment>? get totalPayment {
    final value = _totalPayment;
    if (value == null) return null;
    if (_totalPayment is EqualUnmodifiableListView) return _totalPayment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OrderData(od_id: $od_id, orderItem: $orderItem, orderShipping: $orderShipping, orderCoupon: $orderCoupon, shippingRequest: $shippingRequest, paymentMethod: $paymentMethod, totalPayment: $totalPayment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderData &&
            (identical(other.od_id, od_id) || other.od_id == od_id) &&
            const DeepCollectionEquality()
                .equals(other._orderItem, _orderItem) &&
            const DeepCollectionEquality()
                .equals(other._orderShipping, _orderShipping) &&
            const DeepCollectionEquality()
                .equals(other._orderCoupon, _orderCoupon) &&
            const DeepCollectionEquality()
                .equals(other._shippingRequest, _shippingRequest) &&
            const DeepCollectionEquality()
                .equals(other._paymentMethod, _paymentMethod) &&
            const DeepCollectionEquality()
                .equals(other._totalPayment, _totalPayment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      od_id,
      const DeepCollectionEquality().hash(_orderItem),
      const DeepCollectionEquality().hash(_orderShipping),
      const DeepCollectionEquality().hash(_orderCoupon),
      const DeepCollectionEquality().hash(_shippingRequest),
      const DeepCollectionEquality().hash(_paymentMethod),
      const DeepCollectionEquality().hash(_totalPayment));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderDataCopyWith<_$_OrderData> get copyWith =>
      __$$_OrderDataCopyWithImpl<_$_OrderData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderDataToJson(
      this,
    );
  }
}

abstract class _OrderData implements OrderData {
  factory _OrderData(
      {final String od_id,
      @JsonKey(name: 'order_item') final List<OrderItem>? orderItem,
      @JsonKey(name: 'order_shipping') final List<OrderShipping>? orderShipping,
      @JsonKey(name: 'order_coupon') final List<OrderCoupon>? orderCoupon,
      @JsonKey(name: 'order_shipping_requests')
      final List<ShippingRequest>? shippingRequest,
      @JsonKey(name: 'payment_method') final List<PaymentMethod>? paymentMethod,
      @JsonKey(name: 'totalPayment')
      final List<TotalPayment>? totalPayment}) = _$_OrderData;

  factory _OrderData.fromJson(Map<String, dynamic> json) =
      _$_OrderData.fromJson;

  @override
  String get od_id;
  @override
  @JsonKey(name: 'order_item')
  List<OrderItem>? get orderItem;
  @override
  @JsonKey(name: 'order_shipping')
  List<OrderShipping>? get orderShipping;
  @override
  @JsonKey(name: 'order_coupon')
  List<OrderCoupon>? get orderCoupon;
  @override
  @JsonKey(name: 'order_shipping_requests')
  List<ShippingRequest>? get shippingRequest;
  @override
  @JsonKey(name: 'payment_method')
  List<PaymentMethod>? get paymentMethod;
  @override
  @JsonKey(name: 'totalPayment')
  List<TotalPayment>? get totalPayment;
  @override
  @JsonKey(ignore: true)
  _$$_OrderDataCopyWith<_$_OrderData> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderItem _$OrderItemFromJson(Map<String, dynamic> json) {
  return _OrderItem.fromJson(json);
}

/// @nodoc
mixin _$OrderItem {
  int get ct_id => throw _privateConstructorUsedError;
  String get it_id => throw _privateConstructorUsedError;
  String get it_name => throw _privateConstructorUsedError;
  int get ct_price => throw _privateConstructorUsedError;
  int get ct_qty => throw _privateConstructorUsedError;
  String get it_delivery_type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderItemCopyWith<OrderItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemCopyWith<$Res> {
  factory $OrderItemCopyWith(OrderItem value, $Res Function(OrderItem) then) =
      _$OrderItemCopyWithImpl<$Res, OrderItem>;
  @useResult
  $Res call(
      {int ct_id,
      String it_id,
      String it_name,
      int ct_price,
      int ct_qty,
      String it_delivery_type});
}

/// @nodoc
class _$OrderItemCopyWithImpl<$Res, $Val extends OrderItem>
    implements $OrderItemCopyWith<$Res> {
  _$OrderItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ct_id = null,
    Object? it_id = null,
    Object? it_name = null,
    Object? ct_price = null,
    Object? ct_qty = null,
    Object? it_delivery_type = null,
  }) {
    return _then(_value.copyWith(
      ct_id: null == ct_id
          ? _value.ct_id
          : ct_id // ignore: cast_nullable_to_non_nullable
              as int,
      it_id: null == it_id
          ? _value.it_id
          : it_id // ignore: cast_nullable_to_non_nullable
              as String,
      it_name: null == it_name
          ? _value.it_name
          : it_name // ignore: cast_nullable_to_non_nullable
              as String,
      ct_price: null == ct_price
          ? _value.ct_price
          : ct_price // ignore: cast_nullable_to_non_nullable
              as int,
      ct_qty: null == ct_qty
          ? _value.ct_qty
          : ct_qty // ignore: cast_nullable_to_non_nullable
              as int,
      it_delivery_type: null == it_delivery_type
          ? _value.it_delivery_type
          : it_delivery_type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderItemCopyWith<$Res> implements $OrderItemCopyWith<$Res> {
  factory _$$_OrderItemCopyWith(
          _$_OrderItem value, $Res Function(_$_OrderItem) then) =
      __$$_OrderItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int ct_id,
      String it_id,
      String it_name,
      int ct_price,
      int ct_qty,
      String it_delivery_type});
}

/// @nodoc
class __$$_OrderItemCopyWithImpl<$Res>
    extends _$OrderItemCopyWithImpl<$Res, _$_OrderItem>
    implements _$$_OrderItemCopyWith<$Res> {
  __$$_OrderItemCopyWithImpl(
      _$_OrderItem _value, $Res Function(_$_OrderItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ct_id = null,
    Object? it_id = null,
    Object? it_name = null,
    Object? ct_price = null,
    Object? ct_qty = null,
    Object? it_delivery_type = null,
  }) {
    return _then(_$_OrderItem(
      ct_id: null == ct_id
          ? _value.ct_id
          : ct_id // ignore: cast_nullable_to_non_nullable
              as int,
      it_id: null == it_id
          ? _value.it_id
          : it_id // ignore: cast_nullable_to_non_nullable
              as String,
      it_name: null == it_name
          ? _value.it_name
          : it_name // ignore: cast_nullable_to_non_nullable
              as String,
      ct_price: null == ct_price
          ? _value.ct_price
          : ct_price // ignore: cast_nullable_to_non_nullable
              as int,
      ct_qty: null == ct_qty
          ? _value.ct_qty
          : ct_qty // ignore: cast_nullable_to_non_nullable
              as int,
      it_delivery_type: null == it_delivery_type
          ? _value.it_delivery_type
          : it_delivery_type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderItem implements _OrderItem {
  _$_OrderItem(
      {this.ct_id = 0,
      this.it_id = '',
      this.it_name = '',
      this.ct_price = 0,
      this.ct_qty = 0,
      this.it_delivery_type = ''});

  factory _$_OrderItem.fromJson(Map<String, dynamic> json) =>
      _$$_OrderItemFromJson(json);

  @override
  @JsonKey()
  final int ct_id;
  @override
  @JsonKey()
  final String it_id;
  @override
  @JsonKey()
  final String it_name;
  @override
  @JsonKey()
  final int ct_price;
  @override
  @JsonKey()
  final int ct_qty;
  @override
  @JsonKey()
  final String it_delivery_type;

  @override
  String toString() {
    return 'OrderItem(ct_id: $ct_id, it_id: $it_id, it_name: $it_name, ct_price: $ct_price, ct_qty: $ct_qty, it_delivery_type: $it_delivery_type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderItem &&
            (identical(other.ct_id, ct_id) || other.ct_id == ct_id) &&
            (identical(other.it_id, it_id) || other.it_id == it_id) &&
            (identical(other.it_name, it_name) || other.it_name == it_name) &&
            (identical(other.ct_price, ct_price) ||
                other.ct_price == ct_price) &&
            (identical(other.ct_qty, ct_qty) || other.ct_qty == ct_qty) &&
            (identical(other.it_delivery_type, it_delivery_type) ||
                other.it_delivery_type == it_delivery_type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, ct_id, it_id, it_name, ct_price, ct_qty, it_delivery_type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderItemCopyWith<_$_OrderItem> get copyWith =>
      __$$_OrderItemCopyWithImpl<_$_OrderItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderItemToJson(
      this,
    );
  }
}

abstract class _OrderItem implements OrderItem {
  factory _OrderItem(
      {final int ct_id,
      final String it_id,
      final String it_name,
      final int ct_price,
      final int ct_qty,
      final String it_delivery_type}) = _$_OrderItem;

  factory _OrderItem.fromJson(Map<String, dynamic> json) =
      _$_OrderItem.fromJson;

  @override
  int get ct_id;
  @override
  String get it_id;
  @override
  String get it_name;
  @override
  int get ct_price;
  @override
  int get ct_qty;
  @override
  String get it_delivery_type;
  @override
  @JsonKey(ignore: true)
  _$$_OrderItemCopyWith<_$_OrderItem> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderShipping _$OrderShippingFromJson(Map<String, dynamic> json) {
  return _OrderShipping.fromJson(json);
}

/// @nodoc
mixin _$OrderShipping {
  String get od_name => throw _privateConstructorUsedError;
  String get od_hp => throw _privateConstructorUsedError;
  String get zip => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderShippingCopyWith<OrderShipping> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderShippingCopyWith<$Res> {
  factory $OrderShippingCopyWith(
          OrderShipping value, $Res Function(OrderShipping) then) =
      _$OrderShippingCopyWithImpl<$Res, OrderShipping>;
  @useResult
  $Res call({String od_name, String od_hp, String zip, String address});
}

/// @nodoc
class _$OrderShippingCopyWithImpl<$Res, $Val extends OrderShipping>
    implements $OrderShippingCopyWith<$Res> {
  _$OrderShippingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? od_name = null,
    Object? od_hp = null,
    Object? zip = null,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      od_name: null == od_name
          ? _value.od_name
          : od_name // ignore: cast_nullable_to_non_nullable
              as String,
      od_hp: null == od_hp
          ? _value.od_hp
          : od_hp // ignore: cast_nullable_to_non_nullable
              as String,
      zip: null == zip
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderShippingCopyWith<$Res>
    implements $OrderShippingCopyWith<$Res> {
  factory _$$_OrderShippingCopyWith(
          _$_OrderShipping value, $Res Function(_$_OrderShipping) then) =
      __$$_OrderShippingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String od_name, String od_hp, String zip, String address});
}

/// @nodoc
class __$$_OrderShippingCopyWithImpl<$Res>
    extends _$OrderShippingCopyWithImpl<$Res, _$_OrderShipping>
    implements _$$_OrderShippingCopyWith<$Res> {
  __$$_OrderShippingCopyWithImpl(
      _$_OrderShipping _value, $Res Function(_$_OrderShipping) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? od_name = null,
    Object? od_hp = null,
    Object? zip = null,
    Object? address = null,
  }) {
    return _then(_$_OrderShipping(
      od_name: null == od_name
          ? _value.od_name
          : od_name // ignore: cast_nullable_to_non_nullable
              as String,
      od_hp: null == od_hp
          ? _value.od_hp
          : od_hp // ignore: cast_nullable_to_non_nullable
              as String,
      zip: null == zip
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderShipping implements _OrderShipping {
  _$_OrderShipping(
      {this.od_name = '', this.od_hp = '', this.zip = '', this.address = ''});

  factory _$_OrderShipping.fromJson(Map<String, dynamic> json) =>
      _$$_OrderShippingFromJson(json);

  @override
  @JsonKey()
  final String od_name;
  @override
  @JsonKey()
  final String od_hp;
  @override
  @JsonKey()
  final String zip;
  @override
  @JsonKey()
  final String address;

  @override
  String toString() {
    return 'OrderShipping(od_name: $od_name, od_hp: $od_hp, zip: $zip, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderShipping &&
            (identical(other.od_name, od_name) || other.od_name == od_name) &&
            (identical(other.od_hp, od_hp) || other.od_hp == od_hp) &&
            (identical(other.zip, zip) || other.zip == zip) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, od_name, od_hp, zip, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderShippingCopyWith<_$_OrderShipping> get copyWith =>
      __$$_OrderShippingCopyWithImpl<_$_OrderShipping>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderShippingToJson(
      this,
    );
  }
}

abstract class _OrderShipping implements OrderShipping {
  factory _OrderShipping(
      {final String od_name,
      final String od_hp,
      final String zip,
      final String address}) = _$_OrderShipping;

  factory _OrderShipping.fromJson(Map<String, dynamic> json) =
      _$_OrderShipping.fromJson;

  @override
  String get od_name;
  @override
  String get od_hp;
  @override
  String get zip;
  @override
  String get address;
  @override
  @JsonKey(ignore: true)
  _$$_OrderShippingCopyWith<_$_OrderShipping> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderCoupon _$OrderCouponFromJson(Map<String, dynamic> json) {
  return _OrderCoupon.fromJson(json);
}

/// @nodoc
mixin _$OrderCoupon {
  int get mb_point => throw _privateConstructorUsedError;
  int get od_cash => throw _privateConstructorUsedError;
  int get unused_coupon_count => throw _privateConstructorUsedError;
  int get od_coupon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCouponCopyWith<OrderCoupon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCouponCopyWith<$Res> {
  factory $OrderCouponCopyWith(
          OrderCoupon value, $Res Function(OrderCoupon) then) =
      _$OrderCouponCopyWithImpl<$Res, OrderCoupon>;
  @useResult
  $Res call(
      {int mb_point, int od_cash, int unused_coupon_count, int od_coupon});
}

/// @nodoc
class _$OrderCouponCopyWithImpl<$Res, $Val extends OrderCoupon>
    implements $OrderCouponCopyWith<$Res> {
  _$OrderCouponCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mb_point = null,
    Object? od_cash = null,
    Object? unused_coupon_count = null,
    Object? od_coupon = null,
  }) {
    return _then(_value.copyWith(
      mb_point: null == mb_point
          ? _value.mb_point
          : mb_point // ignore: cast_nullable_to_non_nullable
              as int,
      od_cash: null == od_cash
          ? _value.od_cash
          : od_cash // ignore: cast_nullable_to_non_nullable
              as int,
      unused_coupon_count: null == unused_coupon_count
          ? _value.unused_coupon_count
          : unused_coupon_count // ignore: cast_nullable_to_non_nullable
              as int,
      od_coupon: null == od_coupon
          ? _value.od_coupon
          : od_coupon // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderCouponCopyWith<$Res>
    implements $OrderCouponCopyWith<$Res> {
  factory _$$_OrderCouponCopyWith(
          _$_OrderCoupon value, $Res Function(_$_OrderCoupon) then) =
      __$$_OrderCouponCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int mb_point, int od_cash, int unused_coupon_count, int od_coupon});
}

/// @nodoc
class __$$_OrderCouponCopyWithImpl<$Res>
    extends _$OrderCouponCopyWithImpl<$Res, _$_OrderCoupon>
    implements _$$_OrderCouponCopyWith<$Res> {
  __$$_OrderCouponCopyWithImpl(
      _$_OrderCoupon _value, $Res Function(_$_OrderCoupon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mb_point = null,
    Object? od_cash = null,
    Object? unused_coupon_count = null,
    Object? od_coupon = null,
  }) {
    return _then(_$_OrderCoupon(
      mb_point: null == mb_point
          ? _value.mb_point
          : mb_point // ignore: cast_nullable_to_non_nullable
              as int,
      od_cash: null == od_cash
          ? _value.od_cash
          : od_cash // ignore: cast_nullable_to_non_nullable
              as int,
      unused_coupon_count: null == unused_coupon_count
          ? _value.unused_coupon_count
          : unused_coupon_count // ignore: cast_nullable_to_non_nullable
              as int,
      od_coupon: null == od_coupon
          ? _value.od_coupon
          : od_coupon // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderCoupon implements _OrderCoupon {
  _$_OrderCoupon(
      {this.mb_point = 0,
      this.od_cash = 0,
      this.unused_coupon_count = 0,
      this.od_coupon = 0});

  factory _$_OrderCoupon.fromJson(Map<String, dynamic> json) =>
      _$$_OrderCouponFromJson(json);

  @override
  @JsonKey()
  final int mb_point;
  @override
  @JsonKey()
  final int od_cash;
  @override
  @JsonKey()
  final int unused_coupon_count;
  @override
  @JsonKey()
  final int od_coupon;

  @override
  String toString() {
    return 'OrderCoupon(mb_point: $mb_point, od_cash: $od_cash, unused_coupon_count: $unused_coupon_count, od_coupon: $od_coupon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderCoupon &&
            (identical(other.mb_point, mb_point) ||
                other.mb_point == mb_point) &&
            (identical(other.od_cash, od_cash) || other.od_cash == od_cash) &&
            (identical(other.unused_coupon_count, unused_coupon_count) ||
                other.unused_coupon_count == unused_coupon_count) &&
            (identical(other.od_coupon, od_coupon) ||
                other.od_coupon == od_coupon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, mb_point, od_cash, unused_coupon_count, od_coupon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderCouponCopyWith<_$_OrderCoupon> get copyWith =>
      __$$_OrderCouponCopyWithImpl<_$_OrderCoupon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderCouponToJson(
      this,
    );
  }
}

abstract class _OrderCoupon implements OrderCoupon {
  factory _OrderCoupon(
      {final int mb_point,
      final int od_cash,
      final int unused_coupon_count,
      final int od_coupon}) = _$_OrderCoupon;

  factory _OrderCoupon.fromJson(Map<String, dynamic> json) =
      _$_OrderCoupon.fromJson;

  @override
  int get mb_point;
  @override
  int get od_cash;
  @override
  int get unused_coupon_count;
  @override
  int get od_coupon;
  @override
  @JsonKey(ignore: true)
  _$$_OrderCouponCopyWith<_$_OrderCoupon> get copyWith =>
      throw _privateConstructorUsedError;
}

ShippingRequest _$ShippingRequestFromJson(Map<String, dynamic> json) {
  return _ShippingRequest.fromJson(json);
}

/// @nodoc
mixin _$ShippingRequest {
  String get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShippingRequestCopyWith<ShippingRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingRequestCopyWith<$Res> {
  factory $ShippingRequestCopyWith(
          ShippingRequest value, $Res Function(ShippingRequest) then) =
      _$ShippingRequestCopyWithImpl<$Res, ShippingRequest>;
  @useResult
  $Res call({String location});
}

/// @nodoc
class _$ShippingRequestCopyWithImpl<$Res, $Val extends ShippingRequest>
    implements $ShippingRequestCopyWith<$Res> {
  _$ShippingRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
  }) {
    return _then(_value.copyWith(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShippingRequestCopyWith<$Res>
    implements $ShippingRequestCopyWith<$Res> {
  factory _$$_ShippingRequestCopyWith(
          _$_ShippingRequest value, $Res Function(_$_ShippingRequest) then) =
      __$$_ShippingRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String location});
}

/// @nodoc
class __$$_ShippingRequestCopyWithImpl<$Res>
    extends _$ShippingRequestCopyWithImpl<$Res, _$_ShippingRequest>
    implements _$$_ShippingRequestCopyWith<$Res> {
  __$$_ShippingRequestCopyWithImpl(
      _$_ShippingRequest _value, $Res Function(_$_ShippingRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
  }) {
    return _then(_$_ShippingRequest(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShippingRequest implements _ShippingRequest {
  _$_ShippingRequest({this.location = ''});

  factory _$_ShippingRequest.fromJson(Map<String, dynamic> json) =>
      _$$_ShippingRequestFromJson(json);

  @override
  @JsonKey()
  final String location;

  @override
  String toString() {
    return 'ShippingRequest(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShippingRequest &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShippingRequestCopyWith<_$_ShippingRequest> get copyWith =>
      __$$_ShippingRequestCopyWithImpl<_$_ShippingRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShippingRequestToJson(
      this,
    );
  }
}

abstract class _ShippingRequest implements ShippingRequest {
  factory _ShippingRequest({final String location}) = _$_ShippingRequest;

  factory _ShippingRequest.fromJson(Map<String, dynamic> json) =
      _$_ShippingRequest.fromJson;

  @override
  String get location;
  @override
  @JsonKey(ignore: true)
  _$$_ShippingRequestCopyWith<_$_ShippingRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentMethod _$PaymentMethodFromJson(Map<String, dynamic> json) {
  return _PaymentMethod.fromJson(json);
}

/// @nodoc
mixin _$PaymentMethod {
  String get subject => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentMethodCopyWith<PaymentMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodCopyWith<$Res> {
  factory $PaymentMethodCopyWith(
          PaymentMethod value, $Res Function(PaymentMethod) then) =
      _$PaymentMethodCopyWithImpl<$Res, PaymentMethod>;
  @useResult
  $Res call({String subject, String number});
}

/// @nodoc
class _$PaymentMethodCopyWithImpl<$Res, $Val extends PaymentMethod>
    implements $PaymentMethodCopyWith<$Res> {
  _$PaymentMethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = null,
    Object? number = null,
  }) {
    return _then(_value.copyWith(
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentMethodCopyWith<$Res>
    implements $PaymentMethodCopyWith<$Res> {
  factory _$$_PaymentMethodCopyWith(
          _$_PaymentMethod value, $Res Function(_$_PaymentMethod) then) =
      __$$_PaymentMethodCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String subject, String number});
}

/// @nodoc
class __$$_PaymentMethodCopyWithImpl<$Res>
    extends _$PaymentMethodCopyWithImpl<$Res, _$_PaymentMethod>
    implements _$$_PaymentMethodCopyWith<$Res> {
  __$$_PaymentMethodCopyWithImpl(
      _$_PaymentMethod _value, $Res Function(_$_PaymentMethod) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = null,
    Object? number = null,
  }) {
    return _then(_$_PaymentMethod(
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentMethod implements _PaymentMethod {
  _$_PaymentMethod({this.subject = '', this.number = ''});

  factory _$_PaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentMethodFromJson(json);

  @override
  @JsonKey()
  final String subject;
  @override
  @JsonKey()
  final String number;

  @override
  String toString() {
    return 'PaymentMethod(subject: $subject, number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentMethod &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, subject, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentMethodCopyWith<_$_PaymentMethod> get copyWith =>
      __$$_PaymentMethodCopyWithImpl<_$_PaymentMethod>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentMethodToJson(
      this,
    );
  }
}

abstract class _PaymentMethod implements PaymentMethod {
  factory _PaymentMethod({final String subject, final String number}) =
      _$_PaymentMethod;

  factory _PaymentMethod.fromJson(Map<String, dynamic> json) =
      _$_PaymentMethod.fromJson;

  @override
  String get subject;
  @override
  String get number;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentMethodCopyWith<_$_PaymentMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

TotalPayment _$TotalPaymentFromJson(Map<String, dynamic> json) {
  return _TotalPayment.fromJson(json);
}

/// @nodoc
mixin _$TotalPayment {
  int get od_cart_price => throw _privateConstructorUsedError;
  int get od_coupon => throw _privateConstructorUsedError;
  int get od_cash => throw _privateConstructorUsedError;
  int get od_send_cost => throw _privateConstructorUsedError;
  String get total_payment => throw _privateConstructorUsedError;
  String get expected_points => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TotalPaymentCopyWith<TotalPayment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TotalPaymentCopyWith<$Res> {
  factory $TotalPaymentCopyWith(
          TotalPayment value, $Res Function(TotalPayment) then) =
      _$TotalPaymentCopyWithImpl<$Res, TotalPayment>;
  @useResult
  $Res call(
      {int od_cart_price,
      int od_coupon,
      int od_cash,
      int od_send_cost,
      String total_payment,
      String expected_points});
}

/// @nodoc
class _$TotalPaymentCopyWithImpl<$Res, $Val extends TotalPayment>
    implements $TotalPaymentCopyWith<$Res> {
  _$TotalPaymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? od_cart_price = null,
    Object? od_coupon = null,
    Object? od_cash = null,
    Object? od_send_cost = null,
    Object? total_payment = null,
    Object? expected_points = null,
  }) {
    return _then(_value.copyWith(
      od_cart_price: null == od_cart_price
          ? _value.od_cart_price
          : od_cart_price // ignore: cast_nullable_to_non_nullable
              as int,
      od_coupon: null == od_coupon
          ? _value.od_coupon
          : od_coupon // ignore: cast_nullable_to_non_nullable
              as int,
      od_cash: null == od_cash
          ? _value.od_cash
          : od_cash // ignore: cast_nullable_to_non_nullable
              as int,
      od_send_cost: null == od_send_cost
          ? _value.od_send_cost
          : od_send_cost // ignore: cast_nullable_to_non_nullable
              as int,
      total_payment: null == total_payment
          ? _value.total_payment
          : total_payment // ignore: cast_nullable_to_non_nullable
              as String,
      expected_points: null == expected_points
          ? _value.expected_points
          : expected_points // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TotalPaymentCopyWith<$Res>
    implements $TotalPaymentCopyWith<$Res> {
  factory _$$_TotalPaymentCopyWith(
          _$_TotalPayment value, $Res Function(_$_TotalPayment) then) =
      __$$_TotalPaymentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int od_cart_price,
      int od_coupon,
      int od_cash,
      int od_send_cost,
      String total_payment,
      String expected_points});
}

/// @nodoc
class __$$_TotalPaymentCopyWithImpl<$Res>
    extends _$TotalPaymentCopyWithImpl<$Res, _$_TotalPayment>
    implements _$$_TotalPaymentCopyWith<$Res> {
  __$$_TotalPaymentCopyWithImpl(
      _$_TotalPayment _value, $Res Function(_$_TotalPayment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? od_cart_price = null,
    Object? od_coupon = null,
    Object? od_cash = null,
    Object? od_send_cost = null,
    Object? total_payment = null,
    Object? expected_points = null,
  }) {
    return _then(_$_TotalPayment(
      od_cart_price: null == od_cart_price
          ? _value.od_cart_price
          : od_cart_price // ignore: cast_nullable_to_non_nullable
              as int,
      od_coupon: null == od_coupon
          ? _value.od_coupon
          : od_coupon // ignore: cast_nullable_to_non_nullable
              as int,
      od_cash: null == od_cash
          ? _value.od_cash
          : od_cash // ignore: cast_nullable_to_non_nullable
              as int,
      od_send_cost: null == od_send_cost
          ? _value.od_send_cost
          : od_send_cost // ignore: cast_nullable_to_non_nullable
              as int,
      total_payment: null == total_payment
          ? _value.total_payment
          : total_payment // ignore: cast_nullable_to_non_nullable
              as String,
      expected_points: null == expected_points
          ? _value.expected_points
          : expected_points // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TotalPayment implements _TotalPayment {
  _$_TotalPayment(
      {this.od_cart_price = 0,
      this.od_coupon = 0,
      this.od_cash = 0,
      this.od_send_cost = 0,
      this.total_payment = '',
      this.expected_points = ''});

  factory _$_TotalPayment.fromJson(Map<String, dynamic> json) =>
      _$$_TotalPaymentFromJson(json);

  @override
  @JsonKey()
  final int od_cart_price;
  @override
  @JsonKey()
  final int od_coupon;
  @override
  @JsonKey()
  final int od_cash;
  @override
  @JsonKey()
  final int od_send_cost;
  @override
  @JsonKey()
  final String total_payment;
  @override
  @JsonKey()
  final String expected_points;

  @override
  String toString() {
    return 'TotalPayment(od_cart_price: $od_cart_price, od_coupon: $od_coupon, od_cash: $od_cash, od_send_cost: $od_send_cost, total_payment: $total_payment, expected_points: $expected_points)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TotalPayment &&
            (identical(other.od_cart_price, od_cart_price) ||
                other.od_cart_price == od_cart_price) &&
            (identical(other.od_coupon, od_coupon) ||
                other.od_coupon == od_coupon) &&
            (identical(other.od_cash, od_cash) || other.od_cash == od_cash) &&
            (identical(other.od_send_cost, od_send_cost) ||
                other.od_send_cost == od_send_cost) &&
            (identical(other.total_payment, total_payment) ||
                other.total_payment == total_payment) &&
            (identical(other.expected_points, expected_points) ||
                other.expected_points == expected_points));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, od_cart_price, od_coupon,
      od_cash, od_send_cost, total_payment, expected_points);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TotalPaymentCopyWith<_$_TotalPayment> get copyWith =>
      __$$_TotalPaymentCopyWithImpl<_$_TotalPayment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TotalPaymentToJson(
      this,
    );
  }
}

abstract class _TotalPayment implements TotalPayment {
  factory _TotalPayment(
      {final int od_cart_price,
      final int od_coupon,
      final int od_cash,
      final int od_send_cost,
      final String total_payment,
      final String expected_points}) = _$_TotalPayment;

  factory _TotalPayment.fromJson(Map<String, dynamic> json) =
      _$_TotalPayment.fromJson;

  @override
  int get od_cart_price;
  @override
  int get od_coupon;
  @override
  int get od_cash;
  @override
  int get od_send_cost;
  @override
  String get total_payment;
  @override
  String get expected_points;
  @override
  @JsonKey(ignore: true)
  _$$_TotalPaymentCopyWith<_$_TotalPayment> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderConfirmResponse _$OrderConfirmResponseFromJson(Map<String, dynamic> json) {
  return _OrderConfirmResponse.fromJson(json);
}

/// @nodoc
mixin _$OrderConfirmResponse {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  OrderData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderConfirmResponseCopyWith<OrderConfirmResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderConfirmResponseCopyWith<$Res> {
  factory $OrderConfirmResponseCopyWith(OrderConfirmResponse value,
          $Res Function(OrderConfirmResponse) then) =
      _$OrderConfirmResponseCopyWithImpl<$Res, OrderConfirmResponse>;
  @useResult
  $Res call({int status, String message, OrderData? data});

  $OrderDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$OrderConfirmResponseCopyWithImpl<$Res,
        $Val extends OrderConfirmResponse>
    implements $OrderConfirmResponseCopyWith<$Res> {
  _$OrderConfirmResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OrderData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $OrderDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderConfirmResponseCopyWith<$Res>
    implements $OrderConfirmResponseCopyWith<$Res> {
  factory _$$_OrderConfirmResponseCopyWith(_$_OrderConfirmResponse value,
          $Res Function(_$_OrderConfirmResponse) then) =
      __$$_OrderConfirmResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String message, OrderData? data});

  @override
  $OrderDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_OrderConfirmResponseCopyWithImpl<$Res>
    extends _$OrderConfirmResponseCopyWithImpl<$Res, _$_OrderConfirmResponse>
    implements _$$_OrderConfirmResponseCopyWith<$Res> {
  __$$_OrderConfirmResponseCopyWithImpl(_$_OrderConfirmResponse _value,
      $Res Function(_$_OrderConfirmResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_$_OrderConfirmResponse(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OrderData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderConfirmResponse implements _OrderConfirmResponse {
  _$_OrderConfirmResponse({required this.status, this.message = '', this.data});

  factory _$_OrderConfirmResponse.fromJson(Map<String, dynamic> json) =>
      _$$_OrderConfirmResponseFromJson(json);

  @override
  final int status;
  @override
  @JsonKey()
  final String message;
  @override
  final OrderData? data;

  @override
  String toString() {
    return 'OrderConfirmResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderConfirmResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderConfirmResponseCopyWith<_$_OrderConfirmResponse> get copyWith =>
      __$$_OrderConfirmResponseCopyWithImpl<_$_OrderConfirmResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderConfirmResponseToJson(
      this,
    );
  }
}

abstract class _OrderConfirmResponse implements OrderConfirmResponse {
  factory _OrderConfirmResponse(
      {required final int status,
      final String message,
      final OrderData? data}) = _$_OrderConfirmResponse;

  factory _OrderConfirmResponse.fromJson(Map<String, dynamic> json) =
      _$_OrderConfirmResponse.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  OrderData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_OrderConfirmResponseCopyWith<_$_OrderConfirmResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
