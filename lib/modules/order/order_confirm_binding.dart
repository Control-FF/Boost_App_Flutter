import 'package:boostapp/modules/order/order_confirm_controller.dart';
import 'package:get/get.dart';


class OrderConfirmBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<OrderConfirmController>(OrderConfirmController());
  }
}
