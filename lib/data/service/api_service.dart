

import 'package:boostapp/core/constants/constants.dart';
import 'package:boostapp/data/api/api_client.dart';
import 'package:boostapp/data/api/interceptors/token_interceptor.dart';
import 'package:boostapp/data/service/user_service.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiService extends GetxService {
  static late Dio _dio;
  static late ApiClient _apiClient;

  Future<ApiService> init() async {

    _dio = Dio(
      BaseOptions(
        baseUrl: Constants.baseUrl,
      ),
    );

    _dio.interceptors.addAll(
      [
        PrettyDioLogger(
          request: true,
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 200,
        ),
        TokenInterceptor(),
      ],
    );
    _apiClient = ApiClient(_dio);
    return this;
  }

  ApiClient getApiClient() {
    return _apiClient;
  }
}
