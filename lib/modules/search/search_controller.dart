import 'package:boostapp/data/service/storage_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


class ProductSearchController extends GetxController {
  final StorageService _storageService = Get.find();

  TextEditingController searchController = TextEditingController();

  RxString searchStatus = ''.obs; //'': 기본, 'search': 검색, 'result' : 검색결과 상품
  RxList searchTextList = [].obs;
  RxString filter = ''.obs; //'': 필터 적용전, 'boost': 부스트 배송, 'seller': 판매자 배송
  RxString sort = ''.obs; //'': 필터 적용전, 'recent': 최근 등록, 'review': 리뷰, 'priceUp': 가격 높은, 'priceDown': 가격 낮은, 'rate': 평점, 'sell': 판매


  @override
  void onInit() async {
    super.onInit();

    List tmpList = _storageService.getSearchText()!;

    searchTextList.value = List.from(tmpList.reversed);
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
