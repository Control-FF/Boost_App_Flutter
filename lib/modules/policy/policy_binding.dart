import 'package:boostapp/modules/policy/policy_controller.dart';
import 'package:get/get.dart';

class PolicyBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<PolicyController>(PolicyController());
  }
}