import 'package:boostapp/data/models/address.dart';
import 'package:boostapp/data/models/address_detail.dart';
import 'package:boostapp/data/models/category.dart';
import 'package:boostapp/data/models/data_response.dart';
import 'package:boostapp/data/models/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:boostapp/data/models/token.dart';
import 'package:boostapp/data/models/token_response.dart';
import 'package:boostapp/data/service/api_service.dart';
import 'package:boostapp/data/service/storage_service.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class ShopService extends GetxService{
  static late ApiService _apiService;
  static late StorageService _storageService;

  Future<ShopService> init() async {
    _apiService = Get.find<ApiService>();
    return this;
  }

  Future<Either<Failure, CategoryResponse>> getCategoryList({required String caId}) async {
    try {
      final CategoryResponse response =
      await _apiService.getApiClient().getCategory(caId);
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