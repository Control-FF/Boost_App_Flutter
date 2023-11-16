import 'package:boostapp/data/models/order_confirm.dart';
import 'package:boostapp/data/service/user_service.dart';
import 'package:get/get.dart';

class OrderConfirmController extends GetxController{
  final UserService _userService = Get.find();

  RxString odId = ''.obs;
  RxList<OrderItem> orderItem = RxList<OrderItem>([]);
  RxList<OrderShipping> orderShipping = RxList<OrderShipping>([]);
  RxList<OrderCoupon> orderCoupon = RxList<OrderCoupon>([]);
  RxList<ShippingRequest> shippingRequest = RxList<ShippingRequest>([]);
  RxList<PaymentMethod> paymentMethod = RxList<PaymentMethod>([]);
  RxList<TotalPayment> totalPayment = RxList<TotalPayment>([]);

  RxBool isShipping = true.obs;

  @override
  void onInit() {
    super.onInit();

    if (Get.arguments != null) {
      String odId = Get.arguments['odId'];
      getOrderConfirm(odId);
    }


  }

  Future<void> getOrderConfirm(String confirmOdId) async {
    final result = await _userService.getOrderConfirm(odId: confirmOdId);
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
}