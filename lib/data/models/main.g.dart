// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MainDataImpl _$$MainDataImplFromJson(Map<String, dynamic> json) =>
    _$MainDataImpl(
      banner: json['banner'] == null
          ? null
          : Banner.fromJson(json['banner'] as Map<String, dynamic>),
      categoryData: (json['category_data'] as List<dynamic>?)
              ?.map((e) => CategoryData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      mdItems: (json['mdItems'] as List<dynamic>?)
              ?.map((e) => ProductItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      recommendItems: (json['recommendItems'] as List<dynamic>?)
              ?.map((e) => ProductItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MainDataImplToJson(_$MainDataImpl instance) =>
    <String, dynamic>{
      'banner': instance.banner,
      'category_data': instance.categoryData,
      'mdItems': instance.mdItems,
      'recommendItems': instance.recommendItems,
    };

_$BannerImpl _$$BannerImplFromJson(Map<String, dynamic> json) => _$BannerImpl(
      mainBanner: (json['mainBanner'] as List<dynamic>?)
              ?.map((e) => BannerList.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      bottomBanner: (json['bottomBanner'] as List<dynamic>?)
              ?.map((e) => BannerList.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$BannerImplToJson(_$BannerImpl instance) =>
    <String, dynamic>{
      'mainBanner': instance.mainBanner,
      'bottomBanner': instance.bottomBanner,
    };

_$BannerListImpl _$$BannerListImplFromJson(Map<String, dynamic> json) =>
    _$BannerListImpl(
      bn_id: json['bn_id'] as int? ?? 0,
      bn_alt: json['bn_alt'] as String? ?? '',
      bn_url: json['bn_url'] as String? ?? '',
      bn_img: json['bn_img'] as String? ?? '',
    );

Map<String, dynamic> _$$BannerListImplToJson(_$BannerListImpl instance) =>
    <String, dynamic>{
      'bn_id': instance.bn_id,
      'bn_alt': instance.bn_alt,
      'bn_url': instance.bn_url,
      'bn_img': instance.bn_img,
    };

_$CategoryDataImpl _$$CategoryDataImplFromJson(Map<String, dynamic> json) =>
    _$CategoryDataImpl(
      ca_id: json['ca_id'] as String? ?? '',
      ca_name: json['ca_name'] as String? ?? '',
      sub_flag: json['sub_flag'] as String? ?? 'false',
    );

Map<String, dynamic> _$$CategoryDataImplToJson(_$CategoryDataImpl instance) =>
    <String, dynamic>{
      'ca_id': instance.ca_id,
      'ca_name': instance.ca_name,
      'sub_flag': instance.sub_flag,
    };

_$ProductItemImpl _$$ProductItemImplFromJson(Map<String, dynamic> json) =>
    _$ProductItemImpl(
      it_id: json['it_id'] as String? ?? '',
      it_name: json['it_name'] as String? ?? '',
      it_cust_price: json['it_cust_price'] as int? ?? 0,
      it_price: json['it_price'] as int? ?? 0,
      it_img1: json['it_img1'] as String? ?? '',
      it_time: json['it_time'] as String? ?? '',
      it_use_cnt: json['it_use_cnt'] as int? ?? 0,
      it_sum_qty: json['it_sum_qty'] as int? ?? 0,
    );

Map<String, dynamic> _$$ProductItemImplToJson(_$ProductItemImpl instance) =>
    <String, dynamic>{
      'it_id': instance.it_id,
      'it_name': instance.it_name,
      'it_cust_price': instance.it_cust_price,
      'it_price': instance.it_price,
      'it_img1': instance.it_img1,
      'it_time': instance.it_time,
      'it_use_cnt': instance.it_use_cnt,
      'it_sum_qty': instance.it_sum_qty,
    };

_$MainResponseImpl _$$MainResponseImplFromJson(Map<String, dynamic> json) =>
    _$MainResponseImpl(
      status: json['status'] as int,
      message: json['message'] as String? ?? '',
      data: json['data'] == null
          ? null
          : MainData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MainResponseImplToJson(_$MainResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
