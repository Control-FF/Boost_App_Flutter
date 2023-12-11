// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryProduct _$CategoryProductFromJson(Map<String, dynamic> json) {
  return _CategoryProduct.fromJson(json);
}

/// @nodoc
mixin _$CategoryProduct {
  String get it_id => throw _privateConstructorUsedError;
  String get it_name => throw _privateConstructorUsedError;
  int get it_cust_price => throw _privateConstructorUsedError;
  int get it_price => throw _privateConstructorUsedError;
  String get it_img1 => throw _privateConstructorUsedError;
  String get it_time => throw _privateConstructorUsedError;
  int? get it_sum_qty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryProductCopyWith<CategoryProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryProductCopyWith<$Res> {
  factory $CategoryProductCopyWith(
          CategoryProduct value, $Res Function(CategoryProduct) then) =
      _$CategoryProductCopyWithImpl<$Res, CategoryProduct>;
  @useResult
  $Res call(
      {String it_id,
      String it_name,
      int it_cust_price,
      int it_price,
      String it_img1,
      String it_time,
      int? it_sum_qty});
}

/// @nodoc
class _$CategoryProductCopyWithImpl<$Res, $Val extends CategoryProduct>
    implements $CategoryProductCopyWith<$Res> {
  _$CategoryProductCopyWithImpl(this._value, this._then);

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
    Object? it_sum_qty = freezed,
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
      it_sum_qty: freezed == it_sum_qty
          ? _value.it_sum_qty
          : it_sum_qty // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryProductCopyWith<$Res>
    implements $CategoryProductCopyWith<$Res> {
  factory _$$_CategoryProductCopyWith(
          _$_CategoryProduct value, $Res Function(_$_CategoryProduct) then) =
      __$$_CategoryProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String it_id,
      String it_name,
      int it_cust_price,
      int it_price,
      String it_img1,
      String it_time,
      int? it_sum_qty});
}

/// @nodoc
class __$$_CategoryProductCopyWithImpl<$Res>
    extends _$CategoryProductCopyWithImpl<$Res, _$_CategoryProduct>
    implements _$$_CategoryProductCopyWith<$Res> {
  __$$_CategoryProductCopyWithImpl(
      _$_CategoryProduct _value, $Res Function(_$_CategoryProduct) _then)
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
    Object? it_sum_qty = freezed,
  }) {
    return _then(_$_CategoryProduct(
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
      it_sum_qty: freezed == it_sum_qty
          ? _value.it_sum_qty
          : it_sum_qty // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryProduct implements _CategoryProduct {
  _$_CategoryProduct(
      {this.it_id = '',
      this.it_name = '',
      this.it_cust_price = 0,
      this.it_price = 0,
      this.it_img1 = '',
      this.it_time = '',
      this.it_sum_qty = 0});

  factory _$_CategoryProduct.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryProductFromJson(json);

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
  final int? it_sum_qty;

  @override
  String toString() {
    return 'CategoryProduct(it_id: $it_id, it_name: $it_name, it_cust_price: $it_cust_price, it_price: $it_price, it_img1: $it_img1, it_time: $it_time, it_sum_qty: $it_sum_qty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryProduct &&
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
  _$$_CategoryProductCopyWith<_$_CategoryProduct> get copyWith =>
      __$$_CategoryProductCopyWithImpl<_$_CategoryProduct>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryProductToJson(
      this,
    );
  }
}

abstract class _CategoryProduct implements CategoryProduct {
  factory _CategoryProduct(
      {final String it_id,
      final String it_name,
      final int it_cust_price,
      final int it_price,
      final String it_img1,
      final String it_time,
      final int? it_sum_qty}) = _$_CategoryProduct;

  factory _CategoryProduct.fromJson(Map<String, dynamic> json) =
      _$_CategoryProduct.fromJson;

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
  int? get it_sum_qty;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryProductCopyWith<_$_CategoryProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryProductResponse _$CategoryProductResponseFromJson(
    Map<String, dynamic> json) {
  return _CategoryProductResponse.fromJson(json);
}

/// @nodoc
mixin _$CategoryProductResponse {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<CategoryProduct>? get items => throw _privateConstructorUsedError;
  dynamic get total_cnt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryProductResponseCopyWith<CategoryProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryProductResponseCopyWith<$Res> {
  factory $CategoryProductResponseCopyWith(CategoryProductResponse value,
          $Res Function(CategoryProductResponse) then) =
      _$CategoryProductResponseCopyWithImpl<$Res, CategoryProductResponse>;
  @useResult
  $Res call(
      {int status,
      String message,
      @JsonKey(name: 'data') List<CategoryProduct>? items,
      dynamic total_cnt});
}

/// @nodoc
class _$CategoryProductResponseCopyWithImpl<$Res,
        $Val extends CategoryProductResponse>
    implements $CategoryProductResponseCopyWith<$Res> {
  _$CategoryProductResponseCopyWithImpl(this._value, this._then);

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
    Object? total_cnt = freezed,
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
              as List<CategoryProduct>?,
      total_cnt: freezed == total_cnt
          ? _value.total_cnt
          : total_cnt // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryProductResponseCopyWith<$Res>
    implements $CategoryProductResponseCopyWith<$Res> {
  factory _$$_CategoryProductResponseCopyWith(_$_CategoryProductResponse value,
          $Res Function(_$_CategoryProductResponse) then) =
      __$$_CategoryProductResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status,
      String message,
      @JsonKey(name: 'data') List<CategoryProduct>? items,
      dynamic total_cnt});
}

/// @nodoc
class __$$_CategoryProductResponseCopyWithImpl<$Res>
    extends _$CategoryProductResponseCopyWithImpl<$Res,
        _$_CategoryProductResponse>
    implements _$$_CategoryProductResponseCopyWith<$Res> {
  __$$_CategoryProductResponseCopyWithImpl(_$_CategoryProductResponse _value,
      $Res Function(_$_CategoryProductResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? items = freezed,
    Object? total_cnt = freezed,
  }) {
    return _then(_$_CategoryProductResponse(
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
              as List<CategoryProduct>?,
      total_cnt: freezed == total_cnt ? _value.total_cnt! : total_cnt,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryProductResponse implements _CategoryProductResponse {
  _$_CategoryProductResponse(
      {required this.status,
      this.message = '',
      @JsonKey(name: 'data') final List<CategoryProduct>? items = const [],
      this.total_cnt = 0})
      : _items = items;

  factory _$_CategoryProductResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryProductResponseFromJson(json);

  @override
  final int status;
  @override
  @JsonKey()
  final String message;
  final List<CategoryProduct>? _items;
  @override
  @JsonKey(name: 'data')
  List<CategoryProduct>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final dynamic total_cnt;

  @override
  String toString() {
    return 'CategoryProductResponse(status: $status, message: $message, items: $items, total_cnt: $total_cnt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryProductResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality().equals(other.total_cnt, total_cnt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      message,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(total_cnt));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryProductResponseCopyWith<_$_CategoryProductResponse>
      get copyWith =>
          __$$_CategoryProductResponseCopyWithImpl<_$_CategoryProductResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryProductResponseToJson(
      this,
    );
  }
}

abstract class _CategoryProductResponse implements CategoryProductResponse {
  factory _CategoryProductResponse(
      {required final int status,
      final String message,
      @JsonKey(name: 'data') final List<CategoryProduct>? items,
      final dynamic total_cnt}) = _$_CategoryProductResponse;

  factory _CategoryProductResponse.fromJson(Map<String, dynamic> json) =
      _$_CategoryProductResponse.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  @JsonKey(name: 'data')
  List<CategoryProduct>? get items;
  @override
  dynamic get total_cnt;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryProductResponseCopyWith<_$_CategoryProductResponse>
      get copyWith => throw _privateConstructorUsedError;
}
