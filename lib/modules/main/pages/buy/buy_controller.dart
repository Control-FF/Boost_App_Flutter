import 'package:boostapp/data/service/user_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class BuyController extends GetxController with StateMixin{
  final UserService _userService = Get.find();

  RxInt page = 2.obs;

  @override
  void onInit() {
    super.onInit();

    getBuyList();
  }

  Future<void> getBuyList() async {
    final result = await _userService.getPaymentList(page: page.value);
    result.fold(
      (failure) {
        change(null, status: RxStatus.error(failure.message));
      },
      (response) {
        change(response, status: RxStatus.success());
      },
    );
  }

  bool isShowDate(index){
    if(index == 0){
      return true;
    }else{
      String date1 = state.items[index].ct_time.split(' ')[0];
      String date2 = state.items[index-1].ct_time.split(' ')[0];

      return date1 != date2;
    }
  }
}