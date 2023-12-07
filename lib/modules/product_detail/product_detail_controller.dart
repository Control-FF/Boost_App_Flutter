import 'package:boostapp/core/constants/constants.dart';
import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/data/models/buyInfo.dart';
import 'package:boostapp/data/models/inquiry.dart';
import 'package:boostapp/data/models/product_detail.dart';
import 'package:boostapp/data/models/product_review.dart';
import 'package:boostapp/data/service/shop_service.dart';
import 'package:boostapp/data/service/user_service.dart';
import 'package:boostapp/modules/cart/cart_controller.dart';
import 'package:boostapp/modules/main/pages/bnv_onetouch_controller.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProductDetailController extends GetxController with GetSingleTickerProviderStateMixin{
  final ShopService _shopService = Get.find();

  CartController cartController = Get.put(CartController());
  OneTouchController oneTouchController = Get.put(OneTouchController());

  late PageController pageController;
  RxInt currentIndex = 0.obs;
  RxInt tabIndex = 0.obs;

  late TabController tabController;
  RxList<String> tabs = RxList<String>([]);
  RxInt tagIndex = 0.obs;

  RxString productId = ''.obs;
  Rx<ProductDetailResponse?> productData = Rx<ProductDetailResponse?>(null);
  RxList<Option> optionList = (List<Option>.of([])).obs;
  RxList<Option> optionSelectList = (List<Option>.of([])).obs;
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

  RxList<ProductReview> reviewList = <ProductReview>[].obs;
  RxInt reviewPage = 1.obs;
  RxInt reviewTotalPage = 1.obs;
  RxBool reviewIsLastPage = false.obs;

  RxList<BuyInfo> buyInfoList = <BuyInfo>[].obs;

  @override
  void onInit() {
    super.onInit();

    if (Get.arguments != null) {
      productId.value = Get.arguments['productId'];

      getProductDetail();

      tabs.clear();
      tabs.add('상품 정보');
      tabs.add('구매 정보');
      tabs.add('후기(${Constants.numberAddComma(reviewList.length)})');
      tabs.add('Q&A(${Constants.numberAddComma(inquiryList.length)})');

      pageController = PageController(initialPage: 0);
      pageController.addListener(() {
        currentIndex.value = pageController.page!.toInt();
      });

      tabController = TabController(
        length: tabs.length,
        initialIndex: tagIndex.value,
        vsync: this,
      );
      tabController.addListener(() {
        tagIndex.value = tabController.index;
      });
    }

    getBuyInfo();
  }

  Future<void> getProductDetail() async {
    final result = await _shopService.getProductDetail(itId: productId.value);
    result.fold(
      (failure) => print(failure.message),
      (response){
        productData.value = response;

        optionList.value = List<Option>.from(response.option!.toList(growable: false));

        for(int i=0; i<optionList.length; i++){
          if(i == 0){
            optionList[i] = optionList[i].copyWith(isCheck: true);
          }
        }
        
        getInquiry();
        getReview();
      },
    );
  }

  void getBuyInfo(){
    buyInfoList.clear();
    buyInfoList.add(BuyInfo(title: '결제 안내',contents: 'assets/images/buy_info1.png', isExpand: false));
    buyInfoList.add(BuyInfo(title: '주문단계 안내',contents: 'assets/images/buy_info2.png', isExpand: false));
    buyInfoList.add(BuyInfo(title: '취소 안내',contents: 'assets/images/buy_info3.png', isExpand: false));
    buyInfoList.add(BuyInfo(title: '배송 안내',contents: 'assets/images/buy_info4.png', isExpand: false));
    buyInfoList.add(BuyInfo(title: '교환 및 반품 안내',contents: 'assets/images/buy_info5.png', isExpand: false));
  }

  Future<void> getReview() async {
    final result = await _shopService.getProductReview(page: reviewPage.value.toString(),itId: productId.value);
    result.fold(
      (failure) => print(failure.message),
      (response){
        if(reviewPage.value == 1){
          reviewList.value = List<ProductReview>.from(response.items!.toList(growable: false));
        }else{
          if(response.items!.isEmpty){
            reviewPage.value--;
            return;
          }
          reviewList.addAll(response.items!);
        }

        reviewTotalPage.value = response.totalPage;
        reviewIsLastPage.value = response.isLastPage == 'true';
      },
    );
  }

  Future<void> getInquiry() async {
    final result = await _shopService.getInquiry(page: inquiryPage.value.toString(),itId: productId.value);
    result.fold(
      (failure) => print(failure.message),
      (response){
        if(inquiryPage.value == 1){
          inquiryList.value = List<Inquiry>.from(response.items!.toList(growable: false));
        }else{
          if(response.items!.isEmpty){
            inquiryPage.value--;
            return;
          }
          inquiryList.addAll(response.items!);
        }

        inquiryList.value = response.items!;
        inquiryTotalPage.value = response.totalPage;
        inquiryIsLastPage.value = response.isLastPage == 'true';
      },
    );
  }

  Future<void> writeInquiry(context) async {
    final result = await _shopService.writeProductInquiry(
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
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
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
          productImgList.add(
            AspectRatio(
              aspectRatio: 1/1,
              child: Image.network(Constants.fileUrl+productData.value!.item!.it_img1!,fit: BoxFit.cover,),
            )
          );
        }

        if(productData.value?.item?.it_img2 != ''){
          productImgList.add(
              AspectRatio(
                aspectRatio: 1/1,
                child: Image.network(Constants.fileUrl+productData.value!.item!.it_img2!,fit: BoxFit.cover,),
              )
          );
        }

        if(productData.value?.item?.it_img3 != ''){
          productImgList.add(
              AspectRatio(
                aspectRatio: 1/1,
                child: Image.network(Constants.fileUrl+productData.value!.item!.it_img3!,fit: BoxFit.cover,),
              )
          );
        }

        if(productData.value?.item?.it_img4 != ''){
          productImgList.add(
              AspectRatio(
                aspectRatio: 1/1,
                child: Image.network(Constants.fileUrl+productData.value!.item!.it_img4!,fit: BoxFit.cover,),
              )
          );
        }

        if(productData.value?.item?.it_img5 != ''){
          productImgList.add(
              AspectRatio(
                aspectRatio: 1/1,
                child: Image.network(Constants.fileUrl+productData.value!.item!.it_img5!,fit: BoxFit.cover,),
              )
          );
        }

        if(productData.value?.item?.it_img6 != ''){
          productImgList.add(
              AspectRatio(
                aspectRatio: 1/1,
                child: Image.network(Constants.fileUrl+productData.value!.item!.it_img6!,fit: BoxFit.cover,),
              )
          );
        }

        if(productData.value?.item?.it_img7 != ''){
          productImgList.add(
              AspectRatio(
                aspectRatio: 1/1,
                child: Image.network(Constants.fileUrl+productData.value!.item!.it_img7!,fit: BoxFit.cover,),
              )
          );
        }

        if(productData.value?.item?.it_img8 != ''){
          productImgList.add(
              AspectRatio(
                aspectRatio: 1/1,
                child: Image.network(Constants.fileUrl+productData.value!.item!.it_img8!,fit: BoxFit.cover,),
              )
          );
        }

        if(productData.value?.item?.it_img9 != ''){
          productImgList.add(AspectRatio(
            aspectRatio: 1/1,
            child: Image.network(Constants.fileUrl+productData.value!.item!.it_img9!,fit: BoxFit.cover,),
          ));
        }

        if(productData.value?.item?.it_img10 != ''){
          productImgList.add(AspectRatio(
            aspectRatio: 1/1,
            child: Image.network(Constants.fileUrl+productData.value!.item!.it_img10!,fit: BoxFit.cover,),
          ));
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

  int getCheckCnt(){
    int checkCnt = 0;

    for(int i=0; i<optionList.length; i++){
      if(optionList[i].isCheck ?? false){
        checkCnt++;
      }
    }

    return checkCnt;
  }

  void getOptionSelectList(){
    optionSelectList.clear();

    for(int i=0; i<optionList.length; i++){
      if(optionList[i].isCheck ?? false){
        optionSelectList.add(optionList[i]);
      }
    }
  }

  int getOptionTotalPrice(){
    int totalPrice = 0;

    for(int i=0; i<optionSelectList.length; i++){
      if(optionSelectList[i].isCheck ?? false){
        totalPrice += optionSelectList[i].io_qty * (optionSelectList[i].io_price + productData.value!.item!.it_price);
      }
    }

    return totalPrice;
  }

  int getOptionTotalCnt(){
    int totalCnt = 0;

    for(int i=0; i<optionSelectList.length; i++){
      if(optionSelectList[i].isCheck ?? false){
        totalCnt += optionSelectList[i].io_qty;
      }
    }

    return totalCnt;
  }

  List<Widget> getReviewRating(double rating){
    List<Widget> ratingList = [];
    for(int i=1; i<=5; i++){
      if(i <= rating){
        ratingList.add(
          Image.asset('assets/images/ic_rating_fill.png',width: 14.w,height: 14.h,)
        );
      }else{
        ratingList.add(
            Image.asset('assets/images/ic_rating_empty.png',width: 14.w,height: 14.h,)
        );
      }

      if(i != 5){
        ratingList.add(
          SizedBox(width: 5,)
        );
      }
    }

    return ratingList;
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

  void showOptionBottomSheet(context,type){
    Get.bottomSheet(
      Obx(() => Wrap(
        children: [
          ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.fromLTRB(30.w, 20.h, 30.w, 39.h),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index){
              return Container(
                width: Get.width,
                child: Column(
                  children: [
                    SizedBox(height: 24.h,),
                    Row(
                      children: [
                        Container(
                          width: 20.w,
                          height: 20.h,
                          child: Checkbox(
                            side: BorderSide(
                                width: 1.w,
                                color: ColorConstant.gray7
                            ),
                            value: optionSelectList[index].isCheck,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.r),
                            ),
                            checkColor: ColorConstant.white,
                            activeColor: ColorConstant.accent,
                            onChanged: (bool? checkValue){
                              int checkCnt = optionSelectList.where((c) => c.isCheck ?? false).length;

                              if(!checkValue! && checkCnt == 1){
                                return;
                              }

                              optionSelectList[index] = optionSelectList[index].copyWith(isCheck: checkValue);
                            },
                          ),
                        ),
                        SizedBox(width: 10.w,),
                        Text(
                          optionSelectList[index].io_id,
                          style: TextStyle(
                            color: ColorConstant.black,
                            fontSize: 16.sp,
                            fontFamily: 'Noto Sans KR',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 22.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: (){
                                int cnt = optionSelectList[index].io_qty;

                                if(cnt > 1){
                                  optionSelectList[index] = optionSelectList[index].copyWith(io_qty: --cnt);
                                }
                              },
                              child: Container(
                                width: 20.w,
                                height: 20.h,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1,color: ColorConstant.gray2)
                                ),
                                child: Icon(Icons.remove,color: ColorConstant.gray19,size: 10,),
                              ),
                            ),
                            SizedBox(width: 20,),
                            Text(
                              optionSelectList[index].io_qty.toString(),
                              style: TextStyle(
                                color: ColorConstant.black,
                                fontSize: 14.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 20,),
                            GestureDetector(
                              onTap: (){
                                int cnt = optionSelectList[index].io_qty;

                                if(cnt < optionSelectList[index].io_stock_qty){
                                  optionSelectList[index] = optionSelectList[index].copyWith(io_qty: ++cnt);
                                }
                              },
                              child: Container(
                                width: 20.w,
                                height: 20.h,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1,color: ColorConstant.gray2)
                                ),
                                child: Icon(Icons.add,color: ColorConstant.gray19,size: 10,),
                              ),
                            )
                          ],
                        ),
                        Text(
                          '${Constants.numberAddComma((optionSelectList[index].io_price + productData.value!.item!.it_price) * optionSelectList[index].io_qty)}원',
                          style: TextStyle(
                            color: ColorConstant.black,
                            fontSize: 14.sp,
                            fontFamily: 'Noto Sans KR',
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 22.h,),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index){
              return Divider(
                height: 1.h,
                thickness: 1,
                color: ColorConstant.black,
              );
            },
            itemCount: optionSelectList.length,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Divider(
              height: 1.h,
              thickness: 1,
              color: ColorConstant.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30.w, 8.h, 30.w, 11.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      '총 수량  ',
                      style: TextStyle(
                        color: ColorConstant.black,
                        fontSize: 16.sp,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      getOptionTotalCnt().toString(),
                      style: TextStyle(
                        color: ColorConstant.primary,
                        fontSize: 16.sp,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '개',
                      style: TextStyle(
                        color: ColorConstant.black,
                        fontSize: 16.sp,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                Text(
                  '${Constants.numberAddComma(getOptionTotalPrice())}원',
                  style: TextStyle(
                    color: ColorConstant.black,
                    fontSize: 14.sp,
                    fontFamily: 'Noto Sans KR',
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Divider(
              height: 1.h,
              thickness: 1,
              color: ColorConstant.black,
            ),
          ),
          SizedBox(height: 39.h,),

          Row(
            children: [
              Expanded(
                child: Container(
                  height: 55.h,
                  child: ElevatedButton(
                    onPressed: (){
                      //복수옵션 담기
                      List<dynamic> ctItems = [];

                      for(int i=0; i<optionSelectList.length; i++){
                        if(optionSelectList[i].isCheck ?? false){
                          ctItems.add({
                            'io_no' : optionSelectList[i].io_no,
                            'ct_qty' : optionSelectList[i].io_qty
                          });
                        }
                      }

                      cartController.addCart(context,productData.value!.item!.it_id,ctItems);
                      Get.back();
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorConstant.primary,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero
                        )
                    ),
                    child: Text(
                      '장바구니',
                      style: TextStyle(
                        color: ColorConstant.white,
                        fontSize: 14.sp,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 55.h,
                  child: ElevatedButton(
                    onPressed: (){
                      //복수옵션 바로구매
                      List<dynamic> ctItems = [];

                      for(int i=0; i<optionSelectList.length; i++){
                        if(optionSelectList[i].isCheck ?? false){
                          ctItems.add({
                            'io_no' : optionSelectList[i].io_no,
                            'ct_qty' : optionSelectList[i].io_qty
                          });
                        }
                      }

                      cartController.directBuy(context,productData.value!.item!.it_id,ctItems);

                      Get.back();
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorConstant.accent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero
                        )
                    ),
                    child: Text(
                      '바로 구매',
                      style: TextStyle(
                        color: ColorConstant.white,
                        fontSize: 14.sp,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      )),
      backgroundColor: ColorConstant.white,
      enterBottomSheetDuration: Duration(seconds: 0),
      exitBottomSheetDuration: Duration(seconds: 0),
      isScrollControlled: true,
    );
  }

  void showEmptyOptionBottomSheet(context,type){
    Get.bottomSheet(
      Obx(() => Wrap(
        children: [
          Container(
            width: Get.width,
            padding: EdgeInsets.fromLTRB(30.w, 20.h, 30.w, 39.h),
            child: Column(
              children: [
                SizedBox(height: 24.h,),
                Row(
                  children: [
                    Text(
                      productData.value!.item!.it_name,
                      style: TextStyle(
                        color: ColorConstant.black,
                        fontSize: 16.sp,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 22.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: (){
                            if(productData.value!.item!.it_min_qty != 0){
                              if(productData.value!.item!.it_min_qty <= qty.value){
                                return;
                              }
                            }
                            if(qty.value != 1){
                              qty.value--;
                            }
                          },
                          child: Container(
                            width: 20.w,
                            height: 20.h,
                            decoration: BoxDecoration(
                                border: Border.all(width: 1,color: ColorConstant.gray2)
                            ),
                            child: Icon(Icons.remove,color: ColorConstant.gray19,size: 10,),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Text(
                          qty.value.toString(),
                          style: TextStyle(
                            color: ColorConstant.black,
                            fontSize: 14.sp,
                            fontFamily: 'Noto Sans KR',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 20,),
                        GestureDetector(
                          onTap: (){
                            if(productData.value!.item!.it_max_qty != 0) {
                              if (productData.value!.item!.it_max_qty >=
                                  qty.value) {
                                return;
                              }
                            }
                            qty.value++;
                          },
                          child: Container(
                            width: 20.w,
                            height: 20.h,
                            decoration: BoxDecoration(
                                border: Border.all(width: 1,color: ColorConstant.gray2)
                            ),
                            child: Icon(Icons.add,color: ColorConstant.gray19,size: 10,),
                          ),
                        )
                      ],
                    ),
                    Text(
                      '${Constants.numberAddComma(productData.value!.item!.it_price * qty.value)}원',
                      style: TextStyle(
                        color: ColorConstant.black,
                        fontSize: 14.sp,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 22.h,),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Divider(
              height: 1.h,
              thickness: 1,
              color: ColorConstant.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30.w, 8.h, 30.w, 11.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      '총 수량  ',
                      style: TextStyle(
                        color: ColorConstant.black,
                        fontSize: 16.sp,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      qty.value.toString(),
                      style: TextStyle(
                        color: ColorConstant.primary,
                        fontSize: 16.sp,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '개',
                      style: TextStyle(
                        color: ColorConstant.black,
                        fontSize: 16.sp,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                Text(
                  '${Constants.numberAddComma(productData.value!.item!.it_price * qty.value)}원',
                  style: TextStyle(
                    color: ColorConstant.black,
                    fontSize: 14.sp,
                    fontFamily: 'Noto Sans KR',
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Divider(
              height: 1.h,
              thickness: 1,
              color: ColorConstant.black,
            ),
          ),
          SizedBox(height: 39.h,),

          Row(
            children: [
              Expanded(
                child: Container(
                  height: 55.h,
                  child: ElevatedButton(
                    onPressed: (){
                      //단일옵션 담기
                      List<dynamic> ctItems = [];

                      ctItems.add({
                        'ct_qty' : qty.value
                      });

                      cartController.addCart(context,productData.value!.item!.it_id,ctItems);
                      Get.back();
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorConstant.primary,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero
                        )
                    ),
                    child: Text(
                      '장바구니',
                      style: TextStyle(
                        color: ColorConstant.white,
                        fontSize: 14.sp,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 55.h,
                  child: ElevatedButton(
                    onPressed: (){
                      //단일옵션 바로 구매
                      List<dynamic> ctItems = [];

                      ctItems.add({
                        'ct_qty' : qty.value
                      });

                      cartController.directBuy(context,productData.value!.item!.it_id,ctItems);

                      Get.back();
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorConstant.accent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero
                        )
                    ),
                    child: Text(
                      '바로 구매',
                      style: TextStyle(
                        color: ColorConstant.white,
                        fontSize: 14.sp,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      )),
      backgroundColor: ColorConstant.white,
      enterBottomSheetDuration: Duration(seconds: 0),
      exitBottomSheetDuration: Duration(seconds: 0),
      isScrollControlled: true,
    );
  }
}