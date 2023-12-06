// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Card _$CardFromJson(Map<String, dynamic> json) {
  return _Card.fromJson(json);
}

/// @nodoc
mixin _$Card {
  int get id => throw _privateConstructorUsedError;
  String get billingkey => throw _privateConstructorUsedError;
  String get card_name => throw _privateConstructorUsedError;
  int get is_default => throw _privateConstructorUsedError;
  String get mb_id => throw _privateConstructorUsedError;
  int get disabled => throw _privateConstructorUsedError;
  int get is_company => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardCopyWith<Card> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardCopyWith<$Res> {
  factory $CardCopyWith(Card value, $Res Function(Card) then) =
      _$CardCopyWithImpl<$Res, Card>;
  @useResult
  $Res call(
      {int id,
      String billingkey,
      String card_name,
      int is_default,
      String mb_id,
      int disabled,
      int is_company});
}

/// @nodoc
class _$CardCopyWithImpl<$Res, $Val extends Card>
    implements $CardCopyWith<$Res> {
  _$CardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? billingkey = null,
    Object? card_name = null,
    Object? is_default = null,
    Object? mb_id = null,
    Object? disabled = null,
    Object? is_company = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      billingkey: null == billingkey
          ? _value.billingkey
          : billingkey // ignore: cast_nullable_to_non_nullable
              as String,
      card_name: null == card_name
          ? _value.card_name
          : card_name // ignore: cast_nullable_to_non_nullable
              as String,
      is_default: null == is_default
          ? _value.is_default
          : is_default // ignore: cast_nullable_to_non_nullable
              as int,
      mb_id: null == mb_id
          ? _value.mb_id
          : mb_id // ignore: cast_nullable_to_non_nullable
              as String,
      disabled: null == disabled
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as int,
      is_company: null == is_company
          ? _value.is_company
          : is_company // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardImplCopyWith<$Res> implements $CardCopyWith<$Res> {
  factory _$$CardImplCopyWith(
          _$CardImpl value, $Res Function(_$CardImpl) then) =
      __$$CardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String billingkey,
      String card_name,
      int is_default,
      String mb_id,
      int disabled,
      int is_company});
}

/// @nodoc
class __$$CardImplCopyWithImpl<$Res>
    extends _$CardCopyWithImpl<$Res, _$CardImpl>
    implements _$$CardImplCopyWith<$Res> {
  __$$CardImplCopyWithImpl(_$CardImpl _value, $Res Function(_$CardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? billingkey = null,
    Object? card_name = null,
    Object? is_default = null,
    Object? mb_id = null,
    Object? disabled = null,
    Object? is_company = null,
  }) {
    return _then(_$CardImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      billingkey: null == billingkey
          ? _value.billingkey
          : billingkey // ignore: cast_nullable_to_non_nullable
              as String,
      card_name: null == card_name
          ? _value.card_name
          : card_name // ignore: cast_nullable_to_non_nullable
              as String,
      is_default: null == is_default
          ? _value.is_default
          : is_default // ignore: cast_nullable_to_non_nullable
              as int,
      mb_id: null == mb_id
          ? _value.mb_id
          : mb_id // ignore: cast_nullable_to_non_nullable
              as String,
      disabled: null == disabled
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as int,
      is_company: null == is_company
          ? _value.is_company
          : is_company // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardImpl implements _Card {
  _$CardImpl(
      {this.id = 0,
      this.billingkey = '',
      this.card_name = '',
      this.is_default = 0,
      this.mb_id = '',
      this.disabled = 0,
      this.is_company = 0});

  factory _$CardImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String billingkey;
  @override
  @JsonKey()
  final String card_name;
  @override
  @JsonKey()
  final int is_default;
  @override
  @JsonKey()
  final String mb_id;
  @override
  @JsonKey()
  final int disabled;
  @override
  @JsonKey()
  final int is_company;

  @override
  String toString() {
    return 'Card(id: $id, billingkey: $billingkey, card_name: $card_name, is_default: $is_default, mb_id: $mb_id, disabled: $disabled, is_company: $is_company)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.billingkey, billingkey) ||
                other.billingkey == billingkey) &&
            (identical(other.card_name, card_name) ||
                other.card_name == card_name) &&
            (identical(other.is_default, is_default) ||
                other.is_default == is_default) &&
            (identical(other.mb_id, mb_id) || other.mb_id == mb_id) &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled) &&
            (identical(other.is_company, is_company) ||
                other.is_company == is_company));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, billingkey, card_name,
      is_default, mb_id, disabled, is_company);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardImplCopyWith<_$CardImpl> get copyWith =>
      __$$CardImplCopyWithImpl<_$CardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardImplToJson(
      this,
    );
  }
}

abstract class _Card implements Card {
  factory _Card(
      {final int id,
      final String billingkey,
      final String card_name,
      final int is_default,
      final String mb_id,
      final int disabled,
      final int is_company}) = _$CardImpl;

  factory _Card.fromJson(Map<String, dynamic> json) = _$CardImpl.fromJson;

  @override
  int get id;
  @override
  String get billingkey;
  @override
  String get card_name;
  @override
  int get is_default;
  @override
  String get mb_id;
  @override
  int get disabled;
  @override
  int get is_company;
  @override
  @JsonKey(ignore: true)
  _$$CardImplCopyWith<_$CardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CardResponse _$CardResponseFromJson(Map<String, dynamic> json) {
  return _CardResponse.fromJson(json);
}

/// @nodoc
mixin _$CardResponse {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<Card>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardResponseCopyWith<CardResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardResponseCopyWith<$Res> {
  factory $CardResponseCopyWith(
          CardResponse value, $Res Function(CardResponse) then) =
      _$CardResponseCopyWithImpl<$Res, CardResponse>;
  @useResult
  $Res call(
      {int status, String message, @JsonKey(name: 'data') List<Card>? items});
}

/// @nodoc
class _$CardResponseCopyWithImpl<$Res, $Val extends CardResponse>
    implements $CardResponseCopyWith<$Res> {
  _$CardResponseCopyWithImpl(this._value, this._then);

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
              as List<Card>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardResponseImplCopyWith<$Res>
    implements $CardResponseCopyWith<$Res> {
  factory _$$CardResponseImplCopyWith(
          _$CardResponseImpl value, $Res Function(_$CardResponseImpl) then) =
      __$$CardResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status, String message, @JsonKey(name: 'data') List<Card>? items});
}

/// @nodoc
class __$$CardResponseImplCopyWithImpl<$Res>
    extends _$CardResponseCopyWithImpl<$Res, _$CardResponseImpl>
    implements _$$CardResponseImplCopyWith<$Res> {
  __$$CardResponseImplCopyWithImpl(
      _$CardResponseImpl _value, $Res Function(_$CardResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? items = freezed,
  }) {
    return _then(_$CardResponseImpl(
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
              as List<Card>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardResponseImpl implements _CardResponse {
  _$CardResponseImpl(
      {required this.status,
      this.message = '',
      @JsonKey(name: 'data') final List<Card>? items = const []})
      : _items = items;

  factory _$CardResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardResponseImplFromJson(json);

  @override
  final int status;
  @override
  @JsonKey()
  final String message;
  final List<Card>? _items;
  @override
  @JsonKey(name: 'data')
  List<Card>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CardResponse(status: $status, message: $message, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardResponseImpl &&
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
  _$$CardResponseImplCopyWith<_$CardResponseImpl> get copyWith =>
      __$$CardResponseImplCopyWithImpl<_$CardResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardResponseImplToJson(
      this,
    );
  }
}

abstract class _CardResponse implements CardResponse {
  factory _CardResponse(
      {required final int status,
      final String message,
      @JsonKey(name: 'data') final List<Card>? items}) = _$CardResponseImpl;

  factory _CardResponse.fromJson(Map<String, dynamic> json) =
      _$CardResponseImpl.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  @JsonKey(name: 'data')
  List<Card>? get items;
  @override
  @JsonKey(ignore: true)
  _$$CardResponseImplCopyWith<_$CardResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
