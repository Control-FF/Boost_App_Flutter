import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/main/main_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BottomBarScreen extends GetView<MainController>{
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      extendBody: true,
      backgroundColor: ColorConstant.white,
      body: controller.pages.value[controller.currentIndex.value]['page'],
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomAppBar(
          shape: AutomaticNotchedShape(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30.r),topRight: Radius.circular(30.r))
              ),
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(60.r))
              )
          ),
          notchMargin: 5,
          clipBehavior: Clip.antiAlias,
          child: Container(
            height: kBottomNavigationBarHeight * 1.2,
            child: Container(
              child: BottomNavigationBar(
                onTap: controller.selectPage,
                type: BottomNavigationBarType.fixed,
                backgroundColor: ColorConstant.white,
                unselectedItemColor: ColorConstant.black,
                selectedItemColor: ColorConstant.black,
                currentIndex: controller.currentIndex.value,
                unselectedFontSize: 11.sp,
                selectedFontSize: 11.sp,
                unselectedLabelStyle: TextStyle(
                  color: ColorConstant.black,
                  fontSize: 11.sp,
                  fontFamily: 'Noto Sans KR',
                  fontWeight: FontWeight.w500,
                ),
                selectedLabelStyle: TextStyle(
                  color: ColorConstant.black,
                  fontSize: 11.sp,
                  fontFamily: 'Noto Sans KR',
                  fontWeight: FontWeight.w500,
                ),
                items: [
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: EdgeInsets.only(bottom: 4.43.h),
                      child: Image.asset('assets/images/ic_bnv_home.png',width: 23.08.w,height: 24.32.h,),
                    ),
                    label: '메인',
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: EdgeInsets.only(bottom: 7.h),
                      child: Image.asset('assets/images/ic_bnv_onetouch.png',width: 16.61.w,height: 22.h,),
                    ),
                    label: '원터치 배송',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: null,
                    icon: Icon(null),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: EdgeInsets.only(bottom: 3.68.h),
                      child: Image.asset('assets/images/ic_bnv_cart.png',width: 24.w,height: 24.32.h,),
                    ),
                    label: '장바구니',
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: EdgeInsets.only(bottom: 7.h),
                      child: Image.asset('assets/images/ic_bnv_my_page.png',width: 20.w,height: 20.h,),
                    ),
                    label: '마이페이지',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Padding(
        padding: EdgeInsets.all(8.0),
        child: FloatingActionButton(
          backgroundColor: ColorConstant.primary,
          hoverElevation: 10,
          splashColor: ColorConstant.gray1,
          tooltip: 'Gift',
          elevation: 4,
          child: Image.asset('assets/images/ic_bnv_gift.png',width: 23.w,height: 23.h,),
          onPressed: (){
            controller.currentIndex.value = 2;
          },
        ),
      ),
    ));
  }

}