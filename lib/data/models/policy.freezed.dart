// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'policy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Policy _$PolicyFromJson(Map<String, dynamic> json) {
  return _Policy.fromJson(json);
}

/// @nodoc
mixin _$Policy {
  String get co_subject => throw _privateConstructorUsedError;
  String get co_content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PolicyCopyWith<Policy> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PolicyCopyWith<$Res> {
  factory $PolicyCopyWith(Policy value, $Res Function(Policy) then) =
      _$PolicyCopyWithImpl<$Res, Policy>;
  @useResult
  $Res call({String co_subject, String co_content});
}

/// @nodoc
class _$PolicyCopyWithImpl<$Res, $Val extends Policy>
    implements $PolicyCopyWith<$Res> {
  _$PolicyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? co_subject = null,
    Object? co_content = null,
  }) {
    return _then(_value.copyWith(
      co_subject: null == co_subject
          ? _value.co_subject
          : co_subject // ignore: cast_nullable_to_non_nullable
              as String,
      co_content: null == co_content
          ? _value.co_content
          : co_content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PolicyImplCopyWith<$Res> implements $PolicyCopyWith<$Res> {
  factory _$$PolicyImplCopyWith(
          _$PolicyImpl value, $Res Function(_$PolicyImpl) then) =
      __$$PolicyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String co_subject, String co_content});
}

/// @nodoc
class __$$PolicyImplCopyWithImpl<$Res>
    extends _$PolicyCopyWithImpl<$Res, _$PolicyImpl>
    implements _$$PolicyImplCopyWith<$Res> {
  __$$PolicyImplCopyWithImpl(
      _$PolicyImpl _value, $Res Function(_$PolicyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? co_subject = null,
    Object? co_content = null,
  }) {
    return _then(_$PolicyImpl(
      co_subject: null == co_subject
          ? _value.co_subject
          : co_subject // ignore: cast_nullable_to_non_nullable
              as String,
      co_content: null == co_content
          ? _value.co_content
          : co_content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PolicyImpl implements _Policy {
  _$PolicyImpl({this.co_subject = '', this.co_content = ''});

  factory _$PolicyImpl.fromJson(Map<String, dynamic> json) =>
      _$$PolicyImplFromJson(json);

  @override
  @JsonKey()
  final String co_subject;
  @override
  @JsonKey()
  final String co_content;

  @override
  String toString() {
    return 'Policy(co_subject: $co_subject, co_content: $co_content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PolicyImpl &&
            (identical(other.co_subject, co_subject) ||
                other.co_subject == co_subject) &&
            (identical(other.co_content, co_content) ||
                other.co_content == co_content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, co_subject, co_content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PolicyImplCopyWith<_$PolicyImpl> get copyWith =>
      __$$PolicyImplCopyWithImpl<_$PolicyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PolicyImplToJson(
      this,
    );
  }
}

abstract class _Policy implements Policy {
  factory _Policy({final String co_subject, final String co_content}) =
      _$PolicyImpl;

  factory _Policy.fromJson(Map<String, dynamic> json) = _$PolicyImpl.fromJson;

  @override
  String get co_subject;
  @override
  String get co_content;
  @override
  @JsonKey(ignore: true)
  _$$PolicyImplCopyWith<_$PolicyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PolicyResponse _$PolicyResponseFromJson(Map<String, dynamic> json) {
  return _PolicyResponse.fromJson(json);
}

/// @nodoc
mixin _$PolicyResponse {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<Policy>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PolicyResponseCopyWith<PolicyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PolicyResponseCopyWith<$Res> {
  factory $PolicyResponseCopyWith(
          PolicyResponse value, $Res Function(PolicyResponse) then) =
      _$PolicyResponseCopyWithImpl<$Res, PolicyResponse>;
  @useResult
  $Res call(
      {int status, String message, @JsonKey(name: 'data') List<Policy>? items});
}

/// @nodoc
class _$PolicyResponseCopyWithImpl<$Res, $Val extends PolicyResponse>
    implements $PolicyResponseCopyWith<$Res> {
  _$PolicyResponseCopyWithImpl(this._value, this._then);

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
              as List<Policy>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PolicyResponseImplCopyWith<$Res>
    implements $PolicyResponseCopyWith<$Res> {
  factory _$$PolicyResponseImplCopyWith(_$PolicyResponseImpl value,
          $Res Function(_$PolicyResponseImpl) then) =
      __$$PolicyResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status, String message, @JsonKey(name: 'data') List<Policy>? items});
}

/// @nodoc
class __$$PolicyResponseImplCopyWithImpl<$Res>
    extends _$PolicyResponseCopyWithImpl<$Res, _$PolicyResponseImpl>
    implements _$$PolicyResponseImplCopyWith<$Res> {
  __$$PolicyResponseImplCopyWithImpl(
      _$PolicyResponseImpl _value, $Res Function(_$PolicyResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? items = freezed,
  }) {
    return _then(_$PolicyResponseImpl(
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
              as List<Policy>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PolicyResponseImpl implements _PolicyResponse {
  _$PolicyResponseImpl(
      {required this.status,
      this.message = '',
      @JsonKey(name: 'data') final List<Policy>? items = const []})
      : _items = items;

  factory _$PolicyResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PolicyResponseImplFromJson(json);

  @override
  final int status;
  @override
  @JsonKey()
  final String message;
  final List<Policy>? _items;
  @override
  @JsonKey(name: 'data')
  List<Policy>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PolicyResponse(status: $status, message: $message, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PolicyResponseImpl &&
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
  _$$PolicyResponseImplCopyWith<_$PolicyResponseImpl> get copyWith =>
      __$$PolicyResponseImplCopyWithImpl<_$PolicyResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PolicyResponseImplToJson(
      this,
    );
  }
}

abstract class _PolicyResponse implements PolicyResponse {
  factory _PolicyResponse(
      {required final int status,
      final String message,
      @JsonKey(name: 'data') final List<Policy>? items}) = _$PolicyResponseImpl;

  factory _PolicyResponse.fromJson(Map<String, dynamic> json) =
      _$PolicyResponseImpl.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  @JsonKey(name: 'data')
  List<Policy>? get items;
  @override
  @JsonKey(ignore: true)
  _$$PolicyResponseImplCopyWith<_$PolicyResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
