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
abstract class _$$_MainDataCopyWith<$Res> implements $MainDataCopyWith<$Res> {
  factory _$$_MainDataCopyWith(
          _$_MainData value, $Res Function(_$_MainData) then) =
      __$$_MainDataCopyWithImpl<$Res>;
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
class __$$_MainDataCopyWithImpl<$Res>
    extends _$MainDataCopyWithImpl<$Res, _$_MainData>
    implements _$$_MainDataCopyWith<$Res> {
  __$$_MainDataCopyWithImpl(
      _$_MainData _value, $Res Function(_$_MainData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banner = freezed,
    Object? categoryData = freezed,
    Object? mdItems = freezed,
    Object? recommendItems = freezed,
  }) {
    return _then(_$_MainData(
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
class _$_MainData implements _MainData {
  _$_MainData(
      {this.banner,
      @JsonKey(name: 'category_data')
      final List<CategoryData>? categoryData = const [],
      @JsonKey(name: 'mdItems') final List<ProductItem>? mdItems = const [],
      @JsonKey(name: 'recommendItems')
      final List<ProductItem>? recommendItems = const []})
      : _categoryData = categoryData,
        _mdItems = mdItems,
        _recommendItems = recommendItems;

  factory _$_MainData.fromJson(Map<String, dynamic> json) =>
      _$$_MainDataFromJson(json);

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
            other is _$_MainData &&
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
  _$$_MainDataCopyWith<_$_MainData> get copyWith =>
      __$$_MainDataCopyWithImpl<_$_MainData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MainDataToJson(
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
      final List<ProductItem>? recommendItems}) = _$_MainData;

  factory _MainData.fromJson(Map<String, dynamic> json) = _$_MainData.fromJson;

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
  _$$_MainDataCopyWith<_$_MainData> get copyWith =>
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
abstract class _$$_BannerCopyWith<$Res> implements $BannerCopyWith<$Res> {
  factory _$$_BannerCopyWith(_$_Banner value, $Res Function(_$_Banner) then) =
      __$$_BannerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'mainBanner') List<BannerList>? mainBanner,
      @JsonKey(name: 'bottomBanner') List<BannerList>? bottomBanner});
}

/// @nodoc
class __$$_BannerCopyWithImpl<$Res>
    extends _$BannerCopyWithImpl<$Res, _$_Banner>
    implements _$$_BannerCopyWith<$Res> {
  __$$_BannerCopyWithImpl(_$_Banner _value, $Res Function(_$_Banner) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainBanner = freezed,
    Object? bottomBanner = freezed,
  }) {
    return _then(_$_Banner(
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
class _$_Banner implements _Banner {
  _$_Banner(
      {@JsonKey(name: 'mainBanner')
      final List<BannerList>? mainBanner = const [],
      @JsonKey(name: 'bottomBanner')
      final List<BannerList>? bottomBanner = const []})
      : _mainBanner = mainBanner,
        _bottomBanner = bottomBanner;

  factory _$_Banner.fromJson(Map<String, dynamic> json) =>
      _$$_BannerFromJson(json);

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
            other is _$_Banner &&
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
  _$$_BannerCopyWith<_$_Banner> get copyWith =>
      __$$_BannerCopyWithImpl<_$_Banner>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BannerToJson(
      this,
    );
  }
}

abstract class _Banner implements Banner {
  factory _Banner(
      {@JsonKey(name: 'mainBanner') final List<BannerList>? mainBanner,
      @JsonKey(name: 'bottomBanner')
      final List<BannerList>? bottomBanner}) = _$_Banner;

  factory _Banner.fromJson(Map<String, dynamic> json) = _$_Banner.fromJson;

  @override
  @JsonKey(name: 'mainBanner')
  List<BannerList>? get mainBanner;
  @override
  @JsonKey(name: 'bottomBanner')
  List<BannerList>? get bottomBanner;
  @override
  @JsonKey(ignore: true)
  _$$_BannerCopyWith<_$_Banner> get copyWith =>
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
abstract class _$$_BannerListCopyWith<$Res>
    implements $BannerListCopyWith<$Res> {
  factory _$$_BannerListCopyWith(
          _$_BannerList value, $Res Function(_$_BannerList) then) =
      __$$_BannerListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int bn_id, String bn_alt, String bn_url, String bn_img});
}

/// @nodoc
class __$$_BannerListCopyWithImpl<$Res>
    extends _$BannerListCopyWithImpl<$Res, _$_BannerList>
    implements _$$_BannerListCopyWith<$Res> {
  __$$_BannerListCopyWithImpl(
      _$_BannerList _value, $Res Function(_$_BannerList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bn_id = null,
    Object? bn_alt = null,
    Object? bn_url = null,
    Object? bn_img = null,
  }) {
    return _then(_$_BannerList(
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
class _$_BannerList implements _BannerList {
  _$_BannerList(
      {this.bn_id = 0, this.bn_alt = '', this.bn_url = '', this.bn_img = ''});

  factory _$_BannerList.fromJson(Map<String, dynamic> json) =>
      _$$_BannerListFromJson(json);

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
            other is _$_BannerList &&
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
  _$$_BannerListCopyWith<_$_BannerList> get copyWith =>
      __$$_BannerListCopyWithImpl<_$_BannerList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BannerListToJson(
      this,
    );
  }
}

abstract class _BannerList implements BannerList {
  factory _BannerList(
      {final int bn_id,
      final String bn_alt,
      final String bn_url,
      final String bn_img}) = _$_BannerList;

  factory _BannerList.fromJson(Map<String, dynamic> json) =
      _$_BannerList.fromJson;

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
  _$$_BannerListCopyWith<_$_BannerList> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryData _$CategoryDataFromJson(Map<String, dynamic> json) {
  return _CategoryData.fromJson(json);
}

/// @nodoc
mixin _$CategoryData {
  String get ca_id => throw _privateConstructorUsedError;
  String get ca_name => throw _privateConstructorUsedError;
  String get ca_img => throw _privateConstructorUsedError;
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
  $Res call({String ca_id, String ca_name, String ca_img, String sub_flag});
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
    Object? ca_img = null,
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
      ca_img: null == ca_img
          ? _value.ca_img
          : ca_img // ignore: cast_nullable_to_non_nullable
              as String,
      sub_flag: null == sub_flag
          ? _value.sub_flag
          : sub_flag // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryDataCopyWith<$Res>
    implements $CategoryDataCopyWith<$Res> {
  factory _$$_CategoryDataCopyWith(
          _$_CategoryData value, $Res Function(_$_CategoryData) then) =
      __$$_CategoryDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ca_id, String ca_name, String ca_img, String sub_flag});
}

/// @nodoc
class __$$_CategoryDataCopyWithImpl<$Res>
    extends _$CategoryDataCopyWithImpl<$Res, _$_CategoryData>
    implements _$$_CategoryDataCopyWith<$Res> {
  __$$_CategoryDataCopyWithImpl(
      _$_CategoryData _value, $Res Function(_$_CategoryData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ca_id = null,
    Object? ca_name = null,
    Object? ca_img = null,
    Object? sub_flag = null,
  }) {
    return _then(_$_CategoryData(
      ca_id: null == ca_id
          ? _value.ca_id
          : ca_id // ignore: cast_nullable_to_non_nullable
              as String,
      ca_name: null == ca_name
          ? _value.ca_name
          : ca_name // ignore: cast_nullable_to_non_nullable
              as String,
      ca_img: null == ca_img
          ? _value.ca_img
          : ca_img // ignore: cast_nullable_to_non_nullable
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
class _$_CategoryData implements _CategoryData {
  _$_CategoryData(
      {this.ca_id = '',
      this.ca_name = '',
      this.ca_img = '',
      this.sub_flag = 'false'});

  factory _$_CategoryData.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryDataFromJson(json);

  @override
  @JsonKey()
  final String ca_id;
  @override
  @JsonKey()
  final String ca_name;
  @override
  @JsonKey()
  final String ca_img;
  @override
  @JsonKey()
  final String sub_flag;

  @override
  String toString() {
    return 'CategoryData(ca_id: $ca_id, ca_name: $ca_name, ca_img: $ca_img, sub_flag: $sub_flag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryData &&
            (identical(other.ca_id, ca_id) || other.ca_id == ca_id) &&
            (identical(other.ca_name, ca_name) || other.ca_name == ca_name) &&
            (identical(other.ca_img, ca_img) || other.ca_img == ca_img) &&
            (identical(other.sub_flag, sub_flag) ||
                other.sub_flag == sub_flag));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, ca_id, ca_name, ca_img, sub_flag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryDataCopyWith<_$_CategoryData> get copyWith =>
      __$$_CategoryDataCopyWithImpl<_$_CategoryData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryDataToJson(
      this,
    );
  }
}

abstract class _CategoryData implements CategoryData {
  factory _CategoryData(
      {final String ca_id,
      final String ca_name,
      final String ca_img,
      final String sub_flag}) = _$_CategoryData;

  factory _CategoryData.fromJson(Map<String, dynamic> json) =
      _$_CategoryData.fromJson;

  @override
  String get ca_id;
  @override
  String get ca_name;
  @override
  String get ca_img;
  @override
  String get sub_flag;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryDataCopyWith<_$_CategoryData> get copyWith =>
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
      it_sum_qty: null == it_sum_qty
          ? _value.it_sum_qty
          : it_sum_qty // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductItemCopyWith<$Res>
    implements $ProductItemCopyWith<$Res> {
  factory _$$_ProductItemCopyWith(
          _$_ProductItem value, $Res Function(_$_ProductItem) then) =
      __$$_ProductItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String it_id,
      String it_name,
      int it_cust_price,
      int it_price,
      String it_img1,
      String it_time,
      int it_sum_qty});
}

/// @nodoc
class __$$_ProductItemCopyWithImpl<$Res>
    extends _$ProductItemCopyWithImpl<$Res, _$_ProductItem>
    implements _$$_ProductItemCopyWith<$Res> {
  __$$_ProductItemCopyWithImpl(
      _$_ProductItem _value, $Res Function(_$_ProductItem) _then)
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
    Object? it_sum_qty = null,
  }) {
    return _then(_$_ProductItem(
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
      it_sum_qty: null == it_sum_qty
          ? _value.it_sum_qty
          : it_sum_qty // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductItem implements _ProductItem {
  _$_ProductItem(
      {this.it_id = '',
      this.it_name = '',
      this.it_cust_price = 0,
      this.it_price = 0,
      this.it_img1 = '',
      this.it_time = '',
      this.it_sum_qty = 0});

  factory _$_ProductItem.fromJson(Map<String, dynamic> json) =>
      _$$_ProductItemFromJson(json);

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
  final int it_sum_qty;

  @override
  String toString() {
    return 'ProductItem(it_id: $it_id, it_name: $it_name, it_cust_price: $it_cust_price, it_price: $it_price, it_img1: $it_img1, it_time: $it_time, it_sum_qty: $it_sum_qty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductItem &&
            (identical(other.it_id, it_id) || other.it_id == it_id) &&
            (identical(other.it_name, it_name) || other.it_name == it_name) &&
            (identical(other.it_cust_price, it_cust_price) ||
                other.it_cust_price == it_cust_price) &&
            (identical(other.it_price, it_price) ||
                other.it_price == it_price) &&
            (identical(other.it_img1, it_img1) || other.it_img1 == it_img1) &&
            (identical(other.it_time, it_time) || other.it_time == it_time) &&
            (identical(other.it_sum_qty, it_sum_qty) ||
                other.it_sum_qty == it_sum_qty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, it_id, it_name, it_cust_price,
      it_price, it_img1, it_time, it_sum_qty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductItemCopyWith<_$_ProductItem> get copyWith =>
      __$$_ProductItemCopyWithImpl<_$_ProductItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductItemToJson(
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
      final int it_sum_qty}) = _$_ProductItem;

  factory _ProductItem.fromJson(Map<String, dynamic> json) =
      _$_ProductItem.fromJson;

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
  int get it_sum_qty;
  @override
  @JsonKey(ignore: true)
  _$$_ProductItemCopyWith<_$_ProductItem> get copyWith =>
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
abstract class _$$_MainResponseCopyWith<$Res>
    implements $MainResponseCopyWith<$Res> {
  factory _$$_MainResponseCopyWith(
          _$_MainResponse value, $Res Function(_$_MainResponse) then) =
      __$$_MainResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String message, MainData? data});

  @override
  $MainDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_MainResponseCopyWithImpl<$Res>
    extends _$MainResponseCopyWithImpl<$Res, _$_MainResponse>
    implements _$$_MainResponseCopyWith<$Res> {
  __$$_MainResponseCopyWithImpl(
      _$_MainResponse _value, $Res Function(_$_MainResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_$_MainResponse(
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
class _$_MainResponse implements _MainResponse {
  _$_MainResponse({required this.status, this.message = '', this.data});

  factory _$_MainResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MainResponseFromJson(json);

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
            other is _$_MainResponse &&
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
  _$$_MainResponseCopyWith<_$_MainResponse> get copyWith =>
      __$$_MainResponseCopyWithImpl<_$_MainResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MainResponseToJson(
      this,
    );
  }
}

abstract class _MainResponse implements MainResponse {
  factory _MainResponse(
      {required final int status,
      final String message,
      final MainData? data}) = _$_MainResponse;

  factory _MainResponse.fromJson(Map<String, dynamic> json) =
      _$_MainResponse.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  MainData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_MainResponseCopyWith<_$_MainResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
