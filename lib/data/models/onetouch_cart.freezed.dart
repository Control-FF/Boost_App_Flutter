// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onetouch_cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OneTouchData _$OneTouchDataFromJson(Map<String, dynamic> json) {
  return _OneTouchData.fromJson(json);
}

/// @nodoc
mixin _$OneTouchData {
  int get item_count => throw _privateConstructorUsedError;
  @JsonKey(name: 'cart_items')
  List<OneTouchCart>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OneTouchDataCopyWith<OneTouchData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneTouchDataCopyWith<$Res> {
  factory $OneTouchDataCopyWith(
          OneTouchData value, $Res Function(OneTouchData) then) =
      _$OneTouchDataCopyWithImpl<$Res, OneTouchData>;
  @useResult
  $Res call(
      {int item_count, @JsonKey(name: 'cart_items') List<OneTouchCart>? items});
}

/// @nodoc
class _$OneTouchDataCopyWithImpl<$Res, $Val extends OneTouchData>
    implements $OneTouchDataCopyWith<$Res> {
  _$OneTouchDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item_count = null,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      item_count: null == item_count
          ? _value.item_count
          : item_count // ignore: cast_nullable_to_non_nullable
              as int,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OneTouchCart>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OneTouchDataCopyWith<$Res>
    implements $OneTouchDataCopyWith<$Res> {
  factory _$$_OneTouchDataCopyWith(
          _$_OneTouchData value, $Res Function(_$_OneTouchData) then) =
      __$$_OneTouchDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int item_count, @JsonKey(name: 'cart_items') List<OneTouchCart>? items});
}

/// @nodoc
class __$$_OneTouchDataCopyWithImpl<$Res>
    extends _$OneTouchDataCopyWithImpl<$Res, _$_OneTouchData>
    implements _$$_OneTouchDataCopyWith<$Res> {
  __$$_OneTouchDataCopyWithImpl(
      _$_OneTouchData _value, $Res Function(_$_OneTouchData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item_count = null,
    Object? items = freezed,
  }) {
    return _then(_$_OneTouchData(
      item_count: null == item_count
          ? _value.item_count
          : item_count // ignore: cast_nullable_to_non_nullable
              as int,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OneTouchCart>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OneTouchData implements _OneTouchData {
  _$_OneTouchData(
      {this.item_count = 0,
      @JsonKey(name: 'cart_items') final List<OneTouchCart>? items = const []})
      : _items = items;

  factory _$_OneTouchData.fromJson(Map<String, dynamic> json) =>
      _$$_OneTouchDataFromJson(json);

  @override
  @JsonKey()
  final int item_count;
  final List<OneTouchCart>? _items;
  @override
  @JsonKey(name: 'cart_items')
  List<OneTouchCart>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OneTouchData(item_count: $item_count, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OneTouchData &&
            (identical(other.item_count, item_count) ||
                other.item_count == item_count) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, item_count, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OneTouchDataCopyWith<_$_OneTouchData> get copyWith =>
      __$$_OneTouchDataCopyWithImpl<_$_OneTouchData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OneTouchDataToJson(
      this,
    );
  }
}

abstract class _OneTouchData implements OneTouchData {
  factory _OneTouchData(
          {final int item_count,
          @JsonKey(name: 'cart_items') final List<OneTouchCart>? items}) =
      _$_OneTouchData;

  factory _OneTouchData.fromJson(Map<String, dynamic> json) =
      _$_OneTouchData.fromJson;

  @override
  int get item_count;
  @override
  @JsonKey(name: 'cart_items')
  List<OneTouchCart>? get items;
  @override
  @JsonKey(ignore: true)
  _$$_OneTouchDataCopyWith<_$_OneTouchData> get copyWith =>
      throw _privateConstructorUsedError;
}

OneTouchCart _$OneTouchCartFromJson(Map<String, dynamic> json) {
  return _OneTouchCart.fromJson(json);
}

/// @nodoc
mixin _$OneTouchCart {
  int get ot_id => throw _privateConstructorUsedError;
  String get it_id => throw _privateConstructorUsedError;
  String get it_name => throw _privateConstructorUsedError;
  int get it_cust_price => throw _privateConstructorUsedError;
  int get it_price => throw _privateConstructorUsedError;
  int get ct_qty => throw _privateConstructorUsedError;
  int? get io_no => throw _privateConstructorUsedError;
  String? get io_id => throw _privateConstructorUsedError;
  String get img => throw _privateConstructorUsedError;
  dynamic get outOfStock => throw _privateConstructorUsedError;
  String get stockStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OneTouchCartCopyWith<OneTouchCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneTouchCartCopyWith<$Res> {
  factory $OneTouchCartCopyWith(
          OneTouchCart value, $Res Function(OneTouchCart) then) =
      _$OneTouchCartCopyWithImpl<$Res, OneTouchCart>;
  @useResult
  $Res call(
      {int ot_id,
      String it_id,
      String it_name,
      int it_cust_price,
      int it_price,
      int ct_qty,
      int? io_no,
      String? io_id,
      String img,
      dynamic outOfStock,
      String stockStatus});
}

/// @nodoc
class _$OneTouchCartCopyWithImpl<$Res, $Val extends OneTouchCart>
    implements $OneTouchCartCopyWith<$Res> {
  _$OneTouchCartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ot_id = null,
    Object? it_id = null,
    Object? it_name = null,
    Object? it_cust_price = null,
    Object? it_price = null,
    Object? ct_qty = null,
    Object? io_no = freezed,
    Object? io_id = freezed,
    Object? img = null,
    Object? outOfStock = freezed,
    Object? stockStatus = null,
  }) {
    return _then(_value.copyWith(
      ot_id: null == ot_id
          ? _value.ot_id
          : ot_id // ignore: cast_nullable_to_non_nullable
              as int,
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
      ct_qty: null == ct_qty
          ? _value.ct_qty
          : ct_qty // ignore: cast_nullable_to_non_nullable
              as int,
      io_no: freezed == io_no
          ? _value.io_no
          : io_no // ignore: cast_nullable_to_non_nullable
              as int?,
      io_id: freezed == io_id
          ? _value.io_id
          : io_id // ignore: cast_nullable_to_non_nullable
              as String?,
      img: null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      outOfStock: freezed == outOfStock
          ? _value.outOfStock
          : outOfStock // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stockStatus: null == stockStatus
          ? _value.stockStatus
          : stockStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OneTouchCartCopyWith<$Res>
    implements $OneTouchCartCopyWith<$Res> {
  factory _$$_OneTouchCartCopyWith(
          _$_OneTouchCart value, $Res Function(_$_OneTouchCart) then) =
      __$$_OneTouchCartCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int ot_id,
      String it_id,
      String it_name,
      int it_cust_price,
      int it_price,
      int ct_qty,
      int? io_no,
      String? io_id,
      String img,
      dynamic outOfStock,
      String stockStatus});
}

/// @nodoc
class __$$_OneTouchCartCopyWithImpl<$Res>
    extends _$OneTouchCartCopyWithImpl<$Res, _$_OneTouchCart>
    implements _$$_OneTouchCartCopyWith<$Res> {
  __$$_OneTouchCartCopyWithImpl(
      _$_OneTouchCart _value, $Res Function(_$_OneTouchCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ot_id = null,
    Object? it_id = null,
    Object? it_name = null,
    Object? it_cust_price = null,
    Object? it_price = null,
    Object? ct_qty = null,
    Object? io_no = freezed,
    Object? io_id = freezed,
    Object? img = null,
    Object? outOfStock = freezed,
    Object? stockStatus = null,
  }) {
    return _then(_$_OneTouchCart(
      ot_id: null == ot_id
          ? _value.ot_id
          : ot_id // ignore: cast_nullable_to_non_nullable
              as int,
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
      ct_qty: null == ct_qty
          ? _value.ct_qty
          : ct_qty // ignore: cast_nullable_to_non_nullable
              as int,
      io_no: freezed == io_no
          ? _value.io_no
          : io_no // ignore: cast_nullable_to_non_nullable
              as int?,
      io_id: freezed == io_id
          ? _value.io_id
          : io_id // ignore: cast_nullable_to_non_nullable
              as String?,
      img: null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      outOfStock: freezed == outOfStock ? _value.outOfStock! : outOfStock,
      stockStatus: null == stockStatus
          ? _value.stockStatus
          : stockStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OneTouchCart implements _OneTouchCart {
  _$_OneTouchCart(
      {this.ot_id = 0,
      this.it_id = '',
      this.it_name = '',
      this.it_cust_price = 0,
      this.it_price = 0,
      this.ct_qty = 0,
      this.io_no = 0,
      this.io_id = '',
      this.img = '',
      this.outOfStock = false,
      this.stockStatus = ''});

  factory _$_OneTouchCart.fromJson(Map<String, dynamic> json) =>
      _$$_OneTouchCartFromJson(json);

  @override
  @JsonKey()
  final int ot_id;
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
  final int ct_qty;
  @override
  @JsonKey()
  final int? io_no;
  @override
  @JsonKey()
  final String? io_id;
  @override
  @JsonKey()
  final String img;
  @override
  @JsonKey()
  final dynamic outOfStock;
  @override
  @JsonKey()
  final String stockStatus;

  @override
  String toString() {
    return 'OneTouchCart(ot_id: $ot_id, it_id: $it_id, it_name: $it_name, it_cust_price: $it_cust_price, it_price: $it_price, ct_qty: $ct_qty, io_no: $io_no, io_id: $io_id, img: $img, outOfStock: $outOfStock, stockStatus: $stockStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OneTouchCart &&
            (identical(other.ot_id, ot_id) || other.ot_id == ot_id) &&
            (identical(other.it_id, it_id) || other.it_id == it_id) &&
            (identical(other.it_name, it_name) || other.it_name == it_name) &&
            (identical(other.it_cust_price, it_cust_price) ||
                other.it_cust_price == it_cust_price) &&
            (identical(other.it_price, it_price) ||
                other.it_price == it_price) &&
            (identical(other.ct_qty, ct_qty) || other.ct_qty == ct_qty) &&
            (identical(other.io_no, io_no) || other.io_no == io_no) &&
            (identical(other.io_id, io_id) || other.io_id == io_id) &&
            (identical(other.img, img) || other.img == img) &&
            const DeepCollectionEquality()
                .equals(other.outOfStock, outOfStock) &&
            (identical(other.stockStatus, stockStatus) ||
                other.stockStatus == stockStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      ot_id,
      it_id,
      it_name,
      it_cust_price,
      it_price,
      ct_qty,
      io_no,
      io_id,
      img,
      const DeepCollectionEquality().hash(outOfStock),
      stockStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OneTouchCartCopyWith<_$_OneTouchCart> get copyWith =>
      __$$_OneTouchCartCopyWithImpl<_$_OneTouchCart>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OneTouchCartToJson(
      this,
    );
  }
}

abstract class _OneTouchCart implements OneTouchCart {
  factory _OneTouchCart(
      {final int ot_id,
      final String it_id,
      final String it_name,
      final int it_cust_price,
      final int it_price,
      final int ct_qty,
      final int? io_no,
      final String? io_id,
      final String img,
      final dynamic outOfStock,
      final String stockStatus}) = _$_OneTouchCart;

  factory _OneTouchCart.fromJson(Map<String, dynamic> json) =
      _$_OneTouchCart.fromJson;

  @override
  int get ot_id;
  @override
  String get it_id;
  @override
  String get it_name;
  @override
  int get it_cust_price;
  @override
  int get it_price;
  @override
  int get ct_qty;
  @override
  int? get io_no;
  @override
  String? get io_id;
  @override
  String get img;
  @override
  dynamic get outOfStock;
  @override
  String get stockStatus;
  @override
  @JsonKey(ignore: true)
  _$$_OneTouchCartCopyWith<_$_OneTouchCart> get copyWith =>
      throw _privateConstructorUsedError;
}

OneTouchCartResponse _$OneTouchCartResponseFromJson(Map<String, dynamic> json) {
  return _OneTouchCartResponse.fromJson(json);
}

/// @nodoc
mixin _$OneTouchCartResponse {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  OneTouchData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OneTouchCartResponseCopyWith<OneTouchCartResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneTouchCartResponseCopyWith<$Res> {
  factory $OneTouchCartResponseCopyWith(OneTouchCartResponse value,
          $Res Function(OneTouchCartResponse) then) =
      _$OneTouchCartResponseCopyWithImpl<$Res, OneTouchCartResponse>;
  @useResult
  $Res call({int status, String message, OneTouchData? data});

  $OneTouchDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$OneTouchCartResponseCopyWithImpl<$Res,
        $Val extends OneTouchCartResponse>
    implements $OneTouchCartResponseCopyWith<$Res> {
  _$OneTouchCartResponseCopyWithImpl(this._value, this._then);

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
              as OneTouchData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OneTouchDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $OneTouchDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OneTouchCartResponseCopyWith<$Res>
    implements $OneTouchCartResponseCopyWith<$Res> {
  factory _$$_OneTouchCartResponseCopyWith(_$_OneTouchCartResponse value,
          $Res Function(_$_OneTouchCartResponse) then) =
      __$$_OneTouchCartResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String message, OneTouchData? data});

  @override
  $OneTouchDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_OneTouchCartResponseCopyWithImpl<$Res>
    extends _$OneTouchCartResponseCopyWithImpl<$Res, _$_OneTouchCartResponse>
    implements _$$_OneTouchCartResponseCopyWith<$Res> {
  __$$_OneTouchCartResponseCopyWithImpl(_$_OneTouchCartResponse _value,
      $Res Function(_$_OneTouchCartResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_$_OneTouchCartResponse(
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
              as OneTouchData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OneTouchCartResponse implements _OneTouchCartResponse {
  _$_OneTouchCartResponse({required this.status, this.message = '', this.data});

  factory _$_OneTouchCartResponse.fromJson(Map<String, dynamic> json) =>
      _$$_OneTouchCartResponseFromJson(json);

  @override
  final int status;
  @override
  @JsonKey()
  final String message;
  @override
  final OneTouchData? data;

  @override
  String toString() {
    return 'OneTouchCartResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OneTouchCartResponse &&
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
  _$$_OneTouchCartResponseCopyWith<_$_OneTouchCartResponse> get copyWith =>
      __$$_OneTouchCartResponseCopyWithImpl<_$_OneTouchCartResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OneTouchCartResponseToJson(
      this,
    );
  }
}

abstract class _OneTouchCartResponse implements OneTouchCartResponse {
  factory _OneTouchCartResponse(
      {required final int status,
      final String message,
      final OneTouchData? data}) = _$_OneTouchCartResponse;

  factory _OneTouchCartResponse.fromJson(Map<String, dynamic> json) =
      _$_OneTouchCartResponse.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  OneTouchData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_OneTouchCartResponseCopyWith<_$_OneTouchCartResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
