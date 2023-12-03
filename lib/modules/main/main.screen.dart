import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/main/pages/bottom_bar_screen.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        child: Stack(
          children: [
            Scaffold(
              extendBody: true,
              key: controller.scaffoldKey,
              backgroundColor: ColorConstant.white,
              body: BottomBarScreen(),
              drawer: Drawer(
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.zero,
                  children: [
                    Container(
                      color: ColorConstant.gray15,
                      padding: EdgeInsets.fromLTRB(25.w, 20.h, 25.w, 20.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '메뉴 선택',
                            style: TextStyle(
                              color: ColorConstant.black,
                              fontSize: 16.sp,
                              fontFamily: 'Noto Sans KR',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              controller.scaffoldKey.currentState!.closeDrawer();
                            },
                            child: Icon(
                              Icons.close_sharp,
                              color: ColorConstant.black.withOpacity(0.77),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(25.w, 15.h, 25.w, 15.h),
                      child: Text(
                        '카테고리',
                        style: TextStyle(
                          color: ColorConstant.black,
                          fontSize: 14.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Divider(
                        height: 0.5.h,
                        thickness: 0.5.h,
                        color: ColorConstant.gray1,
                      ),
                    ),
                    Obx(
                            () => ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: controller.categoryList.length,
                          itemBuilder: (context,index){
                            return Container(
                              padding: EdgeInsets.fromLTRB(25.w, 0.h, 25.w, 0.h),
                              child: InkWell(
                                onTap: (){
                                  if(controller.isChild(index) && !controller.isExpand(index)){
                                    controller.getCategoryList(controller.categoryList[index].ca_id);
                                  }else if(controller.isExpand(index)){
                                    controller.setFold(index);
                                  }else{
                                    //move page
                                    Get.toNamed(AppRoutes.category,arguments: {
                                      'category':controller.categoryList[index].ca_name,
                                      'caId':controller.categoryList[index].ca_id,
                                    });
                                  }
                                },
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(17.w*(controller.categoryList[index].ca_id.length/2), 11.h, 17.w, 11.h),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        controller.categoryList[index].ca_name,
                                        style: TextStyle(
                                          color: ColorConstant.black,
                                          fontSize: 12.sp,
                                          fontFamily: 'Noto Sans KR',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      controller.isChild(index) ? Icon(
                                        controller.isExpand(index) ? Icons.keyboard_arrow_up_sharp : Icons.keyboard_arrow_down_sharp,
                                        color: ColorConstant.black,
                                        size: 14,
                                      ) : SizedBox()
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        )
                    ),
                  ],
                ),
              ),
            ),
            Obx(() => controller.isLoading.value ? const Opacity(
              opacity: 0.8,
              child: ModalBarrier(dismissible: false, color: Colors.black),
            ) : SizedBox()),
            Obx(() => controller.isLoading.value ? const Center(
              child: CircularProgressIndicator(),
            ) : SizedBox()),
          ],
        ),
      )
    );
  }
}
