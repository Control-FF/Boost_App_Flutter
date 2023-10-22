import 'package:boostapp/core/constants/constants.dart';
import 'package:boostapp/data/models/address.dart';
import 'package:boostapp/data/models/address_detail.dart';
import 'package:boostapp/data/models/data_response.dart';
import 'package:boostapp/data/models/token_response.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  //로그인
  @POST('/api/user/login')
  @FormUrlEncoded()
  Future<TokenResponse> login(@Field() String phone, @Field() String pw);

  //회원가입
  @POST('/api/user')
  @FormUrlEncoded()
  Future<TokenResponse> register(
      @Field() String name,
      @Field() String phone,
      @Field() String pw1,
      @Field() String pw2,
      @Field() String code,
  );

  //사업자 회원가입
  @POST('/api/user')
  @FormUrlEncoded()
  Future<TokenResponse> registerBiz(
      @Field() String name,
      @Field() String phone,
      @Field() String pw1,
      @Field() String pw2,
      @Field() String code,
      @Part() List<MultipartFile>? file,
  );

  //배송지 목록
  @GET('/api/user/shipping-list')
  Future<AddressResponse> getAddressList();

  //배송지 상세
  @GET('/api/user/shipping/{adId}')
  Future<AddressDetailResponse> getAddressDetail(
      @Path('adId') int idx,
  );

  //배송지 등록
  @POST('/api/user/shipping')
  @FormUrlEncoded()
  Future<DataResponse> addAddress(
      @Field() String subject,
      @Field() String name,
      @Field() String phone,
      @Field() String zonecode,
      @Field() String address1,
      @Field() String address2,
      @Field() String address3,
      @Field() String tel,
  );

  //배송지 수정
  @PATCH('/api/user/shipping/{adId}')
  @FormUrlEncoded()
  Future<DataResponse> updateAddress(
      @Path('adId') int idx,
      @Field() String subject,
      @Field() String name,
      @Field() String phone,
      @Field() String zonecode,
      @Field() String address1,
      @Field() String address2,
      @Field() String address3,
      @Field() String is_default,
      @Field() String tel,
  );

  //기본 배송지 등록
  @PATCH('/api/user/default-shipping/{adId}')
  Future<DataResponse> setAddressBasic(
      @Path('adId') int idx,
  );

  //배송지 삭제
  @DELETE('/api/user/shipping/{adId}')
  Future<DataResponse> deleteAddress(
      @Path('adId') int idx,
  );
}
