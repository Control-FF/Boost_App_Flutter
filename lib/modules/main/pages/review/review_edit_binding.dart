import 'package:boostapp/modules/main/pages/review/review_controller.dart';
import 'package:get/get.dart';

class ReviewEditBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ReviewController>(ReviewController());
  }
}