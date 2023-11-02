import 'package:boostapp/modules/product_detail/product_detail_controller.dart';
import 'package:get/get.dart';


class ProductDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ProductDetailController>(ProductDetailController());
  }
}
