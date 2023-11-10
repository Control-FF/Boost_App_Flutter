import 'package:boostapp/data/service/user_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FindController extends GetxController {
  final UserService _userService = Get.find();

  TextEditingController phoneController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  RxInt validPhoneStatus = 0.obs;
  RxInt validAuthStatus = 0.obs;
  RxInt validNumberStatus = 0.obs;
  RxBool isShowTime = false.obs;
  RxInt seconds = 180.obs;

  @override
  void onInit() {
    super.onInit();
  }

  void startTimer(){

  }

  void stopTimer(){

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

}