import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
class Category with _$Category {
  factory Category({
    @Default('') String ca_id,
    @Default('') String ca_name,
    @Default('') String sub_flag,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
class CategoryResponse with _$CategoryResponse {
  factory CategoryResponse({
    required int status,
    required String message,
    @Default([]) @JsonKey(name: 'data') List<Category>? items,
  }) = _CategoryResponse;

  factory CategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryResponseFromJson(json);
}