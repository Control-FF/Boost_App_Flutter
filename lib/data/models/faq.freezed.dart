// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faq.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FAQ _$FAQFromJson(Map<String, dynamic> json) {
  return _FAQ.fromJson(json);
}

/// @nodoc
mixin _$FAQ {
  int get fa_id => throw _privateConstructorUsedError;
  String get fa_subject => throw _privateConstructorUsedError;
  String get fa_content => throw _privateConstructorUsedError;
  int get fa_order => throw _privateConstructorUsedError;
  bool? get isExpand => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FAQCopyWith<FAQ> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FAQCopyWith<$Res> {
  factory $FAQCopyWith(FAQ value, $Res Function(FAQ) then) =
      _$FAQCopyWithImpl<$Res, FAQ>;
  @useResult
  $Res call(
      {int fa_id,
      String fa_subject,
      String fa_content,
      int fa_order,
      bool? isExpand});
}

/// @nodoc
class _$FAQCopyWithImpl<$Res, $Val extends FAQ> implements $FAQCopyWith<$Res> {
  _$FAQCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fa_id = null,
    Object? fa_subject = null,
    Object? fa_content = null,
    Object? fa_order = null,
    Object? isExpand = freezed,
  }) {
    return _then(_value.copyWith(
      fa_id: null == fa_id
          ? _value.fa_id
          : fa_id // ignore: cast_nullable_to_non_nullable
              as int,
      fa_subject: null == fa_subject
          ? _value.fa_subject
          : fa_subject // ignore: cast_nullable_to_non_nullable
              as String,
      fa_content: null == fa_content
          ? _value.fa_content
          : fa_content // ignore: cast_nullable_to_non_nullable
              as String,
      fa_order: null == fa_order
          ? _value.fa_order
          : fa_order // ignore: cast_nullable_to_non_nullable
              as int,
      isExpand: freezed == isExpand
          ? _value.isExpand
          : isExpand // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FAQCopyWith<$Res> implements $FAQCopyWith<$Res> {
  factory _$$_FAQCopyWith(_$_FAQ value, $Res Function(_$_FAQ) then) =
      __$$_FAQCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int fa_id,
      String fa_subject,
      String fa_content,
      int fa_order,
      bool? isExpand});
}

/// @nodoc
class __$$_FAQCopyWithImpl<$Res> extends _$FAQCopyWithImpl<$Res, _$_FAQ>
    implements _$$_FAQCopyWith<$Res> {
  __$$_FAQCopyWithImpl(_$_FAQ _value, $Res Function(_$_FAQ) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fa_id = null,
    Object? fa_subject = null,
    Object? fa_content = null,
    Object? fa_order = null,
    Object? isExpand = freezed,
  }) {
    return _then(_$_FAQ(
      fa_id: null == fa_id
          ? _value.fa_id
          : fa_id // ignore: cast_nullable_to_non_nullable
              as int,
      fa_subject: null == fa_subject
          ? _value.fa_subject
          : fa_subject // ignore: cast_nullable_to_non_nullable
              as String,
      fa_content: null == fa_content
          ? _value.fa_content
          : fa_content // ignore: cast_nullable_to_non_nullable
              as String,
      fa_order: null == fa_order
          ? _value.fa_order
          : fa_order // ignore: cast_nullable_to_non_nullable
              as int,
      isExpand: freezed == isExpand
          ? _value.isExpand
          : isExpand // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FAQ implements _FAQ {
  _$_FAQ(
      {this.fa_id = 0,
      this.fa_subject = '',
      this.fa_content = '',
      this.fa_order = 0,
      this.isExpand = false});

  factory _$_FAQ.fromJson(Map<String, dynamic> json) => _$$_FAQFromJson(json);

  @override
  @JsonKey()
  final int fa_id;
  @override
  @JsonKey()
  final String fa_subject;
  @override
  @JsonKey()
  final String fa_content;
  @override
  @JsonKey()
  final int fa_order;
  @override
  @JsonKey()
  final bool? isExpand;

  @override
  String toString() {
    return 'FAQ(fa_id: $fa_id, fa_subject: $fa_subject, fa_content: $fa_content, fa_order: $fa_order, isExpand: $isExpand)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FAQ &&
            (identical(other.fa_id, fa_id) || other.fa_id == fa_id) &&
            (identical(other.fa_subject, fa_subject) ||
                other.fa_subject == fa_subject) &&
            (identical(other.fa_content, fa_content) ||
                other.fa_content == fa_content) &&
            (identical(other.fa_order, fa_order) ||
                other.fa_order == fa_order) &&
            (identical(other.isExpand, isExpand) ||
                other.isExpand == isExpand));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, fa_id, fa_subject, fa_content, fa_order, isExpand);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FAQCopyWith<_$_FAQ> get copyWith =>
      __$$_FAQCopyWithImpl<_$_FAQ>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FAQToJson(
      this,
    );
  }
}

abstract class _FAQ implements FAQ {
  factory _FAQ(
      {final int fa_id,
      final String fa_subject,
      final String fa_content,
      final int fa_order,
      final bool? isExpand}) = _$_FAQ;

  factory _FAQ.fromJson(Map<String, dynamic> json) = _$_FAQ.fromJson;

  @override
  int get fa_id;
  @override
  String get fa_subject;
  @override
  String get fa_content;
  @override
  int get fa_order;
  @override
  bool? get isExpand;
  @override
  @JsonKey(ignore: true)
  _$$_FAQCopyWith<_$_FAQ> get copyWith => throw _privateConstructorUsedError;
}

FAQResponse _$FAQResponseFromJson(Map<String, dynamic> json) {
  return _FAQResponse.fromJson(json);
}

/// @nodoc
mixin _$FAQResponse {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<FAQ>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FAQResponseCopyWith<FAQResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FAQResponseCopyWith<$Res> {
  factory $FAQResponseCopyWith(
          FAQResponse value, $Res Function(FAQResponse) then) =
      _$FAQResponseCopyWithImpl<$Res, FAQResponse>;
  @useResult
  $Res call(
      {int status, String message, @JsonKey(name: 'data') List<FAQ>? items});
}

/// @nodoc
class _$FAQResponseCopyWithImpl<$Res, $Val extends FAQResponse>
    implements $FAQResponseCopyWith<$Res> {
  _$FAQResponseCopyWithImpl(this._value, this._then);

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
              as List<FAQ>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FAQResponseCopyWith<$Res>
    implements $FAQResponseCopyWith<$Res> {
  factory _$$_FAQResponseCopyWith(
          _$_FAQResponse value, $Res Function(_$_FAQResponse) then) =
      __$$_FAQResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status, String message, @JsonKey(name: 'data') List<FAQ>? items});
}

/// @nodoc
class __$$_FAQResponseCopyWithImpl<$Res>
    extends _$FAQResponseCopyWithImpl<$Res, _$_FAQResponse>
    implements _$$_FAQResponseCopyWith<$Res> {
  __$$_FAQResponseCopyWithImpl(
      _$_FAQResponse _value, $Res Function(_$_FAQResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? items = freezed,
  }) {
    return _then(_$_FAQResponse(
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
              as List<FAQ>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FAQResponse implements _FAQResponse {
  _$_FAQResponse(
      {required this.status,
      this.message = '',
      @JsonKey(name: 'data') final List<FAQ>? items = const []})
      : _items = items;

  factory _$_FAQResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FAQResponseFromJson(json);

  @override
  final int status;
  @override
  @JsonKey()
  final String message;
  final List<FAQ>? _items;
  @override
  @JsonKey(name: 'data')
  List<FAQ>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FAQResponse(status: $status, message: $message, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FAQResponse &&
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
  _$$_FAQResponseCopyWith<_$_FAQResponse> get copyWith =>
      __$$_FAQResponseCopyWithImpl<_$_FAQResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FAQResponseToJson(
      this,
    );
  }
}

abstract class _FAQResponse implements FAQResponse {
  factory _FAQResponse(
      {required final int status,
      final String message,
      @JsonKey(name: 'data') final List<FAQ>? items}) = _$_FAQResponse;

  factory _FAQResponse.fromJson(Map<String, dynamic> json) =
      _$_FAQResponse.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  @JsonKey(name: 'data')
  List<FAQ>? get items;
  @override
  @JsonKey(ignore: true)
  _$$_FAQResponseCopyWith<_$_FAQResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
