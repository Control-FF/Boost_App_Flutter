import 'package:boostapp/data/models/more.dart';
import 'package:boostapp/data/service/shop_service.dart';
import 'package:get/get.dart';

class MoreController extends GetxController{
  final ShopService _shopService = Get.find();

  RxInt page = 1.obs;
  RxInt totalCnt = 0.obs;
  RxString title = ''.obs;
  RxString type = ''.obs;

  RxList<More> productList = RxList<More>([]);
  RxString filter = ''.obs; //'': 필터 적용전, 'boost': 부스트 배송, 'seller': 판매자 배송
  RxString sort = ''.obs; //'': 필터 적용전, 'latest': 최근 등록, 'review': 리뷰, 'price_high': 가격 높은, 'price_low': 가격 낮은, 'rating': 평점, 'sales': 판매

  @override
  void onInit() {
    super.onInit();

    if (Get.arguments != null) {
      title.value = Get.arguments['title'];
      type.value = Get.arguments['type'];
      getMoreProduct();
    }
  }

  Future<void> getMoreProduct() async {
    var result;


    if(type.value == 'recommend'){
      result = await _shopService.getMoreRecommend(sort: sort.value,page: page.value);
    }else if(type.value == 'time'){
      result = await _shopService.getMoreTime(sort: sort.value,page: page.value);
    }else{
      result = await _shopService.getMoreMd(sort: sort.value,page: page.value);
    }

    result.fold(
      (failure) => print(failure.message),
      (response){
        if(page.value == 1) {
          productList.value = List<More>.from(response.items!.toList(growable: false));
        }else{
          if (response.items!.isEmpty) {
            page.value--;
            return;
          }
          productList.addAll(response.items!);
        }

        totalCnt.value = response.total_cnt;
      },
    );
  }
}