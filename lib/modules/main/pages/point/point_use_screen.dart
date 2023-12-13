import 'package:boostapp/core/constants/constants.dart';
import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/main/pages/point/point_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PointUseScreen extends GetView<PointController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.white,
        elevation: 0,
        title: Text(
          '포인트 사용',
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
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Obx(() => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 27.h,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 44.h,
                      child: TextField(
                        controller: controller.pointController,
                        decoration: InputDecoration(
                            hintText: '포인트 입력',
                            hintStyle: TextStyle(
                              color: ColorConstant.gray7,
                              fontSize: 14.sp,
                              fontFamily: 'Noto Sans KR',
                              fontWeight: FontWeight.w500,
                            ),
                            counterText: '',
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1.w,
                                  color: ColorConstant.primary
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(4.r)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1.w,
                                  color: ColorConstant.primary
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(4.r)),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1.w,
                                  color: ColorConstant.primary
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(4.r)),
                            ),
                            suffixIconConstraints: BoxConstraints(
                              minWidth: 20.w,
                            ),
                            suffixIcon: Container(
                              margin: EdgeInsets.only(right: 13.w),
                              child: Text(
                                '원',
                                style: TextStyle(
                                  color: ColorConstant.primary,
                                  fontSize: 14.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            contentPadding: EdgeInsets.only(left: 12)
                        ),
                        maxLines: 1,
                        style: TextStyle(
                          color: ColorConstant.gray7,
                          fontSize: 14.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w500,
                        ),
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.done,
                        onChanged: (value){
                          if(value == ''){
                            controller.usePoint.value = 0;
                          }else{
                            controller.usePoint.value = int.parse(value);
                          }

                        },

                      ),
                    ),
                  ),
                  SizedBox(width: 11.w,),
                  ElevatedButton(
                    onPressed: (){
                      controller.usePoint.value = controller.point.value;
                      controller.pointController.text = controller.point.value.toString();
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorConstant.primary,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4.r))
                        ),
                        minimumSize: Size(109.w,44.h)
                    ),
                    child: Text(
                      '모두 사용',
                      style: TextStyle(
                        color: ColorConstant.white,
                        fontSize: 14.sp,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 9.h,),
              Text(
                '보유 포인트 : ${Constants.numberAddComma(controller.point.value)}P',
                style: TextStyle(
                  color: ColorConstant.primary,
                  fontSize: 12.sp,
                  fontFamily: 'Noto Sans KR',
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 30.h,),
              Container(
                width: Get.width,
                child: ElevatedButton(
                  onPressed: (){
                    if(controller.usePoint.value <= 0){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        elevation: 6.0,
                        behavior: SnackBarBehavior.floating,
                        content: Text(
                          '사용할 포인트를 입력해주세요.',
                          style: TextStyle(color: Colors.white),
                        ),
                      ));
                      return;
                    }

                    if(controller.usePoint.value > controller.point.value){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        elevation: 6.0,
                        behavior: SnackBarBehavior.floating,
                        content: Text(
                          '보유 포인트가 부족합니다.',
                          style: TextStyle(color: Colors.white),
                        ),
                      ));
                      return;
                    }

                    Get.back(result: {'point':controller.usePoint.value});
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: controller.usePoint.value > 0 ? ColorConstant.primary : ColorConstant.gray2,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.r))
                      ),
                      minimumSize: Size(109.w,44.h)
                  ),
                  child: Text(
                    '적용 하기',
                    style: TextStyle(
                      color: ColorConstant.white,
                      fontSize: 14.sp,
                      fontFamily: 'Noto Sans KR',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 11.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '포인트는 최초 1,000포인트 이상 적립시 사용 가능합니다.',
                    style: TextStyle(
                      color: ColorConstant.primary,
                      fontSize: 12.sp,
                      fontFamily: 'Noto Sans KR',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              )
            ],
          )),
        ),
      ),
    );
  }

}