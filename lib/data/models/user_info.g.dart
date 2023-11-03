// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Order _$$_OrderFromJson(Map<String, dynamic> json) => _$_Order(
      deposit_cnt: json['deposit_cnt'] as int? ?? 0,
      prepare_cnt: json['prepare_cnt'] as int? ?? 0,
      delivery_cnt: json['delivery_cnt'] as int? ?? 0,
      complete_cnt: json['complete_cnt'] as int? ?? 0,
      cancel_cnt: json['cancel_cnt'] as int? ?? 0,
    );

Map<String, dynamic> _$$_OrderToJson(_$_Order instance) => <String, dynamic>{
      'deposit_cnt': instance.deposit_cnt,
      'prepare_cnt': instance.prepare_cnt,
      'delivery_cnt': instance.delivery_cnt,
      'complete_cnt': instance.complete_cnt,
      'cancel_cnt': instance.cancel_cnt,
    };

_$_UserInfo _$$_UserInfoFromJson(Map<String, dynamic> json) => _$_UserInfo(
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

Map<String, dynamic> _$$_UserInfoToJson(_$_UserInfo instance) =>
    <String, dynamic>{
      'name': instance.name,
      'nickname': instance.nickname,
      'recommend_code': instance.recommend_code,
      'point': instance.point,
      'coupon_cnt': instance.coupon_cnt,
      'review_cnt': instance.review_cnt,
      'order': instance.order,
    };

_$_UserInfoResponse _$$_UserInfoResponseFromJson(Map<String, dynamic> json) =>
    _$_UserInfoResponse(
      status: json['status'] as int,
      message: json['message'] as String,
      data: json['data'] == null
          ? null
          : UserInfo.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserInfoResponseToJson(_$_UserInfoResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
