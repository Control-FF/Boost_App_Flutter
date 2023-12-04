import 'package:boostapp/data/models/cart.dart';
import 'package:boostapp/data/models/order_info.dart';
import 'package:boostapp/data/service/shop_service.dart';
import 'package:boostapp/data/service/user_service.dart';
import 'package:boostapp/modules/cart/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderConfirmController extends GetxController{
  final UserService _userService = Get.find();
  final ShopService _shopService = Get.find();
  CartController cartController = Get.put(CartController());

  RxList<CartItem> cartList = RxList<CartItem>([]);
  Rx<OrderInfoAddress?> orderInfoAddress = Rx<OrderInfoAddress?>(null);
  Rx<OrderInfoPayment?> orderInfoPayment = Rx<OrderInfoPayment?>(null);
  RxInt mbPoint = 0.obs;
  RxInt mbCouponCnt = 0.obs;

  RxString odId = ''.obs;

  RxBool isShipping = true.obs;

  RxInt usePoint = 0.obs;
  RxInt cpNo = 0.obs;
  RxInt cpPrice = 0.obs;
  RxInt location = 0.obs;
  RxString enter = ''.obs;
  RxString etc = ''.obs;
  Rx<DateTime>? selectedDay = DateTime.now().obs;
  Rx<String> selectedDate = ''.obs;

  @override
  Future<void> onInit() async {
    super.onInit();

    //if (Get.arguments != null) {
    //  odId.value = Get.arguments['odId'];
    //  getOrderConfirm();
    //}

    //print(selectedDay.toString());
    if (Get.arguments != null) {
      List<int> ctItems = Get.arguments['items'];

      for(int i=0; i<ctItems.length; i++){

        for (int j = 0; j < cartController.cartList.length; j++) {
          if (cartController.cartList[j].ct_id == ctItems[i]) {

            cartList.add(cartController.cartList[j]);
          }
        }
      }

    }else{
      for (int i = 0; i < cartController.cartList.length; i++) {
        if (cartController.cartList[i].isCheck) {
          cartList.add(cartController.cartList[i]);
        }
      }
    }
    getOrderInfo();
  }

  Future<void> getOrderInfo() async {
    final result = await _userService.getOrderInfo();
    result.fold(
      (failure) => print(failure.message),
      (response){
        mbPoint.value = response.mb_point;
        mbCouponCnt.value = response.mb_coupon_cnt;
        orderInfoAddress.value = response.addressItem;
        orderInfoPayment.value = response.paymentItem;
      },
    );
  }

  Future<void> setPayment(BuildContext context) async {
    final result = await _shopService.setPayment(odId: odId.value);
    result.fold(
      (failure){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          elevation: 6.0,
          behavior: SnackBarBehavior.floating,
          content: Text(
            failure.message,
            style: TextStyle(color: Colors.white),
          ),
        ));
      },
      (response){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          elevation: 6.0,
          behavior: SnackBarBehavior.floating,
          content: Text(
            '결제가 완료되었습니다',
            style: TextStyle(color: Colors.white),
          ),
        ));
        Get.back(result: 'OK');
      },
    );
  }

  int getTotalPrice(){
    int totalPrice = 0;

    for(int i=0; i<cartList.length; i++){
      totalPrice += cartList[i].ct_price * cartList[i].ct_qty;
    }

    return totalPrice;
  }

  int getFinalPrice(){
    int totalPrice = 0;

    for(int i=0; i<cartList.length; i++){
      totalPrice += cartList[i].ct_price * cartList[i].ct_qty;
    }

    return totalPrice - usePoint.value - cpPrice.value;
  }
}