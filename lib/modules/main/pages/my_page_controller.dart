import 'package:boostapp/data/service/storage_service.dart';
import 'package:boostapp/data/service/user_service.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:get/get.dart';

class MyPageController extends GetxController with StateMixin{
  final StorageService _storageService = Get.find();
  final UserService _userService = Get.find();

  @override
  void onInit() {
    super.onInit();
  }

  void logout(){
    _storageService.deleteToken();
    Get.offAllNamed(AppRoutes.loginScreen);
  }

  Future<void> getMyInfo() async {

    final result = await _userService.getMyInfo();
    result.fold(
      (failure) {
        change(null, status: RxStatus.error(failure.message));
      },
      (response) {
        change(response, status: RxStatus.success());
      },
    );

  }
}