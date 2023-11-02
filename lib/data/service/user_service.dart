import 'package:boostapp/data/models/address.dart';
import 'package:boostapp/data/models/address_detail.dart';
import 'package:boostapp/data/models/data_response.dart';
import 'package:boostapp/data/models/failure.dart';
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
}