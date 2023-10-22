// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  int get ad_id => throw _privateConstructorUsedError;
  String get ad_subject => throw _privateConstructorUsedError;
  String get address1 => throw _privateConstructorUsedError;
  String get address2 => throw _privateConstructorUsedError;
  String get address3 => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String? get ad_default => throw _privateConstructorUsedError;
  bool? get isCheck => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call(
      {int ad_id,
      String ad_subject,
      String address1,
      String address2,
      String address3,
      String name,
      String phone,
      String? ad_default,
      bool? isCheck});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

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
    Object? isCheck = freezed,
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
      isCheck: freezed == isCheck
          ? _value.isCheck
          : isCheck // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$_AddressCopyWith(
          _$_Address value, $Res Function(_$_Address) then) =
      __$$_AddressCopyWithImpl<$Res>;
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
      String? ad_default,
      bool? isCheck});
}

/// @nodoc
class __$$_AddressCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$_Address>
    implements _$$_AddressCopyWith<$Res> {
  __$$_AddressCopyWithImpl(_$_Address _value, $Res Function(_$_Address) _then)
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
    Object? isCheck = freezed,
  }) {
    return _then(_$_Address(
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
      isCheck: freezed == isCheck
          ? _value.isCheck
          : isCheck // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Address implements _Address {
  _$_Address(
      {this.ad_id = 0,
      this.ad_subject = '',
      this.address1 = '',
      this.address2 = '',
      this.address3 = '',
      this.name = '',
      this.phone = '',
      this.ad_default = '',
      this.isCheck = false});

  factory _$_Address.fromJson(Map<String, dynamic> json) =>
      _$$_AddressFromJson(json);

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
  @JsonKey()
  final bool? isCheck;

  @override
  String toString() {
    return 'Address(ad_id: $ad_id, ad_subject: $ad_subject, address1: $address1, address2: $address2, address3: $address3, name: $name, phone: $phone, ad_default: $ad_default, isCheck: $isCheck)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Address &&
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
                other.ad_default == ad_default) &&
            (identical(other.isCheck, isCheck) || other.isCheck == isCheck));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ad_id, ad_subject, address1,
      address2, address3, name, phone, ad_default, isCheck);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressCopyWith<_$_Address> get copyWith =>
      __$$_AddressCopyWithImpl<_$_Address>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressToJson(
      this,
    );
  }
}

abstract class _Address implements Address {
  factory _Address(
      {final int ad_id,
      final String ad_subject,
      final String address1,
      final String address2,
      final String address3,
      final String name,
      final String phone,
      final String? ad_default,
      final bool? isCheck}) = _$_Address;

  factory _Address.fromJson(Map<String, dynamic> json) = _$_Address.fromJson;

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
  bool? get isCheck;
  @override
  @JsonKey(ignore: true)
  _$$_AddressCopyWith<_$_Address> get copyWith =>
      throw _privateConstructorUsedError;
}

AddressResponse _$AddressResponseFromJson(Map<String, dynamic> json) {
  return _AddressResponse.fromJson(json);
}

/// @nodoc
mixin _$AddressResponse {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<Address>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressResponseCopyWith<AddressResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressResponseCopyWith<$Res> {
  factory $AddressResponseCopyWith(
          AddressResponse value, $Res Function(AddressResponse) then) =
      _$AddressResponseCopyWithImpl<$Res, AddressResponse>;
  @useResult
  $Res call(
      {int status,
      String message,
      @JsonKey(name: 'data') List<Address>? items});
}

/// @nodoc
class _$AddressResponseCopyWithImpl<$Res, $Val extends AddressResponse>
    implements $AddressResponseCopyWith<$Res> {
  _$AddressResponseCopyWithImpl(this._value, this._then);

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
              as List<Address>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressResponseCopyWith<$Res>
    implements $AddressResponseCopyWith<$Res> {
  factory _$$_AddressResponseCopyWith(
          _$_AddressResponse value, $Res Function(_$_AddressResponse) then) =
      __$$_AddressResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status,
      String message,
      @JsonKey(name: 'data') List<Address>? items});
}

/// @nodoc
class __$$_AddressResponseCopyWithImpl<$Res>
    extends _$AddressResponseCopyWithImpl<$Res, _$_AddressResponse>
    implements _$$_AddressResponseCopyWith<$Res> {
  __$$_AddressResponseCopyWithImpl(
      _$_AddressResponse _value, $Res Function(_$_AddressResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? items = freezed,
  }) {
    return _then(_$_AddressResponse(
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
              as List<Address>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddressResponse implements _AddressResponse {
  _$_AddressResponse(
      {required this.status,
      this.message = '',
      @JsonKey(name: 'data') final List<Address>? items = const []})
      : _items = items;

  factory _$_AddressResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AddressResponseFromJson(json);

  @override
  final int status;
  @override
  @JsonKey()
  final String message;
  final List<Address>? _items;
  @override
  @JsonKey(name: 'data')
  List<Address>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AddressResponse(status: $status, message: $message, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressResponse &&
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
  _$$_AddressResponseCopyWith<_$_AddressResponse> get copyWith =>
      __$$_AddressResponseCopyWithImpl<_$_AddressResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressResponseToJson(
      this,
    );
  }
}

abstract class _AddressResponse implements AddressResponse {
  factory _AddressResponse(
      {required final int status,
      final String message,
      @JsonKey(name: 'data') final List<Address>? items}) = _$_AddressResponse;

  factory _AddressResponse.fromJson(Map<String, dynamic> json) =
      _$_AddressResponse.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  @JsonKey(name: 'data')
  List<Address>? get items;
  @override
  @JsonKey(ignore: true)
  _$$_AddressResponseCopyWith<_$_AddressResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
