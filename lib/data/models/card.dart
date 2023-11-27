import 'package:freezed_annotation/freezed_annotation.dart';

part 'card.freezed.dart';
part 'card.g.dart';

@freezed
class Card with _$Card {
  factory Card({
    @Default(0) int id,
    @Default('') String billingkey,
    @Default('') String card_name,
    @Default(0) int is_default,
    @Default('') String mb_id,
    @Default(0) int disabled,
    @Default(0) int is_company,
  }) = _Card;

  factory Card.fromJson(Map<String, dynamic> json) =>
      _$CardFromJson(json);
}

@freezed
class CardResponse with _$CardResponse {
  factory CardResponse({
    required int status,
    @Default('') String message,
    @Default([]) @JsonKey(name: 'data') List<Card>? items,
  }) = _CardResponse;

  factory CardResponse.fromJson(Map<String, dynamic> json) =>
      _$CardResponseFromJson(json);
}
