// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Notice _$NoticeFromJson(Map<String, dynamic> json) {
  return _Notice.fromJson(json);
}

/// @nodoc
mixin _$Notice {
  int get fa_id => throw _privateConstructorUsedError;
  String get fa_subject => throw _privateConstructorUsedError;
  String get fa_content => throw _privateConstructorUsedError;
  int get fa_order => throw _privateConstructorUsedError;
  bool get isExpand => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoticeCopyWith<Notice> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeCopyWith<$Res> {
  factory $NoticeCopyWith(Notice value, $Res Function(Notice) then) =
      _$NoticeCopyWithImpl<$Res, Notice>;
  @useResult
  $Res call(
      {int fa_id,
      String fa_subject,
      String fa_content,
      int fa_order,
      bool isExpand});
}

/// @nodoc
class _$NoticeCopyWithImpl<$Res, $Val extends Notice>
    implements $NoticeCopyWith<$Res> {
  _$NoticeCopyWithImpl(this._value, this._then);

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
    Object? isExpand = null,
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
      isExpand: null == isExpand
          ? _value.isExpand
          : isExpand // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NoticeCopyWith<$Res> implements $NoticeCopyWith<$Res> {
  factory _$$_NoticeCopyWith(_$_Notice value, $Res Function(_$_Notice) then) =
      __$$_NoticeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int fa_id,
      String fa_subject,
      String fa_content,
      int fa_order,
      bool isExpand});
}

/// @nodoc
class __$$_NoticeCopyWithImpl<$Res>
    extends _$NoticeCopyWithImpl<$Res, _$_Notice>
    implements _$$_NoticeCopyWith<$Res> {
  __$$_NoticeCopyWithImpl(_$_Notice _value, $Res Function(_$_Notice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fa_id = null,
    Object? fa_subject = null,
    Object? fa_content = null,
    Object? fa_order = null,
    Object? isExpand = null,
  }) {
    return _then(_$_Notice(
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
      isExpand: null == isExpand
          ? _value.isExpand
          : isExpand // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Notice implements _Notice {
  _$_Notice(
      {this.fa_id = 0,
      this.fa_subject = '',
      this.fa_content = '',
      this.fa_order = 0,
      this.isExpand = false});

  factory _$_Notice.fromJson(Map<String, dynamic> json) =>
      _$$_NoticeFromJson(json);

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
  final bool isExpand;

  @override
  String toString() {
    return 'Notice(fa_id: $fa_id, fa_subject: $fa_subject, fa_content: $fa_content, fa_order: $fa_order, isExpand: $isExpand)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Notice &&
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
  _$$_NoticeCopyWith<_$_Notice> get copyWith =>
      __$$_NoticeCopyWithImpl<_$_Notice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoticeToJson(
      this,
    );
  }
}

abstract class _Notice implements Notice {
  factory _Notice(
      {final int fa_id,
      final String fa_subject,
      final String fa_content,
      final int fa_order,
      final bool isExpand}) = _$_Notice;

  factory _Notice.fromJson(Map<String, dynamic> json) = _$_Notice.fromJson;

  @override
  int get fa_id;
  @override
  String get fa_subject;
  @override
  String get fa_content;
  @override
  int get fa_order;
  @override
  bool get isExpand;
  @override
  @JsonKey(ignore: true)
  _$$_NoticeCopyWith<_$_Notice> get copyWith =>
      throw _privateConstructorUsedError;
}

NoticeResponse _$NoticeResponseFromJson(Map<String, dynamic> json) {
  return _NoticeResponse.fromJson(json);
}

/// @nodoc
mixin _$NoticeResponse {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<Notice>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoticeResponseCopyWith<NoticeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeResponseCopyWith<$Res> {
  factory $NoticeResponseCopyWith(
          NoticeResponse value, $Res Function(NoticeResponse) then) =
      _$NoticeResponseCopyWithImpl<$Res, NoticeResponse>;
  @useResult
  $Res call(
      {int status, String message, @JsonKey(name: 'data') List<Notice>? items});
}

/// @nodoc
class _$NoticeResponseCopyWithImpl<$Res, $Val extends NoticeResponse>
    implements $NoticeResponseCopyWith<$Res> {
  _$NoticeResponseCopyWithImpl(this._value, this._then);

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
              as List<Notice>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NoticeResponseCopyWith<$Res>
    implements $NoticeResponseCopyWith<$Res> {
  factory _$$_NoticeResponseCopyWith(
          _$_NoticeResponse value, $Res Function(_$_NoticeResponse) then) =
      __$$_NoticeResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status, String message, @JsonKey(name: 'data') List<Notice>? items});
}

/// @nodoc
class __$$_NoticeResponseCopyWithImpl<$Res>
    extends _$NoticeResponseCopyWithImpl<$Res, _$_NoticeResponse>
    implements _$$_NoticeResponseCopyWith<$Res> {
  __$$_NoticeResponseCopyWithImpl(
      _$_NoticeResponse _value, $Res Function(_$_NoticeResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? items = freezed,
  }) {
    return _then(_$_NoticeResponse(
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
              as List<Notice>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NoticeResponse implements _NoticeResponse {
  _$_NoticeResponse(
      {required this.status,
      this.message = '',
      @JsonKey(name: 'data') final List<Notice>? items = const []})
      : _items = items;

  factory _$_NoticeResponse.fromJson(Map<String, dynamic> json) =>
      _$$_NoticeResponseFromJson(json);

  @override
  final int status;
  @override
  @JsonKey()
  final String message;
  final List<Notice>? _items;
  @override
  @JsonKey(name: 'data')
  List<Notice>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NoticeResponse(status: $status, message: $message, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoticeResponse &&
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
  _$$_NoticeResponseCopyWith<_$_NoticeResponse> get copyWith =>
      __$$_NoticeResponseCopyWithImpl<_$_NoticeResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoticeResponseToJson(
      this,
    );
  }
}

abstract class _NoticeResponse implements NoticeResponse {
  factory _NoticeResponse(
      {required final int status,
      final String message,
      @JsonKey(name: 'data') final List<Notice>? items}) = _$_NoticeResponse;

  factory _NoticeResponse.fromJson(Map<String, dynamic> json) =
      _$_NoticeResponse.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  @JsonKey(name: 'data')
  List<Notice>? get items;
  @override
  @JsonKey(ignore: true)
  _$$_NoticeResponseCopyWith<_$_NoticeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
