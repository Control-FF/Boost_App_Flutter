import 'package:boostapp/modules/find/find_controller.dart';
import 'package:get/get.dart';


class FindBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<FindController>(FindController());
  }
}
