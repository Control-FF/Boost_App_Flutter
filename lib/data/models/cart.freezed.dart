// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Cart _$CartFromJson(Map<String, dynamic> json) {
  return _Cart.fromJson(json);
}

/// @nodoc
mixin _$Cart {
  int? get item_count => throw _privateConstructorUsedError;
  @JsonKey(name: 'cart_items')
  List<CartItem>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartCopyWith<Cart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartCopyWith<$Res> {
  factory $CartCopyWith(Cart value, $Res Function(Cart) then) =
      _$CartCopyWithImpl<$Res, Cart>;
  @useResult
  $Res call(
      {int? item_count, @JsonKey(name: 'cart_items') List<CartItem>? items});
}

/// @nodoc
class _$CartCopyWithImpl<$Res, $Val extends Cart>
    implements $CartCopyWith<$Res> {
  _$CartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item_count = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      item_count: freezed == item_count
          ? _value.item_count
          : item_count // ignore: cast_nullable_to_non_nullable
              as int?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartCopyWith<$Res> implements $CartCopyWith<$Res> {
  factory _$$_CartCopyWith(_$_Cart value, $Res Function(_$_Cart) then) =
      __$$_CartCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? item_count, @JsonKey(name: 'cart_items') List<CartItem>? items});
}

/// @nodoc
class __$$_CartCopyWithImpl<$Res> extends _$CartCopyWithImpl<$Res, _$_Cart>
    implements _$$_CartCopyWith<$Res> {
  __$$_CartCopyWithImpl(_$_Cart _value, $Res Function(_$_Cart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item_count = freezed,
    Object? items = freezed,
  }) {
    return _then(_$_Cart(
      item_count: freezed == item_count
          ? _value.item_count
          : item_count // ignore: cast_nullable_to_non_nullable
              as int?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Cart implements _Cart {
  _$_Cart(
      {this.item_count = 0,
      @JsonKey(name: 'cart_items') final List<CartItem>? items = const []})
      : _items = items;

  factory _$_Cart.fromJson(Map<String, dynamic> json) => _$$_CartFromJson(json);

  @override
  @JsonKey()
  final int? item_count;
  final List<CartItem>? _items;
  @override
  @JsonKey(name: 'cart_items')
  List<CartItem>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Cart(item_count: $item_count, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cart &&
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
  _$$_CartCopyWith<_$_Cart> get copyWith =>
      __$$_CartCopyWithImpl<_$_Cart>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartToJson(
      this,
    );
  }
}

abstract class _Cart implements Cart {
  factory _Cart(
      {final int? item_count,
      @JsonKey(name: 'cart_items') final List<CartItem>? items}) = _$_Cart;

  factory _Cart.fromJson(Map<String, dynamic> json) = _$_Cart.fromJson;

  @override
  int? get item_count;
  @override
  @JsonKey(name: 'cart_items')
  List<CartItem>? get items;
  @override
  @JsonKey(ignore: true)
  _$$_CartCopyWith<_$_Cart> get copyWith => throw _privateConstructorUsedError;
}

CartItem _$CartItemFromJson(Map<String, dynamic> json) {
  return _CartItem.fromJson(json);
}

/// @nodoc
mixin _$CartItem {
  int get ct_id => throw _privateConstructorUsedError;
  int get od_id => throw _privateConstructorUsedError;
  String get it_id => throw _privateConstructorUsedError;
  String get it_name => throw _privateConstructorUsedError;
  int get it_cust_price => throw _privateConstructorUsedError;
  int get ct_price => throw _privateConstructorUsedError;
  int get ct_qty => throw _privateConstructorUsedError;
  String get ct_option => throw _privateConstructorUsedError;
  int get it_stock_qty => throw _privateConstructorUsedError;
  String get img => throw _privateConstructorUsedError;
  int get it_sc_type => throw _privateConstructorUsedError;
  int get it_sc_price => throw _privateConstructorUsedError;
  int get it_sc_qty => throw _privateConstructorUsedError;
  int get sendcost => throw _privateConstructorUsedError;
  bool get outOfStock => throw _privateConstructorUsedError;
  String get stockStatus => throw _privateConstructorUsedError;
  bool get isCheck => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartItemCopyWith<CartItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemCopyWith<$Res> {
  factory $CartItemCopyWith(CartItem value, $Res Function(CartItem) then) =
      _$CartItemCopyWithImpl<$Res, CartItem>;
  @useResult
  $Res call(
      {int ct_id,
      int od_id,
      String it_id,
      String it_name,
      int it_cust_price,
      int ct_price,
      int ct_qty,
      String ct_option,
      int it_stock_qty,
      String img,
      int it_sc_type,
      int it_sc_price,
      int it_sc_qty,
      int sendcost,
      bool outOfStock,
      String stockStatus,
      bool isCheck});
}

/// @nodoc
class _$CartItemCopyWithImpl<$Res, $Val extends CartItem>
    implements $CartItemCopyWith<$Res> {
  _$CartItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ct_id = null,
    Object? od_id = null,
    Object? it_id = null,
    Object? it_name = null,
    Object? it_cust_price = null,
    Object? ct_price = null,
    Object? ct_qty = null,
    Object? ct_option = null,
    Object? it_stock_qty = null,
    Object? img = null,
    Object? it_sc_type = null,
    Object? it_sc_price = null,
    Object? it_sc_qty = null,
    Object? sendcost = null,
    Object? outOfStock = null,
    Object? stockStatus = null,
    Object? isCheck = null,
  }) {
    return _then(_value.copyWith(
      ct_id: null == ct_id
          ? _value.ct_id
          : ct_id // ignore: cast_nullable_to_non_nullable
              as int,
      od_id: null == od_id
          ? _value.od_id
          : od_id // ignore: cast_nullable_to_non_nullable
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
      ct_price: null == ct_price
          ? _value.ct_price
          : ct_price // ignore: cast_nullable_to_non_nullable
              as int,
      ct_qty: null == ct_qty
          ? _value.ct_qty
          : ct_qty // ignore: cast_nullable_to_non_nullable
              as int,
      ct_option: null == ct_option
          ? _value.ct_option
          : ct_option // ignore: cast_nullable_to_non_nullable
              as String,
      it_stock_qty: null == it_stock_qty
          ? _value.it_stock_qty
          : it_stock_qty // ignore: cast_nullable_to_non_nullable
              as int,
      img: null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      it_sc_type: null == it_sc_type
          ? _value.it_sc_type
          : it_sc_type // ignore: cast_nullable_to_non_nullable
              as int,
      it_sc_price: null == it_sc_price
          ? _value.it_sc_price
          : it_sc_price // ignore: cast_nullable_to_non_nullable
              as int,
      it_sc_qty: null == it_sc_qty
          ? _value.it_sc_qty
          : it_sc_qty // ignore: cast_nullable_to_non_nullable
              as int,
      sendcost: null == sendcost
          ? _value.sendcost
          : sendcost // ignore: cast_nullable_to_non_nullable
              as int,
      outOfStock: null == outOfStock
          ? _value.outOfStock
          : outOfStock // ignore: cast_nullable_to_non_nullable
              as bool,
      stockStatus: null == stockStatus
          ? _value.stockStatus
          : stockStatus // ignore: cast_nullable_to_non_nullable
              as String,
      isCheck: null == isCheck
          ? _value.isCheck
          : isCheck // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartItemCopyWith<$Res> implements $CartItemCopyWith<$Res> {
  factory _$$_CartItemCopyWith(
          _$_CartItem value, $Res Function(_$_CartItem) then) =
      __$$_CartItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int ct_id,
      int od_id,
      String it_id,
      String it_name,
      int it_cust_price,
      int ct_price,
      int ct_qty,
      String ct_option,
      int it_stock_qty,
      String img,
      int it_sc_type,
      int it_sc_price,
      int it_sc_qty,
      int sendcost,
      bool outOfStock,
      String stockStatus,
      bool isCheck});
}

/// @nodoc
class __$$_CartItemCopyWithImpl<$Res>
    extends _$CartItemCopyWithImpl<$Res, _$_CartItem>
    implements _$$_CartItemCopyWith<$Res> {
  __$$_CartItemCopyWithImpl(
      _$_CartItem _value, $Res Function(_$_CartItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ct_id = null,
    Object? od_id = null,
    Object? it_id = null,
    Object? it_name = null,
    Object? it_cust_price = null,
    Object? ct_price = null,
    Object? ct_qty = null,
    Object? ct_option = null,
    Object? it_stock_qty = null,
    Object? img = null,
    Object? it_sc_type = null,
    Object? it_sc_price = null,
    Object? it_sc_qty = null,
    Object? sendcost = null,
    Object? outOfStock = null,
    Object? stockStatus = null,
    Object? isCheck = null,
  }) {
    return _then(_$_CartItem(
      ct_id: null == ct_id
          ? _value.ct_id
          : ct_id // ignore: cast_nullable_to_non_nullable
              as int,
      od_id: null == od_id
          ? _value.od_id
          : od_id // ignore: cast_nullable_to_non_nullable
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
      ct_price: null == ct_price
          ? _value.ct_price
          : ct_price // ignore: cast_nullable_to_non_nullable
              as int,
      ct_qty: null == ct_qty
          ? _value.ct_qty
          : ct_qty // ignore: cast_nullable_to_non_nullable
              as int,
      ct_option: null == ct_option
          ? _value.ct_option
          : ct_option // ignore: cast_nullable_to_non_nullable
              as String,
      it_stock_qty: null == it_stock_qty
          ? _value.it_stock_qty
          : it_stock_qty // ignore: cast_nullable_to_non_nullable
              as int,
      img: null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      it_sc_type: null == it_sc_type
          ? _value.it_sc_type
          : it_sc_type // ignore: cast_nullable_to_non_nullable
              as int,
      it_sc_price: null == it_sc_price
          ? _value.it_sc_price
          : it_sc_price // ignore: cast_nullable_to_non_nullable
              as int,
      it_sc_qty: null == it_sc_qty
          ? _value.it_sc_qty
          : it_sc_qty // ignore: cast_nullable_to_non_nullable
              as int,
      sendcost: null == sendcost
          ? _value.sendcost
          : sendcost // ignore: cast_nullable_to_non_nullable
              as int,
      outOfStock: null == outOfStock
          ? _value.outOfStock
          : outOfStock // ignore: cast_nullable_to_non_nullable
              as bool,
      stockStatus: null == stockStatus
          ? _value.stockStatus
          : stockStatus // ignore: cast_nullable_to_non_nullable
              as String,
      isCheck: null == isCheck
          ? _value.isCheck
          : isCheck // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartItem implements _CartItem {
  _$_CartItem(
      {this.ct_id = 0,
      this.od_id = 0,
      this.it_id = '',
      this.it_name = '',
      this.it_cust_price = 0,
      this.ct_price = 0,
      this.ct_qty = 0,
      this.ct_option = '',
      this.it_stock_qty = 0,
      this.img = '',
      this.it_sc_type = 0,
      this.it_sc_price = 0,
      this.it_sc_qty = 0,
      this.sendcost = 0,
      this.outOfStock = false,
      this.stockStatus = '',
      this.isCheck = true});

  factory _$_CartItem.fromJson(Map<String, dynamic> json) =>
      _$$_CartItemFromJson(json);

  @override
  @JsonKey()
  final int ct_id;
  @override
  @JsonKey()
  final int od_id;
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
  final int ct_price;
  @override
  @JsonKey()
  final int ct_qty;
  @override
  @JsonKey()
  final String ct_option;
  @override
  @JsonKey()
  final int it_stock_qty;
  @override
  @JsonKey()
  final String img;
  @override
  @JsonKey()
  final int it_sc_type;
  @override
  @JsonKey()
  final int it_sc_price;
  @override
  @JsonKey()
  final int it_sc_qty;
  @override
  @JsonKey()
  final int sendcost;
  @override
  @JsonKey()
  final bool outOfStock;
  @override
  @JsonKey()
  final String stockStatus;
  @override
  @JsonKey()
  final bool isCheck;

  @override
  String toString() {
    return 'CartItem(ct_id: $ct_id, od_id: $od_id, it_id: $it_id, it_name: $it_name, it_cust_price: $it_cust_price, ct_price: $ct_price, ct_qty: $ct_qty, ct_option: $ct_option, it_stock_qty: $it_stock_qty, img: $img, it_sc_type: $it_sc_type, it_sc_price: $it_sc_price, it_sc_qty: $it_sc_qty, sendcost: $sendcost, outOfStock: $outOfStock, stockStatus: $stockStatus, isCheck: $isCheck)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartItem &&
            (identical(other.ct_id, ct_id) || other.ct_id == ct_id) &&
            (identical(other.od_id, od_id) || other.od_id == od_id) &&
            (identical(other.it_id, it_id) || other.it_id == it_id) &&
            (identical(other.it_name, it_name) || other.it_name == it_name) &&
            (identical(other.it_cust_price, it_cust_price) ||
                other.it_cust_price == it_cust_price) &&
            (identical(other.ct_price, ct_price) ||
                other.ct_price == ct_price) &&
            (identical(other.ct_qty, ct_qty) || other.ct_qty == ct_qty) &&
            (identical(other.ct_option, ct_option) ||
                other.ct_option == ct_option) &&
            (identical(other.it_stock_qty, it_stock_qty) ||
                other.it_stock_qty == it_stock_qty) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.it_sc_type, it_sc_type) ||
                other.it_sc_type == it_sc_type) &&
            (identical(other.it_sc_price, it_sc_price) ||
                other.it_sc_price == it_sc_price) &&
            (identical(other.it_sc_qty, it_sc_qty) ||
                other.it_sc_qty == it_sc_qty) &&
            (identical(other.sendcost, sendcost) ||
                other.sendcost == sendcost) &&
            (identical(other.outOfStock, outOfStock) ||
                other.outOfStock == outOfStock) &&
            (identical(other.stockStatus, stockStatus) ||
                other.stockStatus == stockStatus) &&
            (identical(other.isCheck, isCheck) || other.isCheck == isCheck));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      ct_id,
      od_id,
      it_id,
      it_name,
      it_cust_price,
      ct_price,
      ct_qty,
      ct_option,
      it_stock_qty,
      img,
      it_sc_type,
      it_sc_price,
      it_sc_qty,
      sendcost,
      outOfStock,
      stockStatus,
      isCheck);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartItemCopyWith<_$_CartItem> get copyWith =>
      __$$_CartItemCopyWithImpl<_$_CartItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartItemToJson(
      this,
    );
  }
}

abstract class _CartItem implements CartItem {
  factory _CartItem(
      {final int ct_id,
      final int od_id,
      final String it_id,
      final String it_name,
      final int it_cust_price,
      final int ct_price,
      final int ct_qty,
      final String ct_option,
      final int it_stock_qty,
      final String img,
      final int it_sc_type,
      final int it_sc_price,
      final int it_sc_qty,
      final int sendcost,
      final bool outOfStock,
      final String stockStatus,
      final bool isCheck}) = _$_CartItem;

  factory _CartItem.fromJson(Map<String, dynamic> json) = _$_CartItem.fromJson;

  @override
  int get ct_id;
  @override
  int get od_id;
  @override
  String get it_id;
  @override
  String get it_name;
  @override
  int get it_cust_price;
  @override
  int get ct_price;
  @override
  int get ct_qty;
  @override
  String get ct_option;
  @override
  int get it_stock_qty;
  @override
  String get img;
  @override
  int get it_sc_type;
  @override
  int get it_sc_price;
  @override
  int get it_sc_qty;
  @override
  int get sendcost;
  @override
  bool get outOfStock;
  @override
  String get stockStatus;
  @override
  bool get isCheck;
  @override
  @JsonKey(ignore: true)
  _$$_CartItemCopyWith<_$_CartItem> get copyWith =>
      throw _privateConstructorUsedError;
}

CartResponse _$CartResponseFromJson(Map<String, dynamic> json) {
  return _CartResponse.fromJson(json);
}

/// @nodoc
mixin _$CartResponse {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  Cart? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartResponseCopyWith<CartResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartResponseCopyWith<$Res> {
  factory $CartResponseCopyWith(
          CartResponse value, $Res Function(CartResponse) then) =
      _$CartResponseCopyWithImpl<$Res, CartResponse>;
  @useResult
  $Res call({int status, String message, Cart? data});

  $CartCopyWith<$Res>? get data;
}

/// @nodoc
class _$CartResponseCopyWithImpl<$Res, $Val extends CartResponse>
    implements $CartResponseCopyWith<$Res> {
  _$CartResponseCopyWithImpl(this._value, this._then);

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
              as Cart?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CartCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CartCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CartResponseCopyWith<$Res>
    implements $CartResponseCopyWith<$Res> {
  factory _$$_CartResponseCopyWith(
          _$_CartResponse value, $Res Function(_$_CartResponse) then) =
      __$$_CartResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String message, Cart? data});

  @override
  $CartCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_CartResponseCopyWithImpl<$Res>
    extends _$CartResponseCopyWithImpl<$Res, _$_CartResponse>
    implements _$$_CartResponseCopyWith<$Res> {
  __$$_CartResponseCopyWithImpl(
      _$_CartResponse _value, $Res Function(_$_CartResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_$_CartResponse(
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
              as Cart?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartResponse implements _CartResponse {
  _$_CartResponse({required this.status, this.message = '', this.data});

  factory _$_CartResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CartResponseFromJson(json);

  @override
  final int status;
  @override
  @JsonKey()
  final String message;
  @override
  final Cart? data;

  @override
  String toString() {
    return 'CartResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartResponse &&
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
  _$$_CartResponseCopyWith<_$_CartResponse> get copyWith =>
      __$$_CartResponseCopyWithImpl<_$_CartResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartResponseToJson(
      this,
    );
  }
}

abstract class _CartResponse implements CartResponse {
  factory _CartResponse(
      {required final int status,
      final String message,
      final Cart? data}) = _$_CartResponse;

  factory _CartResponse.fromJson(Map<String, dynamic> json) =
      _$_CartResponse.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  Cart? get data;
  @override
  @JsonKey(ignore: true)
  _$$_CartResponseCopyWith<_$_CartResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
