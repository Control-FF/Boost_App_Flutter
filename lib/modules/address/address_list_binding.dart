import 'package:boostapp/modules/address/address_list_controller.dart';
import 'package:get/get.dart';


class AddressBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<AddressController>(AddressController());
  }
}
