import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/login/login_controller.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:boostapp/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class LoginScreen extends GetView<LoginController>{

  void _showRegisterPopup(context){
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            insetPadding: EdgeInsets.symmetric(horizontal: 68.w),
            contentPadding: EdgeInsets.zero,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.r))
            ),
            content: Container(
              width: 424.w,
              height: 127.h,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 117.w,
                    height: 33.h,
                    child: ElevatedButton(
                      onPressed: (){
                        Get.back();
                        Get.toNamed(AppRoutes.registerScreen,arguments: {'type' : 'nor'});
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorConstant.primary,
                        elevation: 0,
                      ),
                      child: Text(
                        '일반 회원가입',
                        style: TextStyle(
                          color: ColorConstant.white,
                          fontSize: 12.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 117.w,
                    height: 33.h,
                    margin: EdgeInsets.only(top: 8.h),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: BorderSide(width: 1.w, color: ColorConstant.primary)
                      ),
                      onPressed: (){
                        Get.back();
                        Get.toNamed(AppRoutes.registerScreen,arguments: {'type' : 'biz'});
                      },
                      child: Text(
                        '사업자 회원가입',
                        style: TextStyle(
                          color: ColorConstant.primary,
                          fontSize: 12.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardDismissOnTap(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: ColorConstant.white,
          body: Container(
            margin: EdgeInsets.fromLTRB(26.w, 47.w, 26.w, 0),
            child: Obx(() => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '부스트\n로그인',
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
                    focusNode: controller.phoneFocusNode,
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
                        borderRadius: BorderRadius.all(Radius.circular(4.r)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1.w,
                            color: ColorConstant.gray2
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(4.r)),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1.w,
                            color: ColorConstant.gray2
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(4.r)),
                      ),

                    ),
                    maxLines: 1,
                    maxLength: 13,
                    style: TextStyle(
                      color: ColorConstant.gray1,
                      fontSize: 14.sp,
                      fontFamily: 'Noto Sans KR',
                      fontWeight: FontWeight.w500,
                    ),
                    keyboardType: TextInputType.phone,
                    textInputAction: TextInputAction.next,
                    onSubmitted: (_) => FocusScope.of(context).requestFocus(controller.passwordFocusNode),
                    onChanged: (value){
                      if(value == "" || value.length < 11){
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
                  child: TextField(
                    focusNode: controller.passwordFocusNode,
                    controller: controller.passwordController,
                    decoration: InputDecoration(
                      hintText: '비밀번호를 입력하세요',
                      hintStyle: TextStyle(
                        color: ColorConstant.gray1,
                        fontSize: 14.sp,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w500,
                      ),
                      suffixIcon: IconButton(
                        icon: controller.isObscureText.value
                            ? Icon(Icons.visibility_off_outlined,color: ColorConstant.gray2,)
                            : Icon(Icons.visibility_outlined,color: ColorConstant.gray2,),
                        onPressed: (){
                          controller.isObscureText.value = !controller.isObscureText.value;
                        },
                      ),
                      counterText: '',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1.w,
                            color: ColorConstant.gray2
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(4.r)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1.w,
                            color: ColorConstant.gray2
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(4.r)),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1.w,
                            color: ColorConstant.gray2
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(4.r)),
                      ),
                    ),
                    maxLines: 1,
                    style: TextStyle(
                      color: ColorConstant.gray1,
                      fontSize: 14.sp,
                      fontFamily: 'Noto Sans KR',
                      fontWeight: FontWeight.w500,
                    ),
                    obscureText: !controller.isObscureText.value,
                    textInputAction: TextInputAction.done,
                    onChanged: (value){
                      //임시
                      RegExp regex = RegExp(r'^(?=.*?[a-z])(?=.*?[!@#\$&*~]).{8,}$');
                      if(value == "" || !regex.hasMatch(value) || value.length < 8 || value.length > 12){
                        controller.validPasswordStatus.value = 2;
                      }else{
                        controller.validPasswordStatus.value = 1;
                      }

                      /*
                    RegExp regex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                    if(value == "" || !regex.hasMatch(value) || value.length < 8 || value.length > 12){
                      controller.validPasswordStatus.value = 2;
                    }else{
                      controller.validPasswordStatus.value = 1;
                    }

                     */
                    },
                  ),
                ),
                controller.validPasswordStatus.value == 2 ? Container(
                  margin: EdgeInsets.only(top: 9.h,bottom: 5.h),
                  child: Text(
                    '비밀번호를 확인해 주세요',
                    style: TextStyle(
                      color: ColorConstant.primary,
                      fontSize: 12.sp,
                      fontFamily: 'Noto Sans KR',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ) : const SizedBox(),
                Container(
                  margin: EdgeInsets.only(top: 13.h),
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: (){
                      Get.toNamed(AppRoutes.findScreen);
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: ColorConstant.primary,
                        fontSize: 12.sp,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 13.h),
                  width: Get.width,
                  height: 55.w,
                  child: ElevatedButton(
                    onPressed: () async {
                      //Get.offAllNamed(AppRoutes.mainScreen);
                      FocusManager.instance.primaryFocus?.unfocus();
                      await controller.login(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: controller.validPhoneStatus.value == 1  && controller.validPasswordStatus.value == 1
                          ? ColorConstant.primary
                          : ColorConstant.gray2,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.r))
                      ),
                    ),
                    child: Text(
                      '로그인',
                      style: TextStyle(
                        color: ColorConstant.white,
                        fontSize: 20.sp,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 43.h),
                  child: GestureDetector(
                    onTap: (){
                      _showRegisterPopup(context);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '계정이 없으신가요?',
                          style: TextStyle(
                            color: ColorConstant.gray5,
                            fontSize: 14.sp,
                            fontFamily: 'Noto Sans KR',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 5.w,),
                        Text(
                          'Sign Up',
                          style: TextStyle(
                            color: ColorConstant.primary,
                            fontSize: 14.sp,
                            fontFamily: 'Noto Sans KR',
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
            ),
          ),
        ),
      ),
    );
  }

}