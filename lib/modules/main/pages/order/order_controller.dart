import 'package:boostapp/data/models/user_info.dart';
import 'package:boostapp/data/service/user_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OrderController extends GetxController with StateMixin{
  final UserService _userService = Get.find();

  TextEditingController orderListCancelController = TextEditingController();

  RxInt orderListCancelLength = 0.obs;
  RxInt orderListStatus = 0.obs;
  RxBool orderListRefundCheck1 = false.obs;
  RxBool orderListRefundCheck2 = false.obs;
  RxBool orderListRefundCheck3 = false.obs;
  RxBool orderListRefundCheck4 = false.obs;
  Rx<UserInfo?> userData = Rx<UserInfo?>(null);



  @override
  void onInit() {
    super.onInit();

    if (Get.arguments != null) {
      orderListStatus.value = Get.arguments['status'];

      getMyInfo();
      getOrderList();
    }
  }

  void orderListClear(){
    orderListCancelController.text = '';
    orderListCancelLength.value = 0;

    orderListRefundCheck1.value = false;
    orderListRefundCheck2.value = false;
    orderListRefundCheck3.value = false;
    orderListRefundCheck4.value = false;

  }

  void orderListRefundCheck(int index){
    if(index == 0){
      orderListRefundCheck1.value = true;
      orderListRefundCheck2.value = false;
      orderListRefundCheck3.value = false;
      orderListRefundCheck4.value = false;
    }else if(index == 1){
      orderListRefundCheck1.value = false;
      orderListRefundCheck2.value = true;
      orderListRefundCheck3.value = false;
      orderListRefundCheck4.value = false;
    }else if(index == 2){
      orderListRefundCheck1.value = false;
      orderListRefundCheck2.value = false;
      orderListRefundCheck3.value = true;
      orderListRefundCheck4.value = false;
    }else if(index == 3){
      orderListRefundCheck1.value = false;
      orderListRefundCheck2.value = false;
      orderListRefundCheck3.value = false;
      orderListRefundCheck4.value = true;
    }
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

  Future<void> getOrderList() async {
    String status = '';

    if(orderListStatus.value == 0){
      status = '주문';
    } else if(orderListStatus.value == 1){
      status = '준비';
    } else if(orderListStatus.value == 2){
      status = '배송';
    } else if(orderListStatus.value == 3){
      status = '완료';
    } else if(orderListStatus.value == 4){
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

  Future<void> getMyInfo() async {

    final result = await _userService.getMyInfo();
    result.fold(
      (failure) => print(failure.message),
      (response) => userData.value = response.data,
    );

  }
}