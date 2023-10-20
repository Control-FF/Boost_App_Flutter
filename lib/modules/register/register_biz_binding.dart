import 'package:boostapp/modules/register/register_biz_controller.dart';
import 'package:get/get.dart';


class RegisterBizBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<RegisterBizController>(RegisterBizController());
  }
}
