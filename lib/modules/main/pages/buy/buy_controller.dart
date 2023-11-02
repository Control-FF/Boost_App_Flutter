import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class BuyController extends GetxController{
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
}