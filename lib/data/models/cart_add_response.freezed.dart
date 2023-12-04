// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_add_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartAddResponse _$CartAddResponseFromJson(Map<String, dynamic> json) {
  return _CartAddResponse.fromJson(json);
}

/// @nodoc
mixin _$CartAddResponse {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'cart_id')
  List<int>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartAddResponseCopyWith<CartAddResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartAddResponseCopyWith<$Res> {
  factory $CartAddResponseCopyWith(
          CartAddResponse value, $Res Function(CartAddResponse) then) =
      _$CartAddResponseCopyWithImpl<$Res, CartAddResponse>;
  @useResult
  $Res call(
      {int status, String message, @JsonKey(name: 'cart_id') List<int>? items});
}

/// @nodoc
class _$CartAddResponseCopyWithImpl<$Res, $Val extends CartAddResponse>
    implements $CartAddResponseCopyWith<$Res> {
  _$CartAddResponseCopyWithImpl(this._value, this._then);

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
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartAddResponseCopyWith<$Res>
    implements $CartAddResponseCopyWith<$Res> {
  factory _$$_CartAddResponseCopyWith(
          _$_CartAddResponse value, $Res Function(_$_CartAddResponse) then) =
      __$$_CartAddResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status, String message, @JsonKey(name: 'cart_id') List<int>? items});
}

/// @nodoc
class __$$_CartAddResponseCopyWithImpl<$Res>
    extends _$CartAddResponseCopyWithImpl<$Res, _$_CartAddResponse>
    implements _$$_CartAddResponseCopyWith<$Res> {
  __$$_CartAddResponseCopyWithImpl(
      _$_CartAddResponse _value, $Res Function(_$_CartAddResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? items = freezed,
  }) {
    return _then(_$_CartAddResponse(
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
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartAddResponse implements _CartAddResponse {
  _$_CartAddResponse(
      {required this.status,
      this.message = '',
      @JsonKey(name: 'cart_id') final List<int>? items = const []})
      : _items = items;

  factory _$_CartAddResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CartAddResponseFromJson(json);

  @override
  final int status;
  @override
  @JsonKey()
  final String message;
  final List<int>? _items;
  @override
  @JsonKey(name: 'cart_id')
  List<int>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CartAddResponse(status: $status, message: $message, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartAddResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartAddResponseCopyWith<_$_CartAddResponse> get copyWith =>
      __$$_CartAddResponseCopyWithImpl<_$_CartAddResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartAddResponseToJson(
      this,
    );
  }
}

abstract class _CartAddResponse implements CartAddResponse {
  factory _CartAddResponse(
      {required final int status,
      final String message,
      @JsonKey(name: 'cart_id') final List<int>? items}) = _$_CartAddResponse;

  factory _CartAddResponse.fromJson(Map<String, dynamic> json) =
      _$_CartAddResponse.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  @JsonKey(name: 'cart_id')
  List<int>? get items;
  @override
  @JsonKey(ignore: true)
  _$$_CartAddResponseCopyWith<_$_CartAddResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
