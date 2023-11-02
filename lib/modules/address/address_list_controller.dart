import 'package:boostapp/data/models/address_item.dart';
import 'package:boostapp/data/service/user_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddressController extends GetxController with StateMixin {
  final UserService _userService = Get.find();

  TextEditingController receiveNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  var addressList = RxList<AddressItem>.empty(growable: true).obs;
  RxInt selectAdId = 0.obs;
  RxString title = '배송지 관리'.obs;

  @override
  Future<void> onInit() async {
    super.onInit();

    if (Get.arguments != null) {
      title.value = Get.arguments['title'];
    }

    await getAddressList();
  }

  Future<void> getAddressList() async {
    final result = await _userService.getAddressList();
    result.fold(
        (failure) => print(failure.message),
        (response) => {
          if(response.items!.isEmpty){
            change(response, status: RxStatus.empty())
          }else{
            change(response, status: RxStatus.success())
          }
        },
    );
  }

  Future<void> setAddressBasic(context, int adId) async {
    final result = await _userService.setAddressBasic(adId);
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
            getAddressList();
          },
    );
  }

  Future<void> deleteAddress(context, int adId) async {
    final result = await _userService.deleteAddress(adId);
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
        getAddressList();
      },
    );
  }




}