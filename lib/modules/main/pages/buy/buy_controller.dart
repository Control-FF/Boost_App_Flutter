import 'package:boostapp/core/constants/constants.dart';
import 'package:boostapp/data/models/payment.dart';
import 'package:boostapp/data/service/user_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class BuyController extends GetxController{
  final UserService _userService = Get.find();

  RxInt page = 1.obs;
  RxList<Payment> buyList = <Payment>[].obs;

  @override
  void onInit() {
    super.onInit();

    //getBuyList();
  }

  Future<void> getBuyList() async {
    final result = await _userService.getPaymentList(page: page.value);
    result.fold(
      (failure) {
        print(failure.message);
      },
      (response) {
        if(page.value == 1){
          buyList.value = List<Payment>.from(response.items!.toList(growable: false));
        }else{
          if(response.items!.isEmpty){
            page.value--;
            return;
          }
          buyList.addAll(response.items!);
        }
      },
    );
  }

  bool isShowDate(index){
    if(index == 0){
      return true;
    }else{
      String date1 = buyList[index].ct_time.split(' ')[0];
      String date2 = buyList[index-1].ct_time.split(' ')[0];

      return date1 != date2;
    }
  }
}