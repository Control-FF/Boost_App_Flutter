import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/register/register_controller.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:boostapp/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class RegisterScreen extends GetView<RegisterController>{

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.white,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Container(
            margin: EdgeInsets.fromLTRB(26.w, 47.w, 26.w, 0),
            child: Obx(() => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '부스트\n회원가입',
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
                        focusNode: controller.nameFocusNode,
                        controller: controller.nameController,
                        decoration: InputDecoration(
                          hintText: '성함을 입력하세요',
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
                        style: TextStyle(
                          color: ColorConstant.gray1,
                          fontSize: 14.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w500,
                        ),
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.text,
                        onSubmitted: (_) => FocusScope.of(context).requestFocus(controller.phoneFocusNode),
                        onChanged: (value){
                          if(value == ""){
                            controller.validNameStatus.value = 2;
                          }else{
                            controller.validNameStatus.value = 1;
                          }
                        },
                      ),
                    ),
                    controller.validNameStatus.value == 2 ? Container(
                      margin: EdgeInsets.only(top: 9.h,bottom: 5.h),
                      child: Text(
                        '성함을 확인해주세요',
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
                        inputFormatters: [
                          MaskTextInputFormatter(
                            mask: '###-####-####',
                            filter: {"#": RegExp(r'[0-9]')},
                            type: MaskAutoCompletionType.lazy,
                          )
                        ],
                        textInputAction: TextInputAction.done,
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
                      margin: EdgeInsets.only(top: 9.h),
                      width: Get.width,
                      child: TextField(
                        focusNode: controller.password1FocusNode,
                        controller: controller.passwordController1,
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
                        textInputAction: TextInputAction.next,
                        onSubmitted: (_) => FocusScope.of(context).requestFocus(controller.inviteFocusNode),
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
                      margin: EdgeInsets.only(top: 9.h),
                      width: Get.width,
                      child: TextField(
                        focusNode: controller.inviteFocusNode,
                        controller: controller.inviteController,
                        decoration: InputDecoration(
                          hintText: '추천인을 입력하세요 (선택)',
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
                        style: TextStyle(
                          color: ColorConstant.gray1,
                          fontSize: 14.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w500,
                        ),
                        textInputAction: TextInputAction.done,
                      ),
                    ),
                    SizedBox(height: 52.h,),
                    Text(
                      '약관동의',
                      style: TextStyle(
                        color: ColorConstant.black,
                        fontSize: 16.sp,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 6.h,),
                    Divider(
                      thickness: 1.h,
                      height: 1.h,
                      color: ColorConstant.black,
                    ),
                    SizedBox(height: 11.h,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                            value: controller.checkAll.value,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            checkColor: ColorConstant.white,
                            activeColor: ColorConstant.primary,
                            onChanged: (bool? value){
                              controller.checkAll.value = value!;
                              controller.allCheck();
                            },
                          ),
                        ),
                        SizedBox(width: 8.w,),
                        GestureDetector(
                          onTap: (){
                            controller.checkAll.value = !controller.checkAll.value;
                            controller.allCheck();
                          },
                          child: Text(
                            '전체동의',
                            style: TextStyle(
                              color: ColorConstant.black,
                              fontSize: 14.sp,
                              fontFamily: 'Noto Sans KR',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 13.h,),
                    Divider(
                      thickness: 1.h,
                      height: 1.h,
                      color: ColorConstant.gray2,
                    ),
                    SizedBox(height: 15.h,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 20.w,
                          height: 20.h,
                          child: Checkbox(
                            side: BorderSide(
                                width: 1.w,
                                color: ColorConstant.gray7.withOpacity(0.5)
                            ),
                            value: controller.check1.value,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            checkColor: ColorConstant.white,
                            activeColor: ColorConstant.primary,
                            onChanged: (bool? value){
                              controller.check1.value = value!;
                              controller.checkPolicyUI();
                            },
                          ),
                        ),
                        SizedBox(width: 8.w,),
                        GestureDetector(
                          onTap: (){
                            controller.check1.value = !controller.check1.value;
                            controller.checkPolicyUI();
                          },
                          child: Text(
                            '[필수] 필수인 이용약관이 들어가야겠지요',
                            style: TextStyle(
                              color: ColorConstant.gray7,
                              fontSize: 12.sp,
                              fontFamily: 'Noto Sans KR',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.h,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 20.w,
                          height: 20.h,
                          child: Checkbox(
                            side: BorderSide(
                                width: 1.w,
                                color: ColorConstant.gray7.withOpacity(0.5)
                            ),
                            value: controller.check2.value,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            checkColor: ColorConstant.white,
                            activeColor: ColorConstant.primary,
                            onChanged: (bool? value){
                              controller.check2.value = value!;
                              controller.checkPolicyUI();
                            },
                          ),
                        ),
                        SizedBox(width: 8.w,),
                        GestureDetector(
                          onTap: (){
                            controller.check2.value = !controller.check2.value;
                            controller.checkPolicyUI();
                          },
                          child: Text(
                            '[필수] 필수인 이용약관이 들어가야겠지요',
                            style: TextStyle(
                              color: ColorConstant.gray7,
                              fontSize: 12.sp,
                              fontFamily: 'Noto Sans KR',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.h,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 20.w,
                          height: 20.h,
                          child: Checkbox(
                            side: BorderSide(
                                width: 1.w,
                                color: ColorConstant.gray7.withOpacity(0.5)
                            ),
                            value: controller.check3.value,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            checkColor: ColorConstant.white,
                            activeColor: ColorConstant.primary,
                            onChanged: (bool? value){
                              controller.check3.value = value!;
                              controller.checkPolicyUI();
                            },
                          ),
                        ),
                        SizedBox(width: 8.w,),
                        GestureDetector(
                          onTap: (){
                            controller.check3.value = !controller.check3.value;
                            controller.checkPolicyUI();
                          },
                          child: Text(
                            '[선택] 아래쪽에 하나정도는 더 넣을 수 있어요',
                            style: TextStyle(
                              color: ColorConstant.gray7,
                              fontSize: 12.sp,
                              fontFamily: 'Noto Sans KR',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.h,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 20.w,
                          height: 20.h,
                          child: Checkbox(
                            side: BorderSide(
                                width: 1.w,
                                color: ColorConstant.gray7.withOpacity(0.5)
                            ),
                            value: controller.check4.value,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            checkColor: ColorConstant.white,
                            activeColor: ColorConstant.primary,
                            onChanged: (bool? value){
                              controller.check4.value = value!;
                              controller.checkPolicyUI();
                            },
                          ),
                        ),
                        SizedBox(width: 8.w,),
                        GestureDetector(
                          onTap: (){
                            controller.check4.value = !controller.check4.value;
                            controller.checkPolicyUI();
                          },
                          child: Text(
                            '[선택] 이 녀석이 마지막인 것 같아요!',
                            style: TextStyle(
                              color: ColorConstant.gray7,
                              fontSize: 12.sp,
                              fontFamily: 'Noto Sans KR',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 56.h),
                      alignment: Alignment.center,
                      child: Text(
                        '회원가입 시 개인정보처리방침 및 이용약관에\n동의하는 것으로 간주합니다.',
                        style: TextStyle(
                          color: ColorConstant.gray1,
                          fontSize: 12.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 25.h),
                        width: Get.width,
                        child: ElevatedButton(
                          onPressed: (){
                            if(controller.isFinish.value){
                              Get.toNamed(AppRoutes.loginScreen);
                            }else{
                              controller.isFinish.value = true;
                            }

                          },
                          child: Text(
                            '회원가입 완료',
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
                              padding: EdgeInsets.all(0),
                              minimumSize: Size(Get.width,55.h)
                          ),
                        )
                    ),
                    SizedBox(height: 45.h,),
                    GestureDetector(
                      onTap: (){
                        Get.back();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '이미 계정이 있으신가요?',
                            style: TextStyle(
                              color: ColorConstant.gray5,
                              fontSize: 14.sp,
                              fontFamily: 'Noto Sans KR',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: 5.w,),
                          Text(
                            'Login',
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
                    SizedBox(height: 71.h,),
                  ],
                ) : Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 43.h),
                      alignment: Alignment.center,
                      child: Text(
                        '신규 회원이 되신 것을 환영합니다!',
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
      ),
    );
  }

}