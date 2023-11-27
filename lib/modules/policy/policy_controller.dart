import 'package:boostapp/data/models/policy.dart';
import 'package:boostapp/data/service/shop_service.dart';
import 'package:get/get.dart';

class PolicyController extends GetxController{
  final ShopService _shopService = Get.find();
  RxList<Policy> items = (List<Policy>.of([])).obs;

  @override
  void onInit() {
    super.onInit();

    if (Get.arguments != null) {
      String type = Get.arguments['type'];

      getPolicyList(type);
    }
  }

  Future<void> getPolicyList(String type) async {

    final result = await _shopService.getPolicy(coId: type);
    result.fold(
      (failure) => print(failure.message),
      (response) => items.value = List<Policy>.from(response.items!.toList(growable: false)),
    );
  }
}