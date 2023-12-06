// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keyword_rank.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KeywordRankImpl _$$KeywordRankImplFromJson(Map<String, dynamic> json) =>
    _$KeywordRankImpl(
      rank: json['rank'] as int? ?? 0,
      keyword: json['keyword'] as String? ?? '',
    );

Map<String, dynamic> _$$KeywordRankImplToJson(_$KeywordRankImpl instance) =>
    <String, dynamic>{
      'rank': instance.rank,
      'keyword': instance.keyword,
    };

_$KeywordRankResponseImpl _$$KeywordRankResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$KeywordRankResponseImpl(
      status: json['status'] as int,
      message: json['message'] as String? ?? '',
      items: (json['data'] as List<dynamic>?)
              ?.map((e) => KeywordRank.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$KeywordRankResponseImplToJson(
        _$KeywordRankResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.items,
    };
