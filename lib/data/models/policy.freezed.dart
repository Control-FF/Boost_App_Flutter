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
abstract class _$$_PolicyCopyWith<$Res> implements $PolicyCopyWith<$Res> {
  factory _$$_PolicyCopyWith(_$_Policy value, $Res Function(_$_Policy) then) =
      __$$_PolicyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String co_subject, String co_content});
}

/// @nodoc
class __$$_PolicyCopyWithImpl<$Res>
    extends _$PolicyCopyWithImpl<$Res, _$_Policy>
    implements _$$_PolicyCopyWith<$Res> {
  __$$_PolicyCopyWithImpl(_$_Policy _value, $Res Function(_$_Policy) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? co_subject = null,
    Object? co_content = null,
  }) {
    return _then(_$_Policy(
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
class _$_Policy implements _Policy {
  _$_Policy({this.co_subject = '', this.co_content = ''});

  factory _$_Policy.fromJson(Map<String, dynamic> json) =>
      _$$_PolicyFromJson(json);

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
            other is _$_Policy &&
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
  _$$_PolicyCopyWith<_$_Policy> get copyWith =>
      __$$_PolicyCopyWithImpl<_$_Policy>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PolicyToJson(
      this,
    );
  }
}

abstract class _Policy implements Policy {
  factory _Policy({final String co_subject, final String co_content}) =
      _$_Policy;

  factory _Policy.fromJson(Map<String, dynamic> json) = _$_Policy.fromJson;

  @override
  String get co_subject;
  @override
  String get co_content;
  @override
  @JsonKey(ignore: true)
  _$$_PolicyCopyWith<_$_Policy> get copyWith =>
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
abstract class _$$_PolicyResponseCopyWith<$Res>
    implements $PolicyResponseCopyWith<$Res> {
  factory _$$_PolicyResponseCopyWith(
          _$_PolicyResponse value, $Res Function(_$_PolicyResponse) then) =
      __$$_PolicyResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status, String message, @JsonKey(name: 'data') List<Policy>? items});
}

/// @nodoc
class __$$_PolicyResponseCopyWithImpl<$Res>
    extends _$PolicyResponseCopyWithImpl<$Res, _$_PolicyResponse>
    implements _$$_PolicyResponseCopyWith<$Res> {
  __$$_PolicyResponseCopyWithImpl(
      _$_PolicyResponse _value, $Res Function(_$_PolicyResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? items = freezed,
  }) {
    return _then(_$_PolicyResponse(
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
class _$_PolicyResponse implements _PolicyResponse {
  _$_PolicyResponse(
      {required this.status,
      this.message = '',
      @JsonKey(name: 'data') final List<Policy>? items = const []})
      : _items = items;

  factory _$_PolicyResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PolicyResponseFromJson(json);

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
            other is _$_PolicyResponse &&
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
  _$$_PolicyResponseCopyWith<_$_PolicyResponse> get copyWith =>
      __$$_PolicyResponseCopyWithImpl<_$_PolicyResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PolicyResponseToJson(
      this,
    );
  }
}

abstract class _PolicyResponse implements PolicyResponse {
  factory _PolicyResponse(
      {required final int status,
      final String message,
      @JsonKey(name: 'data') final List<Policy>? items}) = _$_PolicyResponse;

  factory _PolicyResponse.fromJson(Map<String, dynamic> json) =
      _$_PolicyResponse.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  @JsonKey(name: 'data')
  List<Policy>? get items;
  @override
  @JsonKey(ignore: true)
  _$$_PolicyResponseCopyWith<_$_PolicyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
