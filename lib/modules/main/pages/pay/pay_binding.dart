import 'package:boostapp/modules/main/pages/pay/pay_controller.dart';
import 'package:get/get.dart';

class PayBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<PayController>(PayController());
  }
}