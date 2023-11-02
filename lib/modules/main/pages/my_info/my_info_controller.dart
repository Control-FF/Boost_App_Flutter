import 'package:boostapp/data/service/storage_service.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyInfoController extends GetxController{
  final StorageService _storageService = Get.find();

  //my_info_check
  TextEditingController passwordController = TextEditingController();

  //my_info_update
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

  @override
  void onInit() {
    super.onInit();
  }

  void logout(){
    _storageService.deleteToken();
    Get.offAllNamed(AppRoutes.loginScreen);
  }

  void checkPassword(){
    validCurrentPasswordStatus1.value = 2;
    validNewPasswordStatus1.value = 2;
    validNewPasswordStatus2.value = 2;
  }
}