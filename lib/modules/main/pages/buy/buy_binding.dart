import 'package:boostapp/modules/main/pages/buy/buy_controller.dart';
import 'package:get/get.dart';

class BuyBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<BuyController>(BuyController());
  }
}