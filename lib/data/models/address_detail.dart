import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_detail.freezed.dart';
part 'address_detail.g.dart';

@freezed
class AddressDetail with _$AddressDetail {
  factory AddressDetail({
    @Default(0) int ad_id,
    @Default('') String ad_subject,
    @Default('') String address1,
    @Default('') String address2,
    @Default('') String address3,
    @Default('') String name,
    @Default('') String phone,
    @Default('') String? ad_default,
  }) = _AddressDetail;

  factory AddressDetail.fromJson(Map<String, dynamic> json) =>
      _$AddressDetailFromJson(json);
}

@freezed
class AddressDetailResponse with _$AddressDetailResponse {
  factory AddressDetailResponse({
    required int status,
    required String message,
    required AddressDetail data,
  }) = _AddressDetailResponse;

  factory AddressDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$AddressDetailResponseFromJson(json);
}