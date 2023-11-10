import 'package:boostapp/data/service/user_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetController extends GetxController {
  final UserService _userService = Get.find();

  final FocusNode password1FocusNode = FocusNode();
  final FocusNode password2FocusNode = FocusNode();

  TextEditingController passwordController1 = TextEditingController();
  TextEditingController passwordController2 = TextEditingController();
  RxInt validPasswordStatus1 = 0.obs;
  RxInt validPasswordStatus2 = 0.obs;
  RxBool isObscureText1 = false.obs;
  RxBool isObscureText2 = false.obs;
  RxBool isFinish = false.obs;

  String phone = '';
  String number = '';

  @override
  void onInit() {
    super.onInit();

    if (Get.arguments != null) {
      phone = Get.arguments['phone'];
      number = Get.arguments['number'];
    }
  }

  Future<void> resetPassword(context) async {
    String pw1 = passwordController1.text;
    String pw2 = passwordController2.text;

    final result = await _userService.resetPassword(phone: phone, pw1: pw1, pw2: pw2, number: number);
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
        isFinish.value = true;
      },
    );

  }

}