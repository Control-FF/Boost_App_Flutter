import 'package:boostapp/data/service/user_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OrderController extends GetxController with StateMixin{
  final UserService _userService = Get.find();

  TextEditingController buyListCancelController = TextEditingController();

  RxInt buyListCancelLength = 0.obs;
  RxInt buyListStatus = 0.obs;
  RxBool buyListRefundCheck1 = false.obs;
  RxBool buyListRefundCheck2 = false.obs;
  RxBool buyListRefundCheck3 = false.obs;
  RxBool buyListRefundCheck4 = false.obs;



  @override
  void onInit() {
    super.onInit();

    if (Get.arguments != null) {
      buyListStatus.value = Get.arguments['status'];

      getOrderList();
    }
  }

  void buyListClear(){
    buyListCancelController.text = '';
    buyListCancelLength.value = 0;

    buyListRefundCheck1.value = false;
    buyListRefundCheck2.value = false;
    buyListRefundCheck3.value = false;
    buyListRefundCheck4.value = false;

  }

  void buyListRefundCheck(int index){
    if(index == 0){
      buyListRefundCheck1.value = true;
      buyListRefundCheck2.value = false;
      buyListRefundCheck3.value = false;
      buyListRefundCheck4.value = false;
    }else if(index == 1){
      buyListRefundCheck1.value = false;
      buyListRefundCheck2.value = true;
      buyListRefundCheck3.value = false;
      buyListRefundCheck4.value = false;
    }else if(index == 2){
      buyListRefundCheck1.value = false;
      buyListRefundCheck2.value = false;
      buyListRefundCheck3.value = true;
      buyListRefundCheck4.value = false;
    }else if(index == 3){
      buyListRefundCheck1.value = false;
      buyListRefundCheck2.value = false;
      buyListRefundCheck3.value = false;
      buyListRefundCheck4.value = true;
    }
  }

  Future<void> getOrderList() async {
    String status = '';

    if(buyListStatus.value == 0){
      status = '주문';
    } else if(buyListStatus.value == 1){
      status = '준비';
    } else if(buyListStatus.value == 2){
      status = '배송';
    } else if(buyListStatus.value == 3){
      status = '완료';
    } else if(buyListStatus.value == 4){
      status = '취소';
    }

    final result = await _userService.getOrderList(status: status);
    result.fold(
      (failure) {
        change(null, status: RxStatus.error(failure.message));
      },
      (response) {
        change(response, status: RxStatus.success());
      },
    );
  }
}