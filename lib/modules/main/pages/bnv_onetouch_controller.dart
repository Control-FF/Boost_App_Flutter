import 'package:boostapp/data/models/more.dart';
import 'package:boostapp/data/models/onetouch.dart';
import 'package:boostapp/data/service/shop_service.dart';
import 'package:get/get.dart';

class OneTouchController extends GetxController{
  final ShopService _shopService = Get.find();

  RxInt page = 1.obs;
  RxInt totalCnt = 0.obs;

  RxList<OneTouch> productList = RxList<OneTouch>([]);
  RxString filter = ''.obs; //'': 필터 적용전, 'boost': 부스트 배송, 'seller': 판매자 배송
  RxString sort = ''.obs; //'': 필터 적용전, 'latest': 최근 등록, 'review': 리뷰, 'price_high': 가격 높은, 'price_low': 가격 낮은, 'rating': 평점, 'sales': 판매

  @override
  void onInit() {
    super.onInit();

    getOneTouch();
  }

  Future<void> getOneTouch() async {


    final result = await _shopService.getOneTouch(sort: sort.value,page: page.value);

    result.fold(
      (failure) => print(failure.message),
      (response){
        if(page.value == 1) {
          productList.value = List<OneTouch>.from(response.items!.toList(growable: false));
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