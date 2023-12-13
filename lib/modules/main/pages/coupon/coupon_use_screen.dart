import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/main/pages/coupon/coupon_controller.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CouponUseScreen extends GetView<CouponController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
      backgroundColor: ColorConstant.white,
      body: SafeArea(
        child: Obx(() => Column(
          children: [
            Expanded(
              child: ListView.separated(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.fromLTRB(30, 13.h, 30, 13.h),
                itemCount: controller.myCouponList.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 13,);
                },
                itemBuilder: (context, index){
                  return GestureDetector(
                    onTap: (){
                      controller.selectUseCpNo.value = controller.myCouponList[index].cp_no;
                    },
                    child: Container(
                      padding: EdgeInsets.all(16),
                      width: Get.width,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: controller.getSelectIndex(controller.selectUseCpNo.value) == index
                                  ? ColorConstant.primary
                                  : ColorConstant.black,
                              width: controller.getSelectIndex(controller.selectUseCpNo.value) == index ? 2 : 1
                          ),
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
                    ),
                  );
                },
              ),
            ),
            Container(
              width: Get.width,
              child: ElevatedButton(
                onPressed: (){
                  if(controller.selectUseCpNo.value == 0){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      elevation: 6.0,
                      behavior: SnackBarBehavior.floating,
                      content: Text(
                        '쿠폰을 선택해주세요.',
                        style: TextStyle(color: Colors.white),
                      ),
                    ));
                    return;
                  }

                  Get.back(result: {
                    'cpNo' : controller.selectUseCpNo.value,
                    'cpPrice' : controller.myCouponList[controller.getSelectIndex(controller.selectUseCpNo.value)].cp_price
                  });
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: controller.selectUseCpNo.value != 0 ? ColorConstant.primary : ColorConstant.gray1,
                    elevation: 0,
                    minimumSize: Size(77.w,45.h)
                ),
                child: Text(
                  '적용하기',
                  style: TextStyle(
                    color: ColorConstant.white,
                    fontSize: 14.sp,
                    fontFamily: 'Noto Sans KR',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}