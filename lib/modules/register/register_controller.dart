import 'dart:io';

import 'package:boostapp/data/service/user_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class RegisterController extends GetxController {
  final UserService _userService = Get.find();

  final FocusNode nameFocusNode = FocusNode();
  final FocusNode phoneFocusNode = FocusNode();
  final FocusNode password1FocusNode = FocusNode();
  final FocusNode password2FocusNode = FocusNode();
  final FocusNode inviteFocusNode = FocusNode();

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController1 = TextEditingController();
  TextEditingController passwordController2 = TextEditingController();
  TextEditingController inviteController = TextEditingController();
  TextEditingController numberController = TextEditingController();

  RxString type = 'nor'.obs;

  RxInt validPasswordStatus1 = 0.obs;
  RxInt validPasswordStatus2 = 0.obs;
  RxBool isObscureText1 = false.obs;
  RxBool isObscureText2 = false.obs;
  RxBool isFinish = false.obs;
  RxInt validNameStatus = 0.obs;
  RxInt validPhoneStatus = 0.obs;
  RxInt validNumberStatus = 0.obs;
  RxInt validAuthStatus = 0.obs;
  RxBool isShowTime = false.obs;
  RxInt seconds = 180.obs;

  RxBool checkAll = false.obs;
  RxBool check1 = false.obs;
  RxBool check2 = false.obs;
  RxBool check3 = false.obs;
  RxBool check4 = false.obs;

  RxString fileName = ''.obs;
  Rx<File?> bizFile = Rx<File?>(null);

  @override
  void onInit() {
    super.onInit();

    if (Get.arguments != null) {
      type.value = Get.arguments['type'];
    }
  }

  void startTimer(){

  }

  void stopTimer(){

  }

  void allCheck(){
    check1.value = checkAll.value;
    check2.value = checkAll.value;
    check3.value = checkAll.value;
    check4.value = checkAll.value;
  }

  void checkPolicyUI(){
    checkAll.value = check1.value && check2.value && check3.value && check4.value;
  }

  String secondsToString(){
    int minutes = seconds.value ~/ 60;
    int tmpSeconds = seconds.value % 60;
    String str = '';

    if(tmpSeconds < 10){
      str = "$minutes:0$tmpSeconds";
    }else{
      str = "$minutes:$tmpSeconds";
    }
    return str;
  }

  Future<void> authPhone(context) async {
    String phone = phoneController.text;

    final result = await _userService.authPhone(phone: phone);
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
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          elevation: 6.0,
          behavior: SnackBarBehavior.floating,
          content: Text(
            '인증번호가 발송되었습니다.',
            style: TextStyle(color: Colors.white),
          ),
        ));
      },
    );

  }

  Future<void> authNumber(context) async {
    String phone = phoneController.text;
    String number = numberController.text;

    final result = await _userService.authNumber(phone: phone, number: number);
    result.fold(
      (failure) {
        validNumberStatus.value = 3;
      },
      (response) {
        validNumberStatus.value = 1;
        validAuthStatus.value = 1;
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          elevation: 6.0,
          behavior: SnackBarBehavior.floating,
          content: Text(
            '인증이 완료되었습니다.',
            style: TextStyle(color: Colors.white),
          ),
        ));
      },
    );
  }

  Future<void> registerUser(context) async {
    String phone = phoneController.text;
    String pw1 = passwordController1.text;
    String pw2 = passwordController2.text;
    String authCode = numberController.text;
    String? recommendCode = inviteController.text;

    if(recommendCode == ''){
      recommendCode = null;
    }

    final result = await _userService.registerUser(type: type.value, phone: phone, pw1: pw1, pw2: pw2, authCode: authCode, recommendCode: recommendCode,bizLicense: bizFile.value);
    result.fold(
      (failure) {
        print(failure.message);
      },
      (response) {
        isFinish.value = true;
      },
    );

  }
}