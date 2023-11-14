import 'package:boostapp/data/models/address.dart';
import 'package:boostapp/data/models/address_detail.dart';
import 'package:boostapp/data/models/card.dart';
import 'package:boostapp/data/models/cart.dart';
import 'package:boostapp/data/models/coupon.dart';
import 'package:boostapp/data/models/data_response.dart';
import 'package:boostapp/data/models/failure.dart';
import 'package:boostapp/data/models/order.dart';
import 'package:boostapp/data/models/payment.dart';
import 'package:boostapp/data/models/point.dart';
import 'package:boostapp/data/models/user_info.dart';
import 'package:dartz/dartz.dart';
import 'package:boostapp/data/models/token.dart';
import 'package:boostapp/data/models/token_response.dart';
import 'package:boostapp/data/service/api_service.dart';
import 'package:boostapp/data/service/storage_service.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class UserService extends GetxService{
  static late ApiService _apiService;
  static late StorageService _storageService;

  Future<UserService> init() async {
    _apiService = Get.find<ApiService>();
    _storageService = Get.find<StorageService>();
    return this;
  }

  Future<Either<Failure, Token>> login(
      {required String phone, required String password}) async {
    try {
      final TokenResponse response =
      await _apiService.getApiClient().login(phone, password);
      if (response.status == 200) {
        final String accessToken = response.accessToken ?? '';
        final String refreshToken = response.refreshToken ?? '';
        final Token token = Token(
          accessToken: accessToken,
          refreshToken: refreshToken,
        );
        _storageService.saveToken(token);
        return Right(token);
      } else {
        return Left(Failure.from(response.message));
      }
    } on DioError catch (e) {
      final DataResponse response = DataResponse.fromJson(e.response?.data);
      return Left(Failure.from(response.message));
    } catch (e) {
      return Left(Failure.from(e));
    }
  }

  Future<Either<Failure, Token>> refreshToken() async {
    try {
      final TokenResponse response =
      await _apiService.getApiClient().refreshToken();
      if (response.status == 200) {
        final String accessToken = response.accessToken ?? '';
        final String refreshToken = response.refreshToken ?? '';
        final Token token = Token(
          accessToken: accessToken,
          refreshToken: refreshToken,
        );
        _storageService.saveToken(token);
        return Right(token);
      } else {
        return Left(Failure.from(response.message));
      }
    } on DioError catch (e) {
      final DataResponse response = DataResponse.fromJson(e.response?.data);
      return Left(Failure.from(response.message));
    } catch (e) {
      return Left(Failure.from(e));
    }
  }

  Future<Either<Failure, AddressResponse>> getAddressList() async {
    try {
      final AddressResponse response =
      await _apiService.getApiClient().getAddressList();
      if (response.status == 200) {
        return Right(response);
      } else {
        return Left(Failure.from(response.message));
      }
    } on DioError catch (e) {
      final DataResponse response = DataResponse.fromJson(e.response?.data);
      return Left(Failure.from(response.message));
    } catch (e) {
      return Left(Failure.from(e));
    }
  }

  Future<Either<Failure, AddressDetailResponse>> getAddressDetail(int adId) async {
    try {
      final AddressDetailResponse response =
      await _apiService.getApiClient().getAddressDetail(adId);
      if (response.status == 200) {
        return Right(response);
      } else {
        return Left(Failure.from(response.message));
      }
    } on DioError catch (e) {
      final DataResponse response = DataResponse.fromJson(e.response?.data);
      return Left(Failure.from(response.message));
    } catch (e) {
      return Left(Failure.from(e));
    }
  }

  Future<Either<Failure, DataResponse>> addAddress({
    required subject,
    required name,
    required phone,
    required postCode,
    required address1,
    required address2,
    required address3,
    required tel
  }) async {
    try {
      final DataResponse response =
      await _apiService.getApiClient().addAddress(subject,name,phone,postCode,address1,address2,address3,tel);
      if (response.status == 200) {
        return Right(response);
      } else {
        return Left(Failure.from(response.message));
      }
    } on DioError catch (e) {
      final DataResponse response = DataResponse.fromJson(e.response?.data);
      return Left(Failure.from(response.message));
    } catch (e) {
      return Left(Failure.from(e));
    }
  }

  Future<Either<Failure, DataResponse>> updateAddress({
    required adId,
    required subject,
    required name,
    required phone,
    required postCode,
    required address1,
    required address2,
    required address3,
    required tel
  }) async {
    try {
      final DataResponse response =
      await _apiService.getApiClient().updateAddress(adId,subject,name,phone,postCode,address1,address2,address3,'false',tel);
      if (response.status == 200) {
        return Right(response);
      } else {
        return Left(Failure.from(response.message));
      }
    } on DioError catch (e) {
      final DataResponse response = DataResponse.fromJson(e.response?.data);
      return Left(Failure.from(response.message));
    } catch (e) {
      return Left(Failure.from(e));
    }
  }

  Future<Either<Failure, DataResponse>> setAddressBasic(int adId) async {
    try {
      final DataResponse response =
      await _apiService.getApiClient().setAddressBasic(adId);
      if (response.status == 200) {
        return Right(response);
      } else {
        return Left(Failure.from(response.message));
      }
    } on DioError catch (e) {
      final DataResponse response = DataResponse.fromJson(e.response?.data);
      return Left(Failure.from(response.message));
    } catch (e) {
      return Left(Failure.from(e));
    }
  }

  Future<Either<Failure, DataResponse>> deleteAddress(int adId) async {
    try {
      final DataResponse response =
      await _apiService.getApiClient().deleteAddress(adId);
      if (response.status == 200) {
        return Right(response);
      } else {
        return Left(Failure.from(response.message));
      }
    } on DioError catch (e) {
      final DataResponse response = DataResponse.fromJson(e.response?.data);
      return Left(Failure.from(response.message));
    } catch (e) {
      return Left(Failure.from(e));
    }
  }

  Future<Either<Failure, DataResponse>> authPhone({
    required phone,
  }) async {
    try {
      final DataResponse response =
      await _apiService.getApiClient().authPhone(phone);
      if (response.status == 200) {
        return Right(response);
      } else {
        return Left(Failure.from(response.message));
      }
    } on DioError catch (e) {
      final DataResponse response = DataResponse.fromJson(e.response?.data);
      return Left(Failure.from(response.message));
    } catch (e) {
      return Left(Failure.from(e));
    }
  }

  Future<Either<Failure, DataResponse>> authNumber({
    required phone,
    required number,
  }) async {
    try {
      final DataResponse response =
      await _apiService.getApiClient().authNumber(phone,number);
      if (response.status == 200) {
        return Right(response);
      } else {
        return Left(Failure.from(response.message));
      }
    } on DioError catch (e) {
      final DataResponse response = DataResponse.fromJson(e.response?.data);
      return Left(Failure.from(response.message));
    } catch (e) {
      return Left(Failure.from(e));
    }
  }

  Future<Either<Failure, DataResponse>> resetPassword({
    required phone,
    required pw1,
    required pw2,
    required number,
  }) async {
    try {
      final DataResponse response =
      await _apiService.getApiClient().resetPassword(phone,pw1,pw2,number);
      if (response.status == 200) {
        return Right(response);
      } else {
        return Left(Failure.from(response.message));
      }
    } on DioError catch (e) {
      final DataResponse response = DataResponse.fromJson(e.response?.data);
      return Left(Failure.from(response.message));
    } catch (e) {
      return Left(Failure.from(e));
    }
  }

  Future<Either<Failure, DataResponse>> registerUser({
    required type,
    required phone,
    required pw1,
    required pw2,
    required authCode,
    required recommendCode,
  }) async {
    try {
      final DataResponse response =
      await _apiService.getApiClient().registerUser(type,phone,pw1,pw2,authCode,recommendCode);
      if (response.status == 200) {
        return Right(response);
      } else {
        return Left(Failure.from(response.message));
      }
    } on DioError catch (e) {
      final DataResponse response = DataResponse.fromJson(e.response?.data);
      return Left(Failure.from(response.message));
    } catch (e) {
      return Left(Failure.from(e));
    }
  }

  Future<Either<Failure, DataResponse>> registerBizUser({
    required type,
    required phone,
    required pw1,
    required pw2,
    required authCode,
    required recommendCode,
    required bizLicense,
  }) async {
    try {
      final DataResponse response =
      await _apiService.getApiClient().registerBizUser(type,phone,pw1,pw2,authCode,recommendCode,bizLicense);
      if (response.status == 200) {
        return Right(response);
      } else {
        return Left(Failure.from(response.message));
      }
    } on DioError catch (e) {
      final DataResponse response = DataResponse.fromJson(e.response?.data);
      return Left(Failure.from(response.message));
    } catch (e) {
      return Left(Failure.from(e));
    }
  }

  Future<Either<Failure, UserInfoResponse>> getMyInfo() async {
    try {
      final UserInfoResponse response =
      await _apiService.getApiClient().getMyInfo();
      if (response.status == 200) {
        return Right(response);
      } else {
        return Left(Failure.from(response.message));
      }
    } on DioError catch (e) {
      final UserInfoResponse response = UserInfoResponse.fromJson(e.response?.data);
      return Left(Failure.from(response.message));
    } catch (e) {
      return Left(Failure.from(e));
    }
  }

  Future<Either<Failure, DataResponse>> verifyPassword({
    required password,
  }) async {
    try {
      final DataResponse response =
      await _apiService.getApiClient().verifyPassword(password);
      if (response.status == 200) {
        return Right(response);
      } else {
        return Left(Failure.from(response.message));
      }
    } on DioError catch (e) {
      final DataResponse response = DataResponse.fromJson(e.response?.data);
      return Left(Failure.from(response.message));
    } catch (e) {
      return Left(Failure.from(e));
    }
  }

  Future<Either<Failure, DataResponse>> updateMyInfo({
    required nickname,
    required currentPassword,
    required newPassword1,
    required newPassword2,
  }) async {
    try {
      final DataResponse response =
      await _apiService.getApiClient().updateMyInfo(nickname,currentPassword,newPassword1,newPassword2,);
      if (response.status == 200) {
        return Right(response);
      } else {
        return Left(Failure.from(response.message));
      }
    } on DioError catch (e) {
      final DataResponse response = DataResponse.fromJson(e.response?.data);
      return Left(Failure.from(response.message));
    } catch (e) {
      return Left(Failure.from(e));
    }
  }

  Future<Either<Failure, CouponResponse>> getCouponList({
    required String status
  }) async {
    try {
      final CouponResponse response =
      await _apiService.getApiClient().getCouponList(status);
      if (response.status == 200) {
        return Right(response);
      } else {
        return Left(Failure.from(response.message));
      }
    } on DioError catch (e) {
      final DataResponse response = DataResponse.fromJson(e.response?.data);
      return Left(Failure.from(response.message));
    } catch (e) {
      return Left(Failure.from(e));
    }
  }

  Future<Either<Failure, DataResponse>> couponRegister({
    required code
  }) async {
    try {
      final DataResponse response =
      await _apiService.getApiClient().couponRegister(code);
      if (response.status == 200) {
        return Right(response);
      } else {
        return Left(Failure.from(response.message));
      }
    } on DioError catch (e) {
      final DataResponse response = DataResponse.fromJson(e.response?.data);
      return Left(Failure.from(response.message));
    } catch (e) {
      return Left(Failure.from(e));
    }
  }

  Future<Either<Failure, PaymentResponse>> getPaymentList({
    required int page
  }) async {
    try {
      final PaymentResponse response =
      await _apiService.getApiClient().paymentList(page);
      if (response.status == 200) {
        return Right(response);
      } else {
        return Left(Failure.from(response.message));
      }
    } on DioError catch (e) {
      final DataResponse response = DataResponse.fromJson(e.response?.data);
      return Left(Failure.from(response.message));
    } catch (e) {
      return Left(Failure.from(e));
    }
  }

  Future<Either<Failure, OrderResponse>> getOrderList({
    required String status
  }) async {
    try {
      final OrderResponse response =
      await _apiService.getApiClient().orderList(status);
      if (response.status == 200) {
        return Right(response);
      } else {
        return Left(Failure.from(response.message));
      }
    } on DioError catch (e) {
      final DataResponse response = DataResponse.fromJson(e.response?.data);
      return Left(Failure.from(response.message));
    } catch (e) {
      return Left(Failure.from(e));
    }
  }

  Future<Either<Failure, PointResponse>> getPointList() async {
    try {
      final PointResponse response =
      await _apiService.getApiClient().pointList();
      if (response.status == 200) {
        return Right(response);
      } else {
        return Left(Failure.from(response.message));
      }
    } on DioError catch (e) {
      final DataResponse response = DataResponse.fromJson(e.response?.data);
      return Left(Failure.from(response.message));
    } catch (e) {
      return Left(Failure.from(e));
    }
  }

  Future<Either<Failure, CardResponse>> getCardList() async {
    try {
      final CardResponse response =
      await _apiService.getApiClient().cardList();
      if (response.status == 200) {
        return Right(response);
      } else {
        return Left(Failure.from(response.message));
      }
    } on DioError catch (e) {
      final DataResponse response = DataResponse.fromJson(e.response?.data);
      return Left(Failure.from(response.message));
    } catch (e) {
      return Left(Failure.from(e));
    }
  }

  Future<Either<Failure, DataResponse>> deleteCard({
    required cdNo
  }) async {
    try {
      final DataResponse response =
      await _apiService.getApiClient().deleteCard(cdNo);
      if (response.status == 200) {
        return Right(response);
      } else {
        return Left(Failure.from(response.message));
      }
    } on DioError catch (e) {
      final DataResponse response = DataResponse.fromJson(e.response?.data);
      return Left(Failure.from(response.message));
    } catch (e) {
      return Left(Failure.from(e));
    }
  }

  Future<Either<Failure, DataResponse>> updateCard({
    required cdNo,
    required subject,
  }) async {
    try {
      final DataResponse response =
      await _apiService.getApiClient().updateCard(cdNo,subject);
      if (response.status == 200) {
        return Right(response);
      } else {
        return Left(Failure.from(response.message));
      }
    } on DioError catch (e) {
      final DataResponse response = DataResponse.fromJson(e.response?.data);
      return Left(Failure.from(response.message));
    } catch (e) {
      return Left(Failure.from(e));
    }
  }

  Future<Either<Failure, DataResponse>> registerCard({
    required type,
    required number,
    required expired,
    required pw,
    required birth,
    required bizNumber
  }) async {
    try {
      final DataResponse response =
      await _apiService.getApiClient().registerCard(type,number,expired,pw,birth,bizNumber);
      if (response.status == 200) {
        return Right(response);
      } else {
        return Left(Failure.from(response.message));
      }
    } on DioError catch (e) {
      final DataResponse response = DataResponse.fromJson(e.response?.data);
      return Left(Failure.from(response.message));
    } catch (e) {
      return Left(Failure.from(e));
    }
  }

  Future<Either<Failure, CartResponse>> getCartList() async {
    try {
      final CartResponse response =
      await _apiService.getApiClient().cartList();
      if (response.status == 200) {
        return Right(response);
      } else {
        return Left(Failure.from(response.message));
      }
    } on DioError catch (e) {
      final DataResponse response = DataResponse.fromJson(e.response?.data);
      return Left(Failure.from(response.message));
    } catch (e) {
      return Left(Failure.from(e));
    }
  }

  Future<Either<Failure, DataResponse>> addCart({
    required itId,
    required qty
  }) async {
    try {
      final DataResponse response =
      await _apiService.getApiClient().addCart(itId, qty);
      if (response.status == 200) {
        return Right(response);
      } else {
        return Left(Failure.from(response.message));
      }
    } on DioError catch (e) {
      final DataResponse response = DataResponse.fromJson(e.response?.data);
      return Left(Failure.from(response.message));
    } catch (e) {
      return Left(Failure.from(e));
    }
  }
}