// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainData _$MainDataFromJson(Map<String, dynamic> json) {
  return _MainData.fromJson(json);
}

/// @nodoc
mixin _$MainData {
  Banner? get banner => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_data')
  List<CategoryData>? get categoryData => throw _privateConstructorUsedError;
  @JsonKey(name: 'mdItems')
  List<ProductItem>? get mdItems => throw _privateConstructorUsedError;
  @JsonKey(name: 'recommendItems')
  List<ProductItem>? get recommendItems => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainDataCopyWith<MainData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainDataCopyWith<$Res> {
  factory $MainDataCopyWith(MainData value, $Res Function(MainData) then) =
      _$MainDataCopyWithImpl<$Res, MainData>;
  @useResult
  $Res call(
      {Banner? banner,
      @JsonKey(name: 'category_data') List<CategoryData>? categoryData,
      @JsonKey(name: 'mdItems') List<ProductItem>? mdItems,
      @JsonKey(name: 'recommendItems') List<ProductItem>? recommendItems});

  $BannerCopyWith<$Res>? get banner;
}

/// @nodoc
class _$MainDataCopyWithImpl<$Res, $Val extends MainData>
    implements $MainDataCopyWith<$Res> {
  _$MainDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banner = freezed,
    Object? categoryData = freezed,
    Object? mdItems = freezed,
    Object? recommendItems = freezed,
  }) {
    return _then(_value.copyWith(
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as Banner?,
      categoryData: freezed == categoryData
          ? _value.categoryData
          : categoryData // ignore: cast_nullable_to_non_nullable
              as List<CategoryData>?,
      mdItems: freezed == mdItems
          ? _value.mdItems
          : mdItems // ignore: cast_nullable_to_non_nullable
              as List<ProductItem>?,
      recommendItems: freezed == recommendItems
          ? _value.recommendItems
          : recommendItems // ignore: cast_nullable_to_non_nullable
              as List<ProductItem>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BannerCopyWith<$Res>? get banner {
    if (_value.banner == null) {
      return null;
    }

    return $BannerCopyWith<$Res>(_value.banner!, (value) {
      return _then(_value.copyWith(banner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MainDataImplCopyWith<$Res>
    implements $MainDataCopyWith<$Res> {
  factory _$$MainDataImplCopyWith(
          _$MainDataImpl value, $Res Function(_$MainDataImpl) then) =
      __$$MainDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Banner? banner,
      @JsonKey(name: 'category_data') List<CategoryData>? categoryData,
      @JsonKey(name: 'mdItems') List<ProductItem>? mdItems,
      @JsonKey(name: 'recommendItems') List<ProductItem>? recommendItems});

  @override
  $BannerCopyWith<$Res>? get banner;
}

/// @nodoc
class __$$MainDataImplCopyWithImpl<$Res>
    extends _$MainDataCopyWithImpl<$Res, _$MainDataImpl>
    implements _$$MainDataImplCopyWith<$Res> {
  __$$MainDataImplCopyWithImpl(
      _$MainDataImpl _value, $Res Function(_$MainDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banner = freezed,
    Object? categoryData = freezed,
    Object? mdItems = freezed,
    Object? recommendItems = freezed,
  }) {
    return _then(_$MainDataImpl(
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as Banner?,
      categoryData: freezed == categoryData
          ? _value._categoryData
          : categoryData // ignore: cast_nullable_to_non_nullable
              as List<CategoryData>?,
      mdItems: freezed == mdItems
          ? _value._mdItems
          : mdItems // ignore: cast_nullable_to_non_nullable
              as List<ProductItem>?,
      recommendItems: freezed == recommendItems
          ? _value._recommendItems
          : recommendItems // ignore: cast_nullable_to_non_nullable
              as List<ProductItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MainDataImpl implements _MainData {
  _$MainDataImpl(
      {this.banner,
      @JsonKey(name: 'category_data')
      final List<CategoryData>? categoryData = const [],
      @JsonKey(name: 'mdItems') final List<ProductItem>? mdItems = const [],
      @JsonKey(name: 'recommendItems')
      final List<ProductItem>? recommendItems = const []})
      : _categoryData = categoryData,
        _mdItems = mdItems,
        _recommendItems = recommendItems;

  factory _$MainDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainDataImplFromJson(json);

  @override
  final Banner? banner;
  final List<CategoryData>? _categoryData;
  @override
  @JsonKey(name: 'category_data')
  List<CategoryData>? get categoryData {
    final value = _categoryData;
    if (value == null) return null;
    if (_categoryData is EqualUnmodifiableListView) return _categoryData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProductItem>? _mdItems;
  @override
  @JsonKey(name: 'mdItems')
  List<ProductItem>? get mdItems {
    final value = _mdItems;
    if (value == null) return null;
    if (_mdItems is EqualUnmodifiableListView) return _mdItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProductItem>? _recommendItems;
  @override
  @JsonKey(name: 'recommendItems')
  List<ProductItem>? get recommendItems {
    final value = _recommendItems;
    if (value == null) return null;
    if (_recommendItems is EqualUnmodifiableListView) return _recommendItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MainData(banner: $banner, categoryData: $categoryData, mdItems: $mdItems, recommendItems: $recommendItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainDataImpl &&
            (identical(other.banner, banner) || other.banner == banner) &&
            const DeepCollectionEquality()
                .equals(other._categoryData, _categoryData) &&
            const DeepCollectionEquality().equals(other._mdItems, _mdItems) &&
            const DeepCollectionEquality()
                .equals(other._recommendItems, _recommendItems));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      banner,
      const DeepCollectionEquality().hash(_categoryData),
      const DeepCollectionEquality().hash(_mdItems),
      const DeepCollectionEquality().hash(_recommendItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainDataImplCopyWith<_$MainDataImpl> get copyWith =>
      __$$MainDataImplCopyWithImpl<_$MainDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainDataImplToJson(
      this,
    );
  }
}

abstract class _MainData implements MainData {
  factory _MainData(
      {final Banner? banner,
      @JsonKey(name: 'category_data') final List<CategoryData>? categoryData,
      @JsonKey(name: 'mdItems') final List<ProductItem>? mdItems,
      @JsonKey(name: 'recommendItems')
      final List<ProductItem>? recommendItems}) = _$MainDataImpl;

  factory _MainData.fromJson(Map<String, dynamic> json) =
      _$MainDataImpl.fromJson;

  @override
  Banner? get banner;
  @override
  @JsonKey(name: 'category_data')
  List<CategoryData>? get categoryData;
  @override
  @JsonKey(name: 'mdItems')
  List<ProductItem>? get mdItems;
  @override
  @JsonKey(name: 'recommendItems')
  List<ProductItem>? get recommendItems;
  @override
  @JsonKey(ignore: true)
  _$$MainDataImplCopyWith<_$MainDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Banner _$BannerFromJson(Map<String, dynamic> json) {
  return _Banner.fromJson(json);
}

/// @nodoc
mixin _$Banner {
  @JsonKey(name: 'mainBanner')
  List<BannerList>? get mainBanner => throw _privateConstructorUsedError;
  @JsonKey(name: 'bottomBanner')
  List<BannerList>? get bottomBanner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerCopyWith<Banner> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerCopyWith<$Res> {
  factory $BannerCopyWith(Banner value, $Res Function(Banner) then) =
      _$BannerCopyWithImpl<$Res, Banner>;
  @useResult
  $Res call(
      {@JsonKey(name: 'mainBanner') List<BannerList>? mainBanner,
      @JsonKey(name: 'bottomBanner') List<BannerList>? bottomBanner});
}

/// @nodoc
class _$BannerCopyWithImpl<$Res, $Val extends Banner>
    implements $BannerCopyWith<$Res> {
  _$BannerCopyWithImpl(this._value, this._then);

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
              as List<BannerList>?,
      bottomBanner: freezed == bottomBanner
          ? _value.bottomBanner
          : bottomBanner // ignore: cast_nullable_to_non_nullable
              as List<BannerList>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BannerImplCopyWith<$Res> implements $BannerCopyWith<$Res> {
  factory _$$BannerImplCopyWith(
          _$BannerImpl value, $Res Function(_$BannerImpl) then) =
      __$$BannerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'mainBanner') List<BannerList>? mainBanner,
      @JsonKey(name: 'bottomBanner') List<BannerList>? bottomBanner});
}

/// @nodoc
class __$$BannerImplCopyWithImpl<$Res>
    extends _$BannerCopyWithImpl<$Res, _$BannerImpl>
    implements _$$BannerImplCopyWith<$Res> {
  __$$BannerImplCopyWithImpl(
      _$BannerImpl _value, $Res Function(_$BannerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainBanner = freezed,
    Object? bottomBanner = freezed,
  }) {
    return _then(_$BannerImpl(
      mainBanner: freezed == mainBanner
          ? _value._mainBanner
          : mainBanner // ignore: cast_nullable_to_non_nullable
              as List<BannerList>?,
      bottomBanner: freezed == bottomBanner
          ? _value._bottomBanner
          : bottomBanner // ignore: cast_nullable_to_non_nullable
              as List<BannerList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BannerImpl implements _Banner {
  _$BannerImpl(
      {@JsonKey(name: 'mainBanner')
      final List<BannerList>? mainBanner = const [],
      @JsonKey(name: 'bottomBanner')
      final List<BannerList>? bottomBanner = const []})
      : _mainBanner = mainBanner,
        _bottomBanner = bottomBanner;

  factory _$BannerImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannerImplFromJson(json);

  final List<BannerList>? _mainBanner;
  @override
  @JsonKey(name: 'mainBanner')
  List<BannerList>? get mainBanner {
    final value = _mainBanner;
    if (value == null) return null;
    if (_mainBanner is EqualUnmodifiableListView) return _mainBanner;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<BannerList>? _bottomBanner;
  @override
  @JsonKey(name: 'bottomBanner')
  List<BannerList>? get bottomBanner {
    final value = _bottomBanner;
    if (value == null) return null;
    if (_bottomBanner is EqualUnmodifiableListView) return _bottomBanner;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Banner(mainBanner: $mainBanner, bottomBanner: $bottomBanner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerImpl &&
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
  _$$BannerImplCopyWith<_$BannerImpl> get copyWith =>
      __$$BannerImplCopyWithImpl<_$BannerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BannerImplToJson(
      this,
    );
  }
}

abstract class _Banner implements Banner {
  factory _Banner(
      {@JsonKey(name: 'mainBanner') final List<BannerList>? mainBanner,
      @JsonKey(name: 'bottomBanner')
      final List<BannerList>? bottomBanner}) = _$BannerImpl;

  factory _Banner.fromJson(Map<String, dynamic> json) = _$BannerImpl.fromJson;

  @override
  @JsonKey(name: 'mainBanner')
  List<BannerList>? get mainBanner;
  @override
  @JsonKey(name: 'bottomBanner')
  List<BannerList>? get bottomBanner;
  @override
  @JsonKey(ignore: true)
  _$$BannerImplCopyWith<_$BannerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BannerList _$BannerListFromJson(Map<String, dynamic> json) {
  return _BannerList.fromJson(json);
}

/// @nodoc
mixin _$BannerList {
  int get bn_id => throw _privateConstructorUsedError;
  String get bn_alt => throw _privateConstructorUsedError;
  String get bn_url => throw _privateConstructorUsedError;
  String get bn_img => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerListCopyWith<BannerList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerListCopyWith<$Res> {
  factory $BannerListCopyWith(
          BannerList value, $Res Function(BannerList) then) =
      _$BannerListCopyWithImpl<$Res, BannerList>;
  @useResult
  $Res call({int bn_id, String bn_alt, String bn_url, String bn_img});
}

/// @nodoc
class _$BannerListCopyWithImpl<$Res, $Val extends BannerList>
    implements $BannerListCopyWith<$Res> {
  _$BannerListCopyWithImpl(this._value, this._then);

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
abstract class _$$BannerListImplCopyWith<$Res>
    implements $BannerListCopyWith<$Res> {
  factory _$$BannerListImplCopyWith(
          _$BannerListImpl value, $Res Function(_$BannerListImpl) then) =
      __$$BannerListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int bn_id, String bn_alt, String bn_url, String bn_img});
}

/// @nodoc
class __$$BannerListImplCopyWithImpl<$Res>
    extends _$BannerListCopyWithImpl<$Res, _$BannerListImpl>
    implements _$$BannerListImplCopyWith<$Res> {
  __$$BannerListImplCopyWithImpl(
      _$BannerListImpl _value, $Res Function(_$BannerListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bn_id = null,
    Object? bn_alt = null,
    Object? bn_url = null,
    Object? bn_img = null,
  }) {
    return _then(_$BannerListImpl(
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
class _$BannerListImpl implements _BannerList {
  _$BannerListImpl(
      {this.bn_id = 0, this.bn_alt = '', this.bn_url = '', this.bn_img = ''});

  factory _$BannerListImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannerListImplFromJson(json);

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
    return 'BannerList(bn_id: $bn_id, bn_alt: $bn_alt, bn_url: $bn_url, bn_img: $bn_img)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerListImpl &&
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
  _$$BannerListImplCopyWith<_$BannerListImpl> get copyWith =>
      __$$BannerListImplCopyWithImpl<_$BannerListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BannerListImplToJson(
      this,
    );
  }
}

abstract class _BannerList implements BannerList {
  factory _BannerList(
      {final int bn_id,
      final String bn_alt,
      final String bn_url,
      final String bn_img}) = _$BannerListImpl;

  factory _BannerList.fromJson(Map<String, dynamic> json) =
      _$BannerListImpl.fromJson;

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
  _$$BannerListImplCopyWith<_$BannerListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryData _$CategoryDataFromJson(Map<String, dynamic> json) {
  return _CategoryData.fromJson(json);
}

/// @nodoc
mixin _$CategoryData {
  String get ca_id => throw _privateConstructorUsedError;
  String get ca_name => throw _privateConstructorUsedError;
  String get sub_flag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryDataCopyWith<CategoryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDataCopyWith<$Res> {
  factory $CategoryDataCopyWith(
          CategoryData value, $Res Function(CategoryData) then) =
      _$CategoryDataCopyWithImpl<$Res, CategoryData>;
  @useResult
  $Res call({String ca_id, String ca_name, String sub_flag});
}

/// @nodoc
class _$CategoryDataCopyWithImpl<$Res, $Val extends CategoryData>
    implements $CategoryDataCopyWith<$Res> {
  _$CategoryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ca_id = null,
    Object? ca_name = null,
    Object? sub_flag = null,
  }) {
    return _then(_value.copyWith(
      ca_id: null == ca_id
          ? _value.ca_id
          : ca_id // ignore: cast_nullable_to_non_nullable
              as String,
      ca_name: null == ca_name
          ? _value.ca_name
          : ca_name // ignore: cast_nullable_to_non_nullable
              as String,
      sub_flag: null == sub_flag
          ? _value.sub_flag
          : sub_flag // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryDataImplCopyWith<$Res>
    implements $CategoryDataCopyWith<$Res> {
  factory _$$CategoryDataImplCopyWith(
          _$CategoryDataImpl value, $Res Function(_$CategoryDataImpl) then) =
      __$$CategoryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ca_id, String ca_name, String sub_flag});
}

/// @nodoc
class __$$CategoryDataImplCopyWithImpl<$Res>
    extends _$CategoryDataCopyWithImpl<$Res, _$CategoryDataImpl>
    implements _$$CategoryDataImplCopyWith<$Res> {
  __$$CategoryDataImplCopyWithImpl(
      _$CategoryDataImpl _value, $Res Function(_$CategoryDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ca_id = null,
    Object? ca_name = null,
    Object? sub_flag = null,
  }) {
    return _then(_$CategoryDataImpl(
      ca_id: null == ca_id
          ? _value.ca_id
          : ca_id // ignore: cast_nullable_to_non_nullable
              as String,
      ca_name: null == ca_name
          ? _value.ca_name
          : ca_name // ignore: cast_nullable_to_non_nullable
              as String,
      sub_flag: null == sub_flag
          ? _value.sub_flag
          : sub_flag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryDataImpl implements _CategoryData {
  _$CategoryDataImpl(
      {this.ca_id = '', this.ca_name = '', this.sub_flag = 'false'});

  factory _$CategoryDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryDataImplFromJson(json);

  @override
  @JsonKey()
  final String ca_id;
  @override
  @JsonKey()
  final String ca_name;
  @override
  @JsonKey()
  final String sub_flag;

  @override
  String toString() {
    return 'CategoryData(ca_id: $ca_id, ca_name: $ca_name, sub_flag: $sub_flag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryDataImpl &&
            (identical(other.ca_id, ca_id) || other.ca_id == ca_id) &&
            (identical(other.ca_name, ca_name) || other.ca_name == ca_name) &&
            (identical(other.sub_flag, sub_flag) ||
                other.sub_flag == sub_flag));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ca_id, ca_name, sub_flag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryDataImplCopyWith<_$CategoryDataImpl> get copyWith =>
      __$$CategoryDataImplCopyWithImpl<_$CategoryDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryDataImplToJson(
      this,
    );
  }
}

abstract class _CategoryData implements CategoryData {
  factory _CategoryData(
      {final String ca_id,
      final String ca_name,
      final String sub_flag}) = _$CategoryDataImpl;

  factory _CategoryData.fromJson(Map<String, dynamic> json) =
      _$CategoryDataImpl.fromJson;

  @override
  String get ca_id;
  @override
  String get ca_name;
  @override
  String get sub_flag;
  @override
  @JsonKey(ignore: true)
  _$$CategoryDataImplCopyWith<_$CategoryDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductItem _$ProductItemFromJson(Map<String, dynamic> json) {
  return _ProductItem.fromJson(json);
}

/// @nodoc
mixin _$ProductItem {
  String get it_id => throw _privateConstructorUsedError;
  String get it_name => throw _privateConstructorUsedError;
  int get it_cust_price => throw _privateConstructorUsedError;
  int get it_price => throw _privateConstructorUsedError;
  String get it_img1 => throw _privateConstructorUsedError;
  String get it_time => throw _privateConstructorUsedError;
  int get it_use_cnt => throw _privateConstructorUsedError;
  int get it_sum_qty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductItemCopyWith<ProductItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductItemCopyWith<$Res> {
  factory $ProductItemCopyWith(
          ProductItem value, $Res Function(ProductItem) then) =
      _$ProductItemCopyWithImpl<$Res, ProductItem>;
  @useResult
  $Res call(
      {String it_id,
      String it_name,
      int it_cust_price,
      int it_price,
      String it_img1,
      String it_time,
      int it_use_cnt,
      int it_sum_qty});
}

/// @nodoc
class _$ProductItemCopyWithImpl<$Res, $Val extends ProductItem>
    implements $ProductItemCopyWith<$Res> {
  _$ProductItemCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductItemImplCopyWith<$Res>
    implements $ProductItemCopyWith<$Res> {
  factory _$$ProductItemImplCopyWith(
          _$ProductItemImpl value, $Res Function(_$ProductItemImpl) then) =
      __$$ProductItemImplCopyWithImpl<$Res>;
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
      int it_sum_qty});
}

/// @nodoc
class __$$ProductItemImplCopyWithImpl<$Res>
    extends _$ProductItemCopyWithImpl<$Res, _$ProductItemImpl>
    implements _$$ProductItemImplCopyWith<$Res> {
  __$$ProductItemImplCopyWithImpl(
      _$ProductItemImpl _value, $Res Function(_$ProductItemImpl) _then)
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
  }) {
    return _then(_$ProductItemImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductItemImpl implements _ProductItem {
  _$ProductItemImpl(
      {this.it_id = '',
      this.it_name = '',
      this.it_cust_price = 0,
      this.it_price = 0,
      this.it_img1 = '',
      this.it_time = '',
      this.it_use_cnt = 0,
      this.it_sum_qty = 0});

  factory _$ProductItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductItemImplFromJson(json);

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
  String toString() {
    return 'ProductItem(it_id: $it_id, it_name: $it_name, it_cust_price: $it_cust_price, it_price: $it_price, it_img1: $it_img1, it_time: $it_time, it_use_cnt: $it_use_cnt, it_sum_qty: $it_sum_qty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductItemImpl &&
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
                other.it_sum_qty == it_sum_qty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, it_id, it_name, it_cust_price,
      it_price, it_img1, it_time, it_use_cnt, it_sum_qty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductItemImplCopyWith<_$ProductItemImpl> get copyWith =>
      __$$ProductItemImplCopyWithImpl<_$ProductItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductItemImplToJson(
      this,
    );
  }
}

abstract class _ProductItem implements ProductItem {
  factory _ProductItem(
      {final String it_id,
      final String it_name,
      final int it_cust_price,
      final int it_price,
      final String it_img1,
      final String it_time,
      final int it_use_cnt,
      final int it_sum_qty}) = _$ProductItemImpl;

  factory _ProductItem.fromJson(Map<String, dynamic> json) =
      _$ProductItemImpl.fromJson;

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
  @JsonKey(ignore: true)
  _$$ProductItemImplCopyWith<_$ProductItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MainResponse _$MainResponseFromJson(Map<String, dynamic> json) {
  return _MainResponse.fromJson(json);
}

/// @nodoc
mixin _$MainResponse {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  MainData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainResponseCopyWith<MainResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainResponseCopyWith<$Res> {
  factory $MainResponseCopyWith(
          MainResponse value, $Res Function(MainResponse) then) =
      _$MainResponseCopyWithImpl<$Res, MainResponse>;
  @useResult
  $Res call({int status, String message, MainData? data});

  $MainDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$MainResponseCopyWithImpl<$Res, $Val extends MainResponse>
    implements $MainResponseCopyWith<$Res> {
  _$MainResponseCopyWithImpl(this._value, this._then);

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
              as MainData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MainDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $MainDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MainResponseImplCopyWith<$Res>
    implements $MainResponseCopyWith<$Res> {
  factory _$$MainResponseImplCopyWith(
          _$MainResponseImpl value, $Res Function(_$MainResponseImpl) then) =
      __$$MainResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String message, MainData? data});

  @override
  $MainDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$MainResponseImplCopyWithImpl<$Res>
    extends _$MainResponseCopyWithImpl<$Res, _$MainResponseImpl>
    implements _$$MainResponseImplCopyWith<$Res> {
  __$$MainResponseImplCopyWithImpl(
      _$MainResponseImpl _value, $Res Function(_$MainResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_$MainResponseImpl(
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
              as MainData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MainResponseImpl implements _MainResponse {
  _$MainResponseImpl({required this.status, this.message = '', this.data});

  factory _$MainResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainResponseImplFromJson(json);

  @override
  final int status;
  @override
  @JsonKey()
  final String message;
  @override
  final MainData? data;

  @override
  String toString() {
    return 'MainResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainResponseImpl &&
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
  _$$MainResponseImplCopyWith<_$MainResponseImpl> get copyWith =>
      __$$MainResponseImplCopyWithImpl<_$MainResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainResponseImplToJson(
      this,
    );
  }
}

abstract class _MainResponse implements MainResponse {
  factory _MainResponse(
      {required final int status,
      final String message,
      final MainData? data}) = _$MainResponseImpl;

  factory _MainResponse.fromJson(Map<String, dynamic> json) =
      _$MainResponseImpl.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  MainData? get data;
  @override
  @JsonKey(ignore: true)
  _$$MainResponseImplCopyWith<_$MainResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
