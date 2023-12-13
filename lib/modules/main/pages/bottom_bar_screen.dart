import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/cart/cart_controller.dart';
import 'package:boostapp/modules/main/main_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BottomBarScreen extends GetView<MainController>{

  final cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    cartController.getCartList();

    return Obx(() => SafeArea(
        child: Scaffold(
        extendBody: true,
        backgroundColor: ColorConstant.white,
        body: controller.pages.value[controller.currentIndex.value]['page'],
        bottomNavigationBar: Container(
          child: Theme(
            data: ThemeData(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            child: BottomAppBar(
              elevation: 0,
              shape: AutomaticNotchedShape(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30.r),topRight: Radius.circular(30.r))
                ),
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(60.r))
                ),
              ),
              notchMargin: 5,
              clipBehavior: Clip.antiAlias,
              child: Container(
                height: 71.h,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: Offset(0, -10), // Offset for top shadow
                    ),
                  ],
                ),
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
                      icon: Container(
                        height: 30.h,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 4.43.h),
                          child: Image.asset('assets/images/ic_bnv_home.png',width: 23.08.w,height: 24.32.h,),
                        ),
                      ),
                      label: '메인',
                    ),
                    BottomNavigationBarItem(
                      icon: Container(
                        height: 30.h,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 7.h),
                          child: Image.asset('assets/images/ic_bnv_onetouch.png',width: 16.61.w,height: 22.h,),
                        ),
                      ),
                      label: '원터치 배송',
                    ),
                    BottomNavigationBarItem(
                      activeIcon: null,
                      icon: Icon(null),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon: Container(
                        height: 30.h,
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 3.68.h),
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Container(
                                width: 34.w,
                                height: 30.h,
                                padding: EdgeInsets.only(top: 2.84.h,bottom: 2.84.h),
                                child: Image.asset('assets/images/ic_bnv_cart.png',width: 24.w,height: 24.32.h,),
                              ),
                              GetX<CartController>(
                                builder: (_){
                                  return cartController.cartList.isNotEmpty ? Container(
                                    width: 15.w,
                                    height: 15.h,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: ColorConstant.accent,
                                        shape: BoxShape.circle
                                    ),
                                    child: Text(
                                      cartController.cartList.length.toString(),
                                      style: TextStyle(
                                        color: ColorConstant.white,
                                        fontSize: 7.sp,
                                        fontFamily: 'Noto Sans KR',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ) : SizedBox();
                                },
                              )
                            ],
                          ),
                        ),
                      ),
                      label: '장바구니',
                    ),
                    BottomNavigationBarItem(
                      icon: Container(
                        height: 30.h,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 7.h),
                          child: Image.asset('assets/images/ic_bnv_my_page.png',width: 20.w,height: 20.h,),
                        ),
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
      )
    ));
  }

}