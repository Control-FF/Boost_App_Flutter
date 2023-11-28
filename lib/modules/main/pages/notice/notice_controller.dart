import 'package:boostapp/data/models/notice.dart';
import 'package:boostapp/data/service/shop_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NoticeController extends GetxController{
  final ShopService _shopService = Get.find();

  TextEditingController searchController = TextEditingController();
  RxList<Notice> items = (List<Notice>.of([])).obs;

  @override
  void onInit() {
    super.onInit();

    getNoticeList();
  }

  Future<void> getNoticeList() async {
    String searchText = searchController.text;
    final result = await _shopService.getNotice(isHtml: 'false',keyword: searchText);
    result.fold(
      (failure) => print(failure.message),
      (response) => items.value = List<Notice>.from(response.items!.toList(growable: false)),
    );
  }

  void updateExpanded(index,isExpand){
    items[index] = items[index].copyWith(isExpand: isExpand);
  }
}