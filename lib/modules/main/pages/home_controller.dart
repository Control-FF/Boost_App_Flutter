import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with StateMixin {

  RxList<String> tabs = RxList<String>([]);
  RxString tag = RxString("인기목록");
  RxInt tagIndex = 0.obs;

  late PageController pageController1;
  RxInt currentIndex1 = 0.obs;


  @override
  void onInit() {
    super.onInit();

    pageController1 = PageController(initialPage: 0);
    pageController1.addListener(() {
      currentIndex1.value = pageController1.page!.toInt();
    });

    tabs.clear();
    tabs.add('인기목록');
    tabs.add('타임세일');
    tabs.add('소상공인특가');
    tabs.add('정기구독');
    tabs.add('부산명물');

    change(null, status: RxStatus.success());
  }

  void getCategoryList(){

  }
}