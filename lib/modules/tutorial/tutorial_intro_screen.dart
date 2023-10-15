import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/tutorial/tutorial_controller.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:boostapp/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TutorialIntroScreen extends GetView<TutorialController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.white,
      body: Stack(
        children: [
          Image.asset(
            'assets/images/intro.png',
            fit: BoxFit.cover,
            width: Get.width,
            height: Get.height,
          ),
          Container(
            width: Get.width,
            height: Get.height,
            color: ColorConstant.black.withOpacity(0.2),
            child: SizedBox(),
          ),
          Positioned(
            left: 48.w,
            right: 48.w,
            bottom: 52.h,
            child: GestureDetector(
              onTap: (){
                Get.offAllNamed(AppRoutes.tutorialScreen);
              },
              child: CustomButton(
                '둘러보기',
                23.sp,
                ColorConstant.white,
                ColorConstant.primary,
                4.w,
                'Noto Sans KR',
                FontWeight.w700,
                Get.width,
                55.w
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 151.h,
            child: Container(
              alignment: Alignment.center,
              child: Text(
                '부스트엔 다 있지!',
                style: TextStyle(
                  color: ColorConstant.gray6,
                  fontSize: 14.sp,
                  fontFamily: 'Noto Sans KR',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 261.h,
            child: Container(
              alignment: Alignment.center,
              child: Text(
                '원하시는 상품이라도?',
                style: TextStyle(
                  color: ColorConstant.white,
                  fontSize: 34.sp,
                  fontFamily: 'Noto Sans KR',
                  fontWeight: FontWeight.w700,
                ),
              ),
            )
          )
        ],
      ),
    );
  }

}