import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/main/pages/coupon/coupon_controller.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CouponListScreen extends GetView<CouponController>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorConstant.white,
          elevation: 0,
          title: Text(
            '쿠폰',
            style: TextStyle(
              color: ColorConstant.black2,
              fontSize: 16.sp,
              fontFamily: 'Noto Sans KR',
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: (){
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios_new_rounded,color: ColorConstant.black,),
          ),
          actions: [
            IconButton(
              onPressed: (){
                Get.toNamed(AppRoutes.couponRegister);
              },
              icon: Icon(Icons.add,color: ColorConstant.black,),
            )
          ],
        ),
        backgroundColor: ColorConstant.white,
        body: Obx(() => Column(
          children: [
            Stack(
              children: [
                Positioned(
                  bottom: 0,
                  left: 30,
                  right: 30,
                  child: Divider(
                    height: 1,
                    thickness: 1,
                    color: ColorConstant.black,
                  ),
                ),
                TabBar(
                  controller: controller.tabController,
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  indicatorColor: ColorConstant.primary,
                  indicatorWeight: 1,
                  labelColor: ColorConstant.primary,
                  unselectedLabelColor: ColorConstant.black,
                  isScrollable: false,
                  labelStyle: TextStyle(
                    color: ColorConstant.primary,
                    fontSize: 12.sp,
                    fontFamily: 'Noto Sans KR',
                    fontWeight: FontWeight.w500,
                  ),
                  unselectedLabelStyle: TextStyle(
                    color: ColorConstant.black,
                    fontSize: 12.sp,
                    fontFamily: 'Noto Sans KR',
                    fontWeight: FontWeight.w500,
                  ),
                  tabs: [
                    Tab(text: '보유 쿠폰',),
                    Tab(text: '쿠폰 받기',),
                  ],
                )
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: controller.tabController,
                children: [
                  ListView.separated(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.fromLTRB(30, 13.h, 30, 13.h),
                    itemCount: controller.myCouponList.length,
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(height: 13,);
                    },
                    itemBuilder: (context, index){
                      return Container(
                        padding: EdgeInsets.all(16),
                        width: Get.width,
                        decoration: BoxDecoration(
                            border: Border.all(color: ColorConstant.black,width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(8.r))
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              controller.getCouponMethod(controller.myCouponList[index].cp_method),
                              style: TextStyle(
                                color: ColorConstant.gray12,
                                fontSize: 9.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  controller.myCouponList[index].cp_price.toString(),
                                  style: TextStyle(
                                    color: ColorConstant.black,
                                    fontSize: 32.sp,
                                    fontFamily: 'Noto Sans KR',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(bottom: 4.h),
                                    child: Text(
                                      controller.myCouponList[index].cp_type == 1 ? '%' : '원',
                                      style: TextStyle(
                                        color: ColorConstant.black,
                                        fontSize: 16.sp,
                                        fontFamily: 'Noto Sans KR',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )
                                )
                              ],
                            ),
                            Text(
                              controller.myCouponList[index].cp_subject,
                              style: TextStyle(
                                color: ColorConstant.black,
                                fontSize: 12.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 24,),
                            Text(
                              controller.myCouponList[index].cp_type == 1
                                  ? '최대 ${controller.myCouponList[index].cp_maximum}원'
                                  : '${controller.myCouponList[index].cp_minimum}원',
                              style: TextStyle(
                                color: ColorConstant.gray9,
                                fontSize: 10.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 8,),
                            Text(
                              '${controller.myCouponList[index].cp_datetime}까지',
                              style: TextStyle(
                                color: ColorConstant.gray9,
                                fontSize: 10.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  ListView.separated(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.fromLTRB(30, 13.h, 30, 13.h),
                    itemCount: controller.couponList.length,
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(height: 13,);
                    },
                    itemBuilder: (context, index){
                      return Container(
                        padding: EdgeInsets.all(16),
                        width: Get.width,
                        decoration: BoxDecoration(
                            border: Border.all(color: ColorConstant.black,width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(8.r))
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              controller.getCouponMethod(controller.couponList[index].cp_method),
                              style: TextStyle(
                                color: ColorConstant.gray12,
                                fontSize: 9.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  controller.couponList[index].cp_price.toString(),
                                  style: TextStyle(
                                    color: ColorConstant.black,
                                    fontSize: 32.sp,
                                    fontFamily: 'Noto Sans KR',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(bottom: 4.h),
                                    child: Text(
                                      controller.couponList[index].cp_type == 1 ? '%' : '원',
                                      style: TextStyle(
                                        color: ColorConstant.black,
                                        fontSize: 16.sp,
                                        fontFamily: 'Noto Sans KR',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )
                                )
                              ],
                            ),
                            Text(
                              controller.couponList[index].cp_subject,
                              style: TextStyle(
                                color: ColorConstant.black,
                                fontSize: 12.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 24,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      controller.couponList[index].cp_type == 1
                                          ? '최대 ${controller.couponList[index].cp_maximum}원'
                                          : '${controller.couponList[index].cp_minimum}원',
                                      style: TextStyle(
                                        color: ColorConstant.gray9,
                                        fontSize: 10.sp,
                                        fontFamily: 'Noto Sans KR',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(height: 8,),
                                    Text(
                                      '${controller.couponList[index].cp_datetime}까지',
                                      style: TextStyle(
                                        color: ColorConstant.gray9,
                                        fontSize: 10.sp,
                                        fontFamily: 'Noto Sans KR',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                ElevatedButton(
                                  onPressed: (){
                                    controller.showAddCouponPopup(context,'add');
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: ColorConstant.primary,
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(6.r))
                                      ),
                                      padding: EdgeInsets.all(0),
                                      minimumSize: Size(85.w,29.h)
                                  ),
                                  child: Text(
                                    '쿠폰 받기',
                                    style: TextStyle(
                                      color: ColorConstant.white,
                                      fontSize: 12.sp,
                                      fontFamily: 'Noto Sans KR',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),

                                )
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  )
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}