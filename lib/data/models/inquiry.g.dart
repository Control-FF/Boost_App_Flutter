// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inquiry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InquiryImpl _$$InquiryImplFromJson(Map<String, dynamic> json) =>
    _$InquiryImpl(
      iq_id: json['iq_id'] as int? ?? 0,
      iq_type: json['iq_type'] as String? ?? '',
      iq_question: json['iq_question'] as String? ?? '',
      iq_answer: json['iq_answer'] as String? ?? '',
      is_secret: json['is_secret'] as String? ?? '',
      iq_time: json['iq_time'] as String? ?? '',
      iq_answer_time: json['iq_answer_time'] as String? ?? '',
    );

Map<String, dynamic> _$$InquiryImplToJson(_$InquiryImpl instance) =>
    <String, dynamic>{
      'iq_id': instance.iq_id,
      'iq_type': instance.iq_type,
      'iq_question': instance.iq_question,
      'iq_answer': instance.iq_answer,
      'is_secret': instance.is_secret,
      'iq_time': instance.iq_time,
      'iq_answer_time': instance.iq_answer_time,
    };

_$InquiryResponseImpl _$$InquiryResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$InquiryResponseImpl(
      status: json['status'] as int,
      message: json['message'] as String? ?? '',
      page: json['page'] as int? ?? 0,
      listSize: json['listSize'] as int? ?? 0,
      totalPage: json['totalPage'] as int? ?? 0,
      totalCount: json['totalCount'] as int? ?? 0,
      isLastPage: json['isLastPage'] as String? ?? '',
      items: (json['list'] as List<dynamic>?)
              ?.map((e) => Inquiry.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$InquiryResponseImplToJson(
        _$InquiryResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'page': instance.page,
      'listSize': instance.listSize,
      'totalPage': instance.totalPage,
      'totalCount': instance.totalCount,
      'isLastPage': instance.isLastPage,
      'list': instance.items,
    };
