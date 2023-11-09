import 'package:freezed_annotation/freezed_annotation.dart';

part 'point.freezed.dart';
part 'point.g.dart';

@freezed
class Point with _$Point {
  factory Point({
    @Default('') String subject,
    @Default(0) int point,
    @Default('') String reg_time,

  }) = _Point;

  factory Point.fromJson(Map<String, dynamic> json) =>
      _$PointFromJson(json);
}

@freezed
class PointResponse with _$PointResponse {
  factory PointResponse({
    required int status,
    @Default('') String message,
    @Default(0) int point,
    @Default([]) @JsonKey(name: 'list') List<Point>? items,
  }) = _PointResponse;

  factory PointResponse.fromJson(Map<String, dynamic> json) =>
      _$PointResponseFromJson(json);
}
