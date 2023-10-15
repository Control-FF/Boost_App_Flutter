import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/tutorial/tutorial_controller.dart';
import 'package:boostapp/modules/tutorial/tutorial_first_screen.dart';
import 'package:boostapp/modules/tutorial/tutorial_second_screen.dart';
import 'package:boostapp/modules/tutorial/tutorial_third_screen.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TutorialScreen extends GetView<TutorialController>{

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.white,
        body: Column(
          children: [
            Expanded(
              child: PageView(
                controller: controller.pageController,
                children: [
                  TutorialFirstScreen(),
                  TutorialSecondScreen(),
                  TutorialThirdScreen()
                ],
              ),
            ),
            Obx(
                    () => Row(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 30),
                        child: controller.currentIndex.value != 0
                            ? GestureDetector(
                          onTap: (){
                            int page = controller.currentIndex.value - 1;

                            controller.pageController.jumpToPage(page);
                          },
                          child: Text(
                            'Prev',
                            style: TextStyle(
                              color: ColorConstant.gray3,
                              fontSize: 18.sp,
                              fontFamily: 'Noto Sans KR',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ) : const SizedBox(),
                      ),
                    ),
                    SmoothPageIndicator(
                      controller: controller.pageController,
                      count: 3,
                      axisDirection: Axis.horizontal,
                      effect: ExpandingDotsEffect(
                        dotHeight: 9.w,
                        dotWidth: 9.h,
                        dotColor: ColorConstant.gray2,
                        activeDotColor: ColorConstant.primary,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(right: 30),
                        child: GestureDetector(
                          onTap: (){
                            int page = controller.currentIndex.value;

                            if(page == 2){
                              Get.offAllNamed(AppRoutes.loginScreen);
                            }else{
                              controller.pageController.jumpToPage(page+1);
                            }
                          },
                          child: Text(
                            controller.currentIndex.value == 2 ? 'Get Started' : 'Next',
                            style: TextStyle(
                              color: ColorConstant.primary,
                              fontSize: 18.sp,
                              fontFamily: 'Noto Sans KR',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
            ),
            const SizedBox(
              height: 52,
            )
          ],
        ),
      )
    );
  }

}