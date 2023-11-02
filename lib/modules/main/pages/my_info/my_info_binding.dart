import 'package:boostapp/modules/main/pages/my_info/my_info_controller.dart';
import 'package:get/get.dart';

class MyInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<MyInfoController>(MyInfoController());
  }
}