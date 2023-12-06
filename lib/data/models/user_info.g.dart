// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
      deposit_cnt: json['deposit_cnt'] as int? ?? 0,
      prepare_cnt: json['prepare_cnt'] as int? ?? 0,
      delivery_cnt: json['delivery_cnt'] as int? ?? 0,
      complete_cnt: json['complete_cnt'] as int? ?? 0,
      cancel_cnt: json['cancel_cnt'] as int? ?? 0,
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) =>
    <String, dynamic>{
      'deposit_cnt': instance.deposit_cnt,
      'prepare_cnt': instance.prepare_cnt,
      'delivery_cnt': instance.delivery_cnt,
      'complete_cnt': instance.complete_cnt,
      'cancel_cnt': instance.cancel_cnt,
    };

_$UserInfoImpl _$$UserInfoImplFromJson(Map<String, dynamic> json) =>
    _$UserInfoImpl(
      name: json['name'] as String? ?? '',
      nickname: json['nickname'] as String? ?? '',
      recommend_code: json['recommend_code'] as String? ?? '',
      point: json['point'] as int? ?? 0,
      coupon_cnt: json['coupon_cnt'] as int? ?? 0,
      review_cnt: json['review_cnt'] as int? ?? 0,
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserInfoImplToJson(_$UserInfoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'nickname': instance.nickname,
      'recommend_code': instance.recommend_code,
      'point': instance.point,
      'coupon_cnt': instance.coupon_cnt,
      'review_cnt': instance.review_cnt,
      'order': instance.order,
    };

_$UserInfoResponseImpl _$$UserInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserInfoResponseImpl(
      status: json['status'] as int,
      message: json['message'] as String,
      data: json['data'] == null
          ? null
          : UserInfo.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserInfoResponseImplToJson(
        _$UserInfoResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
