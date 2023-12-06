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
abstract class _$$FAQImplCopyWith<$Res> implements $FAQCopyWith<$Res> {
  factory _$$FAQImplCopyWith(_$FAQImpl value, $Res Function(_$FAQImpl) then) =
      __$$FAQImplCopyWithImpl<$Res>;
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
class __$$FAQImplCopyWithImpl<$Res> extends _$FAQCopyWithImpl<$Res, _$FAQImpl>
    implements _$$FAQImplCopyWith<$Res> {
  __$$FAQImplCopyWithImpl(_$FAQImpl _value, $Res Function(_$FAQImpl) _then)
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
    return _then(_$FAQImpl(
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
class _$FAQImpl implements _FAQ {
  _$FAQImpl(
      {this.fa_id = 0,
      this.fa_subject = '',
      this.fa_content = '',
      this.fa_order = 0,
      this.isExpand = false});

  factory _$FAQImpl.fromJson(Map<String, dynamic> json) =>
      _$$FAQImplFromJson(json);

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
            other is _$FAQImpl &&
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
  _$$FAQImplCopyWith<_$FAQImpl> get copyWith =>
      __$$FAQImplCopyWithImpl<_$FAQImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FAQImplToJson(
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
      final bool? isExpand}) = _$FAQImpl;

  factory _FAQ.fromJson(Map<String, dynamic> json) = _$FAQImpl.fromJson;

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
  _$$FAQImplCopyWith<_$FAQImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
abstract class _$$FAQResponseImplCopyWith<$Res>
    implements $FAQResponseCopyWith<$Res> {
  factory _$$FAQResponseImplCopyWith(
          _$FAQResponseImpl value, $Res Function(_$FAQResponseImpl) then) =
      __$$FAQResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status, String message, @JsonKey(name: 'data') List<FAQ>? items});
}

/// @nodoc
class __$$FAQResponseImplCopyWithImpl<$Res>
    extends _$FAQResponseCopyWithImpl<$Res, _$FAQResponseImpl>
    implements _$$FAQResponseImplCopyWith<$Res> {
  __$$FAQResponseImplCopyWithImpl(
      _$FAQResponseImpl _value, $Res Function(_$FAQResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? items = freezed,
  }) {
    return _then(_$FAQResponseImpl(
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
class _$FAQResponseImpl implements _FAQResponse {
  _$FAQResponseImpl(
      {required this.status,
      this.message = '',
      @JsonKey(name: 'data') final List<FAQ>? items = const []})
      : _items = items;

  factory _$FAQResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FAQResponseImplFromJson(json);

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
            other is _$FAQResponseImpl &&
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
  _$$FAQResponseImplCopyWith<_$FAQResponseImpl> get copyWith =>
      __$$FAQResponseImplCopyWithImpl<_$FAQResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FAQResponseImplToJson(
      this,
    );
  }
}

abstract class _FAQResponse implements FAQResponse {
  factory _FAQResponse(
      {required final int status,
      final String message,
      @JsonKey(name: 'data') final List<FAQ>? items}) = _$FAQResponseImpl;

  factory _FAQResponse.fromJson(Map<String, dynamic> json) =
      _$FAQResponseImpl.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  @JsonKey(name: 'data')
  List<FAQ>? get items;
  @override
  @JsonKey(ignore: true)
  _$$FAQResponseImplCopyWith<_$FAQResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
