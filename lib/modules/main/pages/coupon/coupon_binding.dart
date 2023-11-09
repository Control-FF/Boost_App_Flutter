import 'package:boostapp/modules/main/pages/coupon/coupon_controller.dart';
import 'package:get/get.dart';

class CouponBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<CouponController>(CouponController());
  }
}