import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address {
  factory Address({
    @Default(0) int ad_id,
    @Default('') String ad_subject,
    @Default('') String address1,
    @Default('') String address2,
    @Default('') String address3,
    @Default('') String name,
    @Default('') String phone,
    @Default('') String? ad_default,
    @Default(false) bool? isCheck,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}

@freezed
class AddressResponse with _$AddressResponse {
  factory AddressResponse({
    required int status,
    @Default('') String message,
    @Default([]) @JsonKey(name: 'data') List<Address>? items,
  }) = _AddressResponse;

  factory AddressResponse.fromJson(Map<String, dynamic> json) =>
      _$AddressResponseFromJson(json);
}
