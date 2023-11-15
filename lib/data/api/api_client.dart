import 'dart:io';

import 'package:boostapp/core/constants/constants.dart';
import 'package:boostapp/data/models/address.dart';
import 'package:boostapp/data/models/address_detail.dart';
import 'package:boostapp/data/models/card.dart';
import 'package:boostapp/data/models/cart.dart';
import 'package:boostapp/data/models/category.dart';
import 'package:boostapp/data/models/coupon.dart';
import 'package:boostapp/data/models/data_response.dart';
import 'package:boostapp/data/models/keyword_auto.dart';
import 'package:boostapp/data/models/keyword_rank.dart';
import 'package:boostapp/data/models/keyword_result.dart';
import 'package:boostapp/data/models/notice.dart';
import 'package:boostapp/data/models/order.dart';
import 'package:boostapp/data/models/order_confirm.dart';
import 'package:boostapp/data/models/payment.dart';
import 'package:boostapp/data/models/point.dart';
import 'package:boostapp/data/models/product_detail.dart';
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

  //인증 번호 확인
  @POST('/api/user/auth-phone-confrim')
  Future<DataResponse> authNumber(
      @Field('phone') String phone,
      @Field('code') String code,
  );

  //비밀번호 변경
  @PATCH('/api/user/change-password')
  Future<DataResponse> resetPassword(
      @Field('phone') String phone,
      @Field('pw1') String pw1,
      @Field('pw2') String pw2,
      @Field('code') String code,
  );

  //회원가입
  @POST('/api/user')
  Future<DataResponse> registerUser(
      @Part() String? type,
      @Part() String? phone,
      @Part() String? pw1,
      @Part() String? pw2,
      @Part() String? auth_code,
      @Part() String? recommend_code,
  );

  //사업자 회원가입
  @POST('/api/user')
  Future<DataResponse> registerBizUser(
      @Part() String? type,
      @Part() String? phone,
      @Part() String? pw1,
      @Part() String? pw2,
      @Part() String? auth_code,
      @Part() String? recommend_code,
      @Part() File biz_license,
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

  //인기 검색어 목록
  @GET('/api/shop/load-popular-keyword')
  Future<KeywordRankResponse> keywordRankList();

  //검색어 자동완성
  @GET('/api/shop/autocomplete')
  Future<KeywordAutoResponse> keywordAutoList(
      @Query('keyword') String keyword,
  );

  //검색 결과 상품
  @GET('/api/shop/search')
  Future<KeywordResultResponse> keywordResultList(
      @Query('keyword') String keyword,
      @Query('sort') String sort,
      @Query('pageNum') int page,
  );

  //신용카드 리스트
  @GET('/api/user/card-list')
  Future<CardResponse> cardList();

  //신용카드 삭제
  @DELETE('/api/user/card/{cdNo}')
  Future<DataResponse> deleteCard(
      @Path('cdNo') int cdNo,
  );

  //신용카드 이름 변경
  @PATCH('/api/user/card/{cdNo}')
  Future<DataResponse> updateCard(
      @Path('cdNo') int cdNo,
      @Field('subject') String subject,
  );

  //신용카드 등록
  @POST('/api/user/card')
  Future<DataResponse> registerCard(
      @Field('type') String type,
      @Field('number') String number,
      @Field('expired') String expired,
      @Field('pw') String pw,
      @Field('birth') String? birth,
      @Field('biz_number') String? bizNumber,
  );

  //상품 상세
  @GET('/api/shop/item')
  Future<ProductDetailResponse> productDetail(
      @Query('it_id') String itId,
  );

  //상품 상세
  @GET('/api/user/notice')
  Future<NoticeResponse> noticeList(
      @Query('isHTML') String isHtml,
  );

  //장바구니 목록
  @GET('/api/shop/cart')
  Future<CartResponse> cartList();

  //장바구니 담기
  @POST('/api/shop/cart')
  Future<DataResponse> addCart(
      @Field('it_id') String itId,
      @Field('ct_qty') String qty,
  );

  //주문페이지
  @GET('/api/shop/order-confirm')
  Future<OrderConfirmResponse> orderConfirm(
      @Query('od_id') String odId
  );
}
