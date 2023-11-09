import 'package:boostapp/modules/main/pages/order/order_controller.dart';
import 'package:get/get.dart';

class OrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<OrderController>(OrderController());
  }
}