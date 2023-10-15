import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxInt validPhoneStatus = 0.obs;
  RxInt validPasswordStatus = 0.obs;
  RxBool isObscureText = false.obs;

  @override
  void onInit() {
    super.onInit();
  }


}