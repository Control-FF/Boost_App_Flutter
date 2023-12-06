// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keyword_rank.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KeywordRank _$KeywordRankFromJson(Map<String, dynamic> json) {
  return _KeywordRank.fromJson(json);
}

/// @nodoc
mixin _$KeywordRank {
  int get rank => throw _privateConstructorUsedError;
  String get keyword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KeywordRankCopyWith<KeywordRank> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeywordRankCopyWith<$Res> {
  factory $KeywordRankCopyWith(
          KeywordRank value, $Res Function(KeywordRank) then) =
      _$KeywordRankCopyWithImpl<$Res, KeywordRank>;
  @useResult
  $Res call({int rank, String keyword});
}

/// @nodoc
class _$KeywordRankCopyWithImpl<$Res, $Val extends KeywordRank>
    implements $KeywordRankCopyWith<$Res> {
  _$KeywordRankCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rank = null,
    Object? keyword = null,
  }) {
    return _then(_value.copyWith(
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KeywordRankImplCopyWith<$Res>
    implements $KeywordRankCopyWith<$Res> {
  factory _$$KeywordRankImplCopyWith(
          _$KeywordRankImpl value, $Res Function(_$KeywordRankImpl) then) =
      __$$KeywordRankImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int rank, String keyword});
}

/// @nodoc
class __$$KeywordRankImplCopyWithImpl<$Res>
    extends _$KeywordRankCopyWithImpl<$Res, _$KeywordRankImpl>
    implements _$$KeywordRankImplCopyWith<$Res> {
  __$$KeywordRankImplCopyWithImpl(
      _$KeywordRankImpl _value, $Res Function(_$KeywordRankImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rank = null,
    Object? keyword = null,
  }) {
    return _then(_$KeywordRankImpl(
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KeywordRankImpl implements _KeywordRank {
  _$KeywordRankImpl({this.rank = 0, this.keyword = ''});

  factory _$KeywordRankImpl.fromJson(Map<String, dynamic> json) =>
      _$$KeywordRankImplFromJson(json);

  @override
  @JsonKey()
  final int rank;
  @override
  @JsonKey()
  final String keyword;

  @override
  String toString() {
    return 'KeywordRank(rank: $rank, keyword: $keyword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeywordRankImpl &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.keyword, keyword) || other.keyword == keyword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rank, keyword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KeywordRankImplCopyWith<_$KeywordRankImpl> get copyWith =>
      __$$KeywordRankImplCopyWithImpl<_$KeywordRankImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeywordRankImplToJson(
      this,
    );
  }
}

abstract class _KeywordRank implements KeywordRank {
  factory _KeywordRank({final int rank, final String keyword}) =
      _$KeywordRankImpl;

  factory _KeywordRank.fromJson(Map<String, dynamic> json) =
      _$KeywordRankImpl.fromJson;

  @override
  int get rank;
  @override
  String get keyword;
  @override
  @JsonKey(ignore: true)
  _$$KeywordRankImplCopyWith<_$KeywordRankImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

KeywordRankResponse _$KeywordRankResponseFromJson(Map<String, dynamic> json) {
  return _KeywordRankResponse.fromJson(json);
}

/// @nodoc
mixin _$KeywordRankResponse {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<KeywordRank>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KeywordRankResponseCopyWith<KeywordRankResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeywordRankResponseCopyWith<$Res> {
  factory $KeywordRankResponseCopyWith(
          KeywordRankResponse value, $Res Function(KeywordRankResponse) then) =
      _$KeywordRankResponseCopyWithImpl<$Res, KeywordRankResponse>;
  @useResult
  $Res call(
      {int status,
      String message,
      @JsonKey(name: 'data') List<KeywordRank>? items});
}

/// @nodoc
class _$KeywordRankResponseCopyWithImpl<$Res, $Val extends KeywordRankResponse>
    implements $KeywordRankResponseCopyWith<$Res> {
  _$KeywordRankResponseCopyWithImpl(this._value, this._then);

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
              as List<KeywordRank>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KeywordRankResponseImplCopyWith<$Res>
    implements $KeywordRankResponseCopyWith<$Res> {
  factory _$$KeywordRankResponseImplCopyWith(_$KeywordRankResponseImpl value,
          $Res Function(_$KeywordRankResponseImpl) then) =
      __$$KeywordRankResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status,
      String message,
      @JsonKey(name: 'data') List<KeywordRank>? items});
}

/// @nodoc
class __$$KeywordRankResponseImplCopyWithImpl<$Res>
    extends _$KeywordRankResponseCopyWithImpl<$Res, _$KeywordRankResponseImpl>
    implements _$$KeywordRankResponseImplCopyWith<$Res> {
  __$$KeywordRankResponseImplCopyWithImpl(_$KeywordRankResponseImpl _value,
      $Res Function(_$KeywordRankResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? items = freezed,
  }) {
    return _then(_$KeywordRankResponseImpl(
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
              as List<KeywordRank>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KeywordRankResponseImpl implements _KeywordRankResponse {
  _$KeywordRankResponseImpl(
      {required this.status,
      this.message = '',
      @JsonKey(name: 'data') final List<KeywordRank>? items = const []})
      : _items = items;

  factory _$KeywordRankResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$KeywordRankResponseImplFromJson(json);

  @override
  final int status;
  @override
  @JsonKey()
  final String message;
  final List<KeywordRank>? _items;
  @override
  @JsonKey(name: 'data')
  List<KeywordRank>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'KeywordRankResponse(status: $status, message: $message, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeywordRankResponseImpl &&
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
  _$$KeywordRankResponseImplCopyWith<_$KeywordRankResponseImpl> get copyWith =>
      __$$KeywordRankResponseImplCopyWithImpl<_$KeywordRankResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeywordRankResponseImplToJson(
      this,
    );
  }
}

abstract class _KeywordRankResponse implements KeywordRankResponse {
  factory _KeywordRankResponse(
          {required final int status,
          final String message,
          @JsonKey(name: 'data') final List<KeywordRank>? items}) =
      _$KeywordRankResponseImpl;

  factory _KeywordRankResponse.fromJson(Map<String, dynamic> json) =
      _$KeywordRankResponseImpl.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  @JsonKey(name: 'data')
  List<KeywordRank>? get items;
  @override
  @JsonKey(ignore: true)
  _$$KeywordRankResponseImplCopyWith<_$KeywordRankResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
