import 'package:boostapp/data/service/storage_service.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:get/get.dart';

class MyPageController extends GetxController{
  final StorageService _storageService = Get.find();

  @override
  void onInit() {
    super.onInit();
  }

  void logout(){
    _storageService.deleteToken();
    Get.offAllNamed(AppRoutes.loginScreen);
  }
}