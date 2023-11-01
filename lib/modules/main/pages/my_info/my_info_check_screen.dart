import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/main/pages/my_page_controller.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyInfoCheckScreen extends GetView<MyPageController>{

  void _showLogoutPopup(context){
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
                        '비밀번호를 찾기 위해\n로그아웃을 합니다',
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
        backgroundColor: ColorConstant.white,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Container(
            margin: EdgeInsets.fromLTRB(26.w, 47.w, 26.w, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '내정보\n수정',
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
                    controller: controller.passwordController,
                    decoration: InputDecoration(
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
                        suffixIconConstraints: BoxConstraints(
                            minWidth: 81.w,
                            minHeight: 23.h
                        ),
                        suffixIcon: Container(
                          margin: EdgeInsets.only(right: 15.w),
                          child: TextButton(
                            onPressed: (){
                              _showLogoutPopup(context);
                            },
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                minimumSize: Size(80.w,20.h)
                            ),
                            child: Text(
                              '비밀번호 찾기',
                              style: TextStyle(
                                color: ColorConstant.primary,
                                fontSize: 10.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w500,
                              ),
                            ),

                          ),
                        )
                    ),
                    maxLines: 1,
                    style: TextStyle(
                      color: ColorConstant.gray1,
                      fontSize: 14.sp,
                      fontFamily: 'Noto Sans KR',
                      fontWeight: FontWeight.w500,
                    ),
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    obscureText: true,
                    onChanged: (value){
                      if(value == "" || value.length < 13){
                        controller.validPasswordStatus.value = 2;
                      }else{
                        controller.validPasswordStatus.value = 1;
                      }
                    },

                  ),
                ),
                controller.validPasswordStatus.value == 2 ? Container(
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
                  margin: EdgeInsets.only(top: 107.h),
                  width: Get.width,
                  height: 55.w,
                  child: ElevatedButton(
                    onPressed: (){
                      if(controller.validPasswordStatus.value == 1){
                        //Get.toNamed(AppRoutes.resetScreen);
                        Get.toNamed(AppRoutes.myInfoUpdate);
                      }

                      Get.toNamed(AppRoutes.myInfoUpdate);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: controller.validPasswordStatus.value == 1
                          ? ColorConstant.primary
                          : ColorConstant.gray7,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.r))
                      ),
                    ),
                    child: Text(
                      '내 정보 수정하기',
                      style: TextStyle(
                        color: ColorConstant.white,
                        fontSize: 20.sp,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}