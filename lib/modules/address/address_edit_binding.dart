import 'package:boostapp/modules/address/address_edit_controller.dart';
import 'package:get/get.dart';


class AddressEditBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<AddressEditController>(AddressEditController());
  }
}
