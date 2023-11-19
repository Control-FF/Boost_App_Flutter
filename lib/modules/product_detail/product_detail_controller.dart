import 'package:boostapp/core/constants/constants.dart';
import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/data/models/inquiry.dart';
import 'package:boostapp/data/models/product_detail.dart';
import 'package:boostapp/data/service/shop_service.dart';
import 'package:boostapp/modules/product_detail/product_detail_tab_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProductDetailController extends GetxController with GetSingleTickerProviderStateMixin{
  final ShopService _shopService = Get.find();

  late PageController pageController;
  RxInt currentIndex = 0.obs;
  RxInt tabIndex = 0.obs;

  late TabController tabController;
  RxList<String> tabs = RxList<String>([]);
  RxInt tagIndex = 0.obs;

  RxString productId = ''.obs;
  Rx<ProductDetailResponse?> productData = Rx<ProductDetailResponse?>(null);
  RxList<Widget> productImgList = <Widget>[].obs;
  RxInt qty = 1.obs;

  RxList<Inquiry> inquiryList = <Inquiry>[].obs;
  RxInt inquiryPage = 1.obs;
  RxInt inquiryTotalPage = 1.obs;
  RxBool inquiryIsLastPage = false.obs;

  TextEditingController inquirySubjectController = TextEditingController();
  TextEditingController inquiryContentsController = TextEditingController();
  FocusNode inquirySubjectFocusNode = FocusNode();
  FocusNode inquiryContentsFocusNode = FocusNode();
  RxString inquiryType = '상품'.obs;
  RxBool inquiryIsSecret = false.obs;

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

    tabs.clear();
    tabs.add('상품 정보');
    tabs.add('구매 정보');
    tabs.add('후기(0)');
    tabs.add('Q&A(1,000)');

    tabController = TabController(
      length: tabs.length,
      initialIndex: tagIndex.value,
      vsync: this,
    );
    tabController.addListener(() {
      tagIndex.value = tabController.index;
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

  Future<void> getInquiry() async {
    final result = await _shopService.getInquiry(page: inquiryPage.value.toString(),itId: productId.value);
    result.fold(
      (failure) => print(failure.message),
      (response){
        inquiryList.value = response.items!;
        inquiryTotalPage.value = response.totalPage;
        inquiryIsLastPage.value = response.isLastPage == 'true';
      },
    );
  }

  Future<void> writeInquiry(context) async {
    final result = await _shopService.writeInquiry(
      itId: productId.value,
      iqType: inquiryType.value,
      question: inquiryContentsController.text,
      isSecret: inquiryIsSecret.value.toString()
    );
    result.fold(
      (failure){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          elevation: 6.0,
          behavior: SnackBarBehavior.floating,
          content: Text(
            failure.message,
            style: TextStyle(color: Colors.white),
          ),
        ));
      },
      (response){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          elevation: 6.0,
          behavior: SnackBarBehavior.floating,
          content: Text(
            '문의가 등록되었습니다.',
            style: TextStyle(color: Colors.white),
          ),
        ));
        Get.back(result: 'OK');
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

  void showInquiryTypePopup(context){
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            insetPadding: EdgeInsets.symmetric(horizontal: 55.w),
            contentPadding: EdgeInsets.zero,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25.r))
            ),
            content: Container(
              height: 244.h,
              child: Center(
                child: Obx(() => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){
                        inquiryType.value = '상품';
                        Get.back();
                      },
                      child: Container(
                        height: 30,
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        margin: EdgeInsets.symmetric(horizontal: 32.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            border: Border.all(
                                color: inquiryType.value == '상품' ? ColorConstant.accent :ColorConstant.gray17,
                                width: 1
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '상품',
                              style: TextStyle(
                                color: ColorConstant.black,
                                fontSize: 16.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(
                              Icons.check_circle_outline_sharp,
                              color: inquiryType.value == '상품' ? ColorConstant.accent : ColorConstant.gray18,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    GestureDetector(
                      onTap: (){
                        inquiryType.value = '배송';

                        Get.back();
                      },
                      child: Container(
                        height: 30,
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        margin: EdgeInsets.symmetric(horizontal: 32.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            border: Border.all(
                                color: inquiryType.value == '배송' ? ColorConstant.accent :ColorConstant.gray17,
                                width: 1
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '배송',
                              style: TextStyle(
                                color: ColorConstant.black,
                                fontSize: 16.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(
                              Icons.check_circle_outline_sharp,
                              color: inquiryType.value == '배송' ? ColorConstant.accent : ColorConstant.gray18,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    GestureDetector(
                      onTap: (){
                        inquiryType.value = '교환,반품';

                        Get.back();
                      },
                      child: Container(
                        height: 30,
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        margin: EdgeInsets.symmetric(horizontal: 32.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            border: Border.all(
                                color: inquiryType.value == '교환,반품' ? ColorConstant.accent :ColorConstant.gray17,
                                width: 1
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '교환,반품',
                              style: TextStyle(
                                color: ColorConstant.black,
                                fontSize: 16.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(
                              Icons.check_circle_outline_sharp,
                              color: inquiryType.value == '교환,반품' ? ColorConstant.accent : ColorConstant.gray18,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    GestureDetector(
                      onTap: (){
                        inquiryType.value = '주문, 결제';

                        Get.back();
                      },
                      child: Container(
                        height: 30,
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        margin: EdgeInsets.symmetric(horizontal: 32.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            border: Border.all(
                                color: inquiryType.value == '주문, 결제' ? ColorConstant.accent :ColorConstant.gray17,
                                width: 1
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '주문, 결제',
                              style: TextStyle(
                                color: ColorConstant.black,
                                fontSize: 16.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(
                              Icons.check_circle_outline_sharp,
                              color: inquiryType.value == '주문, 결제' ? ColorConstant.accent : ColorConstant.gray18,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    GestureDetector(
                      onTap: (){
                        inquiryType.value = '기타';

                        Get.back();
                      },
                      child: Container(
                        height: 30,
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        margin: EdgeInsets.symmetric(horizontal: 32.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            border: Border.all(
                                color: inquiryType.value == '기타' ? ColorConstant.accent :ColorConstant.gray17,
                                width: 1
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '기타',
                              style: TextStyle(
                                color: ColorConstant.black,
                                fontSize: 16.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(
                              Icons.check_circle_outline_sharp,
                              color: inquiryType.value == '기타' ? ColorConstant.accent : ColorConstant.gray18,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
              ),
            ),
          );
        });
  }
}