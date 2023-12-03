import 'package:boostapp/modules/cart/cart_controller.dart';
import 'package:boostapp/modules/main/main_controller.dart';
import 'package:boostapp/modules/main/pages/bnv_my_page_controller.dart';
import 'package:boostapp/modules/main/pages/bnv_onetouch_controller.dart';
import 'package:get/get.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<MainController>(MainController());
    Get.put<OneTouchController>(OneTouchController());
    Get.put<MyPageController>(MyPageController());
    Get.put<CartController>(CartController());
    //Get.put<HomeController>(HomeController());
    //Get.put<HistoryController>(HistoryController());
  }
}