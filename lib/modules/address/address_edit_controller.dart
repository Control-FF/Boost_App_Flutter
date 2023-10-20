import 'package:boostapp/data/models/address.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddressEditController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey();

  TextEditingController receiveNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  RxInt addressIdx = 0.obs;
  RxString receiveName = ''.obs;
  RxString phone = ''.obs;
  RxString address1 = ''.obs;
  RxString address2 = ''.obs;



  @override
  void onInit() {
    super.onInit();

    if (Get.arguments != null) {
      addressIdx.value = Get.arguments['addressIdx'];
      receiveName.value = Get.arguments['receiveName'];
      phone.value = Get.arguments['phone'];
      address1.value = Get.arguments['address1'];
      address2.value = Get.arguments['address2'];

      receiveNameController.text = receiveName.value;
      phoneController.text = phone.value;
      addressController.text = address2.value;
    }

  }


}