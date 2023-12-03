import 'package:boostapp/modules/main/pages/inquiry/inquiry_controller.dart';
import 'package:get/get.dart';

class InquiryBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<InquiryController>(InquiryController());
  }
}