import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_detail.freezed.dart';
part 'product_detail.g.dart';

@freezed
class Item with _$Item {
  factory Item({
    @Default('') String it_id,
    @Default('') String it_name,
    @Default('') String it_option_subject,
    @Default('') String it_seller,
    @Default('') String it_explan,
    @Default(0) int it_cust_price,
    @Default(0) int it_price,
    @Default(0) int it_stock_qty,
    @Default(false) bool is_orderable,
    @Default(0) int it_min_qty,
    @Default(0) int it_max_qty,
    @Default(0) int it_review_cnt,
    @Default('') String it_review_avg,
    @Default('') String? it_img1,
    @Default('') String? it_img2,
    @Default('') String? it_img3,
    @Default('') String? it_img4,
    @Default('') String? it_img5,
    @Default('') String? it_img6,
    @Default('') String? it_img7,
    @Default('') String? it_img8,
    @Default('') String? it_img9,
    @Default('') String? it_img10,
    @Default('false') String is_wish,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) =>
      _$ItemFromJson(json);
}

@freezed
class ItemInfo with _$ItemInfo {
  factory ItemInfo({
    @Default('') String material,
    @Default('') String color,
    @Default('') String size,
    @Default('') String maker,
    @Default('') String caution,
    @Default('') String manufacturing_ym,
    @Default('') String warranty,
    @Default('') String as,
  }) = _ItemInfo;

  factory ItemInfo.fromJson(Map<String, dynamic> json) =>
      _$ItemInfoFromJson(json);
}

@freezed
class Option with _$Option {
  factory Option({
    @Default('') String io_id,
    @Default(0) int io_price,
    @Default(0) int io_stock_qty,
    @Default(false) bool is_soldout,
    @Default(1) int io_qty,
    @Default(false) bool? isCheck,
  }) = _Option;

  factory Option.fromJson(Map<String, dynamic> json) =>
      _$OptionFromJson(json);
}

@freezed
class ProductDetailResponse with _$ProductDetailResponse {
  factory ProductDetailResponse({
    required int status,
    @Default('') String message,
    @Default(0) int reviews,
    @Default('0') String reviewAvg,
    @Default(0) int qna,
    Item? item,
    ItemInfo? item_info,
    @Default([]) @JsonKey(name: 'option') List<Option>? option,
  }) = _ProductDetailResponse;

  factory ProductDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailResponseFromJson(json);
}
