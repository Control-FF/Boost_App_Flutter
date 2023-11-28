import 'package:boostapp/data/models/order_confirm.dart';
import 'package:boostapp/data/service/shop_service.dart';
import 'package:boostapp/data/service/user_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OrderConfirmController extends GetxController{
  final UserService _userService = Get.find();
  final ShopService _shopService = Get.find();

  RxString odId = ''.obs;
  RxList<OrderItem> orderItem = RxList<OrderItem>([]);
  RxList<OrderShipping> orderShipping = RxList<OrderShipping>([]);
  RxList<OrderCoupon> orderCoupon = RxList<OrderCoupon>([]);
  RxList<ShippingRequest> shippingRequest = RxList<ShippingRequest>([]);
  RxList<PaymentMethod> paymentMethod = RxList<PaymentMethod>([]);
  RxList<TotalPayment> totalPayment = RxList<TotalPayment>([]);

  RxBool isShipping = true.obs;

  RxInt usePoint = 0.obs;
  RxInt cpNo = 0.obs;
  RxInt cpPrice = 0.obs;
  RxString enter = ''.obs;
  RxString etc = ''.obs;
  Rx<DateTime>? selectedDay = DateTime.now().obs;
  Rx<String> selectedDate = ''.obs;

  @override
  void onInit() {
    super.onInit();

    if (Get.arguments != null) {
      odId.value = Get.arguments['odId'];
      getOrderConfirm();
    }

    print(selectedDay.toString());

  }

  Future<void> getOrderConfirm() async {
    final result = await _userService.getOrderConfirm(odId: odId.value);
    result.fold(
      (failure) => print(failure.message),
      (response){
        odId.value = response.data!.od_id;
        orderItem.value = response.data!.orderItem!;
        orderShipping.value = List<OrderShipping>.from(response.data!.orderShipping!.toList(growable: false));
        orderCoupon.value = List<OrderCoupon>.from(response.data!.orderCoupon!.toList(growable: false));
        shippingRequest.value = List<ShippingRequest>.from(response.data!.shippingRequest!.toList(growable: false));
        paymentMethod.value = List<PaymentMethod>.from(response.data!.paymentMethod!.toList(growable: false));
        totalPayment.value = List<TotalPayment>.from(response.data!.totalPayment!.toList(growable: false));
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

  int getFinalPrice(){
    if(totalPayment.isEmpty){
      return 0;
    }
    int totalPrice = int.parse(totalPayment[0].total_payment);

    return totalPrice - usePoint.value - cpPrice.value;
  }
}