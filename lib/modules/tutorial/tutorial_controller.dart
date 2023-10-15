import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TutorialController extends GetxController {
  late PageController pageController;
  RxInt currentIndex = 0.obs;

  @override
  void onInit() async {
    pageController = PageController(initialPage: 0);
    pageController.addListener(() {
      currentIndex.value = pageController.page!.toInt();
    });
  }
}