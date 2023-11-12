import 'package:boostapp/modules/main/pages/notice/notice_controller.dart';
import 'package:get/get.dart';

class NoticeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<NoticeController>(NoticeController());
  }
}