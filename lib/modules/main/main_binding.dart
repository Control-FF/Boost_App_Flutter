import 'package:boostapp/modules/main/main_controller.dart';
import 'package:get/get.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<MainController>(MainController());
    //Get.put<MypageController>(MypageController());
    //Get.put<HomeController>(HomeController());
    //Get.put<HistoryController>(HistoryController());
  }
}