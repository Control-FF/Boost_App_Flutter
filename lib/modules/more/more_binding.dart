import 'package:boostapp/modules/more/more_controller.dart';
import 'package:get/get.dart';

class MoreBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<MoreController>(MoreController());
  }
}