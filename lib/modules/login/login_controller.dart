import 'package:boostapp/data/service/user_service.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final UserService _userService = Get.find();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxInt validPhoneStatus = 0.obs;
  RxInt validPasswordStatus = 0.obs;
  RxBool isObscureText = false.obs;

  final FocusNode phoneFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> login(context) async {
    final String phone = phoneController.text.trim();
    final String password = passwordController.text.trim();
    final result = await _userService.login(phone: phone, password: password);
    result.fold(
          (failure) =>
          //print(failure.message),

              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                elevation: 6.0,
                behavior: SnackBarBehavior.floating,
                content: Text(
                  failure.message,
                  style: TextStyle(color: Colors.white),
                ),
              )),


          (token) => Get.offAllNamed(AppRoutes.mainScreen),
    );
  }


}