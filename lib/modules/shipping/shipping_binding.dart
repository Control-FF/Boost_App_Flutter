import 'package:boostapp/modules/shipping/shipping_controller.dart';
import 'package:get/get.dart';


class ShippingBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ShippingController>(ShippingController());
  }
}
