import 'package:boostapp/core/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ShippingController extends GetxController{

  TextEditingController enterPwdController = TextEditingController();
  TextEditingController etcController = TextEditingController();

  RxInt location = 0.obs;
  RxInt enter = 0.obs;
  RxInt etc = 0.obs;

  @override
  void onInit() {
    super.onInit();

    if (Get.arguments != null) {
      String strLocation = Constants.locations[Get.arguments['location']];
      String strEnter = Get.arguments['enter'];
      String strEtc = Get.arguments['etc'];

      location.value = Constants.locations.indexOf(strLocation);

      if(strEnter == ''){
        enter.value = 0;
      }else{
        enter.value = 1;
        enterPwdController.text = strEnter;
      }

      if(strEtc == ''){
        etc.value = 0;
      }else{
        etc.value = 1;
        etcController.text = strEnter;
      }
    }
  }
}