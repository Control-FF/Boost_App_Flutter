import 'package:boostapp/data/models/address_item.dart';
import 'package:boostapp/data/service/user_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddressEditController extends GetxController{
  final UserService _userService = Get.find();

  FocusNode nameFocusNode = FocusNode();
  FocusNode phoneFocusNode = FocusNode();

  TextEditingController receiveNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  RxInt addressIdx = 0.obs;
  RxString receiveName = ''.obs;
  RxString phone = ''.obs;
  RxString address1 = ''.obs;
  RxString address2 = ''.obs;
  String address3 = '';
  String postCode = '';
  String subject = '';
  String tel = '';

  @override
  Future<void> onInit() async {
    super.onInit();

    if (Get.arguments != null) {
      addressIdx.value = Get.arguments['addressIdx'];

      await getAddressDetail(addressIdx.value);
    }
  }

  Future<void> getAddressDetail(int adId) async {
    final result = await _userService.getAddressDetail(adId);
    result.fold(
        (failure) => print(failure.message),
        (response) {
          receiveNameController.text = response.data.name;
          phoneController.text = response.data.phone;
          address1.value = response.data.address1;
          addressController.text = response.data.address2;
        },
    );
  }

  Future<void> addAddress(context) async {
    final result = await _userService.addAddress(
      subject: subject,
      name: receiveNameController.text,
      phone: phoneController.text,
      postCode: postCode,
      address1: address1.value,
      address2: addressController.text,
      address3: address3,
      tel: tel
    );
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
            Get.back(result: "OK");
          },
    );
  }

  Future<void> updateAddress(context) async {
    final result = await _userService.updateAddress(
        adId: addressIdx.value,
        subject: subject,
        name: receiveNameController.text,
        phone: phoneController.text,
        postCode: postCode,
        address1: address1.value,
        address2: addressController.text,
        address3: address3,
        tel: tel
    );
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
        Get.back(result: "OK");
      },
    );
  }
}