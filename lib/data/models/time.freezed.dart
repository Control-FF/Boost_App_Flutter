// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TimeData _$TimeDataFromJson(Map<String, dynamic> json) {
  return _TimeData.fromJson(json);
}

/// @nodoc
mixin _$TimeData {
  TimeBanner? get banner => throw _privateConstructorUsedError;
  @JsonKey(name: 'timesSaleItems')
  List<TimeSaleItem>? get timeSaleData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeDataCopyWith<TimeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeDataCopyWith<$Res> {
  factory $TimeDataCopyWith(TimeData value, $Res Function(TimeData) then) =
      _$TimeDataCopyWithImpl<$Res, TimeData>;
  @useResult
  $Res call(
      {TimeBanner? banner,
      @JsonKey(name: 'timesSaleItems') List<TimeSaleItem>? timeSaleData});

  $TimeBannerCopyWith<$Res>? get banner;
}

/// @nodoc
class _$TimeDataCopyWithImpl<$Res, $Val extends TimeData>
    implements $TimeDataCopyWith<$Res> {
  _$TimeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banner = freezed,
    Object? timeSaleData = freezed,
  }) {
    return _then(_value.copyWith(
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as TimeBanner?,
      timeSaleData: freezed == timeSaleData
          ? _value.timeSaleData
          : timeSaleData // ignore: cast_nullable_to_non_nullable
              as List<TimeSaleItem>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeBannerCopyWith<$Res>? get banner {
    if (_value.banner == null) {
      return null;
    }

    return $TimeBannerCopyWith<$Res>(_value.banner!, (value) {
      return _then(_value.copyWith(banner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TimeDataImplCopyWith<$Res>
    implements $TimeDataCopyWith<$Res> {
  factory _$$TimeDataImplCopyWith(
          _$TimeDataImpl value, $Res Function(_$TimeDataImpl) then) =
      __$$TimeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TimeBanner? banner,
      @JsonKey(name: 'timesSaleItems') List<TimeSaleItem>? timeSaleData});

  @override
  $TimeBannerCopyWith<$Res>? get banner;
}

/// @nodoc
class __$$TimeDataImplCopyWithImpl<$Res>
    extends _$TimeDataCopyWithImpl<$Res, _$TimeDataImpl>
    implements _$$TimeDataImplCopyWith<$Res> {
  __$$TimeDataImplCopyWithImpl(
      _$TimeDataImpl _value, $Res Function(_$TimeDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banner = freezed,
    Object? timeSaleData = freezed,
  }) {
    return _then(_$TimeDataImpl(
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as TimeBanner?,
      timeSaleData: freezed == timeSaleData
          ? _value._timeSaleData
          : timeSaleData // ignore: cast_nullable_to_non_nullable
              as List<TimeSaleItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeDataImpl implements _TimeData {
  _$TimeDataImpl(
      {this.banner,
      @JsonKey(name: 'timesSaleItems')
      final List<TimeSaleItem>? timeSaleData = const []})
      : _timeSaleData = timeSaleData;

  factory _$TimeDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeDataImplFromJson(json);

  @override
  final TimeBanner? banner;
  final List<TimeSaleItem>? _timeSaleData;
  @override
  @JsonKey(name: 'timesSaleItems')
  List<TimeSaleItem>? get timeSaleData {
    final value = _timeSaleData;
    if (value == null) return null;
    if (_timeSaleData is EqualUnmodifiableListView) return _timeSaleData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TimeData(banner: $banner, timeSaleData: $timeSaleData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeDataImpl &&
            (identical(other.banner, banner) || other.banner == banner) &&
            const DeepCollectionEquality()
                .equals(other._timeSaleData, _timeSaleData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, banner, const DeepCollectionEquality().hash(_timeSaleData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeDataImplCopyWith<_$TimeDataImpl> get copyWith =>
      __$$TimeDataImplCopyWithImpl<_$TimeDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeDataImplToJson(
      this,
    );
  }
}

abstract class _TimeData implements TimeData {
  factory _TimeData(
      {final TimeBanner? banner,
      @JsonKey(name: 'timesSaleItems')
      final List<TimeSaleItem>? timeSaleData}) = _$TimeDataImpl;

  factory _TimeData.fromJson(Map<String, dynamic> json) =
      _$TimeDataImpl.fromJson;

  @override
  TimeBanner? get banner;
  @override
  @JsonKey(name: 'timesSaleItems')
  List<TimeSaleItem>? get timeSaleData;
  @override
  @JsonKey(ignore: true)
  _$$TimeDataImplCopyWith<_$TimeDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TimeBanner _$TimeBannerFromJson(Map<String, dynamic> json) {
  return _TimeBanner.fromJson(json);
}

/// @nodoc
mixin _$TimeBanner {
  @JsonKey(name: 'mainBanner')
  List<TimeBannerList>? get mainBanner => throw _privateConstructorUsedError;
  @JsonKey(name: 'bottomBanner')
  List<TimeBannerList>? get bottomBanner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeBannerCopyWith<TimeBanner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeBannerCopyWith<$Res> {
  factory $TimeBannerCopyWith(
          TimeBanner value, $Res Function(TimeBanner) then) =
      _$TimeBannerCopyWithImpl<$Res, TimeBanner>;
  @useResult
  $Res call(
      {@JsonKey(name: 'mainBanner') List<TimeBannerList>? mainBanner,
      @JsonKey(name: 'bottomBanner') List<TimeBannerList>? bottomBanner});
}

/// @nodoc
class _$TimeBannerCopyWithImpl<$Res, $Val extends TimeBanner>
    implements $TimeBannerCopyWith<$Res> {
  _$TimeBannerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainBanner = freezed,
    Object? bottomBanner = freezed,
  }) {
    return _then(_value.copyWith(
      mainBanner: freezed == mainBanner
          ? _value.mainBanner
          : mainBanner // ignore: cast_nullable_to_non_nullable
              as List<TimeBannerList>?,
      bottomBanner: freezed == bottomBanner
          ? _value.bottomBanner
          : bottomBanner // ignore: cast_nullable_to_non_nullable
              as List<TimeBannerList>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeBannerImplCopyWith<$Res>
    implements $TimeBannerCopyWith<$Res> {
  factory _$$TimeBannerImplCopyWith(
          _$TimeBannerImpl value, $Res Function(_$TimeBannerImpl) then) =
      __$$TimeBannerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'mainBanner') List<TimeBannerList>? mainBanner,
      @JsonKey(name: 'bottomBanner') List<TimeBannerList>? bottomBanner});
}

/// @nodoc
class __$$TimeBannerImplCopyWithImpl<$Res>
    extends _$TimeBannerCopyWithImpl<$Res, _$TimeBannerImpl>
    implements _$$TimeBannerImplCopyWith<$Res> {
  __$$TimeBannerImplCopyWithImpl(
      _$TimeBannerImpl _value, $Res Function(_$TimeBannerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainBanner = freezed,
    Object? bottomBanner = freezed,
  }) {
    return _then(_$TimeBannerImpl(
      mainBanner: freezed == mainBanner
          ? _value._mainBanner
          : mainBanner // ignore: cast_nullable_to_non_nullable
              as List<TimeBannerList>?,
      bottomBanner: freezed == bottomBanner
          ? _value._bottomBanner
          : bottomBanner // ignore: cast_nullable_to_non_nullable
              as List<TimeBannerList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeBannerImpl implements _TimeBanner {
  _$TimeBannerImpl(
      {@JsonKey(name: 'mainBanner')
      final List<TimeBannerList>? mainBanner = const [],
      @JsonKey(name: 'bottomBanner')
      final List<TimeBannerList>? bottomBanner = const []})
      : _mainBanner = mainBanner,
        _bottomBanner = bottomBanner;

  factory _$TimeBannerImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeBannerImplFromJson(json);

  final List<TimeBannerList>? _mainBanner;
  @override
  @JsonKey(name: 'mainBanner')
  List<TimeBannerList>? get mainBanner {
    final value = _mainBanner;
    if (value == null) return null;
    if (_mainBanner is EqualUnmodifiableListView) return _mainBanner;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TimeBannerList>? _bottomBanner;
  @override
  @JsonKey(name: 'bottomBanner')
  List<TimeBannerList>? get bottomBanner {
    final value = _bottomBanner;
    if (value == null) return null;
    if (_bottomBanner is EqualUnmodifiableListView) return _bottomBanner;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TimeBanner(mainBanner: $mainBanner, bottomBanner: $bottomBanner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeBannerImpl &&
            const DeepCollectionEquality()
                .equals(other._mainBanner, _mainBanner) &&
            const DeepCollectionEquality()
                .equals(other._bottomBanner, _bottomBanner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_mainBanner),
      const DeepCollectionEquality().hash(_bottomBanner));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeBannerImplCopyWith<_$TimeBannerImpl> get copyWith =>
      __$$TimeBannerImplCopyWithImpl<_$TimeBannerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeBannerImplToJson(
      this,
    );
  }
}

abstract class _TimeBanner implements TimeBanner {
  factory _TimeBanner(
      {@JsonKey(name: 'mainBanner') final List<TimeBannerList>? mainBanner,
      @JsonKey(name: 'bottomBanner')
      final List<TimeBannerList>? bottomBanner}) = _$TimeBannerImpl;

  factory _TimeBanner.fromJson(Map<String, dynamic> json) =
      _$TimeBannerImpl.fromJson;

  @override
  @JsonKey(name: 'mainBanner')
  List<TimeBannerList>? get mainBanner;
  @override
  @JsonKey(name: 'bottomBanner')
  List<TimeBannerList>? get bottomBanner;
  @override
  @JsonKey(ignore: true)
  _$$TimeBannerImplCopyWith<_$TimeBannerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TimeBannerList _$TimeBannerListFromJson(Map<String, dynamic> json) {
  return _TimeBannerList.fromJson(json);
}

/// @nodoc
mixin _$TimeBannerList {
  int get bn_id => throw _privateConstructorUsedError;
  String get bn_alt => throw _privateConstructorUsedError;
  String get bn_url => throw _privateConstructorUsedError;
  String get bn_img => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeBannerListCopyWith<TimeBannerList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeBannerListCopyWith<$Res> {
  factory $TimeBannerListCopyWith(
          TimeBannerList value, $Res Function(TimeBannerList) then) =
      _$TimeBannerListCopyWithImpl<$Res, TimeBannerList>;
  @useResult
  $Res call({int bn_id, String bn_alt, String bn_url, String bn_img});
}

/// @nodoc
class _$TimeBannerListCopyWithImpl<$Res, $Val extends TimeBannerList>
    implements $TimeBannerListCopyWith<$Res> {
  _$TimeBannerListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bn_id = null,
    Object? bn_alt = null,
    Object? bn_url = null,
    Object? bn_img = null,
  }) {
    return _then(_value.copyWith(
      bn_id: null == bn_id
          ? _value.bn_id
          : bn_id // ignore: cast_nullable_to_non_nullable
              as int,
      bn_alt: null == bn_alt
          ? _value.bn_alt
          : bn_alt // ignore: cast_nullable_to_non_nullable
              as String,
      bn_url: null == bn_url
          ? _value.bn_url
          : bn_url // ignore: cast_nullable_to_non_nullable
              as String,
      bn_img: null == bn_img
          ? _value.bn_img
          : bn_img // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeBannerListImplCopyWith<$Res>
    implements $TimeBannerListCopyWith<$Res> {
  factory _$$TimeBannerListImplCopyWith(_$TimeBannerListImpl value,
          $Res Function(_$TimeBannerListImpl) then) =
      __$$TimeBannerListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int bn_id, String bn_alt, String bn_url, String bn_img});
}

/// @nodoc
class __$$TimeBannerListImplCopyWithImpl<$Res>
    extends _$TimeBannerListCopyWithImpl<$Res, _$TimeBannerListImpl>
    implements _$$TimeBannerListImplCopyWith<$Res> {
  __$$TimeBannerListImplCopyWithImpl(
      _$TimeBannerListImpl _value, $Res Function(_$TimeBannerListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bn_id = null,
    Object? bn_alt = null,
    Object? bn_url = null,
    Object? bn_img = null,
  }) {
    return _then(_$TimeBannerListImpl(
      bn_id: null == bn_id
          ? _value.bn_id
          : bn_id // ignore: cast_nullable_to_non_nullable
              as int,
      bn_alt: null == bn_alt
          ? _value.bn_alt
          : bn_alt // ignore: cast_nullable_to_non_nullable
              as String,
      bn_url: null == bn_url
          ? _value.bn_url
          : bn_url // ignore: cast_nullable_to_non_nullable
              as String,
      bn_img: null == bn_img
          ? _value.bn_img
          : bn_img // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeBannerListImpl implements _TimeBannerList {
  _$TimeBannerListImpl(
      {this.bn_id = 0, this.bn_alt = '', this.bn_url = '', this.bn_img = ''});

  factory _$TimeBannerListImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeBannerListImplFromJson(json);

  @override
  @JsonKey()
  final int bn_id;
  @override
  @JsonKey()
  final String bn_alt;
  @override
  @JsonKey()
  final String bn_url;
  @override
  @JsonKey()
  final String bn_img;

  @override
  String toString() {
    return 'TimeBannerList(bn_id: $bn_id, bn_alt: $bn_alt, bn_url: $bn_url, bn_img: $bn_img)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeBannerListImpl &&
            (identical(other.bn_id, bn_id) || other.bn_id == bn_id) &&
            (identical(other.bn_alt, bn_alt) || other.bn_alt == bn_alt) &&
            (identical(other.bn_url, bn_url) || other.bn_url == bn_url) &&
            (identical(other.bn_img, bn_img) || other.bn_img == bn_img));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, bn_id, bn_alt, bn_url, bn_img);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeBannerListImplCopyWith<_$TimeBannerListImpl> get copyWith =>
      __$$TimeBannerListImplCopyWithImpl<_$TimeBannerListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeBannerListImplToJson(
      this,
    );
  }
}

abstract class _TimeBannerList implements TimeBannerList {
  factory _TimeBannerList(
      {final int bn_id,
      final String bn_alt,
      final String bn_url,
      final String bn_img}) = _$TimeBannerListImpl;

  factory _TimeBannerList.fromJson(Map<String, dynamic> json) =
      _$TimeBannerListImpl.fromJson;

  @override
  int get bn_id;
  @override
  String get bn_alt;
  @override
  String get bn_url;
  @override
  String get bn_img;
  @override
  @JsonKey(ignore: true)
  _$$TimeBannerListImplCopyWith<_$TimeBannerListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TimeSaleItem _$TimeSaleItemFromJson(Map<String, dynamic> json) {
  return _TimeSaleItem.fromJson(json);
}

/// @nodoc
mixin _$TimeSaleItem {
  String get it_id => throw _privateConstructorUsedError;
  String get it_name => throw _privateConstructorUsedError;
  int get it_cust_price => throw _privateConstructorUsedError;
  int get it_price => throw _privateConstructorUsedError;
  String get it_img1 => throw _privateConstructorUsedError;
  String get it_time => throw _privateConstructorUsedError;
  int get it_use_cnt => throw _privateConstructorUsedError;
  int get it_sum_qty => throw _privateConstructorUsedError;
  String get sale_start_time => throw _privateConstructorUsedError;
  String get sale_end_time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeSaleItemCopyWith<TimeSaleItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeSaleItemCopyWith<$Res> {
  factory $TimeSaleItemCopyWith(
          TimeSaleItem value, $Res Function(TimeSaleItem) then) =
      _$TimeSaleItemCopyWithImpl<$Res, TimeSaleItem>;
  @useResult
  $Res call(
      {String it_id,
      String it_name,
      int it_cust_price,
      int it_price,
      String it_img1,
      String it_time,
      int it_use_cnt,
      int it_sum_qty,
      String sale_start_time,
      String sale_end_time});
}

/// @nodoc
class _$TimeSaleItemCopyWithImpl<$Res, $Val extends TimeSaleItem>
    implements $TimeSaleItemCopyWith<$Res> {
  _$TimeSaleItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? it_id = null,
    Object? it_name = null,
    Object? it_cust_price = null,
    Object? it_price = null,
    Object? it_img1 = null,
    Object? it_time = null,
    Object? it_use_cnt = null,
    Object? it_sum_qty = null,
    Object? sale_start_time = null,
    Object? sale_end_time = null,
  }) {
    return _then(_value.copyWith(
      it_id: null == it_id
          ? _value.it_id
          : it_id // ignore: cast_nullable_to_non_nullable
              as String,
      it_name: null == it_name
          ? _value.it_name
          : it_name // ignore: cast_nullable_to_non_nullable
              as String,
      it_cust_price: null == it_cust_price
          ? _value.it_cust_price
          : it_cust_price // ignore: cast_nullable_to_non_nullable
              as int,
      it_price: null == it_price
          ? _value.it_price
          : it_price // ignore: cast_nullable_to_non_nullable
              as int,
      it_img1: null == it_img1
          ? _value.it_img1
          : it_img1 // ignore: cast_nullable_to_non_nullable
              as String,
      it_time: null == it_time
          ? _value.it_time
          : it_time // ignore: cast_nullable_to_non_nullable
              as String,
      it_use_cnt: null == it_use_cnt
          ? _value.it_use_cnt
          : it_use_cnt // ignore: cast_nullable_to_non_nullable
              as int,
      it_sum_qty: null == it_sum_qty
          ? _value.it_sum_qty
          : it_sum_qty // ignore: cast_nullable_to_non_nullable
              as int,
      sale_start_time: null == sale_start_time
          ? _value.sale_start_time
          : sale_start_time // ignore: cast_nullable_to_non_nullable
              as String,
      sale_end_time: null == sale_end_time
          ? _value.sale_end_time
          : sale_end_time // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeSaleItemImplCopyWith<$Res>
    implements $TimeSaleItemCopyWith<$Res> {
  factory _$$TimeSaleItemImplCopyWith(
          _$TimeSaleItemImpl value, $Res Function(_$TimeSaleItemImpl) then) =
      __$$TimeSaleItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String it_id,
      String it_name,
      int it_cust_price,
      int it_price,
      String it_img1,
      String it_time,
      int it_use_cnt,
      int it_sum_qty,
      String sale_start_time,
      String sale_end_time});
}

/// @nodoc
class __$$TimeSaleItemImplCopyWithImpl<$Res>
    extends _$TimeSaleItemCopyWithImpl<$Res, _$TimeSaleItemImpl>
    implements _$$TimeSaleItemImplCopyWith<$Res> {
  __$$TimeSaleItemImplCopyWithImpl(
      _$TimeSaleItemImpl _value, $Res Function(_$TimeSaleItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? it_id = null,
    Object? it_name = null,
    Object? it_cust_price = null,
    Object? it_price = null,
    Object? it_img1 = null,
    Object? it_time = null,
    Object? it_use_cnt = null,
    Object? it_sum_qty = null,
    Object? sale_start_time = null,
    Object? sale_end_time = null,
  }) {
    return _then(_$TimeSaleItemImpl(
      it_id: null == it_id
          ? _value.it_id
          : it_id // ignore: cast_nullable_to_non_nullable
              as String,
      it_name: null == it_name
          ? _value.it_name
          : it_name // ignore: cast_nullable_to_non_nullable
              as String,
      it_cust_price: null == it_cust_price
          ? _value.it_cust_price
          : it_cust_price // ignore: cast_nullable_to_non_nullable
              as int,
      it_price: null == it_price
          ? _value.it_price
          : it_price // ignore: cast_nullable_to_non_nullable
              as int,
      it_img1: null == it_img1
          ? _value.it_img1
          : it_img1 // ignore: cast_nullable_to_non_nullable
              as String,
      it_time: null == it_time
          ? _value.it_time
          : it_time // ignore: cast_nullable_to_non_nullable
              as String,
      it_use_cnt: null == it_use_cnt
          ? _value.it_use_cnt
          : it_use_cnt // ignore: cast_nullable_to_non_nullable
              as int,
      it_sum_qty: null == it_sum_qty
          ? _value.it_sum_qty
          : it_sum_qty // ignore: cast_nullable_to_non_nullable
              as int,
      sale_start_time: null == sale_start_time
          ? _value.sale_start_time
          : sale_start_time // ignore: cast_nullable_to_non_nullable
              as String,
      sale_end_time: null == sale_end_time
          ? _value.sale_end_time
          : sale_end_time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeSaleItemImpl implements _TimeSaleItem {
  _$TimeSaleItemImpl(
      {this.it_id = '',
      this.it_name = '',
      this.it_cust_price = 0,
      this.it_price = 0,
      this.it_img1 = '',
      this.it_time = '',
      this.it_use_cnt = 0,
      this.it_sum_qty = 0,
      this.sale_start_time = '',
      this.sale_end_time = ''});

  factory _$TimeSaleItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeSaleItemImplFromJson(json);

  @override
  @JsonKey()
  final String it_id;
  @override
  @JsonKey()
  final String it_name;
  @override
  @JsonKey()
  final int it_cust_price;
  @override
  @JsonKey()
  final int it_price;
  @override
  @JsonKey()
  final String it_img1;
  @override
  @JsonKey()
  final String it_time;
  @override
  @JsonKey()
  final int it_use_cnt;
  @override
  @JsonKey()
  final int it_sum_qty;
  @override
  @JsonKey()
  final String sale_start_time;
  @override
  @JsonKey()
  final String sale_end_time;

  @override
  String toString() {
    return 'TimeSaleItem(it_id: $it_id, it_name: $it_name, it_cust_price: $it_cust_price, it_price: $it_price, it_img1: $it_img1, it_time: $it_time, it_use_cnt: $it_use_cnt, it_sum_qty: $it_sum_qty, sale_start_time: $sale_start_time, sale_end_time: $sale_end_time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeSaleItemImpl &&
            (identical(other.it_id, it_id) || other.it_id == it_id) &&
            (identical(other.it_name, it_name) || other.it_name == it_name) &&
            (identical(other.it_cust_price, it_cust_price) ||
                other.it_cust_price == it_cust_price) &&
            (identical(other.it_price, it_price) ||
                other.it_price == it_price) &&
            (identical(other.it_img1, it_img1) || other.it_img1 == it_img1) &&
            (identical(other.it_time, it_time) || other.it_time == it_time) &&
            (identical(other.it_use_cnt, it_use_cnt) ||
                other.it_use_cnt == it_use_cnt) &&
            (identical(other.it_sum_qty, it_sum_qty) ||
                other.it_sum_qty == it_sum_qty) &&
            (identical(other.sale_start_time, sale_start_time) ||
                other.sale_start_time == sale_start_time) &&
            (identical(other.sale_end_time, sale_end_time) ||
                other.sale_end_time == sale_end_time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      it_id,
      it_name,
      it_cust_price,
      it_price,
      it_img1,
      it_time,
      it_use_cnt,
      it_sum_qty,
      sale_start_time,
      sale_end_time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeSaleItemImplCopyWith<_$TimeSaleItemImpl> get copyWith =>
      __$$TimeSaleItemImplCopyWithImpl<_$TimeSaleItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeSaleItemImplToJson(
      this,
    );
  }
}

abstract class _TimeSaleItem implements TimeSaleItem {
  factory _TimeSaleItem(
      {final String it_id,
      final String it_name,
      final int it_cust_price,
      final int it_price,
      final String it_img1,
      final String it_time,
      final int it_use_cnt,
      final int it_sum_qty,
      final String sale_start_time,
      final String sale_end_time}) = _$TimeSaleItemImpl;

  factory _TimeSaleItem.fromJson(Map<String, dynamic> json) =
      _$TimeSaleItemImpl.fromJson;

  @override
  String get it_id;
  @override
  String get it_name;
  @override
  int get it_cust_price;
  @override
  int get it_price;
  @override
  String get it_img1;
  @override
  String get it_time;
  @override
  int get it_use_cnt;
  @override
  int get it_sum_qty;
  @override
  String get sale_start_time;
  @override
  String get sale_end_time;
  @override
  @JsonKey(ignore: true)
  _$$TimeSaleItemImplCopyWith<_$TimeSaleItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TimeResponse _$TimeResponseFromJson(Map<String, dynamic> json) {
  return _TimeResponse.fromJson(json);
}

/// @nodoc
mixin _$TimeResponse {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  TimeData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeResponseCopyWith<TimeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeResponseCopyWith<$Res> {
  factory $TimeResponseCopyWith(
          TimeResponse value, $Res Function(TimeResponse) then) =
      _$TimeResponseCopyWithImpl<$Res, TimeResponse>;
  @useResult
  $Res call({int status, String message, TimeData? data});

  $TimeDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$TimeResponseCopyWithImpl<$Res, $Val extends TimeResponse>
    implements $TimeResponseCopyWith<$Res> {
  _$TimeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TimeData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $TimeDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TimeResponseImplCopyWith<$Res>
    implements $TimeResponseCopyWith<$Res> {
  factory _$$TimeResponseImplCopyWith(
          _$TimeResponseImpl value, $Res Function(_$TimeResponseImpl) then) =
      __$$TimeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String message, TimeData? data});

  @override
  $TimeDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$TimeResponseImplCopyWithImpl<$Res>
    extends _$TimeResponseCopyWithImpl<$Res, _$TimeResponseImpl>
    implements _$$TimeResponseImplCopyWith<$Res> {
  __$$TimeResponseImplCopyWithImpl(
      _$TimeResponseImpl _value, $Res Function(_$TimeResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_$TimeResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TimeData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeResponseImpl implements _TimeResponse {
  _$TimeResponseImpl({required this.status, this.message = '', this.data});

  factory _$TimeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeResponseImplFromJson(json);

  @override
  final int status;
  @override
  @JsonKey()
  final String message;
  @override
  final TimeData? data;

  @override
  String toString() {
    return 'TimeResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeResponseImpl &&
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
  _$$TimeResponseImplCopyWith<_$TimeResponseImpl> get copyWith =>
      __$$TimeResponseImplCopyWithImpl<_$TimeResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeResponseImplToJson(
      this,
    );
  }
}

abstract class _TimeResponse implements TimeResponse {
  factory _TimeResponse(
      {required final int status,
      final String message,
      final TimeData? data}) = _$TimeResponseImpl;

  factory _TimeResponse.fromJson(Map<String, dynamic> json) =
      _$TimeResponseImpl.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  TimeData? get data;
  @override
  @JsonKey(ignore: true)
  _$$TimeResponseImplCopyWith<_$TimeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
