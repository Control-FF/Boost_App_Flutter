// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Order _$$_OrderFromJson(Map<String, dynamic> json) => _$_Order(
      ct_id: json['ct_id'] as int? ?? 0,
      od_id: json['od_id'] as int? ?? 0,
      it_id: json['it_id'] as String? ?? '',
      it_name: json['it_name'] as String? ?? '',
      ct_status: json['ct_status'] as String? ?? '',
      ct_price: json['ct_price'] as int? ?? 0,
      ct_option: json['ct_option'] as String? ?? '',
      ct_time: json['ct_time'] as String? ?? '',
      cp_price: json['cp_price'] as int? ?? 0,
      it_img1: json['it_img1'] as String? ?? '',
      it_img2: json['it_img2'] as String? ?? '',
      it_img3: json['it_img3'] as String? ?? '',
      it_img4: json['it_img4'] as String? ?? '',
      it_img5: json['it_img5'] as String? ?? '',
      it_img6: json['it_img6'] as String? ?? '',
      it_img7: json['it_img7'] as String? ?? '',
      it_img8: json['it_img8'] as String? ?? '',
      it_img9: json['it_img9'] as String? ?? '',
      it_img10: json['it_img10'] as String? ?? '',
    );

Map<String, dynamic> _$$_OrderToJson(_$_Order instance) => <String, dynamic>{
      'ct_id': instance.ct_id,
      'od_id': instance.od_id,
      'it_id': instance.it_id,
      'it_name': instance.it_name,
      'ct_status': instance.ct_status,
      'ct_price': instance.ct_price,
      'ct_option': instance.ct_option,
      'ct_time': instance.ct_time,
      'cp_price': instance.cp_price,
      'it_img1': instance.it_img1,
      'it_img2': instance.it_img2,
      'it_img3': instance.it_img3,
      'it_img4': instance.it_img4,
      'it_img5': instance.it_img5,
      'it_img6': instance.it_img6,
      'it_img7': instance.it_img7,
      'it_img8': instance.it_img8,
      'it_img9': instance.it_img9,
      'it_img10': instance.it_img10,
    };

_$_OrderResponse _$$_OrderResponseFromJson(Map<String, dynamic> json) =>
    _$_OrderResponse(
      status: json['status'] as int,
      message: json['message'] as String? ?? '',
      items: (json['data'] as List<dynamic>?)
              ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_OrderResponseToJson(_$_OrderResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.items,
    };
