import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SplashScreen extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.white,
      body: Container(
        width: Get.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 86, right: 86).r,
              child: Image.asset(
                'assets/images/logo.png',
                width: 203.w,
                height: 47.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}