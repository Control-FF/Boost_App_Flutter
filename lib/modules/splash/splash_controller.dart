
import 'package:boostapp/data/service/storage_service.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:get/get.dart';


class SplashController extends GetxController {
  @override
  void onInit() async {
    await Future.delayed(Duration(milliseconds: 2000));

    final StorageService _storageService = Get.find();
    try {
      if (_storageService.isLogin()) {
        //await FcmHelper.setToken();
        //await PermissionManager.checkPermission();
        Get.offAllNamed(AppRoutes.mainScreen);
      } else {
        Get.offAllNamed(AppRoutes.tutorialScreen);
      }
    } catch (e) {
      Get.offAllNamed(AppRoutes.tutorialScreen);
    }


    super.onInit();
  }
}
