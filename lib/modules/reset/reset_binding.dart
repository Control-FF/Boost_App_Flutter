import 'package:boostapp/modules/reset/reset_controller.dart';
import 'package:get/get.dart';


class ResetBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ResetController>(ResetController());
  }
}
