import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/data/service/storage_service.dart';
import 'package:boostapp/data/service/user_service.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyPageController extends GetxController with StateMixin{
  final StorageService _storageService = Get.find();
  final UserService _userService = Get.find();

  RxInt leaveReasonPosition = 0.obs;
  TextEditingController leaveReasonEtcController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  void logout(){
    _storageService.deleteToken();
    Get.offAllNamed(AppRoutes.loginScreen);
  }

  Future<void> memberLeave(context,content) async {
    var map = <String, dynamic>{};
    map.addAll({'content' : content});

    final result = await _userService.memberLeave(data: map);
    result.fold(
      (failure) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          elevation: 6.0,
          behavior: SnackBarBehavior.floating,
          content: Text(
            failure.message,
            style: TextStyle(color: Colors.white),
          ),
        ));
      },
      (response) {
        logout();
      },
    );

  }

  Future<void> getMyInfo() async {

    final result = await _userService.getMyInfo();
    result.fold(
      (failure) {
        change(null, status: RxStatus.error(failure.message));
      },
      (response) {
        _storageService.saveName(response.data!.name);
        change(response, status: RxStatus.success());
      },
    );

  }

  void showLogoutPopup(context){
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
                        '기기에서 로그아웃 합니다.',
                        style: TextStyle(
                          color: ColorConstant.black,
                          fontSize: 12.sp,
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
                                logout();
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

  void showLeavePopup(context){
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
              height: 173.h,
              alignment: Alignment.center,
              child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '정말 회원탈퇴를 하시겠습니까?',
                        style: TextStyle(
                          color: ColorConstant.black,
                          fontSize: 12.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Text(
                        '탈퇴 후 포인트, 쿠폰 및 개인정보는\n복구하실 수 없습니다.',
                        style: TextStyle(
                          color: ColorConstant.black,
                          fontSize: 12.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 22.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
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
                                '취소',
                                style: TextStyle(
                                  color: ColorConstant.white,
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
                                showLeaveReasonPopup(context);
                              },
                              child: Text(
                                '확인',
                                style: TextStyle(
                                  color: ColorConstant.black,
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

  void showLeaveReasonPopup(context){
    List<String> reason = ['더이상 사용하지 않습니다.','사용하기가 다소 불편합니다.','해당 어플이 지루합니다.','기타'];

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
            content: Obx(() => Container(
              height: leaveReasonPosition.value == 3 ? 376.h : 270.h,
              alignment: Alignment.center,
              child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '탈퇴 하시는 이유는 무엇입니까?',
                        style: TextStyle(
                          color: ColorConstant.black,
                          fontSize: 13.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20.w),
                        padding: EdgeInsets.fromLTRB(18.w, 7.h, 18.w, 7.h),
                        decoration: BoxDecoration(
                            border: Border.all(color: ColorConstant.gray2,width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(3.r))
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                                value: leaveReasonPosition.value == 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                checkColor: ColorConstant.white,
                                activeColor: ColorConstant.primary,
                                onChanged: (bool? value){
                                  leaveReasonPosition.value = 0;
                                },
                              ),
                            ),
                            SizedBox(width: 5.w,),
                            Text(
                              reason[0],
                              style: TextStyle(
                                color: ColorConstant.gray25,
                                fontSize: 10.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 4.h,),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20.w),
                        padding: EdgeInsets.fromLTRB(18.w, 7.h, 18.w, 7.h),
                        decoration: BoxDecoration(
                            border: Border.all(color: ColorConstant.gray2,width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(3.r))
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                                value: leaveReasonPosition.value == 1,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                checkColor: ColorConstant.white,
                                activeColor: ColorConstant.primary,
                                onChanged: (bool? value){
                                  leaveReasonPosition.value = 1;
                                },
                              ),
                            ),
                            SizedBox(width: 5.w,),
                            Text(
                              reason[1],
                              style: TextStyle(
                                color: ColorConstant.gray25,
                                fontSize: 10.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 4.h,),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20.w),
                        padding: EdgeInsets.fromLTRB(18.w, 7.h, 18.w, 7.h),
                        decoration: BoxDecoration(
                            border: Border.all(color: ColorConstant.gray2,width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(3.r))
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                                value: leaveReasonPosition.value == 2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                checkColor: ColorConstant.white,
                                activeColor: ColorConstant.primary,
                                onChanged: (bool? value){
                                  leaveReasonPosition.value = 2;
                                },
                              ),
                            ),
                            SizedBox(width: 5.w,),
                            Text(
                              reason[2],
                              style: TextStyle(
                                color: ColorConstant.gray25,
                                fontSize: 10.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 4.h,),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20.w),
                        padding: EdgeInsets.fromLTRB(18.w, 7.h, 18.w, 7.h),
                        decoration: BoxDecoration(
                            border: Border.all(color: ColorConstant.gray2,width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(3.r))
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                                value: leaveReasonPosition.value == 3,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                checkColor: ColorConstant.white,
                                activeColor: ColorConstant.primary,
                                onChanged: (bool? value){
                                  leaveReasonPosition.value = 3;
                                },
                              ),
                            ),
                            SizedBox(width: 5.w,),
                            Text(
                              reason[3],
                              style: TextStyle(
                                color: ColorConstant.gray25,
                                fontSize: 10.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      leaveReasonPosition.value == 3 ? Container(
                        margin: EdgeInsets.fromLTRB(20.w, 13.h, 20.w, 0.h),
                        height: 93.h,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            border: Border.all(color: ColorConstant.gray2,width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(3.r))
                        ),
                        child: TextField(
                          controller: leaveReasonEtcController,
                          decoration: InputDecoration(
                            counterText: '',
                            hintText: '탈퇴사유를 기재해 주세요.',
                            hintStyle: TextStyle(
                              color: ColorConstant.gray2,
                              fontSize: 12.sp,
                              fontFamily: 'Noto Sans KR',
                              fontWeight: FontWeight.w500,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: EdgeInsets.zero,
                          ),
                          maxLength: 200,
                          maxLines: 16,
                          style: TextStyle(
                            color: ColorConstant.black,
                            fontSize: 12.sp,
                            fontFamily: 'Noto Sans KR',
                            fontWeight: FontWeight.w400,
                          ),
                          keyboardType: TextInputType.multiline,
                          textInputAction: TextInputAction.newline,
                          onChanged: (value){

                          },
                        ),
                      ) : SizedBox(),
                      SizedBox(
                        height: 30.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
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
                                '취소 하기',
                                style: TextStyle(
                                  color: ColorConstant.white,
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
                                if(leaveReasonPosition.value == 3){
                                  String contents = leaveReasonEtcController.text;

                                  if(contents.trim().isEmpty){
                                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                                      elevation: 6.0,
                                      behavior: SnackBarBehavior.floating,
                                      content: Text(
                                        '탈퇴사유를 기재해 주세요.',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ));
                                    return;
                                  }
                                  memberLeave(context,contents);
                                }else{
                                  memberLeave(context,reason[leaveReasonPosition.value]);
                                }

                              },
                              child: Text(
                                '탈퇴 하기',
                                style: TextStyle(
                                  color: ColorConstant.black,
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
            )),
          );
        });
  }
}