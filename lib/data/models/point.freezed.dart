// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Point _$PointFromJson(Map<String, dynamic> json) {
  return _Point.fromJson(json);
}

/// @nodoc
mixin _$Point {
  String get subject => throw _privateConstructorUsedError;
  int get point => throw _privateConstructorUsedError;
  String get reg_time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PointCopyWith<Point> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointCopyWith<$Res> {
  factory $PointCopyWith(Point value, $Res Function(Point) then) =
      _$PointCopyWithImpl<$Res, Point>;
  @useResult
  $Res call({String subject, int point, String reg_time});
}

/// @nodoc
class _$PointCopyWithImpl<$Res, $Val extends Point>
    implements $PointCopyWith<$Res> {
  _$PointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = null,
    Object? point = null,
    Object? reg_time = null,
  }) {
    return _then(_value.copyWith(
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int,
      reg_time: null == reg_time
          ? _value.reg_time
          : reg_time // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PointImplCopyWith<$Res> implements $PointCopyWith<$Res> {
  factory _$$PointImplCopyWith(
          _$PointImpl value, $Res Function(_$PointImpl) then) =
      __$$PointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String subject, int point, String reg_time});
}

/// @nodoc
class __$$PointImplCopyWithImpl<$Res>
    extends _$PointCopyWithImpl<$Res, _$PointImpl>
    implements _$$PointImplCopyWith<$Res> {
  __$$PointImplCopyWithImpl(
      _$PointImpl _value, $Res Function(_$PointImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = null,
    Object? point = null,
    Object? reg_time = null,
  }) {
    return _then(_$PointImpl(
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int,
      reg_time: null == reg_time
          ? _value.reg_time
          : reg_time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PointImpl implements _Point {
  _$PointImpl({this.subject = '', this.point = 0, this.reg_time = ''});

  factory _$PointImpl.fromJson(Map<String, dynamic> json) =>
      _$$PointImplFromJson(json);

  @override
  @JsonKey()
  final String subject;
  @override
  @JsonKey()
  final int point;
  @override
  @JsonKey()
  final String reg_time;

  @override
  String toString() {
    return 'Point(subject: $subject, point: $point, reg_time: $reg_time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PointImpl &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.point, point) || other.point == point) &&
            (identical(other.reg_time, reg_time) ||
                other.reg_time == reg_time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, subject, point, reg_time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PointImplCopyWith<_$PointImpl> get copyWith =>
      __$$PointImplCopyWithImpl<_$PointImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PointImplToJson(
      this,
    );
  }
}

abstract class _Point implements Point {
  factory _Point(
      {final String subject,
      final int point,
      final String reg_time}) = _$PointImpl;

  factory _Point.fromJson(Map<String, dynamic> json) = _$PointImpl.fromJson;

  @override
  String get subject;
  @override
  int get point;
  @override
  String get reg_time;
  @override
  @JsonKey(ignore: true)
  _$$PointImplCopyWith<_$PointImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PointResponse _$PointResponseFromJson(Map<String, dynamic> json) {
  return _PointResponse.fromJson(json);
}

/// @nodoc
mixin _$PointResponse {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  int get point => throw _privateConstructorUsedError;
  @JsonKey(name: 'list')
  List<Point>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PointResponseCopyWith<PointResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointResponseCopyWith<$Res> {
  factory $PointResponseCopyWith(
          PointResponse value, $Res Function(PointResponse) then) =
      _$PointResponseCopyWithImpl<$Res, PointResponse>;
  @useResult
  $Res call(
      {int status,
      String message,
      int point,
      @JsonKey(name: 'list') List<Point>? items});
}

/// @nodoc
class _$PointResponseCopyWithImpl<$Res, $Val extends PointResponse>
    implements $PointResponseCopyWith<$Res> {
  _$PointResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? point = null,
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
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Point>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PointResponseImplCopyWith<$Res>
    implements $PointResponseCopyWith<$Res> {
  factory _$$PointResponseImplCopyWith(
          _$PointResponseImpl value, $Res Function(_$PointResponseImpl) then) =
      __$$PointResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status,
      String message,
      int point,
      @JsonKey(name: 'list') List<Point>? items});
}

/// @nodoc
class __$$PointResponseImplCopyWithImpl<$Res>
    extends _$PointResponseCopyWithImpl<$Res, _$PointResponseImpl>
    implements _$$PointResponseImplCopyWith<$Res> {
  __$$PointResponseImplCopyWithImpl(
      _$PointResponseImpl _value, $Res Function(_$PointResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? point = null,
    Object? items = freezed,
  }) {
    return _then(_$PointResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Point>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PointResponseImpl implements _PointResponse {
  _$PointResponseImpl(
      {required this.status,
      this.message = '',
      this.point = 0,
      @JsonKey(name: 'list') final List<Point>? items = const []})
      : _items = items;

  factory _$PointResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PointResponseImplFromJson(json);

  @override
  final int status;
  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final int point;
  final List<Point>? _items;
  @override
  @JsonKey(name: 'list')
  List<Point>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PointResponse(status: $status, message: $message, point: $point, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PointResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.point, point) || other.point == point) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, point,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PointResponseImplCopyWith<_$PointResponseImpl> get copyWith =>
      __$$PointResponseImplCopyWithImpl<_$PointResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PointResponseImplToJson(
      this,
    );
  }
}

abstract class _PointResponse implements PointResponse {
  factory _PointResponse(
      {required final int status,
      final String message,
      final int point,
      @JsonKey(name: 'list') final List<Point>? items}) = _$PointResponseImpl;

  factory _PointResponse.fromJson(Map<String, dynamic> json) =
      _$PointResponseImpl.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  int get point;
  @override
  @JsonKey(name: 'list')
  List<Point>? get items;
  @override
  @JsonKey(ignore: true)
  _$$PointResponseImplCopyWith<_$PointResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
