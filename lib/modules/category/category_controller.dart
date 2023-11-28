import 'package:boostapp/data/models/keyword_result.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController{
  RxString category = ''.obs;
  RxString caId = ''.obs;

  RxList<KeywordResult> keywordResultList = RxList<KeywordResult>([]);
  RxString filter = ''.obs; //'': 필터 적용전, 'boost': 부스트 배송, 'seller': 판매자 배송
  RxString sort = ''.obs; //'': 필터 적용전, 'latest': 최근 등록, 'review': 리뷰, 'price_high': 가격 높은, 'price_low': 가격 낮은, 'rating': 평점, 'sales': 판매

  @override
  void onInit() {
    super.onInit();

    if (Get.arguments != null) {
      category.value = Get.arguments['category'];
      caId.value = Get.arguments['caId'];
    }

    getCategoryProduct();
  }

  void getCategoryProduct(){
    keywordResultList.add(KeywordResult(it_id: '1',it_name: '제주 삼다수',it_cust_price: 1000,it_price: 1000, it_img1: '',it_time: '',it_use_cnt: 100,it_sum_qty: 100));
    keywordResultList.add(KeywordResult(it_id: '1',it_name: '제주 삼다수',it_cust_price: 1000,it_price: 1000, it_img1: '',it_time: '',it_use_cnt: 100,it_sum_qty: 100));
    keywordResultList.add(KeywordResult(it_id: '1',it_name: '제주 삼다수',it_cust_price: 1000,it_price: 1000, it_img1: '',it_time: '',it_use_cnt: 100,it_sum_qty: 100));
    keywordResultList.add(KeywordResult(it_id: '1',it_name: '제주 삼다수',it_cust_price: 1000,it_price: 1000, it_img1: '',it_time: '',it_use_cnt: 100,it_sum_qty: 100));
    keywordResultList.add(KeywordResult(it_id: '1',it_name: '제주 삼다수',it_cust_price: 1000,it_price: 1000, it_img1: '',it_time: '',it_use_cnt: 100,it_sum_qty: 100));
    keywordResultList.add(KeywordResult(it_id: '1',it_name: '제주 삼다수',it_cust_price: 1000,it_price: 1000, it_img1: '',it_time: '',it_use_cnt: 100,it_sum_qty: 100));
    keywordResultList.add(KeywordResult(it_id: '1',it_name: '제주 삼다수',it_cust_price: 1000,it_price: 1000, it_img1: '',it_time: '',it_use_cnt: 100,it_sum_qty: 100));
    keywordResultList.add(KeywordResult(it_id: '1',it_name: '제주 삼다수',it_cust_price: 1000,it_price: 1000, it_img1: '',it_time: '',it_use_cnt: 100,it_sum_qty: 100));
    keywordResultList.add(KeywordResult(it_id: '1',it_name: '제주 삼다수',it_cust_price: 1000,it_price: 1000, it_img1: '',it_time: '',it_use_cnt: 100,it_sum_qty: 100));
    keywordResultList.add(KeywordResult(it_id: '1',it_name: '제주 삼다수',it_cust_price: 1000,it_price: 1000, it_img1: '',it_time: '',it_use_cnt: 100,it_sum_qty: 100));
  }
}