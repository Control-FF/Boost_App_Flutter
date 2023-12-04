import 'package:boostapp/data/models/category_product.dart';
import 'package:boostapp/data/models/keyword_result.dart';
import 'package:boostapp/data/service/shop_service.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController{
  final ShopService _shopService = Get.find();

  RxInt page = 1.obs;
  RxInt totalCnt = 0.obs;
  RxString category = ''.obs;
  RxString caId = ''.obs;

  RxList<CategoryProduct> categoryProductList = RxList<CategoryProduct>([]);
  RxString filter = ''.obs; //'': 필터 적용전, 'boost': 부스트 배송, 'seller': 판매자 배송
  RxString sort = ''.obs; //'': 필터 적용전, 'latest': 최근 등록, 'reviews': 리뷰, 'price_high': 가격 높은, 'price_low': 가격 낮은, 'rating': 평점, 'sales': 판매

  @override
  void onInit() {
    super.onInit();

    if (Get.arguments != null) {
      category.value = Get.arguments['category'];
      caId.value = Get.arguments['caId'];
    }

    getCategoryProduct();
  }

  Future<void> getCategoryProduct() async {

    final result = await _shopService.getCategoryProduct(caId: caId.value,sort: sort.value,page: page.value.toString());
    result.fold(
      (failure) => print(failure.message),
      (response){
        if(page.value == 1){
          categoryProductList.value = List<CategoryProduct>.from(response.items!.toList(growable: false));
        }else{
          if(response.items!.isEmpty){
            page.value--;
            return;
          }
          categoryProductList.addAll(response.items!);
        }
        totalCnt.value = response.total_cnt;
      },
    );
  }
}