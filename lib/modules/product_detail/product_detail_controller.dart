import 'package:boostapp/core/constants/constants.dart';
import 'package:boostapp/data/models/product_detail.dart';
import 'package:boostapp/data/service/shop_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailController extends GetxController{
  final ShopService _shopService = Get.find();

  late PageController pageController;
  RxInt currentIndex = 0.obs;

  RxString productId = ''.obs;
  Rx<ProductDetailResponse?> productData = Rx<ProductDetailResponse?>(null);
  RxList<Widget> productImgList = <Widget>[].obs;
  RxInt qty = 1.obs;

  @override
  void onInit() {
    super.onInit();

    if (Get.arguments != null) {
      productId.value = Get.arguments['productId'];

      getProductDetail();
    }

    pageController = PageController(initialPage: 0);
    pageController.addListener(() {
      currentIndex.value = pageController.page!.toInt();
    });
  }

  Future<void> getProductDetail() async {
    final result = await _shopService.getProductDetail(itId: productId.value);
    result.fold(
          (failure) => print(failure.message),
          (response){
            productData.value = response;
          },
    );
  }

  List<Widget> getProductImage(){
    productImgList.clear();

    if(productData.value != null){
      if(productData.value?.item != null){
        if(productData.value?.item?.it_img1 != ''){
          productImgList.add(Image.network(Constants.fileUrl+productData.value!.item!.it_img1!,fit: BoxFit.cover,));
        }

        if(productData.value?.item?.it_img2 != ''){
          productImgList.add(Image.network(Constants.fileUrl+productData.value!.item!.it_img2!,fit: BoxFit.cover,));
        }

        if(productData.value?.item?.it_img3 != ''){
          productImgList.add(Image.network(Constants.fileUrl+productData.value!.item!.it_img3!,fit: BoxFit.cover,));
        }

        if(productData.value?.item?.it_img4 != ''){
          productImgList.add(Image.network(Constants.fileUrl+productData.value!.item!.it_img4!,fit: BoxFit.cover,));
        }

        if(productData.value?.item?.it_img5 != ''){
          productImgList.add(Image.network(Constants.fileUrl+productData.value!.item!.it_img5!,fit: BoxFit.cover,));
        }

        if(productData.value?.item?.it_img6 != ''){
          productImgList.add(Image.network(Constants.fileUrl+productData.value!.item!.it_img6!,fit: BoxFit.cover,));
        }

        if(productData.value?.item?.it_img7 != ''){
          productImgList.add(Image.network(Constants.fileUrl+productData.value!.item!.it_img7!,fit: BoxFit.cover,));
        }

        if(productData.value?.item?.it_img8 != ''){
          productImgList.add(Image.network(Constants.fileUrl+productData.value!.item!.it_img8!,fit: BoxFit.cover,));
        }

        if(productData.value?.item?.it_img9 != ''){
          productImgList.add(Image.network(Constants.fileUrl+productData.value!.item!.it_img9!,fit: BoxFit.cover,));
        }

        if(productData.value?.item?.it_img10 != ''){
          productImgList.add(Image.network(Constants.fileUrl+productData.value!.item!.it_img10!,fit: BoxFit.cover,));
        }
      }
    }

    return productImgList;
  }

  String nullCheck(String? data){
    if(productData.value != null && productData.value!.item_info != null && productData.value!.option != null){
      return data!;
    }else{
      return '';
    }
  }
}