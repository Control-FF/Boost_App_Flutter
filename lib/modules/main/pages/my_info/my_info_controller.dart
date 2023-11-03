import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/data/service/storage_service.dart';
import 'package:boostapp/data/service/user_service.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyInfoController extends GetxController with StateMixin{
  final StorageService _storageService = Get.find();
  final UserService _userService = Get.find();

  //my_info_check
  TextEditingController passwordController = TextEditingController();

  //my_info_update
  TextEditingController nicknameController = TextEditingController();
  TextEditingController currentPasswordController = TextEditingController();
  TextEditingController newPasswordController1 = TextEditingController();
  TextEditingController newPasswordController2 = TextEditingController();

  final FocusNode currentPasswordFocusNode = FocusNode();
  final FocusNode newPassword1FocusNode = FocusNode();
  final FocusNode newPassword2FocusNode = FocusNode();

  RxInt validPasswordStatus = 0.obs;
  RxInt validNicknameStatus = 0.obs;
  RxBool isEdit = false.obs;

  RxInt validCurrentPasswordStatus1 = 0.obs;
  RxInt validNewPasswordStatus1 = 0.obs;
  RxInt validNewPasswordStatus2 = 0.obs;
  RxBool isObscureText1 = false.obs;
  RxBool isObscureText2 = false.obs;
  RxBool isObscureText3 = false.obs;

  //user info
  RxString name = ''.obs;
  RxString phone = ''.obs;
  RxString nickname = ''.obs;

  @override
  void onInit() {
    getMyInfo();
    super.onInit();
  }

  void logout(){
    _storageService.deleteToken();
    Get.offAllNamed(AppRoutes.loginScreen);
  }

  Future<void> verifyPassword(context) async {
    String password = passwordController.text;
    final result = await _userService.verifyPassword(password: password);
    result.fold(
      (failure) {
        validPasswordStatus.value = 3;
      },
      (response) {
        Get.offNamed(AppRoutes.myInfoUpdate);
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
        if(response.data != null){
          name.value = response.data!.name;
          nickname.value = response.data!.nickname;
          nicknameController.text = response.data!.nickname;
        }
        change(response, status: RxStatus.success());
      },
    );
  }

  Future<void> updateMyInfo(context) async {
    String nickname = nicknameController.text;
    String? currentPassword = currentPasswordController.text;
    String? newPassword1 = newPasswordController1.text;
    String? newPassword2 = newPasswordController2.text;

    if(currentPassword == ''){
      currentPassword = null;
    }
    if(newPassword1 == ''){
      newPassword1 = null;
    }
    if(newPassword2 == ''){
      newPassword2 = null;
    }

    final result = await _userService.updateMyInfo(
      nickname: nickname,
      currentPassword: currentPassword,
      newPassword1: newPassword1,
      newPassword2: newPassword2
    );
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
        _showFinishPopup(context);
      },
    );
  }

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
                        '회원 정보가 변경되었습니다.',
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
}