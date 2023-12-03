import 'package:boostapp/data/models/cs.dart';
import 'package:boostapp/data/models/faq.dart';
import 'package:boostapp/data/models/notice.dart';
import 'package:boostapp/data/service/shop_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class InquiryController extends GetxController{
  final ShopService _shopService = Get.find();

  TextEditingController searchController = TextEditingController();
  RxList<CS> inquiryList = (List<CS>.of([])).obs;
  RxList<FAQ> faqList = (List<FAQ>.of([])).obs;

  @override
  void onInit() {
    super.onInit();

    getInquiryList();
    getFAQList();
  }

  Future<void> getInquiryList() async {
    String searchText = searchController.text;
    final result = await _shopService.getCS(keyword: searchText);
    result.fold(
      (failure) => print(failure.message),
      (response) => inquiryList.value = List<CS>.from(response.items!.toList(growable: false)),
    );
  }

  Future<void> getFAQList() async {
    final result = await _shopService.getFAQ(isHtml: 'false');
    result.fold(
      (failure) => print(failure.message),
      (response) => faqList.value = List<FAQ>.from(response.items!.toList(growable: false)),
    );
  }
}