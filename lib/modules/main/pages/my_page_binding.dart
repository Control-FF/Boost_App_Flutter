import 'package:boostapp/modules/main/pages/my_page_controller.dart';
import 'package:get/get.dart';

class MyPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<MyPageController>(MyPageController());
  }
}