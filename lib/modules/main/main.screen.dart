import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'main_controller.dart';


class MainScreen extends GetView<MainController> {
  @override
  Widget build(BuildContext context) {
    /*
    List<BottomMenuModel> bottomMenuList = [
      BottomMenuModel(
        icon: 'assets/images/img_home.svg',
        title: "홈",
        type: BottomBarEnum.home,
      ),
      BottomMenuModel(
        icon: 'assets/images/img_menu.svg',
        title: "진료 내역",
        type: BottomBarEnum.history,
      ),
      BottomMenuModel(
        icon: 'assets/images/img_user.svg',
        title: "마이페이지",
        type: BottomBarEnum.mypage,
      )
    ];

     */
    return SafeArea(
      child: WillPopScope(
        onWillPop: () async {
          bool backStatus = controller.onWillPop();
          if (backStatus) {
            return Future.value(true);
          }
          return Future.value(false);
        },
        child: Scaffold(
          body: SizedBox(),
        ),
      )
    );
  }
}
