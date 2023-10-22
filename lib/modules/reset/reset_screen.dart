import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/reset/reset_controller.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:boostapp/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ResetScreen extends GetView<ResetController>{

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
                '비밀번호\n재설정',
                style: TextStyle(
                  color: ColorConstant.gray4,
                  fontSize: 40.sp,
                  fontFamily: 'Noto Sans KR',
                  fontWeight: FontWeight.w400,
                ),
              ),
              !controller.isFinish.value ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 43.h,),
                  Container(
                    width: Get.width,
                    child: TextField(
                      focusNode: controller.password1FocusNode,
                      controller: controller.passwordController1,
                      decoration: InputDecoration(
                        hintText: '새 비밀번호를 입력해주세요.',
                        hintStyle: TextStyle(
                          color: ColorConstant.gray1,
                          fontSize: 14.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w500,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.visibility_outlined,color: ColorConstant.gray2,),
                          onPressed: (){
                            controller.isObscureText1.value = !controller.isObscureText1.value;
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
                      obscureText: !controller.isObscureText1.value,
                      textInputAction: TextInputAction.next,
                      onSubmitted: (_) => FocusScope.of(context).requestFocus(controller.password2FocusNode),
                      onChanged: (value){
                        RegExp regex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                        if(value == "" || !regex.hasMatch(value) || value.length < 8 || value.length > 12){
                          controller.validPasswordStatus1.value = 2;
                        }else{
                          controller.validPasswordStatus1.value = 1;
                        }
                      },
                    ),
                  ),
                  controller.validPasswordStatus1.value == 2 ? Container(
                    margin: EdgeInsets.only(top: 9.h,bottom: 5.h),
                    child: Text(
                      '8~12자리를 입력하세요. (특수문자 1개 반드시 포함)',
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
                      focusNode: controller.password2FocusNode,
                      controller: controller.passwordController2,
                      decoration: InputDecoration(
                        hintText: '새 비밀번호를 한번 더 입력해주세요.',
                        hintStyle: TextStyle(
                          color: ColorConstant.gray1,
                          fontSize: 14.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w500,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.visibility_outlined,color: ColorConstant.gray2,),
                          onPressed: (){
                            controller.isObscureText2.value = !controller.isObscureText2.value;
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
                      obscureText: !controller.isObscureText2.value,
                      textInputAction: TextInputAction.done,
                      onChanged: (value){
                        String pwd = controller.passwordController1.text;
                        if(value != pwd){
                          controller.validPasswordStatus2.value = 2;
                        }else{
                          controller.validPasswordStatus2.value = 1;
                        }
                      },
                    ),
                  ),
                  controller.validPasswordStatus2.value == 2 ? Container(
                    margin: EdgeInsets.only(top: 9.h,bottom: 5.h),
                    child: Text(
                      '비밀번호가 일치하지 않습니다.',
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
                        if(controller.isFinish.value){
                          Get.toNamed(AppRoutes.loginScreen);
                        }else{
                          controller.isFinish.value = true;
                        }
                      },
                      child: Text(
                        '확인',
                        style: TextStyle(
                          color: ColorConstant.white,
                          fontSize: 20.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: controller.validPasswordStatus1.value == 1  && controller.validPasswordStatus2.value == 1
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
              ) : Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 43.h),
                    alignment: Alignment.center,
                    child: Text(
                      '새 비밀번호가 설정되었습니다!',
                      style: TextStyle(
                        color: ColorConstant.gray1,
                        fontSize: 16.sp,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 33.h),
                    width: Get.width,
                    height: 55.w,
                    child: ElevatedButton(
                      onPressed: (){
                        Get.offAllNamed(AppRoutes.loginScreen);
                      },
                      child: Text(
                        '로그인 하기',
                        style: TextStyle(
                          color: ColorConstant.white,
                          fontSize: 20.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorConstant.primary,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4.w))
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
          ),
        ),
      ),
    );
  }

}