// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'more.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

More _$MoreFromJson(Map<String, dynamic> json) {
  return _More.fromJson(json);
}

/// @nodoc
mixin _$More {
  String get it_id => throw _privateConstructorUsedError;
  String get it_name => throw _privateConstructorUsedError;
  int get it_cust_price => throw _privateConstructorUsedError;
  int get it_price => throw _privateConstructorUsedError;
  String get it_img1 => throw _privateConstructorUsedError;
  String get it_time => throw _privateConstructorUsedError;
  int get it_sum_qty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoreCopyWith<More> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoreCopyWith<$Res> {
  factory $MoreCopyWith(More value, $Res Function(More) then) =
      _$MoreCopyWithImpl<$Res, More>;
  @useResult
  $Res call(
      {String it_id,
      String it_name,
      int it_cust_price,
      int it_price,
      String it_img1,
      String it_time,
      int it_sum_qty});
}

/// @nodoc
class _$MoreCopyWithImpl<$Res, $Val extends More>
    implements $MoreCopyWith<$Res> {
  _$MoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? it_id = null,
    Object? it_name = null,
    Object? it_cust_price = null,
    Object? it_price = null,
    Object? it_img1 = null,
    Object? it_time = null,
    Object? it_sum_qty = null,
  }) {
    return _then(_value.copyWith(
      it_id: null == it_id
          ? _value.it_id
          : it_id // ignore: cast_nullable_to_non_nullable
              as String,
      it_name: null == it_name
          ? _value.it_name
          : it_name // ignore: cast_nullable_to_non_nullable
              as String,
      it_cust_price: null == it_cust_price
          ? _value.it_cust_price
          : it_cust_price // ignore: cast_nullable_to_non_nullable
              as int,
      it_price: null == it_price
          ? _value.it_price
          : it_price // ignore: cast_nullable_to_non_nullable
              as int,
      it_img1: null == it_img1
          ? _value.it_img1
          : it_img1 // ignore: cast_nullable_to_non_nullable
              as String,
      it_time: null == it_time
          ? _value.it_time
          : it_time // ignore: cast_nullable_to_non_nullable
              as String,
      it_sum_qty: null == it_sum_qty
          ? _value.it_sum_qty
          : it_sum_qty // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MoreCopyWith<$Res> implements $MoreCopyWith<$Res> {
  factory _$$_MoreCopyWith(_$_More value, $Res Function(_$_More) then) =
      __$$_MoreCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String it_id,
      String it_name,
      int it_cust_price,
      int it_price,
      String it_img1,
      String it_time,
      int it_sum_qty});
}

/// @nodoc
class __$$_MoreCopyWithImpl<$Res> extends _$MoreCopyWithImpl<$Res, _$_More>
    implements _$$_MoreCopyWith<$Res> {
  __$$_MoreCopyWithImpl(_$_More _value, $Res Function(_$_More) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? it_id = null,
    Object? it_name = null,
    Object? it_cust_price = null,
    Object? it_price = null,
    Object? it_img1 = null,
    Object? it_time = null,
    Object? it_sum_qty = null,
  }) {
    return _then(_$_More(
      it_id: null == it_id
          ? _value.it_id
          : it_id // ignore: cast_nullable_to_non_nullable
              as String,
      it_name: null == it_name
          ? _value.it_name
          : it_name // ignore: cast_nullable_to_non_nullable
              as String,
      it_cust_price: null == it_cust_price
          ? _value.it_cust_price
          : it_cust_price // ignore: cast_nullable_to_non_nullable
              as int,
      it_price: null == it_price
          ? _value.it_price
          : it_price // ignore: cast_nullable_to_non_nullable
              as int,
      it_img1: null == it_img1
          ? _value.it_img1
          : it_img1 // ignore: cast_nullable_to_non_nullable
              as String,
      it_time: null == it_time
          ? _value.it_time
          : it_time // ignore: cast_nullable_to_non_nullable
              as String,
      it_sum_qty: null == it_sum_qty
          ? _value.it_sum_qty
          : it_sum_qty // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_More implements _More {
  _$_More(
      {this.it_id = '',
      this.it_name = '',
      this.it_cust_price = 0,
      this.it_price = 0,
      this.it_img1 = '',
      this.it_time = '',
      this.it_sum_qty = 0});

  factory _$_More.fromJson(Map<String, dynamic> json) => _$$_MoreFromJson(json);

  @override
  @JsonKey()
  final String it_id;
  @override
  @JsonKey()
  final String it_name;
  @override
  @JsonKey()
  final int it_cust_price;
  @override
  @JsonKey()
  final int it_price;
  @override
  @JsonKey()
  final String it_img1;
  @override
  @JsonKey()
  final String it_time;
  @override
  @JsonKey()
  final int it_sum_qty;

  @override
  String toString() {
    return 'More(it_id: $it_id, it_name: $it_name, it_cust_price: $it_cust_price, it_price: $it_price, it_img1: $it_img1, it_time: $it_time, it_sum_qty: $it_sum_qty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_More &&
            (identical(other.it_id, it_id) || other.it_id == it_id) &&
            (identical(other.it_name, it_name) || other.it_name == it_name) &&
            (identical(other.it_cust_price, it_cust_price) ||
                other.it_cust_price == it_cust_price) &&
            (identical(other.it_price, it_price) ||
                other.it_price == it_price) &&
            (identical(other.it_img1, it_img1) || other.it_img1 == it_img1) &&
            (identical(other.it_time, it_time) || other.it_time == it_time) &&
            (identical(other.it_sum_qty, it_sum_qty) ||
                other.it_sum_qty == it_sum_qty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, it_id, it_name, it_cust_price,
      it_price, it_img1, it_time, it_sum_qty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MoreCopyWith<_$_More> get copyWith =>
      __$$_MoreCopyWithImpl<_$_More>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MoreToJson(
      this,
    );
  }
}

abstract class _More implements More {
  factory _More(
      {final String it_id,
      final String it_name,
      final int it_cust_price,
      final int it_price,
      final String it_img1,
      final String it_time,
      final int it_sum_qty}) = _$_More;

  factory _More.fromJson(Map<String, dynamic> json) = _$_More.fromJson;

  @override
  String get it_id;
  @override
  String get it_name;
  @override
  int get it_cust_price;
  @override
  int get it_price;
  @override
  String get it_img1;
  @override
  String get it_time;
  @override
  int get it_sum_qty;
  @override
  @JsonKey(ignore: true)
  _$$_MoreCopyWith<_$_More> get copyWith => throw _privateConstructorUsedError;
}

MoreResponse _$MoreResponseFromJson(Map<String, dynamic> json) {
  return _MoreResponse.fromJson(json);
}

/// @nodoc
mixin _$MoreResponse {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<More>? get items => throw _privateConstructorUsedError;
  int get total_cnt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoreResponseCopyWith<MoreResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoreResponseCopyWith<$Res> {
  factory $MoreResponseCopyWith(
          MoreResponse value, $Res Function(MoreResponse) then) =
      _$MoreResponseCopyWithImpl<$Res, MoreResponse>;
  @useResult
  $Res call(
      {int status,
      String message,
      @JsonKey(name: 'data') List<More>? items,
      int total_cnt});
}

/// @nodoc
class _$MoreResponseCopyWithImpl<$Res, $Val extends MoreResponse>
    implements $MoreResponseCopyWith<$Res> {
  _$MoreResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? items = freezed,
    Object? total_cnt = null,
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
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<More>?,
      total_cnt: null == total_cnt
          ? _value.total_cnt
          : total_cnt // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MoreResponseCopyWith<$Res>
    implements $MoreResponseCopyWith<$Res> {
  factory _$$_MoreResponseCopyWith(
          _$_MoreResponse value, $Res Function(_$_MoreResponse) then) =
      __$$_MoreResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status,
      String message,
      @JsonKey(name: 'data') List<More>? items,
      int total_cnt});
}

/// @nodoc
class __$$_MoreResponseCopyWithImpl<$Res>
    extends _$MoreResponseCopyWithImpl<$Res, _$_MoreResponse>
    implements _$$_MoreResponseCopyWith<$Res> {
  __$$_MoreResponseCopyWithImpl(
      _$_MoreResponse _value, $Res Function(_$_MoreResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? items = freezed,
    Object? total_cnt = null,
  }) {
    return _then(_$_MoreResponse(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<More>?,
      total_cnt: null == total_cnt
          ? _value.total_cnt
          : total_cnt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MoreResponse implements _MoreResponse {
  _$_MoreResponse(
      {required this.status,
      this.message = '',
      @JsonKey(name: 'data') final List<More>? items = const [],
      this.total_cnt = 0})
      : _items = items;

  factory _$_MoreResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MoreResponseFromJson(json);

  @override
  final int status;
  @override
  @JsonKey()
  final String message;
  final List<More>? _items;
  @override
  @JsonKey(name: 'data')
  List<More>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final int total_cnt;

  @override
  String toString() {
    return 'MoreResponse(status: $status, message: $message, items: $items, total_cnt: $total_cnt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MoreResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.total_cnt, total_cnt) ||
                other.total_cnt == total_cnt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_items), total_cnt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MoreResponseCopyWith<_$_MoreResponse> get copyWith =>
      __$$_MoreResponseCopyWithImpl<_$_MoreResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MoreResponseToJson(
      this,
    );
  }
}

abstract class _MoreResponse implements MoreResponse {
  factory _MoreResponse(
      {required final int status,
      final String message,
      @JsonKey(name: 'data') final List<More>? items,
      final int total_cnt}) = _$_MoreResponse;

  factory _MoreResponse.fromJson(Map<String, dynamic> json) =
      _$_MoreResponse.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  @JsonKey(name: 'data')
  List<More>? get items;
  @override
  int get total_cnt;
  @override
  @JsonKey(ignore: true)
  _$$_MoreResponseCopyWith<_$_MoreResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
