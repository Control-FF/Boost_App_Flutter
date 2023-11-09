import 'package:boostapp/core/constants/constants.dart';
import 'package:boostapp/data/models/address.dart';
import 'package:boostapp/data/models/address_detail.dart';
import 'package:boostapp/data/models/category.dart';
import 'package:boostapp/data/models/coupon.dart';
import 'package:boostapp/data/models/data_response.dart';
import 'package:boostapp/data/models/order.dart';
import 'package:boostapp/data/models/payment.dart';
import 'package:boostapp/data/models/point.dart';
import 'package:boostapp/data/models/token_response.dart';
import 'package:boostapp/data/models/user_info.dart';
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

  //토큰 갱신
  @GET('/api/user/refresh')
  Future<TokenResponse> refreshToken();

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

  //카테고리
  @GET('/api/shop/category')
  Future<CategoryResponse> getCategory(
      @Query('ca_id') String caId,
  );

  //인증 번호 요청
  @POST('/api/user/auth-phone')
  Future<DataResponse> authPhone(
      @Field('phone') String phone,
  );

  //내정보
  @GET('/api/user/mypage')
  Future<UserInfoResponse> getMyInfo();

  //비밀번호 확인
  @POST('/api/user/verify-password')
  Future<DataResponse> verifyPassword(
      @Field('pw') String password,
  );

  //내 정보 수정
  @PATCH('/api/user')
  Future<DataResponse> updateMyInfo(
      @Field('nickname') String nickname,
      @Field('old_pw') String? currentPassword,
      @Field('pw2') String? newPassword1,
      @Field('pw3') String? newPassword2,
  );

  //쿠폰 목록 status(has : 보유 쿠폰, get : 전체쿠폰)
  @GET('/api/user/coupon')
  Future<CouponResponse> getCouponList(
      @Query('status') String status,
  );

  //쿠폰 등록(코드)
  @POST('/api/user/coupon')
  Future<DataResponse> couponRegister(
      @Body() Map<String, dynamic> map
  );

  //구매 내역
  @GET('/api/user/payment-list')
  Future<PaymentResponse> paymentList(
      @Query('page') int page,
  );

  //주문 내역
  @GET('/api/user/order-list')
  Future<OrderResponse> orderList(
      @Query('status') String status,
  );

  //포인트 목록
  @GET('/api/user/point')
  Future<PointResponse> pointList();
}
