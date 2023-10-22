import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/find/find_controller.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:boostapp/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class FindScreen extends GetView<FindController>{

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.white,
        body: Container(
          margin: EdgeInsets.fromLTRB(26.w, 47.w, 26.w, 0),
          child: Obx(() => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '비밀번호\n찾기',
                  style: TextStyle(
                    color: ColorConstant.gray4,
                    fontSize: 40.sp,
                    fontFamily: 'Noto Sans KR',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 43.h,),
                Container(
                  width: Get.width,
                  child: TextField(
                    controller: controller.phoneController,
                    decoration: InputDecoration(
                      hintText: '휴대폰 번호를 입력하세요',
                      hintStyle: TextStyle(
                        color: ColorConstant.gray1,
                        fontSize: 14.sp,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w500,
                      ),
                      counterText: '',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1.w,
                            color: ColorConstant.gray2
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(4.w)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1.w,
                            color: ColorConstant.gray2
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(4.w)),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1.w,
                            color: ColorConstant.gray2
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(4.w)),
                      ),
                      suffixIconConstraints: BoxConstraints(
                          minWidth: 81.w,
                          minHeight: 23.h
                      ),
                      suffixIcon: Container(
                        margin: EdgeInsets.only(right: 15.w),
                        child: ElevatedButton(
                          onPressed: (){

                          },
                          child: Text(
                            '인증번호 발송',
                            style: TextStyle(
                              color: ColorConstant.white,
                              fontSize: 10.sp,
                              fontFamily: 'Noto Sans KR',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: ColorConstant.primary,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(3.w))
                              ),
                              padding: EdgeInsets.all(0),
                              minimumSize: Size(81.w,23.h)
                          ),
                        ),
                      )
                    ),
                    maxLines: 1,
                    maxLength: 13,
                    style: TextStyle(
                      color: ColorConstant.gray1,
                      fontSize: 14.sp,
                      fontFamily: 'Noto Sans KR',
                      fontWeight: FontWeight.w500,
                    ),
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.done,
                    inputFormatters: [
                      MaskTextInputFormatter(
                        mask: '###-####-####',
                        filter: {"#": RegExp(r'[0-9]')},
                        type: MaskAutoCompletionType.lazy,
                      )
                    ],
                    onChanged: (value){
                      if(value == "" || value.length < 13){
                        controller.validPhoneStatus.value = 2;
                      }else{
                        controller.validPhoneStatus.value = 1;
                      }
                    },

                  ),
                ),
                controller.validPhoneStatus.value == 2 ? Container(
                  margin: EdgeInsets.only(top: 9.h,bottom: 5.h),
                  child: Text(
                    '휴대폰 번호를 확인해 주세요',
                    style: TextStyle(
                      color: ColorConstant.primary,
                      fontSize: 12.sp,
                      fontFamily: 'Noto Sans KR',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ) : const SizedBox(),
                Container(
                  margin: EdgeInsets.only(top: 9.h),
                  width: Get.width,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      TextField(
                        controller: controller.numberController,
                        decoration: InputDecoration(
                          hintText: '인증 번호를 입력하세요',
                          hintStyle: TextStyle(
                            color: ColorConstant.gray1,
                            fontSize: 14.sp,
                            fontFamily: 'Noto Sans KR',
                            fontWeight: FontWeight.w500,
                          ),
                          suffixIconConstraints: BoxConstraints(
                              minWidth: 81.w,
                              minHeight: 23.h
                          ),
                          suffixIcon: Container(
                            margin: EdgeInsets.only(right: 15.w),
                            child: ElevatedButton(
                              onPressed: (){

                              },
                              child: Text(
                                '인증번호 확인',
                                style: TextStyle(
                                  color: ColorConstant.white,
                                  fontSize: 10.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: ColorConstant.primary,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(3.w))
                                  ),
                                  padding: EdgeInsets.all(0),
                                  minimumSize: Size(81.w,23.h)
                              ),
                            ),
                          ),
                          counterText: '',
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1.w,
                                color: ColorConstant.gray2
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(4.w)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1.w,
                                color: ColorConstant.gray2
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(4.w)),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1.w,
                                color: ColorConstant.gray2
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(4.w)),
                          ),
                        ),
                        maxLines: 1,
                        maxLength: 6,
                        style: TextStyle(
                          color: ColorConstant.gray1,
                          fontSize: 14.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w500,
                        ),
                        textInputAction: TextInputAction.done,
                        onChanged: (value){
                          if(value.length < 6){
                            controller.validNumberStatus.value = 2;
                          }else{
                            controller.validNumberStatus.value = 1;
                          }
                        },
                      ),
                      controller.isShowTime.value ? Positioned(
                        right: 120,
                        child: Text(
                          controller.secondsToString(),
                          style: TextStyle(
                            color: ColorConstant.primary,
                            fontSize: 14.sp,
                            fontFamily: 'Noto Sans KR',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ) : const SizedBox()
                    ],
                  ),
                ),
                controller.validNumberStatus.value == 2 ? Container(
                  margin: EdgeInsets.only(top: 9.h,bottom: 5.h),
                  child: Text(
                    '인증 번호를 확인해 주세요',
                    style: TextStyle(
                      color: ColorConstant.primary,
                      fontSize: 12.sp,
                      fontFamily: 'Noto Sans KR',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ) : const SizedBox(),
                Container(
                  margin: EdgeInsets.only(top: 42.h),
                  alignment: Alignment.center,
                  child: Text(
                    '회원가입한 휴대폰 번호 분실 시 매장에 문의해주세요.',
                    style: TextStyle(
                      color: ColorConstant.black.withOpacity(0.77),
                      fontSize: 12.sp,
                      fontFamily: 'Noto Sans KR',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 13.h),
                  width: Get.width,
                  height: 55.w,
                  child: ElevatedButton(
                    onPressed: (){
                      if(controller.validPhoneStatus.value == 1  && controller.validNumberStatus.value == 1){
                        Get.toNamed(AppRoutes.resetScreen);
                      }
                    },
                    child: Text(
                      '다음',
                      style: TextStyle(
                        color: ColorConstant.white,
                        fontSize: 20.sp,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: controller.validPhoneStatus.value == 1  && controller.validNumberStatus.value == 1
                          ? ColorConstant.primary
                          : ColorConstant.gray2,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.w))
                      ),
                    ),
                  ),
                ),
              ],
            )
          ),
        ),
      ),
    );
  }

}