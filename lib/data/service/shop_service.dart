import 'package:boostapp/data/models/address.dart';
import 'package:boostapp/data/models/address_detail.dart';
import 'package:boostapp/data/models/category.dart';
import 'package:boostapp/data/models/data_response.dart';
import 'package:boostapp/data/models/failure.dart';
import 'package:boostapp/data/models/keyword_auto.dart';
import 'package:boostapp/data/models/keyword_rank.dart';
import 'package:boostapp/data/models/keyword_result.dart';
import 'package:boostapp/data/models/notice.dart';
import 'package:boostapp/data/models/order_confirm.dart';
import 'package:boostapp/data/models/product_detail.dart';
import 'package:boostapp/modules/order/order_confirm_controller.dart';
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

  Future<Either<Failure, KeywordRankResponse>> getKeywordRankList() async {
    try {
      final KeywordRankResponse response =
      await _apiService.getApiClient().keywordRankList();
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

  Future<Either<Failure, KeywordAutoResponse>> getKeywordAutoList({
    required keyword
  }) async {
    try {
      final KeywordAutoResponse response =
      await _apiService.getApiClient().keywordAutoList(keyword);
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

  Future<Either<Failure, KeywordResultResponse>> getKeywordResultList({
    required keyword,
    required sort,
    required page
  }) async {
    try {
      final KeywordResultResponse response =
      await _apiService.getApiClient().keywordResultList(keyword,sort,page);
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

  Future<Either<Failure, ProductDetailResponse>> getProductDetail({
    required itId
  }) async {
    try {
      final ProductDetailResponse response =
      await _apiService.getApiClient().productDetail(itId);
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

  Future<Either<Failure, NoticeResponse>> getNotice({
    required isHtml,
  }) async {
    try {
      final NoticeResponse response =
      await _apiService.getApiClient().noticeList(isHtml);
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