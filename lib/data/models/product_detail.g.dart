// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Item _$$_ItemFromJson(Map<String, dynamic> json) => _$_Item(
      it_id: json['it_id'] as String? ?? '',
      it_name: json['it_name'] as String? ?? '',
      it_option_subject: json['it_option_subject'] as String? ?? '',
      it_seller: json['it_seller'] as String? ?? '',
      it_explan: json['it_explan'] as String? ?? '',
      it_cust_price: json['it_cust_price'] as int? ?? 0,
      it_price: json['it_price'] as int? ?? 0,
      it_stock_qty: json['it_stock_qty'] as int? ?? 0,
      is_orderable: json['is_orderable'] as bool? ?? false,
      it_min_qty: json['it_min_qty'] as int? ?? 0,
      it_max_qty: json['it_max_qty'] as int? ?? 0,
      it_review_cnt: json['it_review_cnt'] as int? ?? 0,
      it_review_avg: json['it_review_avg'] as String? ?? '',
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
      is_wish: json['is_wish'] as String? ?? 'false',
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'it_id': instance.it_id,
      'it_name': instance.it_name,
      'it_option_subject': instance.it_option_subject,
      'it_seller': instance.it_seller,
      'it_explan': instance.it_explan,
      'it_cust_price': instance.it_cust_price,
      'it_price': instance.it_price,
      'it_stock_qty': instance.it_stock_qty,
      'is_orderable': instance.is_orderable,
      'it_min_qty': instance.it_min_qty,
      'it_max_qty': instance.it_max_qty,
      'it_review_cnt': instance.it_review_cnt,
      'it_review_avg': instance.it_review_avg,
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
      'is_wish': instance.is_wish,
    };

_$_ItemInfo _$$_ItemInfoFromJson(Map<String, dynamic> json) => _$_ItemInfo(
      material: json['material'] as String? ?? '',
      color: json['color'] as String? ?? '',
      size: json['size'] as String? ?? '',
      maker: json['maker'] as String? ?? '',
      caution: json['caution'] as String? ?? '',
      manufacturing_ym: json['manufacturing_ym'] as String? ?? '',
      warranty: json['warranty'] as String? ?? '',
      as: json['as'] as String? ?? '',
    );

Map<String, dynamic> _$$_ItemInfoToJson(_$_ItemInfo instance) =>
    <String, dynamic>{
      'material': instance.material,
      'color': instance.color,
      'size': instance.size,
      'maker': instance.maker,
      'caution': instance.caution,
      'manufacturing_ym': instance.manufacturing_ym,
      'warranty': instance.warranty,
      'as': instance.as,
    };

_$_Option _$$_OptionFromJson(Map<String, dynamic> json) => _$_Option(
      io_id: json['io_id'] as String? ?? '',
      io_no: json['io_no'] as int? ?? 0,
      io_price: json['io_price'] as int? ?? 0,
      io_stock_qty: json['io_stock_qty'] as int? ?? 0,
      is_soldout: json['is_soldout'] as bool? ?? false,
      io_qty: json['io_qty'] as int? ?? 1,
      isCheck: json['isCheck'] as bool? ?? false,
    );

Map<String, dynamic> _$$_OptionToJson(_$_Option instance) => <String, dynamic>{
      'io_id': instance.io_id,
      'io_no': instance.io_no,
      'io_price': instance.io_price,
      'io_stock_qty': instance.io_stock_qty,
      'is_soldout': instance.is_soldout,
      'io_qty': instance.io_qty,
      'isCheck': instance.isCheck,
    };

_$_ProductDetailResponse _$$_ProductDetailResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ProductDetailResponse(
      status: json['status'] as int,
      message: json['message'] as String? ?? '',
      reviews: json['reviews'] as int? ?? 0,
      reviewAvg: json['reviewAvg'] as String? ?? '0',
      qna: json['qna'] as int? ?? 0,
      item: json['item'] == null
          ? null
          : Item.fromJson(json['item'] as Map<String, dynamic>),
      item_info: json['item_info'] == null
          ? null
          : ItemInfo.fromJson(json['item_info'] as Map<String, dynamic>),
      option: (json['option'] as List<dynamic>?)
              ?.map((e) => Option.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ProductDetailResponseToJson(
        _$_ProductDetailResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'reviews': instance.reviews,
      'reviewAvg': instance.reviewAvg,
      'qna': instance.qna,
      'item': instance.item,
      'item_info': instance.item_info,
      'option': instance.option,
    };
