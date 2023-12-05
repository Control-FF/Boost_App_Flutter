import 'package:boostapp/core/constants/constants.dart';
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

  RxBool isLoading = false.obs;

  RxList<CartItem> cartList = RxList<CartItem>([]);
  Rx<OrderInfoAddress?> orderInfoAddress = Rx<OrderInfoAddress?>(null);
  Rx<OrderInfoPayment?> orderInfoPayment = Rx<OrderInfoPayment?>(null);
  RxInt mbPoint = 0.obs;
  RxInt mbCouponCnt = 0.obs;

  RxBool isShipping = true.obs;

  RxInt usePoint = 0.obs;
  RxInt cpNo = 0.obs;
  RxInt cpPrice = 0.obs;
  RxInt location = 0.obs;
  RxString enter = ''.obs;
  RxString etc = ''.obs;
  Rx<DateTime>? selectedDay = DateTime.now().obs;
  Rx<String> selectedDate = ''.obs;
  RxInt shippingPrice = 0.obs;

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

    shippingPrice.value = cartController.getShippingPrice();

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

  Future<void> addOrder(BuildContext context) async {
    isLoading.value = true;
    List<int> ctItems = List.empty(growable: true);
    for(int i=0; i<cartList.length; i++){
      ctItems.add(cartList[i].ct_id);
    }

    var map = <String, dynamic>{};
    map.addAll({
      'mb_id' : '',
      'ct_items' : ctItems,
      'cp_no' : cpNo.value,
      'use_point' : usePoint.value,
      'location' : Constants.locations[location.value],
      'accesscode' : enter.value,
      'notes' : etc.value,
      'total_sendcost' : shippingPrice.value,
      'billingkey_id' : orderInfoPayment.value!.pay_id,
      'ad_id' : orderInfoAddress.value!.ad_id
    });

    final result = await _userService.addOrder(data: map);
    result.fold(
      (failure){
        print(failure.message);
        isLoading.value = false;
      },
      (response) async {
        String odId = response.od_id;

        setPayment(context, odId);
      },
    );
  }

  Future<void> setPayment(BuildContext context, String odId) async {
    final result = await _shopService.setPayment(odId: odId);
    result.fold(
      (failure){
        isLoading.value = false;
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
        isLoading.value = false;
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
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

    return totalPrice - usePoint.value - cpPrice.value + shippingPrice.value;
  }

  int getPointReward(){
    int totalPrice = 0;

    for(int i = 0; i<cartList.length; i++){
      totalPrice += cartList[i].ct_price * cartList[i].ct_qty;
    }

    return ((totalPrice - cpPrice.value - usePoint.value).toDouble()*0.002).floor();
  }

  onWillPop(BuildContext context) {
    if(isLoading.value){
      return false;
    }
    return true;
  }
}