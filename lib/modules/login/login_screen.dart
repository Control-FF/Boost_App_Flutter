import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/login/login_controller.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:boostapp/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class LoginScreen extends GetView<LoginController>{

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
                  inputFormatters: [
                    MaskTextInputFormatter(
                      mask: '###-####-####',
                      filter: {"#": RegExp(r'[0-9]')},
                      type: MaskAutoCompletionType.lazy,
                    )
                  ],

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
                      icon: Icon(Icons.visibility_outlined,color: ColorConstant.gray2,),
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
                  style: TextStyle(
                    color: ColorConstant.gray1,
                    fontSize: 14.sp,
                    fontFamily: 'Noto Sans KR',
                    fontWeight: FontWeight.w500,
                  ),
                  obscureText: controller.isObscureText.value,
                  textInputAction: TextInputAction.done,
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
                child: CustomButton(
                    '로그인',
                    20.sp,
                    ColorConstant.white,
                    controller.validPhoneStatus.value == 1  && controller.validPasswordStatus.value == 1
                        ? ColorConstant.primary
                        : ColorConstant.gray2,
                    4.w,
                    'Noto Sans KR',
                    FontWeight.w700,
                    Get.width,
                    55.w
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 43.h),
                child: GestureDetector(
                  onTap: (){
                    Get.toNamed(AppRoutes.registerScreen);
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
    );
  }

}