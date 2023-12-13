import 'package:freezed_annotation/freezed_annotation.dart';

part 'main.freezed.dart';
part 'main.g.dart';

@freezed
class MainData with _$MainData {
  factory MainData({
    Banner? banner,
    @Default([]) @JsonKey(name: 'category_data') List<CategoryData>? categoryData,
    @Default([]) @JsonKey(name: 'mdItems') List<ProductItem>? mdItems,
    @Default([]) @JsonKey(name: 'recommendItems') List<ProductItem>? recommendItems,
  }) = _MainData;

  factory MainData.fromJson(Map<String, dynamic> json) =>
      _$MainDataFromJson(json);
}

@freezed
class Banner with _$Banner {
  factory Banner({
    @Default([]) @JsonKey(name: 'mainBanner') List<BannerList>? mainBanner,
    @Default([]) @JsonKey(name: 'bottomBanner') List<BannerList>? bottomBanner,
  }) = _Banner;

  factory Banner.fromJson(Map<String, dynamic> json) =>
      _$BannerFromJson(json);
}

@freezed
class BannerList with _$BannerList {
  factory BannerList({

    @Default(0) int bn_id,
    @Default('') String bn_alt,
    @Default('') String bn_url,
    @Default('') String bn_img,
  }) = _BannerList;

  factory BannerList.fromJson(Map<String, dynamic> json) =>
      _$BannerListFromJson(json);
}

@freezed
class CategoryData with _$CategoryData {
  factory CategoryData({

    @Default('') String ca_id,
    @Default('') String ca_name,
    @Default('') String ca_img,
    @Default('false') String sub_flag,
  }) = _CategoryData;

  factory CategoryData.fromJson(Map<String, dynamic> json) =>
      _$CategoryDataFromJson(json);
}

@freezed
class ProductItem with _$ProductItem {
  factory ProductItem({

    @Default('') String it_id,
    @Default('') String it_name,
    @Default(0) int it_cust_price,
    @Default(0) int it_price,
    @Default('') String it_img1,
    @Default('') String it_time,
    @Default(0) int it_sum_qty,
  }) = _ProductItem;

  factory ProductItem.fromJson(Map<String, dynamic> json) =>
      _$ProductItemFromJson(json);
}

@freezed
class MainResponse with _$MainResponse {
  factory MainResponse({
    required int status,
    @Default('') String message,
    MainData? data,
  }) = _MainResponse;

  factory MainResponse.fromJson(Map<String, dynamic> json) =>
      _$MainResponseFromJson(json);
}
