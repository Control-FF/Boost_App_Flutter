import 'package:boostapp/data/models/keyword_auto.dart';
import 'package:boostapp/data/models/keyword_rank.dart';
import 'package:boostapp/data/models/keyword_result.dart';
import 'package:boostapp/data/service/shop_service.dart';
import 'package:boostapp/data/service/storage_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


class ProductSearchController extends GetxController{
  final StorageService _storageService = Get.find();
  final ShopService _shopService = Get.find();

  TextEditingController searchController = TextEditingController();

  RxList<KeywordRank> keywordRankList = RxList<KeywordRank>([]);
  RxList<String> keywordAutoList = RxList<String>([]);
  RxList<KeywordResult> keywordResultList = RxList<KeywordResult>([]);
  RxInt keywordResultPage = 1.obs;
  RxInt keywordResultTotal = 0.obs;

  RxString searchStatus = ''.obs; //'': 기본, 'search': 검색, 'result' : 검색결과 상품
  RxList searchTextList = [].obs;
  RxString filter = ''.obs; //'': 필터 적용전, 'boost': 부스트 배송, 'seller': 판매자 배송
  RxString sort = ''.obs; //'': 필터 적용전, 'latest': 최근 등록, 'review': 리뷰, 'price_high': 가격 높은, 'price_low': 가격 낮은, 'rating': 평점, 'sales': 판매


  @override
  void onInit() async {
    super.onInit();

    List tmpList = _storageService.getSearchText()!;

    searchTextList.value = List.from(tmpList.reversed);

    getKeywordRankList();
  }

  Future<void> getKeywordRankList() async {
    final result = await _shopService.getKeywordRankList();
    result.fold(
      (failure) => print(failure.message),
      (response) => keywordRankList.value = response.items!,
    );
  }

  Future<void> getKeywordAutoList() async {
    String keyword = searchController.text;
    final result = await _shopService.getKeywordAutoList(keyword: keyword);
    result.fold(
      (failure) => print(failure.message),
      (response) => keywordAutoList.value = response.items!,
    );
  }

  Future<void> getKeywordResultList() async {
    String keyword = searchController.text;
    final result = await _shopService.getKeywordResultList(keyword: keyword,sort: sort.value,page: keywordResultPage.value);
    result.fold(
          (failure) => print(failure.message),
          (response){
            if(keywordResultPage.value == 1){
              keywordResultList.value = List<KeywordResult>.from(response.items!.toList(growable: false));
            }else{
              if(response.items!.isEmpty){
                keywordResultPage.value--;
                return;
              }
              keywordResultList.addAll(response.items!);
            }

            keywordResultTotal.value = response.total_cnt;
          },
    );
  }

  void saveSearchText(String text){
    searchTextList.remove(text);

    if(text != ''){
      searchTextList.insert(0,text);

      _storageService.saveSearchText(searchTextList);
    }
  }

  void clearSearchText(){
    searchTextList.clear();
    _storageService.clearSearchText();
  }

  onWillPop(BuildContext context) {
    if(searchStatus.value == 'search'){
      searchStatus.value = '';
      return false;
    }else if(searchStatus.value == 'result'){
      searchStatus.value = 'search';
      return false;
    }else{
      return true;
    }
  }
}
