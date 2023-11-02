import 'package:boostapp/data/service/api_service.dart';
import 'package:boostapp/data/service/storage_service.dart';
import 'package:boostapp/data/service/user_service.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart' as getLib;

import 'package:boostapp/data/models/token.dart';

class TokenInterceptor extends InterceptorsWrapper {
  var dio = Dio();
  final StorageService _storageService = getLib.Get.find();
  //final UserService _userService = getLib.Get.find();
  //final UserService _userService = getLib.Get.find();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final Token? token = _storageService.getToken();
    if (token != null) {
      options.headers['Authorization'] = "Bearer ${token!.accessToken}";
    }
    super.onRequest(options, handler);
  }

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    if(err.response?.statusCode == 401){
      final accessToken = _storageService.getToken()?.accessToken;
      final refreshToken = _storageService.getToken()?.refreshToken;

      if(refreshToken != null){
       // _storageService.saveToken(Token(accessToken: refreshToken,refreshToken: refreshToken));

        var refreshDio = Dio();

        refreshDio.interceptors.add(
          InterceptorsWrapper(
            onError: (error, handler){
              _storageService.deleteToken();
              getLib.Get.offAndToNamed(AppRoutes.loginScreen);
            },
          )
        );

        refreshDio.options.headers['Authorization'] = 'Bearer $refreshToken';
        final refreshResponse = await refreshDio.get('/api/user/refresh');

        final newAccessToken = refreshResponse.data['accessToken'];
        final newRefreshToken = refreshResponse.data['refreshToken'];

        _storageService.saveToken(Token(accessToken: newAccessToken,refreshToken: newRefreshToken));

        err.requestOptions.headers['Authorization'] = "Bearer $newAccessToken";

        final clonedRequest = await dio.request(err.requestOptions.path,
            options: Options(
                method: err.requestOptions.method,
                headers: err.requestOptions.headers),
            data: err.requestOptions.data,
            queryParameters: err.requestOptions.queryParameters);

        return handler.resolve(clonedRequest);
      }
    }

    super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
  }
}
