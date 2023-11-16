import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ShippingController extends GetxController{

  TextEditingController enterPwdController = TextEditingController();
  TextEditingController etcController = TextEditingController();

  RxInt location = 0.obs;
  RxInt enter = 0.obs;
  RxInt etc = 0.obs;

  List<String> locations = ['문 앞','직접 받고 부재중 문 앞','경비실','택배함'];

  @override
  void onInit() {
    super.onInit();
  }
}