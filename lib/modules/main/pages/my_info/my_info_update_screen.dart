import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/main/pages/my_info/my_info_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyInfoUpdateScreen extends GetView<MyInfoController>{

  void _showFinishPopup(context){
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            insetPadding: EdgeInsets.symmetric(horizontal: 68.w),
            contentPadding: EdgeInsets.zero,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.r))
            ),
            content: Container(
              height: 142.h,
              alignment: Alignment.center,
              child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '비밀번호가 변경되었습니다.',
                        style: TextStyle(
                          color: ColorConstant.black,
                          fontSize: 14.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 79.w,
                            height: 28.h,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  side: BorderSide(width: 1.w, color: ColorConstant.gray2),
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(5.r))
                                  ),
                                  padding: EdgeInsets.all(0)
                              ),
                              onPressed: (){
                                Get.back();
                              },
                              child: Text(
                                '취소',
                                style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 10.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 6.w,),
                          Container(
                            width: 79.w,
                            height: 28.h,
                            child: ElevatedButton(
                              onPressed: (){
                                Get.back();

                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: ColorConstant.primary,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(5.r))
                                  ),
                                  padding: EdgeInsets.all(0)
                              ),
                              child: Text(
                                '확인',
                                style: TextStyle(
                                  color: ColorConstant.white,
                                  fontSize: 10.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),

                            ),
                          ),
                        ],
                      )
                    ],
                  )
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorConstant.white,
          elevation: 0,
          title: Text(
            '회원가입 정보',
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
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Divider(
                thickness: 1,
                height: 1.h,
                color: ColorConstant.black.withOpacity(0.1),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: SingleChildScrollView(
                    child:Obx(() => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 9.h,),
                        Row(
                          children: [
                            Container(
                              width: 100.w,
                              child: Text(
                                '이름',
                                style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 14.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 30.h,
                                padding: EdgeInsets.fromLTRB(7.w, 4.h, 7.w, 4.h),
                                color: ColorConstant.gray16,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '홍길동',
                                  style: TextStyle(
                                    color: ColorConstant.gray12,
                                    fontSize: 12.sp,
                                    fontFamily: 'Noto Sans KR',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 6.h,),
                        Row(
                          children: [
                            Container(
                              width: 100.w,
                              child: Text(
                                '전화번호',
                                style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 14.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 30.h,
                                padding: EdgeInsets.fromLTRB(7.w, 4.h, 7.w, 4.h),
                                color: ColorConstant.gray16,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '010-1234-5678',
                                  style: TextStyle(
                                    color: ColorConstant.gray12,
                                    fontSize: 12.sp,
                                    fontFamily: 'Noto Sans KR',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 6.h,),
                        Row(
                          children: [
                            Container(
                              width: 100.w,
                              child: Text(
                                '닉네임',
                                style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 14.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 30.h,
                                padding: EdgeInsets.fromLTRB(7.w, 4.h, 7.w, 4.h),
                                color: ColorConstant.gray16,
                                alignment: Alignment.centerLeft,
                                child: controller.isEdit.value ? TextField(
                                  decoration: InputDecoration(
                                      counterText: '',
                                      focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                      enabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                      border: const OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                      contentPadding: EdgeInsets.zero,
                                      suffixIconConstraints: BoxConstraints(
                                          minWidth: 16.w,
                                          minHeight: 16.h
                                      ),
                                      suffixIcon: Image.asset('assets/images/ic_info.png',width: 16.w,height: 16.h,)
                                  ),
                                  maxLines: 1,
                                  maxLength: 10,
                                  style: TextStyle(
                                    color: ColorConstant.gray12,
                                    fontSize: 12.sp,
                                    fontFamily: 'Noto Sans KR',
                                    fontWeight: FontWeight.w400,
                                  ),
                                  keyboardType: TextInputType.text,
                                  textInputAction: TextInputAction.done,
                                  onChanged: (value){
                                    if(value.length < 2 || value.length > 10){
                                      controller.validNicknameStatus.value = 2;
                                    }else{
                                      controller.validNicknameStatus.value = 1;
                                    }
                                  },
                                ) : Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '사용자 123456',
                                      style: TextStyle(
                                        color: ColorConstant.gray12,
                                        fontSize: 12.sp,
                                        fontFamily: 'Noto Sans KR',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: (){
                                        controller.isEdit.value = true;
                                      },
                                      child: Image.asset('assets/images/ic_edit_nickname.png',width: 13.w,height: 13.h,),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        controller.validNicknameStatus.value == 2 ? Container(
                          margin: EdgeInsets.only(top: 6.h,left: 100.w),
                          child: Text(
                            '2자 ~ 10자의 닉네임을 입력해주세요.',
                            style: TextStyle(
                              color: ColorConstant.primary,
                              fontSize: 10.sp,
                              fontFamily: 'Noto Sans KR',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ) : const SizedBox(),

                        SizedBox(height: 26.h,),
                        Text(
                          '비밀번호 변경',
                          style: TextStyle(
                            color: ColorConstant.black,
                            fontSize: 14.sp,
                            fontFamily: 'Noto Sans KR',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 10.h,),
                        Container(
                          height: 35.h,
                          width: Get.width,
                          padding: EdgeInsets.fromLTRB(12.w, 0, 9.w, 0),
                          color: ColorConstant.gray16,
                          alignment: Alignment.centerLeft,
                          child: TextField(
                            focusNode: controller.currentPasswordFocusNode,
                            controller: controller.currentPasswordController,
                            decoration: InputDecoration(
                              hintText: '현재 비밀번호',
                              hintStyle: TextStyle(
                                color: ColorConstant.gray12,
                                fontSize: 12.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w400,
                              ),
                              counterText: '',
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              contentPadding: EdgeInsets.zero,
                              suffixIcon: IconButton(
                                icon: Icon(Icons.visibility_outlined,color: ColorConstant.gray1,),
                                onPressed: (){
                                  controller.isObscureText1.value = !controller.isObscureText1.value;
                                },
                              ),
                            ),
                            maxLines: 1,
                            style: TextStyle(
                              color: ColorConstant.gray1,
                              fontSize: 12.sp,
                              fontFamily: 'Noto Sans KR',
                              fontWeight: FontWeight.w400,
                            ),
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,
                            obscureText: !controller.isObscureText1.value,
                            onSubmitted: (_) => FocusScope.of(context).requestFocus(controller.newPassword1FocusNode),
                          ),
                        ),
                        controller.validCurrentPasswordStatus1.value == 2 ? Container(
                          margin: EdgeInsets.only(top: 6.h),
                          child: Text(
                            '비밀번호가 일치하지 않습니다.',
                            style: TextStyle(
                              color: ColorConstant.primary,
                              fontSize: 10.sp,
                              fontFamily: 'Noto Sans KR',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ) : const SizedBox(),
                        SizedBox(height: 9.h,),
                        Container(
                          height: 35.h,
                          width: Get.width,
                          padding: EdgeInsets.fromLTRB(12.w, 0, 9.w, 0),
                          color: ColorConstant.gray16,
                          alignment: Alignment.centerLeft,
                          child: TextField(
                              focusNode: controller.newPassword1FocusNode,
                              controller: controller.newPasswordController1,
                              decoration: InputDecoration(
                                hintText: '신규 비밀번호',
                                hintStyle: TextStyle(
                                  color: ColorConstant.gray12,
                                  fontSize: 12.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                                counterText: '',
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                contentPadding: EdgeInsets.zero,
                                suffixIcon: IconButton(
                                  icon: Icon(Icons.visibility_outlined,color: ColorConstant.gray1,),
                                  onPressed: (){
                                    controller.isObscureText2.value = !controller.isObscureText2.value;
                                  },
                                ),
                              ),
                              maxLines: 1,
                              style: TextStyle(
                                color: ColorConstant.gray1,
                                fontSize: 12.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w400,
                              ),
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.next,
                              obscureText: !controller.isObscureText2.value,
                              onSubmitted: (_) => FocusScope.of(context).requestFocus(controller.newPassword2FocusNode)
                          ),
                        ),
                        controller.validNewPasswordStatus1.value == 2 ? Container(
                          margin: EdgeInsets.only(top: 6.h),
                          child: Text(
                            '8~12자리를 입력하세요. (특수문자 1개 반드시 포함)',
                            style: TextStyle(
                              color: ColorConstant.primary,
                              fontSize: 10.sp,
                              fontFamily: 'Noto Sans KR',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ) : const SizedBox(),
                        SizedBox(height: 9.h,),
                        Container(
                          height: 35.h,
                          width: Get.width,
                          padding: EdgeInsets.fromLTRB(12.w, 0, 9.w, 0),
                          color: ColorConstant.gray16,
                          alignment: Alignment.centerLeft,
                          child: TextField(
                            focusNode: controller.newPassword2FocusNode,
                            controller: controller.newPasswordController2,
                            decoration: InputDecoration(
                              hintText: '신규 비밀번호 재입력',
                              hintStyle: TextStyle(
                                color: ColorConstant.gray12,
                                fontSize: 12.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w400,
                              ),
                              counterText: '',
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              contentPadding: EdgeInsets.zero,
                              suffixIcon: IconButton(
                                icon: Icon(Icons.visibility_outlined,color: ColorConstant.gray1,),
                                onPressed: (){
                                  controller.isObscureText3.value = !controller.isObscureText3.value;
                                },
                              ),
                            ),
                            maxLines: 1,
                            style: TextStyle(
                              color: ColorConstant.gray1,
                              fontSize: 12.sp,
                              fontFamily: 'Noto Sans KR',
                              fontWeight: FontWeight.w400,
                            ),
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.done,
                            obscureText: !controller.isObscureText3.value,
                          ),
                        ),
                        controller.validNewPasswordStatus2.value == 2 ? Container(
                          margin: EdgeInsets.only(top: 6.h),
                          child: Text(
                            '비밀번호가 일치하지않습니다.',
                            style: TextStyle(
                              color: ColorConstant.primary,
                              fontSize: 10.sp,
                              fontFamily: 'Noto Sans KR',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ) : const SizedBox(),
                      ],
                    ))
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: (){
                      Get.back();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorConstant.gray1,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero
                      ),
                      minimumSize: Size(0,55.h)
                    ),
                    child: Text(
                      '취소',
                      style: TextStyle(
                        color: ColorConstant.white,
                        fontSize: 14.sp,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                  )
                ),
                Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: (){
                        controller.checkPassword();
                        _showFinishPopup(context);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: ColorConstant.primary,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero
                          ),
                          minimumSize: Size(0,55.h)
                      ),
                      child: Text(
                        '적용',
                        style: TextStyle(
                          color: ColorConstant.white,
                          fontSize: 14.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                    )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

}