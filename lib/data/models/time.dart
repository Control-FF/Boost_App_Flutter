import 'package:freezed_annotation/freezed_annotation.dart';

part 'time.freezed.dart';
part 'time.g.dart';

@freezed
class TimeData with _$TimeData {
  factory TimeData({
    TimeBanner? banner,
    @Default([]) @JsonKey(name: 'timesSaleItems') List<TimeSaleItem>? timeSaleData,
  }) = _TimeData;

  factory TimeData.fromJson(Map<String, dynamic> json) =>
      _$TimeDataFromJson(json);
}

@freezed
class TimeBanner with _$TimeBanner {
  factory TimeBanner({
    @Default([]) @JsonKey(name: 'mainBanner') List<TimeBannerList>? mainBanner,
    @Default([]) @JsonKey(name: 'bottomBanner') List<TimeBannerList>? bottomBanner,
  }) = _TimeBanner;

  factory TimeBanner.fromJson(Map<String, dynamic> json) =>
      _$TimeBannerFromJson(json);
}

@freezed
class TimeBannerList with _$TimeBannerList {
  factory TimeBannerList({

    @Default(0) int bn_id,
    @Default('') String bn_alt,
    @Default('') String bn_url,
    @Default('') String bn_img,
  }) = _TimeBannerList;

  factory TimeBannerList.fromJson(Map<String, dynamic> json) =>
      _$TimeBannerListFromJson(json);
}

@freezed
class TimeSaleItem with _$TimeSaleItem {
  factory TimeSaleItem({

    @Default('') String it_id,
    @Default('') String it_name,
    @Default(0) int it_cust_price,
    @Default(0) int it_price,
    @Default('') String it_img1,
    @Default('') String it_time,
    @Default(0) int it_use_cnt,
    @Default(0) int it_sum_qty,
    @Default('') String sale_start_time,
    @Default('') String sale_end_time,
  }) = _TimeSaleItem;

  factory TimeSaleItem.fromJson(Map<String, dynamic> json) =>
      _$TimeSaleItemFromJson(json);
}

@freezed
class TimeResponse with _$TimeResponse {
  factory TimeResponse({
    required int status,
    @Default('') String message,
    TimeData? data,
  }) = _TimeResponse;

  factory TimeResponse.fromJson(Map<String, dynamic> json) =>
      _$TimeResponseFromJson(json);
}
