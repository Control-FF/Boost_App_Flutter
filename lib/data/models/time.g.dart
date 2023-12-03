// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimeData _$$_TimeDataFromJson(Map<String, dynamic> json) => _$_TimeData(
      banner: json['banner'] == null
          ? null
          : TimeBanner.fromJson(json['banner'] as Map<String, dynamic>),
      timeSaleData: (json['timesSaleItems'] as List<dynamic>?)
              ?.map((e) => TimeSaleItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_TimeDataToJson(_$_TimeData instance) =>
    <String, dynamic>{
      'banner': instance.banner,
      'timesSaleItems': instance.timeSaleData,
    };

_$_TimeBanner _$$_TimeBannerFromJson(Map<String, dynamic> json) =>
    _$_TimeBanner(
      mainBanner: (json['mainBanner'] as List<dynamic>?)
              ?.map((e) => TimeBannerList.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      bottomBanner: (json['bottomBanner'] as List<dynamic>?)
              ?.map((e) => TimeBannerList.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_TimeBannerToJson(_$_TimeBanner instance) =>
    <String, dynamic>{
      'mainBanner': instance.mainBanner,
      'bottomBanner': instance.bottomBanner,
    };

_$_TimeBannerList _$$_TimeBannerListFromJson(Map<String, dynamic> json) =>
    _$_TimeBannerList(
      bn_id: json['bn_id'] as int? ?? 0,
      bn_alt: json['bn_alt'] as String? ?? '',
      bn_url: json['bn_url'] as String? ?? '',
      bn_img: json['bn_img'] as String? ?? '',
    );

Map<String, dynamic> _$$_TimeBannerListToJson(_$_TimeBannerList instance) =>
    <String, dynamic>{
      'bn_id': instance.bn_id,
      'bn_alt': instance.bn_alt,
      'bn_url': instance.bn_url,
      'bn_img': instance.bn_img,
    };

_$_TimeSaleItem _$$_TimeSaleItemFromJson(Map<String, dynamic> json) =>
    _$_TimeSaleItem(
      it_id: json['it_id'] as String? ?? '',
      it_name: json['it_name'] as String? ?? '',
      it_cust_price: json['it_cust_price'] as int? ?? 0,
      it_price: json['it_price'] as int? ?? 0,
      it_img1: json['it_img1'] as String? ?? '',
      it_time: json['it_time'] as String? ?? '',
      it_use_cnt: json['it_use_cnt'] as int? ?? 0,
      it_sum_qty: json['it_sum_qty'] as int? ?? 0,
      sale_start_time: json['sale_start_time'] as String? ?? '',
      sale_end_time: json['sale_end_time'] as String? ?? '',
    );

Map<String, dynamic> _$$_TimeSaleItemToJson(_$_TimeSaleItem instance) =>
    <String, dynamic>{
      'it_id': instance.it_id,
      'it_name': instance.it_name,
      'it_cust_price': instance.it_cust_price,
      'it_price': instance.it_price,
      'it_img1': instance.it_img1,
      'it_time': instance.it_time,
      'it_use_cnt': instance.it_use_cnt,
      'it_sum_qty': instance.it_sum_qty,
      'sale_start_time': instance.sale_start_time,
      'sale_end_time': instance.sale_end_time,
    };

_$_TimeResponse _$$_TimeResponseFromJson(Map<String, dynamic> json) =>
    _$_TimeResponse(
      status: json['status'] as int,
      message: json['message'] as String? ?? '',
      data: json['data'] == null
          ? null
          : TimeData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TimeResponseToJson(_$_TimeResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
