import 'package:boostapp/modules/main/pages/point/point_controller.dart';
import 'package:get/get.dart';

class PointBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<PointController>(PointController());
  }
}