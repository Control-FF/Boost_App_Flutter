// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inquiry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Inquiry _$InquiryFromJson(Map<String, dynamic> json) {
  return _Inquiry.fromJson(json);
}

/// @nodoc
mixin _$Inquiry {
  int get iq_id => throw _privateConstructorUsedError;
  String? get iq_type => throw _privateConstructorUsedError;
  String get iq_question => throw _privateConstructorUsedError;
  String get iq_answer => throw _privateConstructorUsedError;
  String get is_secret => throw _privateConstructorUsedError;
  String get iq_time => throw _privateConstructorUsedError;
  String? get iq_answer_time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InquiryCopyWith<Inquiry> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InquiryCopyWith<$Res> {
  factory $InquiryCopyWith(Inquiry value, $Res Function(Inquiry) then) =
      _$InquiryCopyWithImpl<$Res, Inquiry>;
  @useResult
  $Res call(
      {int iq_id,
      String? iq_type,
      String iq_question,
      String iq_answer,
      String is_secret,
      String iq_time,
      String? iq_answer_time});
}

/// @nodoc
class _$InquiryCopyWithImpl<$Res, $Val extends Inquiry>
    implements $InquiryCopyWith<$Res> {
  _$InquiryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iq_id = null,
    Object? iq_type = freezed,
    Object? iq_question = null,
    Object? iq_answer = null,
    Object? is_secret = null,
    Object? iq_time = null,
    Object? iq_answer_time = freezed,
  }) {
    return _then(_value.copyWith(
      iq_id: null == iq_id
          ? _value.iq_id
          : iq_id // ignore: cast_nullable_to_non_nullable
              as int,
      iq_type: freezed == iq_type
          ? _value.iq_type
          : iq_type // ignore: cast_nullable_to_non_nullable
              as String?,
      iq_question: null == iq_question
          ? _value.iq_question
          : iq_question // ignore: cast_nullable_to_non_nullable
              as String,
      iq_answer: null == iq_answer
          ? _value.iq_answer
          : iq_answer // ignore: cast_nullable_to_non_nullable
              as String,
      is_secret: null == is_secret
          ? _value.is_secret
          : is_secret // ignore: cast_nullable_to_non_nullable
              as String,
      iq_time: null == iq_time
          ? _value.iq_time
          : iq_time // ignore: cast_nullable_to_non_nullable
              as String,
      iq_answer_time: freezed == iq_answer_time
          ? _value.iq_answer_time
          : iq_answer_time // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InquiryImplCopyWith<$Res> implements $InquiryCopyWith<$Res> {
  factory _$$InquiryImplCopyWith(
          _$InquiryImpl value, $Res Function(_$InquiryImpl) then) =
      __$$InquiryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int iq_id,
      String? iq_type,
      String iq_question,
      String iq_answer,
      String is_secret,
      String iq_time,
      String? iq_answer_time});
}

/// @nodoc
class __$$InquiryImplCopyWithImpl<$Res>
    extends _$InquiryCopyWithImpl<$Res, _$InquiryImpl>
    implements _$$InquiryImplCopyWith<$Res> {
  __$$InquiryImplCopyWithImpl(
      _$InquiryImpl _value, $Res Function(_$InquiryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iq_id = null,
    Object? iq_type = freezed,
    Object? iq_question = null,
    Object? iq_answer = null,
    Object? is_secret = null,
    Object? iq_time = null,
    Object? iq_answer_time = freezed,
  }) {
    return _then(_$InquiryImpl(
      iq_id: null == iq_id
          ? _value.iq_id
          : iq_id // ignore: cast_nullable_to_non_nullable
              as int,
      iq_type: freezed == iq_type
          ? _value.iq_type
          : iq_type // ignore: cast_nullable_to_non_nullable
              as String?,
      iq_question: null == iq_question
          ? _value.iq_question
          : iq_question // ignore: cast_nullable_to_non_nullable
              as String,
      iq_answer: null == iq_answer
          ? _value.iq_answer
          : iq_answer // ignore: cast_nullable_to_non_nullable
              as String,
      is_secret: null == is_secret
          ? _value.is_secret
          : is_secret // ignore: cast_nullable_to_non_nullable
              as String,
      iq_time: null == iq_time
          ? _value.iq_time
          : iq_time // ignore: cast_nullable_to_non_nullable
              as String,
      iq_answer_time: freezed == iq_answer_time
          ? _value.iq_answer_time
          : iq_answer_time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InquiryImpl implements _Inquiry {
  _$InquiryImpl(
      {this.iq_id = 0,
      this.iq_type = '',
      this.iq_question = '',
      this.iq_answer = '',
      this.is_secret = '',
      this.iq_time = '',
      this.iq_answer_time = ''});

  factory _$InquiryImpl.fromJson(Map<String, dynamic> json) =>
      _$$InquiryImplFromJson(json);

  @override
  @JsonKey()
  final int iq_id;
  @override
  @JsonKey()
  final String? iq_type;
  @override
  @JsonKey()
  final String iq_question;
  @override
  @JsonKey()
  final String iq_answer;
  @override
  @JsonKey()
  final String is_secret;
  @override
  @JsonKey()
  final String iq_time;
  @override
  @JsonKey()
  final String? iq_answer_time;

  @override
  String toString() {
    return 'Inquiry(iq_id: $iq_id, iq_type: $iq_type, iq_question: $iq_question, iq_answer: $iq_answer, is_secret: $is_secret, iq_time: $iq_time, iq_answer_time: $iq_answer_time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InquiryImpl &&
            (identical(other.iq_id, iq_id) || other.iq_id == iq_id) &&
            (identical(other.iq_type, iq_type) || other.iq_type == iq_type) &&
            (identical(other.iq_question, iq_question) ||
                other.iq_question == iq_question) &&
            (identical(other.iq_answer, iq_answer) ||
                other.iq_answer == iq_answer) &&
            (identical(other.is_secret, is_secret) ||
                other.is_secret == is_secret) &&
            (identical(other.iq_time, iq_time) || other.iq_time == iq_time) &&
            (identical(other.iq_answer_time, iq_answer_time) ||
                other.iq_answer_time == iq_answer_time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, iq_id, iq_type, iq_question,
      iq_answer, is_secret, iq_time, iq_answer_time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InquiryImplCopyWith<_$InquiryImpl> get copyWith =>
      __$$InquiryImplCopyWithImpl<_$InquiryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InquiryImplToJson(
      this,
    );
  }
}

abstract class _Inquiry implements Inquiry {
  factory _Inquiry(
      {final int iq_id,
      final String? iq_type,
      final String iq_question,
      final String iq_answer,
      final String is_secret,
      final String iq_time,
      final String? iq_answer_time}) = _$InquiryImpl;

  factory _Inquiry.fromJson(Map<String, dynamic> json) = _$InquiryImpl.fromJson;

  @override
  int get iq_id;
  @override
  String? get iq_type;
  @override
  String get iq_question;
  @override
  String get iq_answer;
  @override
  String get is_secret;
  @override
  String get iq_time;
  @override
  String? get iq_answer_time;
  @override
  @JsonKey(ignore: true)
  _$$InquiryImplCopyWith<_$InquiryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InquiryResponse _$InquiryResponseFromJson(Map<String, dynamic> json) {
  return _InquiryResponse.fromJson(json);
}

/// @nodoc
mixin _$InquiryResponse {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get listSize => throw _privateConstructorUsedError;
  int get totalPage => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  String get isLastPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'list')
  List<Inquiry>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InquiryResponseCopyWith<InquiryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InquiryResponseCopyWith<$Res> {
  factory $InquiryResponseCopyWith(
          InquiryResponse value, $Res Function(InquiryResponse) then) =
      _$InquiryResponseCopyWithImpl<$Res, InquiryResponse>;
  @useResult
  $Res call(
      {int status,
      String message,
      int page,
      int listSize,
      int totalPage,
      int totalCount,
      String isLastPage,
      @JsonKey(name: 'list') List<Inquiry>? items});
}

/// @nodoc
class _$InquiryResponseCopyWithImpl<$Res, $Val extends InquiryResponse>
    implements $InquiryResponseCopyWith<$Res> {
  _$InquiryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? page = null,
    Object? listSize = null,
    Object? totalPage = null,
    Object? totalCount = null,
    Object? isLastPage = null,
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
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      listSize: null == listSize
          ? _value.listSize
          : listSize // ignore: cast_nullable_to_non_nullable
              as int,
      totalPage: null == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      isLastPage: null == isLastPage
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as String,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Inquiry>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InquiryResponseImplCopyWith<$Res>
    implements $InquiryResponseCopyWith<$Res> {
  factory _$$InquiryResponseImplCopyWith(_$InquiryResponseImpl value,
          $Res Function(_$InquiryResponseImpl) then) =
      __$$InquiryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status,
      String message,
      int page,
      int listSize,
      int totalPage,
      int totalCount,
      String isLastPage,
      @JsonKey(name: 'list') List<Inquiry>? items});
}

/// @nodoc
class __$$InquiryResponseImplCopyWithImpl<$Res>
    extends _$InquiryResponseCopyWithImpl<$Res, _$InquiryResponseImpl>
    implements _$$InquiryResponseImplCopyWith<$Res> {
  __$$InquiryResponseImplCopyWithImpl(
      _$InquiryResponseImpl _value, $Res Function(_$InquiryResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? page = null,
    Object? listSize = null,
    Object? totalPage = null,
    Object? totalCount = null,
    Object? isLastPage = null,
    Object? items = freezed,
  }) {
    return _then(_$InquiryResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      listSize: null == listSize
          ? _value.listSize
          : listSize // ignore: cast_nullable_to_non_nullable
              as int,
      totalPage: null == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      isLastPage: null == isLastPage
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as String,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Inquiry>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InquiryResponseImpl implements _InquiryResponse {
  _$InquiryResponseImpl(
      {required this.status,
      this.message = '',
      this.page = 0,
      this.listSize = 0,
      this.totalPage = 0,
      this.totalCount = 0,
      this.isLastPage = '',
      @JsonKey(name: 'list') final List<Inquiry>? items = const []})
      : _items = items;

  factory _$InquiryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$InquiryResponseImplFromJson(json);

  @override
  final int status;
  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int listSize;
  @override
  @JsonKey()
  final int totalPage;
  @override
  @JsonKey()
  final int totalCount;
  @override
  @JsonKey()
  final String isLastPage;
  final List<Inquiry>? _items;
  @override
  @JsonKey(name: 'list')
  List<Inquiry>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'InquiryResponse(status: $status, message: $message, page: $page, listSize: $listSize, totalPage: $totalPage, totalCount: $totalCount, isLastPage: $isLastPage, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InquiryResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.listSize, listSize) ||
                other.listSize == listSize) &&
            (identical(other.totalPage, totalPage) ||
                other.totalPage == totalPage) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.isLastPage, isLastPage) ||
                other.isLastPage == isLastPage) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      message,
      page,
      listSize,
      totalPage,
      totalCount,
      isLastPage,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InquiryResponseImplCopyWith<_$InquiryResponseImpl> get copyWith =>
      __$$InquiryResponseImplCopyWithImpl<_$InquiryResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InquiryResponseImplToJson(
      this,
    );
  }
}

abstract class _InquiryResponse implements InquiryResponse {
  factory _InquiryResponse(
          {required final int status,
          final String message,
          final int page,
          final int listSize,
          final int totalPage,
          final int totalCount,
          final String isLastPage,
          @JsonKey(name: 'list') final List<Inquiry>? items}) =
      _$InquiryResponseImpl;

  factory _InquiryResponse.fromJson(Map<String, dynamic> json) =
      _$InquiryResponseImpl.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  int get page;
  @override
  int get listSize;
  @override
  int get totalPage;
  @override
  int get totalCount;
  @override
  String get isLastPage;
  @override
  @JsonKey(name: 'list')
  List<Inquiry>? get items;
  @override
  @JsonKey(ignore: true)
  _$$InquiryResponseImplCopyWith<_$InquiryResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
