import 'package:boostapp/core/constants/constants.dart';
import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/data/models/product_detail.dart';
import 'package:boostapp/modules/cart/cart_controller.dart';
import 'package:boostapp/modules/product_detail/product_detail_controller.dart';
import 'package:boostapp/modules/product_detail/product_detail_tab_buy.dart';
import 'package:boostapp/modules/product_detail/product_detail_tab_info.dart';
import 'package:boostapp/modules/product_detail/product_detail_tab_inquiry.dart';
import 'package:boostapp/modules/product_detail/product_detail_tab_review.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDetailScreen extends GetView<ProductDetailController>{
  CartController cartController = Get.put(CartController());

  ScrollController _scrollController = ScrollController();
  bool _showedMessage = false;

  @override
  Widget build(BuildContext context) {
    cartController.getCartList();
/*
    _scrollController.addListener(() {
      if (_scrollController.offset == _scrollController.position.maxScrollExtent
          && !_scrollController.position.outOfRange) {
        if(controller.tagIndex.value == 2){
          controller.reviewPage++;
          controller.getReview();
          print('스크롤이 맨 밑에 위치해 있습니다');
        }else if(controller.tagIndex.value == 3){
          controller.inquiryPage++;
          controller.getInquiry();
          print('스크롤이 맨 밑에 위치해 있습니다');
        }

      } else if (_scrollController.offset == _scrollController.position.minScrollExtent
          && !_scrollController.position.outOfRange) {
        print('스크롤이 맨 위에 위치해 있습니다');
      }
    });

 */

    _scrollController.addListener(() {
      double maxScroll = _scrollController.position.maxScrollExtent;
      double currentScroll = _scrollController.position.pixels;
      double delta = maxScroll - currentScroll;

      if (delta <= 300 && !_showedMessage) {
        _showedMessage = true;
        if(controller.tagIndex.value == 2){
          controller.reviewPage++;
          controller.getReview();
        }else if(controller.tagIndex.value == 3){
          controller.inquiryPage++;
          controller.getInquiry();
        }
      } else if (delta > 300) {
        _showedMessage = false;
      }
    });

    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.white,
        appBar: AppBar(
          backgroundColor: ColorConstant.white,
          elevation: 0,
          title: Text(
            '상품 상세',
            style: TextStyle(
              color: ColorConstant.black2,
              fontSize: 16.sp,
              fontFamily: 'Noto Sans KR',
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: (){
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios_new_rounded,color: ColorConstant.black,),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 30.w),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 25.w,
                    height: 25.h,
                    child: InkWell(
                      splashColor: Colors.white, // splash color
                      onTap: () {
                        Get.toNamed(AppRoutes.cartScreen);
                      }, // button pressed
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset('assets/images/ic_cart.png',width: 17.w,height: 17.h,), // icon
                        ],
                      ),
                    ),
                  ),
                  GetX<CartController>(
                      builder: (_){
                        return cartController.cartList.isNotEmpty ? Container(
                          width: 15.w,
                          height: 15.h,
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 20.w,bottom: 10.h),
                          decoration: BoxDecoration(
                              color: ColorConstant.accent,
                              shape: BoxShape.circle
                          ),
                          child: Text(
                            cartController.cartList.length.toString(),
                            style: TextStyle(
                              color: ColorConstant.white,
                              fontSize: 7.sp,
                              fontFamily: 'Noto Sans KR',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ) : SizedBox();
                      }
                  )
                ],
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(
                child: NestedScrollView(
                  controller: _scrollController,
                  headerSliverBuilder: (context, innerBoxIsScrolled) => [
                    Obx(() => SliverList(
                      delegate: SliverChildListDelegate(
                          [
                            Stack(
                              children: [
                                AspectRatio(
                                  aspectRatio: 1/1,
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(30.w, 0.h, 30.w, 21.h),
                                    width: Get.width,
                                    child: PageView(
                                      controller: controller.pageController,
                                      children: controller.getProductImage(),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 40.h,
                                  left: 0,
                                  right: 0,
                                  child: Center(
                                    child: SmoothPageIndicator(
                                      controller: controller.pageController,
                                      count: controller.productImgList.isNotEmpty ? controller.productImgList.length : 0,
                                      axisDirection: Axis.horizontal,
                                      effect: ExpandingDotsEffect(
                                        dotHeight: 9.w,
                                        dotWidth: 9.h,
                                        dotColor: ColorConstant.gray2,
                                        activeDotColor: ColorConstant.primary,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            controller.productData.value != null && controller.productData.value!.item!.it_explan != '' ? Padding(
                              padding: EdgeInsets.symmetric(horizontal: 30.w),
                              child: Row(
                                children: [
                                  Text(
                                    controller.productData.value!.item!.it_explan,
                                    style: TextStyle(
                                      color: ColorConstant.black,
                                      fontSize: 16.sp,
                                      fontFamily: 'Noto Sans KR',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                            ) : SizedBox(),
                            Padding(
                              padding: EdgeInsets.fromLTRB(30.w, 3.h, 30.w, 8.h),
                              child: Text(
                                controller.productData.value != null ? controller.productData.value!.item!.it_name : '',
                                style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 24.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            controller.productData.value != null && controller.productData.value!.item!.it_seller == '부스트' ? Padding(
                              padding: EdgeInsets.fromLTRB(30.w, 3.h, 30.w, 0.h),
                              child: Row(
                                children: [
                                  Image.asset('assets/images/ic_boost.png',width: 68.w,height: 24.h,)
                                ],
                              ),
                            ) : SizedBox(),
                            controller.optionList.isEmpty ? Padding(
                              padding: EdgeInsets.fromLTRB(30.w, 13.h, 30.w, 8.h),
                              child: Divider(
                                thickness: 1,
                                height: 1,
                                color: ColorConstant.gray17,
                              ),
                            ) : SizedBox(height: 13.h,),
                            controller.optionList.isEmpty ? Container(
                              padding: EdgeInsets.symmetric(horizontal: 30),
                              width: Get.width,
                              height: 50.h,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    flex: 1,
                                    child: controller.productData.value != null && controller.productData.value!.item!.it_img1! != '' ? Container(
                                      width: 50.w,
                                      child: controller.productData.value != null ? ClipRRect(
                                        borderRadius: BorderRadius.all(Radius.circular(4)),
                                        child: AspectRatio(
                                          aspectRatio: 1,
                                          child: Image.network(Constants.fileUrl+controller.productData.value!.item!.it_img1!, fit: BoxFit.cover,),
                                        ),
                                      ) : SizedBox(),
                                    ) : SizedBox(),
                                  ),
                                  Flexible(
                                    flex: 1,
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                '결제금액',
                                                style: TextStyle(
                                                  color: ColorConstant.black,
                                                  fontSize: 12.sp,
                                                  fontFamily: 'Noto Sans KR',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                controller.productData.value != null
                                                    ? '${Constants.numberAddComma(controller.productData.value!.item!.it_price*controller.qty.value)}원'
                                                    : '',
                                                style: TextStyle(
                                                  color: ColorConstant.black,
                                                  fontSize: 12.sp,
                                                  fontFamily: 'Noto Sans KR',
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                '주문수량',
                                                style: TextStyle(
                                                  color: ColorConstant.black,
                                                  fontSize: 12.sp,
                                                  fontFamily: 'Noto Sans KR',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              controller.productData.value != null && controller.productData.value!.item!.it_stock_qty != 0 ? Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  GestureDetector(
                                                    onTap: (){
                                                      if(controller.productData.value!.item!.it_min_qty != 0){
                                                        if(controller.productData.value!.item!.it_min_qty <= controller.qty.value){
                                                          return;
                                                        }
                                                      }
                                                      if(controller.qty.value != 1){
                                                        controller.qty.value--;
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
                                                    controller.qty.value.toString(),
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
                                                      if(controller.productData.value!.item!.it_max_qty != 0) {
                                                        if (controller.productData.value!.item!.it_max_qty >=
                                                            controller.qty.value) {
                                                          return;
                                                        }
                                                      }
                                                      controller.qty.value++;
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
                                              ) : Text(
                                                '품절',
                                                style: TextStyle(
                                                  color: ColorConstant.red,
                                                  fontSize: 12.sp,
                                                  fontFamily: 'Noto Sans KR',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ) : SizedBox(),
                            controller.optionList.isEmpty ? Padding(
                              padding: EdgeInsets.fromLTRB(30.w, 15.h, 30.w, 10.h),
                              child: Divider(
                                thickness: 1,
                                height: 1,
                                color: ColorConstant.gray17,
                              ),
                            ) : SizedBox(),
                            controller.productData.value != null && controller.productData.value!.option!.isNotEmpty ? Padding(
                              padding: EdgeInsets.symmetric(horizontal: 30.w),
                              child: Text(
                                '옵션 추가',
                                style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 16.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ) : SizedBox(),
                            controller.productData.value != null && controller.productData.value!.option!.isNotEmpty ? Padding(
                              padding: EdgeInsets.fromLTRB(30.w, 9.h, 30.w, 10.h),
                              child: Divider(
                                thickness: 1,
                                height: 1,
                                color: ColorConstant.gray17,
                              ),
                            ) : SizedBox(),
                            controller.productData.value != null && controller.optionList.isNotEmpty ? ListView.separated(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: controller.optionList.length,
                              padding: EdgeInsets.symmetric(horizontal: 30.w),
                              itemBuilder: (context, index){
                                return Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      onTap: (){
                                        bool isCheck = controller.optionList[index].isCheck ?? false;

                                        controller.optionList[index] = controller.optionList[index].copyWith(isCheck: !isCheck);
                                      },
                                      child: Row(
                                        children: [
                                          Obx(() => Container(
                                            width: 20.w,
                                            height: 20.h,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(47)),
                                              border: controller.optionList[index].isCheck ?? false
                                                  ? Border.all(width: 5,color: ColorConstant.primary)
                                                  : Border.all(width: 1,color: ColorConstant.gray20),
                                            ),
                                          )),
                                          SizedBox(width: 10.w,),
                                          Text(
                                            controller.optionList[index].io_id,
                                            style: TextStyle(
                                              color: ColorConstant.black,
                                              fontSize: 14.sp,
                                              fontFamily: 'Noto Sans KR',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Text(
                                      '${Constants.numberAddComma(controller.productData.value!.item!.it_price + controller.optionList[index].io_price)}원',
                                      style: TextStyle(
                                        color: ColorConstant.black,
                                        fontSize: 14.sp,
                                        fontFamily: 'Noto Sans KR',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                );
                              },
                              separatorBuilder: (context, index){
                                return SizedBox(height: 6.h,);
                              },
                            ) : SizedBox(),
                            Padding(
                              padding: EdgeInsets.fromLTRB(30.w, 22.h, 30.w, 33.h),
                              child: Divider(
                                thickness: 1,
                                height: 1,
                                color: ColorConstant.gray17,
                              ),
                            ),
                          ]
                      ),
                    )),
                    SliverPersistentHeader(
                      pinned: true,
                      delegate: TabBarDelegate(),
                    ),
                  ],
                  body: TabBarView(
                    controller: controller.tabController,
                    children: [
                      ProductDetailTabInfo(),
                      ProductDetailTabBuy(),
                      ProductDetailTabReview(),
                      ProductDetailInquiryInfo()
                    ],
                  ),
                )
              /*
                  child: CustomScrollView(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    slivers: [
                      SliverList(
                        delegate: SliverChildListDelegate(
                            [
                              Stack(
                                children: [
                                  AspectRatio(
                                    aspectRatio: 1/1,
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(30.w, 0.h, 30.w, 21.h),
                                      width: Get.width,
                                      child: PageView(
                                        controller: controller.pageController,
                                        children: controller.getProductImage(),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 40.h,
                                    left: 0,
                                    right: 0,
                                    child: Center(
                                      child: SmoothPageIndicator(
                                        controller: controller.pageController,
                                        count: controller.productImgList.isNotEmpty ? controller.productImgList.length : 0,
                                        axisDirection: Axis.horizontal,
                                        effect: ExpandingDotsEffect(
                                          dotHeight: 9.w,
                                          dotWidth: 9.h,
                                          dotColor: ColorConstant.gray2,
                                          activeDotColor: ColorConstant.primary,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              controller.productData.value != null && controller.productData.value!.item!.it_explan != '' ? Padding(
                                padding: EdgeInsets.symmetric(horizontal: 30.w),
                                child: Row(
                                  children: [
                                    Text(
                                      controller.productData.value!.item!.it_explan,
                                      style: TextStyle(
                                        color: ColorConstant.black,
                                        fontSize: 16.sp,
                                        fontFamily: 'Noto Sans KR',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                              ) : SizedBox(),
                              Padding(
                                padding: EdgeInsets.fromLTRB(30.w, 3.h, 30.w, 8.h),
                                child: Text(
                                  controller.productData.value != null ? controller.productData.value!.item!.it_name : '',
                                  style: TextStyle(
                                    color: ColorConstant.black,
                                    fontSize: 24.sp,
                                    fontFamily: 'Noto Sans KR',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              controller.productData.value != null && controller.productData.value!.item!.it_seller == '부스트' ? Padding(
                                padding: EdgeInsets.fromLTRB(30.w, 3.h, 30.w, 0.h),
                                child: Row(
                                  children: [
                                    Image.asset('assets/images/ic_boost.png',width: 68.w,height: 24.h,)
                                  ],
                                ),
                              ) : SizedBox(),
                              Padding(
                                padding: EdgeInsets.fromLTRB(30.w, 13.h, 30.w, 8.h),
                                child: Divider(
                                  thickness: 1,
                                  height: 1,
                                  color: ColorConstant.gray17,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 30),
                                width: Get.width,
                                height: 50.h,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      child: Container(
                                        width: 50.w,
                                        child: controller.productData.value != null ? ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(4)),
                                          child: AspectRatio(
                                            aspectRatio: 1,
                                            child: Image.network(Constants.fileUrl+controller.productData.value!.item!.it_img1!, fit: BoxFit.cover,),
                                          ),
                                        ) : SizedBox(),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 1,
                                      child: Container(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  '결제금액',
                                                  style: TextStyle(
                                                    color: ColorConstant.black,
                                                    fontSize: 12.sp,
                                                    fontFamily: 'Noto Sans KR',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                Text(
                                                    controller.productData.value != null
                                                        ? '${Constants.numberAddComma(controller.productData.value!.item!.it_price*controller.qty.value)}원'
                                                        : '',
                                                  style: TextStyle(
                                                    color: ColorConstant.black,
                                                    fontSize: 12.sp,
                                                    fontFamily: 'Noto Sans KR',
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                )
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  '주문수량',
                                                  style: TextStyle(
                                                    color: ColorConstant.black,
                                                    fontSize: 12.sp,
                                                    fontFamily: 'Noto Sans KR',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                controller.productData.value != null && controller.productData.value!.item!.it_stock_qty != 0 ? Row(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    GestureDetector(
                                                      onTap: (){
                                                        if(controller.productData.value!.item!.it_min_qty != 0){
                                                          if(controller.productData.value!.item!.it_min_qty <= controller.qty.value){
                                                            return;
                                                          }
                                                        }
                                                        if(controller.qty.value != 1){
                                                          controller.qty.value--;
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
                                                      controller.qty.value.toString(),
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
                                                        if(controller.productData.value!.item!.it_max_qty != 0) {
                                                          if (controller.productData.value!.item!.it_max_qty >=
                                                              controller.qty.value) {
                                                            return;
                                                          }
                                                        }
                                                        controller.qty.value++;
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
                                                ) : Text(
                                                  '품절',
                                                  style: TextStyle(
                                                    color: ColorConstant.red,
                                                    fontSize: 12.sp,
                                                    fontFamily: 'Noto Sans KR',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(30.w, 15.h, 30.w, 10.h),
                                child: Divider(
                                  thickness: 1,
                                  height: 1,
                                  color: ColorConstant.gray17,
                                ),
                              ),
                              controller.productData.value != null && controller.productData.value!.option!.isNotEmpty ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                                    child: Text(
                                      '옵션 추가',
                                      style: TextStyle(
                                        color: ColorConstant.black,
                                        fontSize: 16.sp,
                                        fontFamily: 'Noto Sans KR',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(30.w, 9.h, 30.w, 10.h),
                                    child: Divider(
                                      thickness: 1,
                                      height: 1,
                                      color: ColorConstant.gray17,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            GestureDetector(
                                              onTap: (){

                                              },
                                              child: Row(
                                                children: [
                                                  Container(
                                                    width: 20.w,
                                                    height: 20.h,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.all(Radius.circular(47)),
                                                      border: Border.all(width: 5,color: ColorConstant.primary),
                                                    ),
                                                  ),
                                                  SizedBox(width: 10.w,),
                                                  Text(
                                                    '1박스',
                                                    style: TextStyle(
                                                      color: ColorConstant.black,
                                                      fontSize: 14.sp,
                                                      fontFamily: 'Noto Sans KR',
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Text(
                                              '+50,000원',
                                              style: TextStyle(
                                                color: ColorConstant.black,
                                                fontSize: 14.sp,
                                                fontFamily: 'Noto Sans KR',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 6.h,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            GestureDetector(
                                              onTap: (){

                                              },
                                              child: Row(
                                                children: [
                                                  Container(
                                                    width: 20.w,
                                                    height: 20.h,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.all(Radius.circular(47)),
                                                      border: Border.all(width: 1,color: ColorConstant.gray20),
                                                    ),
                                                  ),
                                                  SizedBox(width: 10.w,),
                                                  Text(
                                                    '3박스',
                                                    style: TextStyle(
                                                      color: ColorConstant.black,
                                                      fontSize: 14.sp,
                                                      fontFamily: 'Noto Sans KR',
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Text(
                                              '+85,000원',
                                              style: TextStyle(
                                                color: ColorConstant.black,
                                                fontSize: 14.sp,
                                                fontFamily: 'Noto Sans KR',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(30.w, 22.h, 30.w, 33.h),
                                    child: Divider(
                                      thickness: 1,
                                      height: 1,
                                      color: ColorConstant.gray17,
                                    ),
                                  ),
                                ],
                              ) : SizedBox(),
                            ]
                        ),
                      ),
                      SliverPersistentHeader(
                        pinned: true,
                        delegate: TabBarDelegate(),
                      ),
                      SliverFillRemaining(
                        child: TabBarView(
                          controller: controller.tabController,
                          children: [
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            '상품 정보',
                                            style: TextStyle(
                                              color: ColorConstant.black,
                                              fontSize: 16.sp,
                                              fontFamily: 'Noto Sans KR',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 6.h,),
                                      Divider(
                                        thickness: 1,
                                        height: 1,
                                        color: ColorConstant.gray17,
                                      ),
                                      SizedBox(height: 6.h,),
                                      Row(
                                        children: [
                                          Container(
                                            width: 150.w,
                                            child: Text(
                                              '제품 소재',
                                              style: TextStyle(
                                                color: ColorConstant.black,
                                                fontSize: 12.sp,
                                                fontFamily: 'Noto Sans KR',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            controller.nullCheck(controller.productData.value?.item_info?.material),
                                            style: TextStyle(
                                              color: ColorConstant.black,
                                              fontSize: 12.sp,
                                              fontFamily: 'Noto Sans KR',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 6.h,),
                                      Divider(
                                        thickness: 1,
                                        height: 1,
                                        color: ColorConstant.gray17,
                                      ),
                                      SizedBox(height: 6.h,),
                                      Row(
                                        children: [
                                          Container(
                                            width: 150.w,
                                            child: Text(
                                              '색상',
                                              style: TextStyle(
                                                color: ColorConstant.black,
                                                fontSize: 12.sp,
                                                fontFamily: 'Noto Sans KR',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            controller.nullCheck(controller.productData.value?.item_info?.color),
                                            style: TextStyle(
                                              color: ColorConstant.black,
                                              fontSize: 12.sp,
                                              fontFamily: 'Noto Sans KR',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 6.h,),
                                      Divider(
                                        thickness: 1,
                                        height: 1,
                                        color: ColorConstant.gray17,
                                      ),
                                      SizedBox(height: 6.h,),
                                      Row(
                                        children: [
                                          Container(
                                            width: 150.w,
                                            child: Text(
                                              '사이즈',
                                              style: TextStyle(
                                                color: ColorConstant.black,
                                                fontSize: 12.sp,
                                                fontFamily: 'Noto Sans KR',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            controller.nullCheck(controller.productData.value?.item_info?.size),
                                            style: TextStyle(
                                              color: ColorConstant.black,
                                              fontSize: 12.sp,
                                              fontFamily: 'Noto Sans KR',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 6.h,),
                                      Divider(
                                        thickness: 1,
                                        height: 1,
                                        color: ColorConstant.gray17,
                                      ),
                                      SizedBox(height: 6.h,),
                                      Row(
                                        children: [
                                          Container(
                                            width: 150.w,
                                            child: Text(
                                              '제조자',
                                              style: TextStyle(
                                                color: ColorConstant.black,
                                                fontSize: 12.sp,
                                                fontFamily: 'Noto Sans KR',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            controller.nullCheck(controller.productData.value?.item_info?.maker),
                                            style: TextStyle(
                                              color: ColorConstant.black,
                                              fontSize: 12.sp,
                                              fontFamily: 'Noto Sans KR',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 6.h,),
                                      Divider(
                                        thickness: 1,
                                        height: 1,
                                        color: ColorConstant.gray17,
                                      ),
                                      SizedBox(height: 6.h,),
                                      Row(
                                        children: [
                                          Container(
                                            width: 150.w,
                                            child: Text(
                                              '세탁방법 및 주의사항',
                                              style: TextStyle(
                                                color: ColorConstant.black,
                                                fontSize: 12.sp,
                                                fontFamily: 'Noto Sans KR',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            controller.nullCheck(controller.productData.value?.item_info?.caution),
                                            style: TextStyle(
                                              color: ColorConstant.black,
                                              fontSize: 12.sp,
                                              fontFamily: 'Noto Sans KR',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 6.h,),
                                      Divider(
                                        thickness: 1,
                                        height: 1,
                                        color: ColorConstant.gray17,
                                      ),
                                      SizedBox(height: 6.h,),
                                      Row(
                                        children: [
                                          Container(
                                            width: 150.w,
                                            child: Text(
                                              '제조연월',
                                              style: TextStyle(
                                                color: ColorConstant.black,
                                                fontSize: 12.sp,
                                                fontFamily: 'Noto Sans KR',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            controller.nullCheck(controller.productData.value?.item_info?.manufacturing_ym),
                                            style: TextStyle(
                                              color: ColorConstant.black,
                                              fontSize: 12.sp,
                                              fontFamily: 'Noto Sans KR',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 6.h,),
                                      Divider(
                                        thickness: 1,
                                        height: 1,
                                        color: ColorConstant.gray17,
                                      ),
                                      SizedBox(height: 6.h,),
                                      Row(
                                        children: [
                                          Container(
                                            width: 150.w,
                                            child: Text(
                                              '품질보증기준',
                                              style: TextStyle(
                                                color: ColorConstant.black,
                                                fontSize: 12.sp,
                                                fontFamily: 'Noto Sans KR',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            controller.nullCheck(controller.productData.value?.item_info?.warranty),
                                            style: TextStyle(
                                              color: ColorConstant.black,
                                              fontSize: 12.sp,
                                              fontFamily: 'Noto Sans KR',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 6.h,),
                                      Divider(
                                        thickness: 1,
                                        height: 1,
                                        color: ColorConstant.gray17,
                                      ),
                                      SizedBox(height: 6.h,),
                                      Row(
                                        children: [
                                          Container(
                                            width: 150.w,
                                            child: Text(
                                              'A/S 책임자와 전화번호',
                                              style: TextStyle(
                                                color: ColorConstant.black,
                                                fontSize: 12.sp,
                                                fontFamily: 'Noto Sans KR',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            controller.nullCheck(controller.productData.value?.item_info?.as),
                                            style: TextStyle(
                                              color: ColorConstant.black,
                                              fontSize: 12.sp,
                                              fontFamily: 'Noto Sans KR',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 6.h,),
                                      Divider(
                                        thickness: 1,
                                        height: 1,
                                        color: ColorConstant.gray17,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(30.w, 36.h, 30.w, 0.h),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            '상품 상세설명',
                                            style: TextStyle(
                                              color: ColorConstant.black,
                                              fontSize: 16.sp,
                                              fontFamily: 'Noto Sans KR',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 13.h,),
                                      Divider(
                                        thickness: 1,
                                        height: 1,
                                        color: ColorConstant.gray17,
                                      ),
                                      SizedBox(height: 11.h,),
                                      Image.network('https://thumbnail6.coupangcdn.com/thumbnails/remote/q89/image/retail/images/2023/06/30/16/4/bb930f1f-5014-4bf7-9b68-cb92ee1efbe1.jpg')
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(),
                            SizedBox(),
                            SizedBox(),
                          ],
                        ),
                      )
                    ],
                  ),

                   */
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 55.h,
                    child: ElevatedButton(
                      onPressed: (){
                        if(controller.productData.value!.option!.isNotEmpty){
                          controller.getOptionSelectList();
                          controller.showOptionBottomSheet(context,'cart');
                        }else{
                          controller.showEmptyOptionBottomSheet(context,'cart');
                        }

                        /*
                        if(controller.productData.value!.item!.it_stock_qty == 0){
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            elevation: 6.0,
                            behavior: SnackBarBehavior.floating,
                            content: Text(
                              '품절된 상품입니다.',
                              style: TextStyle(color: Colors.white),
                            ),
                          ));
                        }
                        cartController.addCart(context,controller.productData.value!.item!.it_id,controller.qty.value);

                         */
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
                        if(controller.productData.value!.option!.isNotEmpty){
                          controller.getOptionSelectList();
                          controller.showOptionBottomSheet(context,'buy');
                        }else{
                          controller.showEmptyOptionBottomSheet(context,'buy');
                        }
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
        ),
      ),
    );
  }

}

class TabBarDelegate extends SliverPersistentHeaderDelegate{
  const TabBarDelegate();

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {

    ProductDetailController controller = Get.put(ProductDetailController());

    return Align(
      child: Container(
        color: ColorConstant.white,
        child: Obx(() => TabBar(
          padding: EdgeInsets.symmetric(horizontal: 15),
          controller: controller.tabController,
          tabs: [
            Tab(text: '상품 정보'),
            Tab(text: '구매 정보'),
            Tab(text: '후기(${Constants.numberAddComma(controller.reviewList.length)})'),
            Tab(text: 'Q&A(${Constants.numberAddComma(controller.inquiryList.length)})'),
          ],
          /*
          tabs: controller.tabs
              .map((String title) => Tab(text: title))
              .toList(),

           */
          indicatorColor: ColorConstant.primary,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 3,
          isScrollable: false,
          labelPadding: EdgeInsets.zero,
          indicatorPadding: EdgeInsets.zero,
          labelColor: ColorConstant.black,
          labelStyle: TextStyle(
            color: ColorConstant.black,
            fontSize: 12.sp,
            fontFamily: 'Noto Sans KR',
            fontWeight: FontWeight.w700,
          ),
          unselectedLabelColor: ColorConstant.black,
          unselectedLabelStyle: TextStyle(
            color: ColorConstant.black,
            fontSize: 12.sp,
            fontFamily: 'Noto Sans KR',
            fontWeight: FontWeight.w400,
          ),
        )),
      ),
    );
  }

  @override
  double get maxExtent => 48;

  @override
  double get minExtent => 48;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}