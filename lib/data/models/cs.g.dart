// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CS _$$_CSFromJson(Map<String, dynamic> json) => _$_CS(
      qa_id: json['qa_id'] as int? ?? 0,
      mb_id: json['mb_id'] as String? ?? '',
      qa_name: json['qa_name'] as String? ?? '',
      qa_subject: json['qa_subject'] as String? ?? '',
      qa_content: json['qa_content'] as String? ?? '',
      qa_status: json['qa_status'] as int? ?? 0,
      qa_file1: json['qa_file1'] as String? ?? '',
      qa_file2: json['qa_file2'] as String? ?? '',
      qa_datetime: json['qa_datetime'] as String? ?? '',
      isExpand: json['isExpand'] as bool? ?? false,
    );

Map<String, dynamic> _$$_CSToJson(_$_CS instance) => <String, dynamic>{
      'qa_id': instance.qa_id,
      'mb_id': instance.mb_id,
      'qa_name': instance.qa_name,
      'qa_subject': instance.qa_subject,
      'qa_content': instance.qa_content,
      'qa_status': instance.qa_status,
      'qa_file1': instance.qa_file1,
      'qa_file2': instance.qa_file2,
      'qa_datetime': instance.qa_datetime,
      'isExpand': instance.isExpand,
    };

_$_CSResponse _$$_CSResponseFromJson(Map<String, dynamic> json) =>
    _$_CSResponse(
      status: json['status'] as int,
      message: json['message'] as String? ?? '',
      items: (json['data'] as List<dynamic>?)
              ?.map((e) => CS.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CSResponseToJson(_$_CSResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.items,
    };
