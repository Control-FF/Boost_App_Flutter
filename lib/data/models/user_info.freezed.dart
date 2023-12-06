// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  int get deposit_cnt => throw _privateConstructorUsedError;
  int get prepare_cnt => throw _privateConstructorUsedError;
  int get delivery_cnt => throw _privateConstructorUsedError;
  int get complete_cnt => throw _privateConstructorUsedError;
  int get cancel_cnt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {int deposit_cnt,
      int prepare_cnt,
      int delivery_cnt,
      int complete_cnt,
      int cancel_cnt});
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deposit_cnt = null,
    Object? prepare_cnt = null,
    Object? delivery_cnt = null,
    Object? complete_cnt = null,
    Object? cancel_cnt = null,
  }) {
    return _then(_value.copyWith(
      deposit_cnt: null == deposit_cnt
          ? _value.deposit_cnt
          : deposit_cnt // ignore: cast_nullable_to_non_nullable
              as int,
      prepare_cnt: null == prepare_cnt
          ? _value.prepare_cnt
          : prepare_cnt // ignore: cast_nullable_to_non_nullable
              as int,
      delivery_cnt: null == delivery_cnt
          ? _value.delivery_cnt
          : delivery_cnt // ignore: cast_nullable_to_non_nullable
              as int,
      complete_cnt: null == complete_cnt
          ? _value.complete_cnt
          : complete_cnt // ignore: cast_nullable_to_non_nullable
              as int,
      cancel_cnt: null == cancel_cnt
          ? _value.cancel_cnt
          : cancel_cnt // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderImplCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$OrderImplCopyWith(
          _$OrderImpl value, $Res Function(_$OrderImpl) then) =
      __$$OrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int deposit_cnt,
      int prepare_cnt,
      int delivery_cnt,
      int complete_cnt,
      int cancel_cnt});
}

/// @nodoc
class __$$OrderImplCopyWithImpl<$Res>
    extends _$OrderCopyWithImpl<$Res, _$OrderImpl>
    implements _$$OrderImplCopyWith<$Res> {
  __$$OrderImplCopyWithImpl(
      _$OrderImpl _value, $Res Function(_$OrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deposit_cnt = null,
    Object? prepare_cnt = null,
    Object? delivery_cnt = null,
    Object? complete_cnt = null,
    Object? cancel_cnt = null,
  }) {
    return _then(_$OrderImpl(
      deposit_cnt: null == deposit_cnt
          ? _value.deposit_cnt
          : deposit_cnt // ignore: cast_nullable_to_non_nullable
              as int,
      prepare_cnt: null == prepare_cnt
          ? _value.prepare_cnt
          : prepare_cnt // ignore: cast_nullable_to_non_nullable
              as int,
      delivery_cnt: null == delivery_cnt
          ? _value.delivery_cnt
          : delivery_cnt // ignore: cast_nullable_to_non_nullable
              as int,
      complete_cnt: null == complete_cnt
          ? _value.complete_cnt
          : complete_cnt // ignore: cast_nullable_to_non_nullable
              as int,
      cancel_cnt: null == cancel_cnt
          ? _value.cancel_cnt
          : cancel_cnt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderImpl implements _Order {
  _$OrderImpl(
      {this.deposit_cnt = 0,
      this.prepare_cnt = 0,
      this.delivery_cnt = 0,
      this.complete_cnt = 0,
      this.cancel_cnt = 0});

  factory _$OrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderImplFromJson(json);

  @override
  @JsonKey()
  final int deposit_cnt;
  @override
  @JsonKey()
  final int prepare_cnt;
  @override
  @JsonKey()
  final int delivery_cnt;
  @override
  @JsonKey()
  final int complete_cnt;
  @override
  @JsonKey()
  final int cancel_cnt;

  @override
  String toString() {
    return 'Order(deposit_cnt: $deposit_cnt, prepare_cnt: $prepare_cnt, delivery_cnt: $delivery_cnt, complete_cnt: $complete_cnt, cancel_cnt: $cancel_cnt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderImpl &&
            (identical(other.deposit_cnt, deposit_cnt) ||
                other.deposit_cnt == deposit_cnt) &&
            (identical(other.prepare_cnt, prepare_cnt) ||
                other.prepare_cnt == prepare_cnt) &&
            (identical(other.delivery_cnt, delivery_cnt) ||
                other.delivery_cnt == delivery_cnt) &&
            (identical(other.complete_cnt, complete_cnt) ||
                other.complete_cnt == complete_cnt) &&
            (identical(other.cancel_cnt, cancel_cnt) ||
                other.cancel_cnt == cancel_cnt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, deposit_cnt, prepare_cnt,
      delivery_cnt, complete_cnt, cancel_cnt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      __$$OrderImplCopyWithImpl<_$OrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderImplToJson(
      this,
    );
  }
}

abstract class _Order implements Order {
  factory _Order(
      {final int deposit_cnt,
      final int prepare_cnt,
      final int delivery_cnt,
      final int complete_cnt,
      final int cancel_cnt}) = _$OrderImpl;

  factory _Order.fromJson(Map<String, dynamic> json) = _$OrderImpl.fromJson;

  @override
  int get deposit_cnt;
  @override
  int get prepare_cnt;
  @override
  int get delivery_cnt;
  @override
  int get complete_cnt;
  @override
  int get cancel_cnt;
  @override
  @JsonKey(ignore: true)
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) {
  return _UserInfo.fromJson(json);
}

/// @nodoc
mixin _$UserInfo {
  String get name => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String get recommend_code => throw _privateConstructorUsedError;
  int get point => throw _privateConstructorUsedError;
  int get coupon_cnt => throw _privateConstructorUsedError;
  int get review_cnt => throw _privateConstructorUsedError;
  Order? get order => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInfoCopyWith<UserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoCopyWith<$Res> {
  factory $UserInfoCopyWith(UserInfo value, $Res Function(UserInfo) then) =
      _$UserInfoCopyWithImpl<$Res, UserInfo>;
  @useResult
  $Res call(
      {String name,
      String nickname,
      String recommend_code,
      int point,
      int coupon_cnt,
      int review_cnt,
      Order? order});

  $OrderCopyWith<$Res>? get order;
}

/// @nodoc
class _$UserInfoCopyWithImpl<$Res, $Val extends UserInfo>
    implements $UserInfoCopyWith<$Res> {
  _$UserInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? nickname = null,
    Object? recommend_code = null,
    Object? point = null,
    Object? coupon_cnt = null,
    Object? review_cnt = null,
    Object? order = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      recommend_code: null == recommend_code
          ? _value.recommend_code
          : recommend_code // ignore: cast_nullable_to_non_nullable
              as String,
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int,
      coupon_cnt: null == coupon_cnt
          ? _value.coupon_cnt
          : coupon_cnt // ignore: cast_nullable_to_non_nullable
              as int,
      review_cnt: null == review_cnt
          ? _value.review_cnt
          : review_cnt // ignore: cast_nullable_to_non_nullable
              as int,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderCopyWith<$Res>? get order {
    if (_value.order == null) {
      return null;
    }

    return $OrderCopyWith<$Res>(_value.order!, (value) {
      return _then(_value.copyWith(order: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserInfoImplCopyWith<$Res>
    implements $UserInfoCopyWith<$Res> {
  factory _$$UserInfoImplCopyWith(
          _$UserInfoImpl value, $Res Function(_$UserInfoImpl) then) =
      __$$UserInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String nickname,
      String recommend_code,
      int point,
      int coupon_cnt,
      int review_cnt,
      Order? order});

  @override
  $OrderCopyWith<$Res>? get order;
}

/// @nodoc
class __$$UserInfoImplCopyWithImpl<$Res>
    extends _$UserInfoCopyWithImpl<$Res, _$UserInfoImpl>
    implements _$$UserInfoImplCopyWith<$Res> {
  __$$UserInfoImplCopyWithImpl(
      _$UserInfoImpl _value, $Res Function(_$UserInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? nickname = null,
    Object? recommend_code = null,
    Object? point = null,
    Object? coupon_cnt = null,
    Object? review_cnt = null,
    Object? order = freezed,
  }) {
    return _then(_$UserInfoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      recommend_code: null == recommend_code
          ? _value.recommend_code
          : recommend_code // ignore: cast_nullable_to_non_nullable
              as String,
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int,
      coupon_cnt: null == coupon_cnt
          ? _value.coupon_cnt
          : coupon_cnt // ignore: cast_nullable_to_non_nullable
              as int,
      review_cnt: null == review_cnt
          ? _value.review_cnt
          : review_cnt // ignore: cast_nullable_to_non_nullable
              as int,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserInfoImpl implements _UserInfo {
  _$UserInfoImpl(
      {this.name = '',
      this.nickname = '',
      this.recommend_code = '',
      this.point = 0,
      this.coupon_cnt = 0,
      this.review_cnt = 0,
      this.order});

  factory _$UserInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInfoImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String nickname;
  @override
  @JsonKey()
  final String recommend_code;
  @override
  @JsonKey()
  final int point;
  @override
  @JsonKey()
  final int coupon_cnt;
  @override
  @JsonKey()
  final int review_cnt;
  @override
  final Order? order;

  @override
  String toString() {
    return 'UserInfo(name: $name, nickname: $nickname, recommend_code: $recommend_code, point: $point, coupon_cnt: $coupon_cnt, review_cnt: $review_cnt, order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.recommend_code, recommend_code) ||
                other.recommend_code == recommend_code) &&
            (identical(other.point, point) || other.point == point) &&
            (identical(other.coupon_cnt, coupon_cnt) ||
                other.coupon_cnt == coupon_cnt) &&
            (identical(other.review_cnt, review_cnt) ||
                other.review_cnt == review_cnt) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, nickname, recommend_code,
      point, coupon_cnt, review_cnt, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoImplCopyWith<_$UserInfoImpl> get copyWith =>
      __$$UserInfoImplCopyWithImpl<_$UserInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInfoImplToJson(
      this,
    );
  }
}

abstract class _UserInfo implements UserInfo {
  factory _UserInfo(
      {final String name,
      final String nickname,
      final String recommend_code,
      final int point,
      final int coupon_cnt,
      final int review_cnt,
      final Order? order}) = _$UserInfoImpl;

  factory _UserInfo.fromJson(Map<String, dynamic> json) =
      _$UserInfoImpl.fromJson;

  @override
  String get name;
  @override
  String get nickname;
  @override
  String get recommend_code;
  @override
  int get point;
  @override
  int get coupon_cnt;
  @override
  int get review_cnt;
  @override
  Order? get order;
  @override
  @JsonKey(ignore: true)
  _$$UserInfoImplCopyWith<_$UserInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserInfoResponse _$UserInfoResponseFromJson(Map<String, dynamic> json) {
  return _UserInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$UserInfoResponse {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  UserInfo? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInfoResponseCopyWith<UserInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoResponseCopyWith<$Res> {
  factory $UserInfoResponseCopyWith(
          UserInfoResponse value, $Res Function(UserInfoResponse) then) =
      _$UserInfoResponseCopyWithImpl<$Res, UserInfoResponse>;
  @useResult
  $Res call({int status, String message, UserInfo? data});

  $UserInfoCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserInfoResponseCopyWithImpl<$Res, $Val extends UserInfoResponse>
    implements $UserInfoResponseCopyWith<$Res> {
  _$UserInfoResponseCopyWithImpl(this._value, this._then);

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
              as UserInfo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserInfoCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UserInfoCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserInfoResponseImplCopyWith<$Res>
    implements $UserInfoResponseCopyWith<$Res> {
  factory _$$UserInfoResponseImplCopyWith(_$UserInfoResponseImpl value,
          $Res Function(_$UserInfoResponseImpl) then) =
      __$$UserInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String message, UserInfo? data});

  @override
  $UserInfoCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UserInfoResponseImplCopyWithImpl<$Res>
    extends _$UserInfoResponseCopyWithImpl<$Res, _$UserInfoResponseImpl>
    implements _$$UserInfoResponseImplCopyWith<$Res> {
  __$$UserInfoResponseImplCopyWithImpl(_$UserInfoResponseImpl _value,
      $Res Function(_$UserInfoResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_$UserInfoResponseImpl(
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
              as UserInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserInfoResponseImpl implements _UserInfoResponse {
  _$UserInfoResponseImpl(
      {required this.status, required this.message, this.data});

  factory _$UserInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInfoResponseImplFromJson(json);

  @override
  final int status;
  @override
  final String message;
  @override
  final UserInfo? data;

  @override
  String toString() {
    return 'UserInfoResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoResponseImpl &&
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
  _$$UserInfoResponseImplCopyWith<_$UserInfoResponseImpl> get copyWith =>
      __$$UserInfoResponseImplCopyWithImpl<_$UserInfoResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _UserInfoResponse implements UserInfoResponse {
  factory _UserInfoResponse(
      {required final int status,
      required final String message,
      final UserInfo? data}) = _$UserInfoResponseImpl;

  factory _UserInfoResponse.fromJson(Map<String, dynamic> json) =
      _$UserInfoResponseImpl.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  UserInfo? get data;
  @override
  @JsonKey(ignore: true)
  _$$UserInfoResponseImplCopyWith<_$UserInfoResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
