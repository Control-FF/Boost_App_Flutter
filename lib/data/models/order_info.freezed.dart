// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderInfoAddress _$OrderInfoAddressFromJson(Map<String, dynamic> json) {
  return _OrderInfoAddress.fromJson(json);
}

/// @nodoc
mixin _$OrderInfoAddress {
  int get ad_id => throw _privateConstructorUsedError;
  String get ad_name => throw _privateConstructorUsedError;
  String get ad_hp => throw _privateConstructorUsedError;
  String get address1 => throw _privateConstructorUsedError;
  String get address2 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderInfoAddressCopyWith<OrderInfoAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderInfoAddressCopyWith<$Res> {
  factory $OrderInfoAddressCopyWith(
          OrderInfoAddress value, $Res Function(OrderInfoAddress) then) =
      _$OrderInfoAddressCopyWithImpl<$Res, OrderInfoAddress>;
  @useResult
  $Res call(
      {int ad_id,
      String ad_name,
      String ad_hp,
      String address1,
      String address2});
}

/// @nodoc
class _$OrderInfoAddressCopyWithImpl<$Res, $Val extends OrderInfoAddress>
    implements $OrderInfoAddressCopyWith<$Res> {
  _$OrderInfoAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ad_id = null,
    Object? ad_name = null,
    Object? ad_hp = null,
    Object? address1 = null,
    Object? address2 = null,
  }) {
    return _then(_value.copyWith(
      ad_id: null == ad_id
          ? _value.ad_id
          : ad_id // ignore: cast_nullable_to_non_nullable
              as int,
      ad_name: null == ad_name
          ? _value.ad_name
          : ad_name // ignore: cast_nullable_to_non_nullable
              as String,
      ad_hp: null == ad_hp
          ? _value.ad_hp
          : ad_hp // ignore: cast_nullable_to_non_nullable
              as String,
      address1: null == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String,
      address2: null == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderInfoAddressCopyWith<$Res>
    implements $OrderInfoAddressCopyWith<$Res> {
  factory _$$_OrderInfoAddressCopyWith(
          _$_OrderInfoAddress value, $Res Function(_$_OrderInfoAddress) then) =
      __$$_OrderInfoAddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int ad_id,
      String ad_name,
      String ad_hp,
      String address1,
      String address2});
}

/// @nodoc
class __$$_OrderInfoAddressCopyWithImpl<$Res>
    extends _$OrderInfoAddressCopyWithImpl<$Res, _$_OrderInfoAddress>
    implements _$$_OrderInfoAddressCopyWith<$Res> {
  __$$_OrderInfoAddressCopyWithImpl(
      _$_OrderInfoAddress _value, $Res Function(_$_OrderInfoAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ad_id = null,
    Object? ad_name = null,
    Object? ad_hp = null,
    Object? address1 = null,
    Object? address2 = null,
  }) {
    return _then(_$_OrderInfoAddress(
      ad_id: null == ad_id
          ? _value.ad_id
          : ad_id // ignore: cast_nullable_to_non_nullable
              as int,
      ad_name: null == ad_name
          ? _value.ad_name
          : ad_name // ignore: cast_nullable_to_non_nullable
              as String,
      ad_hp: null == ad_hp
          ? _value.ad_hp
          : ad_hp // ignore: cast_nullable_to_non_nullable
              as String,
      address1: null == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String,
      address2: null == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderInfoAddress implements _OrderInfoAddress {
  _$_OrderInfoAddress(
      {this.ad_id = 0,
      this.ad_name = '',
      this.ad_hp = '',
      this.address1 = '',
      this.address2 = ''});

  factory _$_OrderInfoAddress.fromJson(Map<String, dynamic> json) =>
      _$$_OrderInfoAddressFromJson(json);

  @override
  @JsonKey()
  final int ad_id;
  @override
  @JsonKey()
  final String ad_name;
  @override
  @JsonKey()
  final String ad_hp;
  @override
  @JsonKey()
  final String address1;
  @override
  @JsonKey()
  final String address2;

  @override
  String toString() {
    return 'OrderInfoAddress(ad_id: $ad_id, ad_name: $ad_name, ad_hp: $ad_hp, address1: $address1, address2: $address2)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderInfoAddress &&
            (identical(other.ad_id, ad_id) || other.ad_id == ad_id) &&
            (identical(other.ad_name, ad_name) || other.ad_name == ad_name) &&
            (identical(other.ad_hp, ad_hp) || other.ad_hp == ad_hp) &&
            (identical(other.address1, address1) ||
                other.address1 == address1) &&
            (identical(other.address2, address2) ||
                other.address2 == address2));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, ad_id, ad_name, ad_hp, address1, address2);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderInfoAddressCopyWith<_$_OrderInfoAddress> get copyWith =>
      __$$_OrderInfoAddressCopyWithImpl<_$_OrderInfoAddress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderInfoAddressToJson(
      this,
    );
  }
}

abstract class _OrderInfoAddress implements OrderInfoAddress {
  factory _OrderInfoAddress(
      {final int ad_id,
      final String ad_name,
      final String ad_hp,
      final String address1,
      final String address2}) = _$_OrderInfoAddress;

  factory _OrderInfoAddress.fromJson(Map<String, dynamic> json) =
      _$_OrderInfoAddress.fromJson;

  @override
  int get ad_id;
  @override
  String get ad_name;
  @override
  String get ad_hp;
  @override
  String get address1;
  @override
  String get address2;
  @override
  @JsonKey(ignore: true)
  _$$_OrderInfoAddressCopyWith<_$_OrderInfoAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderInfoPayment _$OrderInfoPaymentFromJson(Map<String, dynamic> json) {
  return _OrderInfoPayment.fromJson(json);
}

/// @nodoc
mixin _$OrderInfoPayment {
  int get pay_id => throw _privateConstructorUsedError;
  String get pay_name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderInfoPaymentCopyWith<OrderInfoPayment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderInfoPaymentCopyWith<$Res> {
  factory $OrderInfoPaymentCopyWith(
          OrderInfoPayment value, $Res Function(OrderInfoPayment) then) =
      _$OrderInfoPaymentCopyWithImpl<$Res, OrderInfoPayment>;
  @useResult
  $Res call({int pay_id, String pay_name});
}

/// @nodoc
class _$OrderInfoPaymentCopyWithImpl<$Res, $Val extends OrderInfoPayment>
    implements $OrderInfoPaymentCopyWith<$Res> {
  _$OrderInfoPaymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pay_id = null,
    Object? pay_name = null,
  }) {
    return _then(_value.copyWith(
      pay_id: null == pay_id
          ? _value.pay_id
          : pay_id // ignore: cast_nullable_to_non_nullable
              as int,
      pay_name: null == pay_name
          ? _value.pay_name
          : pay_name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderInfoPaymentCopyWith<$Res>
    implements $OrderInfoPaymentCopyWith<$Res> {
  factory _$$_OrderInfoPaymentCopyWith(
          _$_OrderInfoPayment value, $Res Function(_$_OrderInfoPayment) then) =
      __$$_OrderInfoPaymentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pay_id, String pay_name});
}

/// @nodoc
class __$$_OrderInfoPaymentCopyWithImpl<$Res>
    extends _$OrderInfoPaymentCopyWithImpl<$Res, _$_OrderInfoPayment>
    implements _$$_OrderInfoPaymentCopyWith<$Res> {
  __$$_OrderInfoPaymentCopyWithImpl(
      _$_OrderInfoPayment _value, $Res Function(_$_OrderInfoPayment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pay_id = null,
    Object? pay_name = null,
  }) {
    return _then(_$_OrderInfoPayment(
      pay_id: null == pay_id
          ? _value.pay_id
          : pay_id // ignore: cast_nullable_to_non_nullable
              as int,
      pay_name: null == pay_name
          ? _value.pay_name
          : pay_name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderInfoPayment implements _OrderInfoPayment {
  _$_OrderInfoPayment({this.pay_id = 0, this.pay_name = ''});

  factory _$_OrderInfoPayment.fromJson(Map<String, dynamic> json) =>
      _$$_OrderInfoPaymentFromJson(json);

  @override
  @JsonKey()
  final int pay_id;
  @override
  @JsonKey()
  final String pay_name;

  @override
  String toString() {
    return 'OrderInfoPayment(pay_id: $pay_id, pay_name: $pay_name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderInfoPayment &&
            (identical(other.pay_id, pay_id) || other.pay_id == pay_id) &&
            (identical(other.pay_name, pay_name) ||
                other.pay_name == pay_name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pay_id, pay_name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderInfoPaymentCopyWith<_$_OrderInfoPayment> get copyWith =>
      __$$_OrderInfoPaymentCopyWithImpl<_$_OrderInfoPayment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderInfoPaymentToJson(
      this,
    );
  }
}

abstract class _OrderInfoPayment implements OrderInfoPayment {
  factory _OrderInfoPayment({final int pay_id, final String pay_name}) =
      _$_OrderInfoPayment;

  factory _OrderInfoPayment.fromJson(Map<String, dynamic> json) =
      _$_OrderInfoPayment.fromJson;

  @override
  int get pay_id;
  @override
  String get pay_name;
  @override
  @JsonKey(ignore: true)
  _$$_OrderInfoPaymentCopyWith<_$_OrderInfoPayment> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderInfoResponse _$OrderInfoResponseFromJson(Map<String, dynamic> json) {
  return _OrderInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$OrderInfoResponse {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  int get mb_point => throw _privateConstructorUsedError;
  int get mb_coupon_cnt => throw _privateConstructorUsedError;
  OrderInfoAddress? get addressItem => throw _privateConstructorUsedError;
  OrderInfoPayment? get paymentItem => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderInfoResponseCopyWith<OrderInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderInfoResponseCopyWith<$Res> {
  factory $OrderInfoResponseCopyWith(
          OrderInfoResponse value, $Res Function(OrderInfoResponse) then) =
      _$OrderInfoResponseCopyWithImpl<$Res, OrderInfoResponse>;
  @useResult
  $Res call(
      {int status,
      String message,
      int mb_point,
      int mb_coupon_cnt,
      OrderInfoAddress? addressItem,
      OrderInfoPayment? paymentItem});

  $OrderInfoAddressCopyWith<$Res>? get addressItem;
  $OrderInfoPaymentCopyWith<$Res>? get paymentItem;
}

/// @nodoc
class _$OrderInfoResponseCopyWithImpl<$Res, $Val extends OrderInfoResponse>
    implements $OrderInfoResponseCopyWith<$Res> {
  _$OrderInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? mb_point = null,
    Object? mb_coupon_cnt = null,
    Object? addressItem = freezed,
    Object? paymentItem = freezed,
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
      mb_point: null == mb_point
          ? _value.mb_point
          : mb_point // ignore: cast_nullable_to_non_nullable
              as int,
      mb_coupon_cnt: null == mb_coupon_cnt
          ? _value.mb_coupon_cnt
          : mb_coupon_cnt // ignore: cast_nullable_to_non_nullable
              as int,
      addressItem: freezed == addressItem
          ? _value.addressItem
          : addressItem // ignore: cast_nullable_to_non_nullable
              as OrderInfoAddress?,
      paymentItem: freezed == paymentItem
          ? _value.paymentItem
          : paymentItem // ignore: cast_nullable_to_non_nullable
              as OrderInfoPayment?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderInfoAddressCopyWith<$Res>? get addressItem {
    if (_value.addressItem == null) {
      return null;
    }

    return $OrderInfoAddressCopyWith<$Res>(_value.addressItem!, (value) {
      return _then(_value.copyWith(addressItem: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderInfoPaymentCopyWith<$Res>? get paymentItem {
    if (_value.paymentItem == null) {
      return null;
    }

    return $OrderInfoPaymentCopyWith<$Res>(_value.paymentItem!, (value) {
      return _then(_value.copyWith(paymentItem: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderInfoResponseCopyWith<$Res>
    implements $OrderInfoResponseCopyWith<$Res> {
  factory _$$_OrderInfoResponseCopyWith(_$_OrderInfoResponse value,
          $Res Function(_$_OrderInfoResponse) then) =
      __$$_OrderInfoResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status,
      String message,
      int mb_point,
      int mb_coupon_cnt,
      OrderInfoAddress? addressItem,
      OrderInfoPayment? paymentItem});

  @override
  $OrderInfoAddressCopyWith<$Res>? get addressItem;
  @override
  $OrderInfoPaymentCopyWith<$Res>? get paymentItem;
}

/// @nodoc
class __$$_OrderInfoResponseCopyWithImpl<$Res>
    extends _$OrderInfoResponseCopyWithImpl<$Res, _$_OrderInfoResponse>
    implements _$$_OrderInfoResponseCopyWith<$Res> {
  __$$_OrderInfoResponseCopyWithImpl(
      _$_OrderInfoResponse _value, $Res Function(_$_OrderInfoResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? mb_point = null,
    Object? mb_coupon_cnt = null,
    Object? addressItem = freezed,
    Object? paymentItem = freezed,
  }) {
    return _then(_$_OrderInfoResponse(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      mb_point: null == mb_point
          ? _value.mb_point
          : mb_point // ignore: cast_nullable_to_non_nullable
              as int,
      mb_coupon_cnt: null == mb_coupon_cnt
          ? _value.mb_coupon_cnt
          : mb_coupon_cnt // ignore: cast_nullable_to_non_nullable
              as int,
      addressItem: freezed == addressItem
          ? _value.addressItem
          : addressItem // ignore: cast_nullable_to_non_nullable
              as OrderInfoAddress?,
      paymentItem: freezed == paymentItem
          ? _value.paymentItem
          : paymentItem // ignore: cast_nullable_to_non_nullable
              as OrderInfoPayment?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderInfoResponse implements _OrderInfoResponse {
  _$_OrderInfoResponse(
      {required this.status,
      this.message = '',
      this.mb_point = 0,
      this.mb_coupon_cnt = 0,
      this.addressItem,
      this.paymentItem});

  factory _$_OrderInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$$_OrderInfoResponseFromJson(json);

  @override
  final int status;
  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final int mb_point;
  @override
  @JsonKey()
  final int mb_coupon_cnt;
  @override
  final OrderInfoAddress? addressItem;
  @override
  final OrderInfoPayment? paymentItem;

  @override
  String toString() {
    return 'OrderInfoResponse(status: $status, message: $message, mb_point: $mb_point, mb_coupon_cnt: $mb_coupon_cnt, addressItem: $addressItem, paymentItem: $paymentItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderInfoResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.mb_point, mb_point) ||
                other.mb_point == mb_point) &&
            (identical(other.mb_coupon_cnt, mb_coupon_cnt) ||
                other.mb_coupon_cnt == mb_coupon_cnt) &&
            (identical(other.addressItem, addressItem) ||
                other.addressItem == addressItem) &&
            (identical(other.paymentItem, paymentItem) ||
                other.paymentItem == paymentItem));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, mb_point,
      mb_coupon_cnt, addressItem, paymentItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderInfoResponseCopyWith<_$_OrderInfoResponse> get copyWith =>
      __$$_OrderInfoResponseCopyWithImpl<_$_OrderInfoResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderInfoResponseToJson(
      this,
    );
  }
}

abstract class _OrderInfoResponse implements OrderInfoResponse {
  factory _OrderInfoResponse(
      {required final int status,
      final String message,
      final int mb_point,
      final int mb_coupon_cnt,
      final OrderInfoAddress? addressItem,
      final OrderInfoPayment? paymentItem}) = _$_OrderInfoResponse;

  factory _OrderInfoResponse.fromJson(Map<String, dynamic> json) =
      _$_OrderInfoResponse.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  int get mb_point;
  @override
  int get mb_coupon_cnt;
  @override
  OrderInfoAddress? get addressItem;
  @override
  OrderInfoPayment? get paymentItem;
  @override
  @JsonKey(ignore: true)
  _$$_OrderInfoResponseCopyWith<_$_OrderInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
