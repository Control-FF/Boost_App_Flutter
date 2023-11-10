// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keyword_rank.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KeywordRank _$$_KeywordRankFromJson(Map<String, dynamic> json) =>
    _$_KeywordRank(
      rank: json['rank'] as int? ?? 0,
      keyword: json['keyword'] as String? ?? '',
    );

Map<String, dynamic> _$$_KeywordRankToJson(_$_KeywordRank instance) =>
    <String, dynamic>{
      'rank': instance.rank,
      'keyword': instance.keyword,
    };

_$_KeywordRankResponse _$$_KeywordRankResponseFromJson(
        Map<String, dynamic> json) =>
    _$_KeywordRankResponse(
      status: json['status'] as int,
      message: json['message'] as String? ?? '',
      items: (json['data'] as List<dynamic>?)
              ?.map((e) => KeywordRank.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_KeywordRankResponseToJson(
        _$_KeywordRankResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.items,
    };
