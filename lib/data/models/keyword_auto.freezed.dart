// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keyword_auto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KeywordAutoResponse _$KeywordAutoResponseFromJson(Map<String, dynamic> json) {
  return _KeywordAutoResponse.fromJson(json);
}

/// @nodoc
mixin _$KeywordAutoResponse {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<String>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KeywordAutoResponseCopyWith<KeywordAutoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeywordAutoResponseCopyWith<$Res> {
  factory $KeywordAutoResponseCopyWith(
          KeywordAutoResponse value, $Res Function(KeywordAutoResponse) then) =
      _$KeywordAutoResponseCopyWithImpl<$Res, KeywordAutoResponse>;
  @useResult
  $Res call(
      {int status, String message, @JsonKey(name: 'data') List<String>? items});
}

/// @nodoc
class _$KeywordAutoResponseCopyWithImpl<$Res, $Val extends KeywordAutoResponse>
    implements $KeywordAutoResponseCopyWith<$Res> {
  _$KeywordAutoResponseCopyWithImpl(this._value, this._then);

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
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KeywordAutoResponseCopyWith<$Res>
    implements $KeywordAutoResponseCopyWith<$Res> {
  factory _$$_KeywordAutoResponseCopyWith(_$_KeywordAutoResponse value,
          $Res Function(_$_KeywordAutoResponse) then) =
      __$$_KeywordAutoResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status, String message, @JsonKey(name: 'data') List<String>? items});
}

/// @nodoc
class __$$_KeywordAutoResponseCopyWithImpl<$Res>
    extends _$KeywordAutoResponseCopyWithImpl<$Res, _$_KeywordAutoResponse>
    implements _$$_KeywordAutoResponseCopyWith<$Res> {
  __$$_KeywordAutoResponseCopyWithImpl(_$_KeywordAutoResponse _value,
      $Res Function(_$_KeywordAutoResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? items = freezed,
  }) {
    return _then(_$_KeywordAutoResponse(
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
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KeywordAutoResponse implements _KeywordAutoResponse {
  _$_KeywordAutoResponse(
      {required this.status,
      this.message = '',
      @JsonKey(name: 'data') final List<String>? items = const []})
      : _items = items;

  factory _$_KeywordAutoResponse.fromJson(Map<String, dynamic> json) =>
      _$$_KeywordAutoResponseFromJson(json);

  @override
  final int status;
  @override
  @JsonKey()
  final String message;
  final List<String>? _items;
  @override
  @JsonKey(name: 'data')
  List<String>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'KeywordAutoResponse(status: $status, message: $message, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KeywordAutoResponse &&
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
  _$$_KeywordAutoResponseCopyWith<_$_KeywordAutoResponse> get copyWith =>
      __$$_KeywordAutoResponseCopyWithImpl<_$_KeywordAutoResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KeywordAutoResponseToJson(
      this,
    );
  }
}

abstract class _KeywordAutoResponse implements KeywordAutoResponse {
  factory _KeywordAutoResponse(
          {required final int status,
          final String message,
          @JsonKey(name: 'data') final List<String>? items}) =
      _$_KeywordAutoResponse;

  factory _KeywordAutoResponse.fromJson(Map<String, dynamic> json) =
      _$_KeywordAutoResponse.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  @JsonKey(name: 'data')
  List<String>? get items;
  @override
  @JsonKey(ignore: true)
  _$$_KeywordAutoResponseCopyWith<_$_KeywordAutoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
