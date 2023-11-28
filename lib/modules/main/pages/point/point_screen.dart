import 'package:boostapp/core/constants/constants.dart';
import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/main/pages/point/point_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PointScreen extends GetView<PointController>{

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorConstant.white,
          elevation: 0,
          title: Text(
            '포인트',
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
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: controller.obx(
              (state) => Column(
                children: [
                  SizedBox(height: 16.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '나의 포인트',
                        style: TextStyle(
                          color: ColorConstant.primary,
                          fontSize: 16.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        '${Constants.numberAddComma(state.point)}P',
                        style: TextStyle(
                          color: ColorConstant.primary,
                          fontSize: 16.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 8.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '적립 예정',
                        style: TextStyle(
                          color: ColorConstant.black,
                          fontSize: 12.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '0P',
                        style: TextStyle(
                          color: ColorConstant.gray9,
                          fontSize: 12.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 9.h,),
                  Divider(
                    height: 1,
                    thickness: 1,
                    color: ColorConstant.black,
                  ),
                  SizedBox(height: 7.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '포인트 적립, 사용내역',
                        style: TextStyle(
                          color: ColorConstant.black,
                          fontSize: 14.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '*최근 3개월동안의 정보만 노출됩니다.',
                        style: TextStyle(
                          color: ColorConstant.gray9,
                          fontSize: 10.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 9.h,),
                  Divider(
                    height: 1,
                    thickness: 1,
                    color: ColorConstant.black,
                  ),
                  SizedBox(height: 8.h,),
                  ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index){
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  state.items[index].subject,
                                  style: TextStyle(
                                    color: ColorConstant.gray23,
                                    fontSize: 12.sp,
                                    fontFamily: 'Noto Sans KR',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  '+${Constants.numberAddComma(state.items[index].point)}P',
                                  style: TextStyle(
                                    color: ColorConstant.black,
                                    fontSize: 12.sp,
                                    fontFamily: 'Noto Sans KR',
                                    fontWeight: FontWeight.w700,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 8.h,),
                            Text(
                              state.items[index].reg_time,
                              style: TextStyle(
                                color: ColorConstant.gray23,
                                fontSize: 10.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (context, index){
                        return Padding(
                          padding: EdgeInsets.only(bottom: 9.h,top: 8.h),
                          child: Divider(
                            height: 1,
                            thickness: 1,
                            color: ColorConstant.black.withOpacity(0.2),
                          ),
                        );
                      },
                      itemCount: state.items.length
                  ),
                  SizedBox(height: 8.h,),
                ],
              )
            ),
          ),
        ),
      ),
    );
  }

}