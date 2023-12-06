// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddressDetail _$AddressDetailFromJson(Map<String, dynamic> json) {
  return _AddressDetail.fromJson(json);
}

/// @nodoc
mixin _$AddressDetail {
  int get ad_id => throw _privateConstructorUsedError;
  String get ad_subject => throw _privateConstructorUsedError;
  String get address1 => throw _privateConstructorUsedError;
  String get address2 => throw _privateConstructorUsedError;
  String get address3 => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String? get ad_default => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressDetailCopyWith<AddressDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressDetailCopyWith<$Res> {
  factory $AddressDetailCopyWith(
          AddressDetail value, $Res Function(AddressDetail) then) =
      _$AddressDetailCopyWithImpl<$Res, AddressDetail>;
  @useResult
  $Res call(
      {int ad_id,
      String ad_subject,
      String address1,
      String address2,
      String address3,
      String name,
      String phone,
      String? ad_default});
}

/// @nodoc
class _$AddressDetailCopyWithImpl<$Res, $Val extends AddressDetail>
    implements $AddressDetailCopyWith<$Res> {
  _$AddressDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ad_id = null,
    Object? ad_subject = null,
    Object? address1 = null,
    Object? address2 = null,
    Object? address3 = null,
    Object? name = null,
    Object? phone = null,
    Object? ad_default = freezed,
  }) {
    return _then(_value.copyWith(
      ad_id: null == ad_id
          ? _value.ad_id
          : ad_id // ignore: cast_nullable_to_non_nullable
              as int,
      ad_subject: null == ad_subject
          ? _value.ad_subject
          : ad_subject // ignore: cast_nullable_to_non_nullable
              as String,
      address1: null == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String,
      address2: null == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String,
      address3: null == address3
          ? _value.address3
          : address3 // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      ad_default: freezed == ad_default
          ? _value.ad_default
          : ad_default // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressDetailImplCopyWith<$Res>
    implements $AddressDetailCopyWith<$Res> {
  factory _$$AddressDetailImplCopyWith(
          _$AddressDetailImpl value, $Res Function(_$AddressDetailImpl) then) =
      __$$AddressDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int ad_id,
      String ad_subject,
      String address1,
      String address2,
      String address3,
      String name,
      String phone,
      String? ad_default});
}

/// @nodoc
class __$$AddressDetailImplCopyWithImpl<$Res>
    extends _$AddressDetailCopyWithImpl<$Res, _$AddressDetailImpl>
    implements _$$AddressDetailImplCopyWith<$Res> {
  __$$AddressDetailImplCopyWithImpl(
      _$AddressDetailImpl _value, $Res Function(_$AddressDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ad_id = null,
    Object? ad_subject = null,
    Object? address1 = null,
    Object? address2 = null,
    Object? address3 = null,
    Object? name = null,
    Object? phone = null,
    Object? ad_default = freezed,
  }) {
    return _then(_$AddressDetailImpl(
      ad_id: null == ad_id
          ? _value.ad_id
          : ad_id // ignore: cast_nullable_to_non_nullable
              as int,
      ad_subject: null == ad_subject
          ? _value.ad_subject
          : ad_subject // ignore: cast_nullable_to_non_nullable
              as String,
      address1: null == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String,
      address2: null == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String,
      address3: null == address3
          ? _value.address3
          : address3 // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      ad_default: freezed == ad_default
          ? _value.ad_default
          : ad_default // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressDetailImpl implements _AddressDetail {
  _$AddressDetailImpl(
      {this.ad_id = 0,
      this.ad_subject = '',
      this.address1 = '',
      this.address2 = '',
      this.address3 = '',
      this.name = '',
      this.phone = '',
      this.ad_default = ''});

  factory _$AddressDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressDetailImplFromJson(json);

  @override
  @JsonKey()
  final int ad_id;
  @override
  @JsonKey()
  final String ad_subject;
  @override
  @JsonKey()
  final String address1;
  @override
  @JsonKey()
  final String address2;
  @override
  @JsonKey()
  final String address3;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String phone;
  @override
  @JsonKey()
  final String? ad_default;

  @override
  String toString() {
    return 'AddressDetail(ad_id: $ad_id, ad_subject: $ad_subject, address1: $address1, address2: $address2, address3: $address3, name: $name, phone: $phone, ad_default: $ad_default)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressDetailImpl &&
            (identical(other.ad_id, ad_id) || other.ad_id == ad_id) &&
            (identical(other.ad_subject, ad_subject) ||
                other.ad_subject == ad_subject) &&
            (identical(other.address1, address1) ||
                other.address1 == address1) &&
            (identical(other.address2, address2) ||
                other.address2 == address2) &&
            (identical(other.address3, address3) ||
                other.address3 == address3) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.ad_default, ad_default) ||
                other.ad_default == ad_default));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ad_id, ad_subject, address1,
      address2, address3, name, phone, ad_default);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressDetailImplCopyWith<_$AddressDetailImpl> get copyWith =>
      __$$AddressDetailImplCopyWithImpl<_$AddressDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressDetailImplToJson(
      this,
    );
  }
}

abstract class _AddressDetail implements AddressDetail {
  factory _AddressDetail(
      {final int ad_id,
      final String ad_subject,
      final String address1,
      final String address2,
      final String address3,
      final String name,
      final String phone,
      final String? ad_default}) = _$AddressDetailImpl;

  factory _AddressDetail.fromJson(Map<String, dynamic> json) =
      _$AddressDetailImpl.fromJson;

  @override
  int get ad_id;
  @override
  String get ad_subject;
  @override
  String get address1;
  @override
  String get address2;
  @override
  String get address3;
  @override
  String get name;
  @override
  String get phone;
  @override
  String? get ad_default;
  @override
  @JsonKey(ignore: true)
  _$$AddressDetailImplCopyWith<_$AddressDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddressDetailResponse _$AddressDetailResponseFromJson(
    Map<String, dynamic> json) {
  return _AddressDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$AddressDetailResponse {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  AddressDetail get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressDetailResponseCopyWith<AddressDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressDetailResponseCopyWith<$Res> {
  factory $AddressDetailResponseCopyWith(AddressDetailResponse value,
          $Res Function(AddressDetailResponse) then) =
      _$AddressDetailResponseCopyWithImpl<$Res, AddressDetailResponse>;
  @useResult
  $Res call({int status, String message, AddressDetail data});

  $AddressDetailCopyWith<$Res> get data;
}

/// @nodoc
class _$AddressDetailResponseCopyWithImpl<$Res,
        $Val extends AddressDetailResponse>
    implements $AddressDetailResponseCopyWith<$Res> {
  _$AddressDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
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
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddressDetail,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressDetailCopyWith<$Res> get data {
    return $AddressDetailCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddressDetailResponseImplCopyWith<$Res>
    implements $AddressDetailResponseCopyWith<$Res> {
  factory _$$AddressDetailResponseImplCopyWith(
          _$AddressDetailResponseImpl value,
          $Res Function(_$AddressDetailResponseImpl) then) =
      __$$AddressDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String message, AddressDetail data});

  @override
  $AddressDetailCopyWith<$Res> get data;
}

/// @nodoc
class __$$AddressDetailResponseImplCopyWithImpl<$Res>
    extends _$AddressDetailResponseCopyWithImpl<$Res,
        _$AddressDetailResponseImpl>
    implements _$$AddressDetailResponseImplCopyWith<$Res> {
  __$$AddressDetailResponseImplCopyWithImpl(_$AddressDetailResponseImpl _value,
      $Res Function(_$AddressDetailResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$AddressDetailResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddressDetail,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressDetailResponseImpl implements _AddressDetailResponse {
  _$AddressDetailResponseImpl(
      {required this.status, required this.message, required this.data});

  factory _$AddressDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressDetailResponseImplFromJson(json);

  @override
  final int status;
  @override
  final String message;
  @override
  final AddressDetail data;

  @override
  String toString() {
    return 'AddressDetailResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressDetailResponseImpl &&
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
  _$$AddressDetailResponseImplCopyWith<_$AddressDetailResponseImpl>
      get copyWith => __$$AddressDetailResponseImplCopyWithImpl<
          _$AddressDetailResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _AddressDetailResponse implements AddressDetailResponse {
  factory _AddressDetailResponse(
      {required final int status,
      required final String message,
      required final AddressDetail data}) = _$AddressDetailResponseImpl;

  factory _AddressDetailResponse.fromJson(Map<String, dynamic> json) =
      _$AddressDetailResponseImpl.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  AddressDetail get data;
  @override
  @JsonKey(ignore: true)
  _$$AddressDetailResponseImplCopyWith<_$AddressDetailResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
