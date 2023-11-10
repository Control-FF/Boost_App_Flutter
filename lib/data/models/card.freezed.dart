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
  int get cd_no => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  String get expired_MM => throw _privateConstructorUsedError;
  String get expired_YY => throw _privateConstructorUsedError;

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
      {int cd_no,
      String type,
      String subject,
      String number,
      String expired_MM,
      String expired_YY});
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
    Object? cd_no = null,
    Object? type = null,
    Object? subject = null,
    Object? number = null,
    Object? expired_MM = null,
    Object? expired_YY = null,
  }) {
    return _then(_value.copyWith(
      cd_no: null == cd_no
          ? _value.cd_no
          : cd_no // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      expired_MM: null == expired_MM
          ? _value.expired_MM
          : expired_MM // ignore: cast_nullable_to_non_nullable
              as String,
      expired_YY: null == expired_YY
          ? _value.expired_YY
          : expired_YY // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CardCopyWith<$Res> implements $CardCopyWith<$Res> {
  factory _$$_CardCopyWith(_$_Card value, $Res Function(_$_Card) then) =
      __$$_CardCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int cd_no,
      String type,
      String subject,
      String number,
      String expired_MM,
      String expired_YY});
}

/// @nodoc
class __$$_CardCopyWithImpl<$Res> extends _$CardCopyWithImpl<$Res, _$_Card>
    implements _$$_CardCopyWith<$Res> {
  __$$_CardCopyWithImpl(_$_Card _value, $Res Function(_$_Card) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cd_no = null,
    Object? type = null,
    Object? subject = null,
    Object? number = null,
    Object? expired_MM = null,
    Object? expired_YY = null,
  }) {
    return _then(_$_Card(
      cd_no: null == cd_no
          ? _value.cd_no
          : cd_no // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      expired_MM: null == expired_MM
          ? _value.expired_MM
          : expired_MM // ignore: cast_nullable_to_non_nullable
              as String,
      expired_YY: null == expired_YY
          ? _value.expired_YY
          : expired_YY // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Card implements _Card {
  _$_Card(
      {this.cd_no = 0,
      this.type = '',
      this.subject = '',
      this.number = '',
      this.expired_MM = '',
      this.expired_YY = ''});

  factory _$_Card.fromJson(Map<String, dynamic> json) => _$$_CardFromJson(json);

  @override
  @JsonKey()
  final int cd_no;
  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final String subject;
  @override
  @JsonKey()
  final String number;
  @override
  @JsonKey()
  final String expired_MM;
  @override
  @JsonKey()
  final String expired_YY;

  @override
  String toString() {
    return 'Card(cd_no: $cd_no, type: $type, subject: $subject, number: $number, expired_MM: $expired_MM, expired_YY: $expired_YY)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Card &&
            (identical(other.cd_no, cd_no) || other.cd_no == cd_no) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.expired_MM, expired_MM) ||
                other.expired_MM == expired_MM) &&
            (identical(other.expired_YY, expired_YY) ||
                other.expired_YY == expired_YY));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, cd_no, type, subject, number, expired_MM, expired_YY);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CardCopyWith<_$_Card> get copyWith =>
      __$$_CardCopyWithImpl<_$_Card>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CardToJson(
      this,
    );
  }
}

abstract class _Card implements Card {
  factory _Card(
      {final int cd_no,
      final String type,
      final String subject,
      final String number,
      final String expired_MM,
      final String expired_YY}) = _$_Card;

  factory _Card.fromJson(Map<String, dynamic> json) = _$_Card.fromJson;

  @override
  int get cd_no;
  @override
  String get type;
  @override
  String get subject;
  @override
  String get number;
  @override
  String get expired_MM;
  @override
  String get expired_YY;
  @override
  @JsonKey(ignore: true)
  _$$_CardCopyWith<_$_Card> get copyWith => throw _privateConstructorUsedError;
}

CardResponse _$CardResponseFromJson(Map<String, dynamic> json) {
  return _CardResponse.fromJson(json);
}

/// @nodoc
mixin _$CardResponse {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'lists')
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
      {int status, String message, @JsonKey(name: 'lists') List<Card>? items});
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
abstract class _$$_CardResponseCopyWith<$Res>
    implements $CardResponseCopyWith<$Res> {
  factory _$$_CardResponseCopyWith(
          _$_CardResponse value, $Res Function(_$_CardResponse) then) =
      __$$_CardResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status, String message, @JsonKey(name: 'lists') List<Card>? items});
}

/// @nodoc
class __$$_CardResponseCopyWithImpl<$Res>
    extends _$CardResponseCopyWithImpl<$Res, _$_CardResponse>
    implements _$$_CardResponseCopyWith<$Res> {
  __$$_CardResponseCopyWithImpl(
      _$_CardResponse _value, $Res Function(_$_CardResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? items = freezed,
  }) {
    return _then(_$_CardResponse(
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
class _$_CardResponse implements _CardResponse {
  _$_CardResponse(
      {required this.status,
      this.message = '',
      @JsonKey(name: 'lists') final List<Card>? items = const []})
      : _items = items;

  factory _$_CardResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CardResponseFromJson(json);

  @override
  final int status;
  @override
  @JsonKey()
  final String message;
  final List<Card>? _items;
  @override
  @JsonKey(name: 'lists')
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
            other is _$_CardResponse &&
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
  _$$_CardResponseCopyWith<_$_CardResponse> get copyWith =>
      __$$_CardResponseCopyWithImpl<_$_CardResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CardResponseToJson(
      this,
    );
  }
}

abstract class _CardResponse implements CardResponse {
  factory _CardResponse(
      {required final int status,
      final String message,
      @JsonKey(name: 'lists') final List<Card>? items}) = _$_CardResponse;

  factory _CardResponse.fromJson(Map<String, dynamic> json) =
      _$_CardResponse.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  @JsonKey(name: 'lists')
  List<Card>? get items;
  @override
  @JsonKey(ignore: true)
  _$$_CardResponseCopyWith<_$_CardResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
