import 'package:get/get.dart';

class MainController extends GetxController {
  DateTime? currentBackPressTime;
  RxInt currentIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime!) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      Get.snackbar("", '뒤로가기를 한번더 눌리시면 앱이 종료됩니다.', snackPosition: SnackPosition.BOTTOM);
      return false;
    } else {
      return true;
    }
  }
}