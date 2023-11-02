import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FindController extends GetxController {
  TextEditingController phoneController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  RxInt validPhoneStatus = 0.obs;
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


}