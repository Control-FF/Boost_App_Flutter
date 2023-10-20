import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/main/pages/bottom_bar_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'main_controller.dart';


class MainScreen extends GetView<MainController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () async {
          bool backStatus = controller.onWillPop(context);
          if (backStatus) {
            return Future.value(true);
          }
          return Future.value(false);
        },
        child: Scaffold(
          backgroundColor: ColorConstant.black,
          body: BottomBarScreen(),
        ),
      )
    );
  }
}
