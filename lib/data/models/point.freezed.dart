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
abstract class _$$_PointCopyWith<$Res> implements $PointCopyWith<$Res> {
  factory _$$_PointCopyWith(_$_Point value, $Res Function(_$_Point) then) =
      __$$_PointCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String subject, int point, String reg_time});
}

/// @nodoc
class __$$_PointCopyWithImpl<$Res> extends _$PointCopyWithImpl<$Res, _$_Point>
    implements _$$_PointCopyWith<$Res> {
  __$$_PointCopyWithImpl(_$_Point _value, $Res Function(_$_Point) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = null,
    Object? point = null,
    Object? reg_time = null,
  }) {
    return _then(_$_Point(
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
class _$_Point implements _Point {
  _$_Point({this.subject = '', this.point = 0, this.reg_time = ''});

  factory _$_Point.fromJson(Map<String, dynamic> json) =>
      _$$_PointFromJson(json);

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
            other is _$_Point &&
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
  _$$_PointCopyWith<_$_Point> get copyWith =>
      __$$_PointCopyWithImpl<_$_Point>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PointToJson(
      this,
    );
  }
}

abstract class _Point implements Point {
  factory _Point(
      {final String subject,
      final int point,
      final String reg_time}) = _$_Point;

  factory _Point.fromJson(Map<String, dynamic> json) = _$_Point.fromJson;

  @override
  String get subject;
  @override
  int get point;
  @override
  String get reg_time;
  @override
  @JsonKey(ignore: true)
  _$$_PointCopyWith<_$_Point> get copyWith =>
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
abstract class _$$_PointResponseCopyWith<$Res>
    implements $PointResponseCopyWith<$Res> {
  factory _$$_PointResponseCopyWith(
          _$_PointResponse value, $Res Function(_$_PointResponse) then) =
      __$$_PointResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status,
      String message,
      int point,
      @JsonKey(name: 'list') List<Point>? items});
}

/// @nodoc
class __$$_PointResponseCopyWithImpl<$Res>
    extends _$PointResponseCopyWithImpl<$Res, _$_PointResponse>
    implements _$$_PointResponseCopyWith<$Res> {
  __$$_PointResponseCopyWithImpl(
      _$_PointResponse _value, $Res Function(_$_PointResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? point = null,
    Object? items = freezed,
  }) {
    return _then(_$_PointResponse(
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
class _$_PointResponse implements _PointResponse {
  _$_PointResponse(
      {required this.status,
      this.message = '',
      this.point = 0,
      @JsonKey(name: 'list') final List<Point>? items = const []})
      : _items = items;

  factory _$_PointResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PointResponseFromJson(json);

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
            other is _$_PointResponse &&
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
  _$$_PointResponseCopyWith<_$_PointResponse> get copyWith =>
      __$$_PointResponseCopyWithImpl<_$_PointResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PointResponseToJson(
      this,
    );
  }
}

abstract class _PointResponse implements PointResponse {
  factory _PointResponse(
      {required final int status,
      final String message,
      final int point,
      @JsonKey(name: 'list') final List<Point>? items}) = _$_PointResponse;

  factory _PointResponse.fromJson(Map<String, dynamic> json) =
      _$_PointResponse.fromJson;

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
  _$$_PointResponseCopyWith<_$_PointResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
