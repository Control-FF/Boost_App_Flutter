import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey();

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController1 = TextEditingController();
  TextEditingController passwordController2 = TextEditingController();
  TextEditingController inviteController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  RxInt validPasswordStatus1 = 0.obs;
  RxInt validPasswordStatus2 = 0.obs;
  RxBool isObscureText1 = false.obs;
  RxBool isObscureText2 = false.obs;
  RxBool isFinish = false.obs;
  RxInt validNameStatus = 0.obs;
  RxInt validPhoneStatus = 0.obs;
  RxInt validNumberStatus = 0.obs;
  RxBool isShowTime = false.obs;
  RxInt seconds = 180.obs;

  RxBool checkAll = false.obs;
  RxBool check1 = false.obs;
  RxBool check2 = false.obs;
  RxBool check3 = false.obs;
  RxBool check4 = false.obs;

  @override
  void onInit() {
    super.onInit();
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


}