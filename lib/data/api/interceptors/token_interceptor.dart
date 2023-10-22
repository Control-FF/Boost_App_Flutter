import 'package:boostapp/data/service/storage_service.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart' as getLib;

import 'package:boostapp/data/models/token.dart';

class TokenInterceptor extends InterceptorsWrapper {
  final StorageService _storageService = getLib.Get.find();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final Token? token = _storageService.getToken();
    if (token != null) {
      options.headers['Authorization'] = "Bearer ${token!.accessToken}";
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
  }
}
