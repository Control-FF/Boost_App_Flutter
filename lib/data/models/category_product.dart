import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_product.freezed.dart';
part 'category_product.g.dart';

@freezed
class CategoryProduct with _$CategoryProduct {
  factory CategoryProduct({
    @Default('') String it_id,
    @Default('') String it_name,
    @Default(0) int it_cust_price,
    @Default(0) int it_price,
    @Default('') String it_img1,
    @Default('') String it_time,
    @Default(0) int? it_sum_qty,
  }) = _CategoryProduct;

  factory CategoryProduct.fromJson(Map<String, dynamic> json) =>
      _$CategoryProductFromJson(json);
}

@freezed
class CategoryProductResponse with _$CategoryProductResponse {
  factory CategoryProductResponse({
    required int status,
    @Default('') String message,
    @Default([]) @JsonKey(name: 'data') List<CategoryProduct>? items,
    @Default(0) total_cnt,
  }) = _CategoryProductResponse;

  factory CategoryProductResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryProductResponseFromJson(json);
}
