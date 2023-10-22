import 'package:boostapp/data/service/user_service.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:boostapp/modules/main/pages/delivery_screen.dart';
import 'package:boostapp/modules/main/pages/event_screen.dart';
import 'package:boostapp/modules/main/pages/gift_screen.dart';
import 'package:boostapp/modules/main/pages/home_screen.dart';
import 'package:boostapp/modules/main/pages/my_page_screen.dart';

class MainController extends GetxController {
  final UserService _userService = Get.find();

  DateTime? currentBackPressTime;
  RxInt currentIndex = 0.obs;

  RxList pages = [].obs;

  @override
  Future<void> onInit() async {
    super.onInit();

    pages.value = [
      {
        'page' : HomeScreen(),
      },
      {
        'page' : DeliveryScreen(),
      },
      {
        'page' : GiftScreen(),
      },
      {
        'page' : EventScreen(),
      },
      {
        'page' : MyPageScreen(),
      },
    ];

    await Future.delayed(Duration(milliseconds: 500));

    await getAddressCheck();
  }

  Future<void> getAddressCheck() async {
    final result = await _userService.getAddressList();
    result.fold(
        (failure) => print(failure.message),
        (response) => {
          if(response.items!.isEmpty){
            Get.toNamed(AppRoutes.addressScreen)
          }
        },
    );
  }

  onWillPop(BuildContext context) {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime!) > Duration(seconds: 2)) {
      currentBackPressTime = now;

      final snackBar = SnackBar(
        elevation: 6.0,
        behavior: SnackBarBehavior.floating,
        content: Text(
          "뒤로가기를 한번더 눌리시면 앱이 종료됩니다.",
          style: TextStyle(color: Colors.white),
        ),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);

      return false;
    } else {
      return true;
    }
  }

  void selectPage(int index){
    currentIndex.value = index;
  }
}