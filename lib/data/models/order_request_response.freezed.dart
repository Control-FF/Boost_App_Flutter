// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_request_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderRequestResponse _$OrderRequestResponseFromJson(Map<String, dynamic> json) {
  return _OrderRequestResponse.fromJson(json);
}

/// @nodoc
mixin _$OrderRequestResponse {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get od_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderRequestResponseCopyWith<OrderRequestResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderRequestResponseCopyWith<$Res> {
  factory $OrderRequestResponseCopyWith(OrderRequestResponse value,
          $Res Function(OrderRequestResponse) then) =
      _$OrderRequestResponseCopyWithImpl<$Res, OrderRequestResponse>;
  @useResult
  $Res call({int status, String message, String od_id});
}

/// @nodoc
class _$OrderRequestResponseCopyWithImpl<$Res,
        $Val extends OrderRequestResponse>
    implements $OrderRequestResponseCopyWith<$Res> {
  _$OrderRequestResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? od_id = null,
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
      od_id: null == od_id
          ? _value.od_id
          : od_id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderRequestResponseImplCopyWith<$Res>
    implements $OrderRequestResponseCopyWith<$Res> {
  factory _$$OrderRequestResponseImplCopyWith(_$OrderRequestResponseImpl value,
          $Res Function(_$OrderRequestResponseImpl) then) =
      __$$OrderRequestResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String message, String od_id});
}

/// @nodoc
class __$$OrderRequestResponseImplCopyWithImpl<$Res>
    extends _$OrderRequestResponseCopyWithImpl<$Res, _$OrderRequestResponseImpl>
    implements _$$OrderRequestResponseImplCopyWith<$Res> {
  __$$OrderRequestResponseImplCopyWithImpl(_$OrderRequestResponseImpl _value,
      $Res Function(_$OrderRequestResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? od_id = null,
  }) {
    return _then(_$OrderRequestResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      od_id: null == od_id
          ? _value.od_id
          : od_id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderRequestResponseImpl implements _OrderRequestResponse {
  _$OrderRequestResponseImpl(
      {required this.status, this.message = '', this.od_id = ''});

  factory _$OrderRequestResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderRequestResponseImplFromJson(json);

  @override
  final int status;
  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String od_id;

  @override
  String toString() {
    return 'OrderRequestResponse(status: $status, message: $message, od_id: $od_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderRequestResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.od_id, od_id) || other.od_id == od_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, od_id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderRequestResponseImplCopyWith<_$OrderRequestResponseImpl>
      get copyWith =>
          __$$OrderRequestResponseImplCopyWithImpl<_$OrderRequestResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderRequestResponseImplToJson(
      this,
    );
  }
}

abstract class _OrderRequestResponse implements OrderRequestResponse {
  factory _OrderRequestResponse(
      {required final int status,
      final String message,
      final String od_id}) = _$OrderRequestResponseImpl;

  factory _OrderRequestResponse.fromJson(Map<String, dynamic> json) =
      _$OrderRequestResponseImpl.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  String get od_id;
  @override
  @JsonKey(ignore: true)
  _$$OrderRequestResponseImplCopyWith<_$OrderRequestResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
