import 'package:freezed_annotation/freezed_annotation.dart';

part 'card.freezed.dart';
part 'card.g.dart';

@freezed
class Card with _$Card {
  factory Card({
    @Default(0) int cd_no,
    @Default('') String type,
    @Default('') String subject,
    @Default('') String number,
    @Default('') String expired_MM,
    @Default('') String expired_YY,
  }) = _Card;

  factory Card.fromJson(Map<String, dynamic> json) =>
      _$CardFromJson(json);
}

@freezed
class CardResponse with _$CardResponse {
  factory CardResponse({
    required int status,
    @Default('') String message,
    @Default([]) @JsonKey(name: 'lists') List<Card>? items,
  }) = _CardResponse;

  factory CardResponse.fromJson(Map<String, dynamic> json) =>
      _$CardResponseFromJson(json);
}
