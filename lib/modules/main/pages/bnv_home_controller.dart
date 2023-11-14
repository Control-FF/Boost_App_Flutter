import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with StateMixin,GetSingleTickerProviderStateMixin {

  late TabController tabController;
  RxList<String> tabs = RxList<String>([]);
  RxString tag = RxString("인기목록");
  RxInt tagIndex = 0.obs;

  late PageController pageController1;
  late PageController pageController2;
  RxInt currentIndex1 = 0.obs;
  RxInt currentIndex2 = 0.obs;
  RxBool isCategoryAll = false.obs;


  @override
  void onInit() {
    super.onInit();

    pageController1 = PageController(initialPage: 0);
    pageController2 = PageController(initialPage: 0);

    pageController1.addListener(() {
      currentIndex1.value = pageController1.page!.toInt();
    });

    pageController2.addListener(() {
      currentIndex2.value = pageController2.page!.toInt();
    });

    tabs.clear();
    tabs.add('인기목록');
    tabs.add('타임세일');
    tabs.add('소상공인특가');
    tabs.add('부산명물');

    tabController = TabController(
      length: tabs.length,
      initialIndex: tagIndex.value,
      vsync: this,
    );
    tabController.addListener(() {
      tagIndex.value = tabController.index;
    });

    change(null, status: RxStatus.success());
  }

  void getCategoryList(){

  }

  void clear(){
    isCategoryAll.value = false;
    tag.value = "인기목록";
    currentIndex1.value = 0;
    currentIndex2.value = 0;
    tagIndex.value = 0;
    tabController.animateTo(0);
  }
}