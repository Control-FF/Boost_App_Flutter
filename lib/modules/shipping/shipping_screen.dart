import 'package:boostapp/core/constants/constants.dart';
import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/shipping/shipping_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ShippingScreen extends GetView<ShippingController>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorConstant.white,
          elevation: 0,
          title: Text(
            '배송 요청사항',
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
        body: Obx(() => KeyboardDismissOnTap(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 24.h,),
                        Text(
                          '수령 장소',
                          style: TextStyle(
                            color: ColorConstant.black,
                            fontSize: 16.sp,
                            fontFamily: 'Noto Sans KR',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 24.h,),
                        Container(
                            width: Get.width,
                            color: ColorConstant.gray16,
                            padding: EdgeInsets.fromLTRB(12.w, 13.h, 14.w, 16.h),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 20.w,
                                      height: 20.h,
                                      child: Checkbox(
                                        side: BorderSide(
                                            width: 1.w,
                                            color: ColorConstant.gray7
                                        ),
                                        value: controller.location.value == 0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(6),
                                        ),
                                        checkColor: ColorConstant.white,
                                        activeColor: ColorConstant.primary,
                                        onChanged: (bool? value){
                                          controller.location.value = 0;
                                        },
                                      ),
                                    ),
                                    SizedBox(width: 11.w,),
                                    Text(
                                      Constants.locations[0],
                                      style: TextStyle(
                                        color: ColorConstant.gray25,
                                        fontSize: 12.sp,
                                        fontFamily: 'Noto Sans KR',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 6.h,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 20.w,
                                      height: 20.h,
                                      child: Checkbox(
                                        side: BorderSide(
                                            width: 1.w,
                                            color: ColorConstant.gray7
                                        ),
                                        value: controller.location.value == 1,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(6),
                                        ),
                                        checkColor: ColorConstant.white,
                                        activeColor: ColorConstant.primary,
                                        onChanged: (bool? value){
                                          controller.location.value = 1;
                                        },
                                      ),
                                    ),
                                    SizedBox(width: 11.w,),
                                    Text(
                                      Constants.locations[1],
                                      style: TextStyle(
                                        color: ColorConstant.gray25,
                                        fontSize: 12.sp,
                                        fontFamily: 'Noto Sans KR',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 6.h,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 20.w,
                                      height: 20.h,
                                      child: Checkbox(
                                        side: BorderSide(
                                            width: 1.w,
                                            color: ColorConstant.gray7
                                        ),
                                        value: controller.location.value == 2,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(6),
                                        ),
                                        checkColor: ColorConstant.white,
                                        activeColor: ColorConstant.primary,
                                        onChanged: (bool? value){
                                          controller.location.value = 2;
                                        },
                                      ),
                                    ),
                                    SizedBox(width: 11.w,),
                                    Text(
                                      Constants.locations[2],
                                      style: TextStyle(
                                        color: ColorConstant.gray25,
                                        fontSize: 12.sp,
                                        fontFamily: 'Noto Sans KR',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 6.h,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 20.w,
                                      height: 20.h,
                                      child: Checkbox(
                                        side: BorderSide(
                                            width: 1.w,
                                            color: ColorConstant.gray7
                                        ),
                                        value: controller.location.value == 3,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(6),
                                        ),
                                        checkColor: ColorConstant.white,
                                        activeColor: ColorConstant.primary,
                                        onChanged: (bool? value){
                                          controller.location.value = 3;
                                        },
                                      ),
                                    ),
                                    SizedBox(width: 11.w,),
                                    Text(
                                      Constants.locations[3],
                                      style: TextStyle(
                                        color: ColorConstant.gray25,
                                        fontSize: 12.sp,
                                        fontFamily: 'Noto Sans KR',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                        ),
                        SizedBox(height: 27.h,),
                        Text(
                          '공동현관 출입번호',
                          style: TextStyle(
                            color: ColorConstant.black,
                            fontSize: 16.sp,
                            fontFamily: 'Noto Sans KR',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 24.h,),
                        Container(
                            width: Get.width,
                            color: ColorConstant.gray16,
                            padding: EdgeInsets.fromLTRB(12.w, 13.h, 14.w, 16.h),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 20.w,
                                      height: 20.h,
                                      child: Checkbox(
                                        side: BorderSide(
                                            width: 1.w,
                                            color: ColorConstant.gray7
                                        ),
                                        value: controller.enter.value == 0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(6),
                                        ),
                                        checkColor: ColorConstant.white,
                                        activeColor: ColorConstant.primary,
                                        onChanged: (bool? value){
                                          controller.enter.value = 0;
                                        },
                                      ),
                                    ),
                                    SizedBox(width: 11.w,),
                                    Text(
                                      '비밀번호 없이 출입 가능',
                                      style: TextStyle(
                                        color: ColorConstant.gray25,
                                        fontSize: 12.sp,
                                        fontFamily: 'Noto Sans KR',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 6.h,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 20.w,
                                      height: 20.h,
                                      child: Checkbox(
                                        side: BorderSide(
                                            width: 1.w,
                                            color: ColorConstant.gray7
                                        ),
                                        value: controller.enter.value == 1,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(6),
                                        ),
                                        checkColor: ColorConstant.white,
                                        activeColor: ColorConstant.primary,
                                        onChanged: (bool? value){
                                          controller.enter.value = 1;
                                        },
                                      ),
                                    ),
                                    SizedBox(width: 11.w,),
                                    Container(
                                      color: ColorConstant.white,
                                      width: 123.w,
                                      height: 25.h,
                                      child: TextField(
                                        controller: controller.enterPwdController,
                                        decoration: InputDecoration(
                                            hintText: '비밀번호 입력',
                                            hintStyle: TextStyle(
                                              color: ColorConstant.gray12,
                                              fontSize: 12.sp,
                                              fontFamily: 'Noto Sans KR',
                                              fontWeight: FontWeight.w500,
                                            ),
                                            counterText: '',
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 1.w,
                                                  color: ColorConstant.gray7
                                              ),
                                              borderRadius: BorderRadius.all(Radius.circular(4.r)),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 1.w,
                                                  color: ColorConstant.gray7
                                              ),
                                              borderRadius: BorderRadius.all(Radius.circular(4.r)),
                                            ),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 1.w,
                                                  color: ColorConstant.gray7
                                              ),
                                              borderRadius: BorderRadius.all(Radius.circular(4.r)),
                                            ),
                                            contentPadding: EdgeInsets.only(left: 4.w)
                                        ),
                                        maxLines: 1,
                                        style: TextStyle(
                                          color: ColorConstant.black,
                                          fontSize: 14.sp,
                                          fontFamily: 'Noto Sans KR',
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textInputAction: TextInputAction.done,
                                        onSubmitted: (_) => FocusManager.instance.primaryFocus?.unfocus(),
                                        onChanged: (value){
                                          if(controller.enter.value == 0){
                                            controller.enterPwdController.text = '';
                                          }
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            )
                        ),
                        SizedBox(height: 27.h,),
                        Text(
                          '특이사항',
                          style: TextStyle(
                            color: ColorConstant.black,
                            fontSize: 16.sp,
                            fontFamily: 'Noto Sans KR',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 24.h,),
                        Container(
                            width: Get.width,
                            color: ColorConstant.gray16,
                            padding: EdgeInsets.fromLTRB(12.w, 13.h, 14.w, 16.h),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 20.w,
                                      height: 20.h,
                                      child: Checkbox(
                                        side: BorderSide(
                                            width: 1.w,
                                            color: ColorConstant.gray7
                                        ),
                                        value: controller.etc.value == 0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(6),
                                        ),
                                        checkColor: ColorConstant.white,
                                        activeColor: ColorConstant.primary,
                                        onChanged: (bool? value){
                                          controller.etc.value = 0;
                                        },
                                      ),
                                    ),
                                    SizedBox(width: 11.w,),
                                    Text(
                                      '특이사항 없음',
                                      style: TextStyle(
                                        color: ColorConstant.gray25,
                                        fontSize: 12.sp,
                                        fontFamily: 'Noto Sans KR',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 6.h,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 20.w,
                                      height: 20.h,
                                      child: Checkbox(
                                        side: BorderSide(
                                            width: 1.w,
                                            color: ColorConstant.gray7
                                        ),
                                        value: controller.etc.value == 1,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(6),
                                        ),
                                        checkColor: ColorConstant.white,
                                        activeColor: ColorConstant.primary,
                                        onChanged: (bool? value){
                                          controller.etc.value = 1;
                                        },
                                      ),
                                    ),
                                    SizedBox(width: 11.w,),
                                    Expanded(
                                      child: Container(
                                        color: ColorConstant.white,
                                        height: 77.h,
                                        child: TextField(
                                          controller: controller.etcController,
                                          decoration: InputDecoration(
                                              hintText: '특이사항을 작성하세요.',
                                              hintStyle: TextStyle(
                                                color: ColorConstant.gray12,
                                                fontSize: 12.sp,
                                                fontFamily: 'Noto Sans KR',
                                                fontWeight: FontWeight.w500,
                                              ),
                                              counterText: '',
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    width: 1.w,
                                                    color: ColorConstant.gray7
                                                ),
                                                borderRadius: BorderRadius.all(Radius.circular(4.r)),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    width: 1.w,
                                                    color: ColorConstant.gray7
                                                ),
                                                borderRadius: BorderRadius.all(Radius.circular(4.r)),
                                              ),
                                              border: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    width: 1.w,
                                                    color: ColorConstant.gray7
                                                ),
                                                borderRadius: BorderRadius.all(Radius.circular(4.r)),
                                              ),
                                              contentPadding: EdgeInsets.all(4)
                                          ),
                                          maxLength: 100,
                                          maxLines: 16,
                                          style: TextStyle(
                                            color: ColorConstant.black,
                                            fontSize: 14.sp,
                                            fontFamily: 'Noto Sans KR',
                                            fontWeight: FontWeight.w500,
                                          ),
                                          keyboardType: TextInputType.multiline,
                                          textInputAction: TextInputAction.newline,
                                          onChanged: (value){
                                            if(controller.etc.value == 0){
                                              controller.etcController.text = '';
                                            }
                                          },
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            )
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: Get.width,
                child: ElevatedButton(
                  onPressed: (){
                    if(controller.enter.value == 1 && controller.enterPwdController.text == ''){
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        elevation: 6.0,
                        behavior: SnackBarBehavior.floating,
                        content: Text(
                          '공동현관 비밀번호를 입력해주세요.',
                          style: TextStyle(color: Colors.white),
                        ),
                      ));
                      return;
                    }

                    if(controller.etc.value == 1 && controller.etcController.text == ''){
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        elevation: 6.0,
                        behavior: SnackBarBehavior.floating,
                        content: Text(
                          '특이사항을 입력해주세요.',
                          style: TextStyle(color: Colors.white),
                        ),
                      ));
                      return;
                    }

                    Get.back(result: {
                      'location' : controller.location.value,
                      'enter' : controller.enter.value == 0 ? '' : controller.enterPwdController.text,
                      'etc' : controller.etc.value == 0 ? '' : controller.etcController.text,
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ColorConstant.primary,
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
          ),
        )),
      ),
    );
  }
}