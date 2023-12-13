import 'package:boostapp/core/constants/constants.dart';
import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/category/category_controller.dart';
import 'package:boostapp/modules/main/main_controller.dart';
import 'package:boostapp/modules/more/more_controller.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MoreScreen extends GetView<MoreController>{
  ScrollController _scrollController = ScrollController();
  bool _showedMessage = false;

  final mainController = Get.put(MainController());

  void _showFilterPopup(context){
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
              height: 139.h,
              child: Center(
                child: Obx(() => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){
                        if(controller.filter.value == 'boost'){
                          controller.filter.value = '';
                        }else{
                          controller.filter.value = 'boost';
                        }

                        controller.page.value = 1;
                        controller.getMoreProduct();
                        Get.back();
                      },
                      child: Container(
                        height: 30,
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        margin: EdgeInsets.symmetric(horizontal: 32.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            border: Border.all(
                                color: controller.filter.value == 'boost' ? ColorConstant.accent :ColorConstant.gray17,
                                width: 1
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '부스트 배송',
                              style: TextStyle(
                                color: ColorConstant.black,
                                fontSize: 16.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(
                              Icons.check_circle_outline_sharp,
                              color: controller.filter.value == 'boost' ? ColorConstant.accent : ColorConstant.gray18,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    GestureDetector(
                      onTap: (){
                        if(controller.filter.value == 'seller'){
                          controller.filter.value = '';
                        }else{
                          controller.filter.value = 'seller';
                        }

                        controller.page.value = 1;
                        controller.getMoreProduct();
                        Get.back();
                      },
                      child: Container(
                        height: 30,
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        margin: EdgeInsets.symmetric(horizontal: 32.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            border: Border.all(
                                color: controller.filter.value == 'seller' ? ColorConstant.accent :ColorConstant.gray17,
                                width: 1
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '판매자 배송',
                              style: TextStyle(
                                color: ColorConstant.black,
                                fontSize: 16.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(
                              Icons.check_circle_outline_sharp,
                              color: controller.filter.value == 'seller' ? ColorConstant.accent : ColorConstant.gray18,
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

  void _showSortPopup(context){
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
              height: 274.h,
              child: Center(
                child: Obx(() => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){
                        if(controller.sort.value == 'latest'){
                          controller.sort.value = '';
                        }else{
                          controller.sort.value = 'latest';
                        }
                        controller.page.value = 1;
                        controller.getMoreProduct();
                        Get.back();
                      },
                      child: Container(
                        height: 30,
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        margin: EdgeInsets.symmetric(horizontal: 32.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            border: Border.all(
                                color: controller.sort.value == 'latest' ? ColorConstant.accent :ColorConstant.gray17,
                                width: 1
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '최근등록 순',
                              style: TextStyle(
                                color: ColorConstant.black,
                                fontSize: 16.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(
                              Icons.check_circle_outline_sharp,
                              color: controller.sort.value == 'latest' ? ColorConstant.accent : ColorConstant.gray18,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    GestureDetector(
                      onTap: (){
                        if(controller.sort.value == 'reviews'){
                          controller.sort.value = '';
                        }else{
                          controller.sort.value = 'reviews';
                        }

                        controller.page.value = 1;
                        controller.getMoreProduct();
                        Get.back();
                      },
                      child: Container(
                        height: 30,
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        margin: EdgeInsets.symmetric(horizontal: 32.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            border: Border.all(
                                color: controller.sort.value == 'review' ? ColorConstant.accent :ColorConstant.gray17,
                                width: 1
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '리뷰 순',
                              style: TextStyle(
                                color: ColorConstant.black,
                                fontSize: 16.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(
                              Icons.check_circle_outline_sharp,
                              color: controller.sort.value == 'review' ? ColorConstant.accent : ColorConstant.gray18,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    GestureDetector(
                      onTap: (){
                        if(controller.sort.value == 'price_high'){
                          controller.sort.value = '';
                        }else{
                          controller.sort.value = 'price_high';
                        }

                        controller.page.value = 1;
                        controller.getMoreProduct();
                        Get.back();
                      },
                      child: Container(
                        height: 30,
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        margin: EdgeInsets.symmetric(horizontal: 32.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            border: Border.all(
                                color: controller.sort.value == 'price_high' ? ColorConstant.accent :ColorConstant.gray17,
                                width: 1
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '가격 높은 순',
                              style: TextStyle(
                                color: ColorConstant.black,
                                fontSize: 16.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(
                              Icons.check_circle_outline_sharp,
                              color: controller.sort.value == 'price_high' ? ColorConstant.accent : ColorConstant.gray18,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    GestureDetector(
                      onTap: (){
                        if(controller.sort.value == 'price_low'){
                          controller.sort.value = '';
                        }else{
                          controller.sort.value = 'price_low';
                        }

                        controller.page.value = 1;
                        controller.getMoreProduct();
                        Get.back();
                      },
                      child: Container(
                        height: 30,
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        margin: EdgeInsets.symmetric(horizontal: 32.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            border: Border.all(
                                color: controller.sort.value == 'price_low' ? ColorConstant.accent :ColorConstant.gray17,
                                width: 1
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '가격 낮은 순',
                              style: TextStyle(
                                color: ColorConstant.black,
                                fontSize: 16.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(
                              Icons.check_circle_outline_sharp,
                              color: controller.sort.value == 'price_low' ? ColorConstant.accent : ColorConstant.gray18,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    GestureDetector(
                      onTap: (){
                        if(controller.sort.value == 'rating'){
                          controller.sort.value = '';
                        }else{
                          controller.sort.value = 'rating';
                        }

                        controller.page.value = 1;
                        controller.getMoreProduct();
                        Get.back();
                      },
                      child: Container(
                        height: 30,
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        margin: EdgeInsets.symmetric(horizontal: 32.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            border: Border.all(
                                color: controller.sort.value == 'rating' ? ColorConstant.accent :ColorConstant.gray17,
                                width: 1
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '평점 순',
                              style: TextStyle(
                                color: ColorConstant.black,
                                fontSize: 16.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(
                              Icons.check_circle_outline_sharp,
                              color: controller.sort.value == 'rating' ? ColorConstant.accent : ColorConstant.gray18,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    GestureDetector(
                      onTap: (){
                        if(controller.sort.value == 'sales'){
                          controller.sort.value = '';
                        }else{
                          controller.sort.value = 'sales';
                        }

                        controller.page.value = 1;
                        controller.getMoreProduct();
                        Get.back();
                      },
                      child: Container(
                        height: 30,
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        margin: EdgeInsets.symmetric(horizontal: 32.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            border: Border.all(
                                color: controller.sort.value == 'sales' ? ColorConstant.accent :ColorConstant.gray17,
                                width: 1
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '판매 순',
                              style: TextStyle(
                                color: ColorConstant.black,
                                fontSize: 16.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(
                              Icons.check_circle_outline_sharp,
                              color: controller.sort.value == 'sales' ? ColorConstant.accent : ColorConstant.gray18,
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

  @override
  Widget build(BuildContext context) {
    _scrollController.addListener(() {
      double maxScroll = _scrollController.position.maxScrollExtent;
      double currentScroll = _scrollController.position.pixels;
      double delta = maxScroll - currentScroll;

      if (delta <= 300 && !_showedMessage) {
        _showedMessage = true;
        controller.page++;
        controller.getMoreProduct();
      } else if (delta > 300) {
        _showedMessage = false;
      }
    });

    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorConstant.white,
          elevation: 0,
          title: Obx(() => Text(
            controller.title.value,
            style: TextStyle(
              color: ColorConstant.black2,
              fontSize: 16.sp,
              fontFamily: 'Noto Sans KR',
              fontWeight: FontWeight.w700,
            ),
          )),
          leading: IconButton(
            onPressed: (){
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios_new_rounded,color: ColorConstant.black,),
          ),
        ),
        backgroundColor: ColorConstant.white,
        body: SafeArea(
          child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              controller: _scrollController,
              child: Obx(() => Container(
                margin: EdgeInsets.fromLTRB(30.w, 20.h, 30.w, 0.h),
                color: ColorConstant.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${controller.totalCnt.value}개의 상품',
                          style: TextStyle(
                            color: ColorConstant.gray12,
                            fontSize: 10.sp,
                            fontFamily: 'Noto Sans KR',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: (){
                                _showFilterPopup(context);
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.tune,
                                    size: 12,
                                    color: controller.filter.value != ''
                                        ? ColorConstant.accent
                                        : ColorConstant.black.withOpacity(0.77),
                                  ),
                                  SizedBox(width: 3.w,),
                                  Text(
                                    '필터',
                                    style: TextStyle(
                                      color: controller.filter.value != ''
                                          ? ColorConstant.accent
                                          : ColorConstant.black.withOpacity(0.77),
                                      fontSize: 10.sp,
                                      fontFamily: 'Noto Sans KR',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 3.w,),
                            InkWell(
                              onTap: (){
                                _showSortPopup(context);
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.format_list_bulleted,
                                    size: 12,
                                    color: controller.sort.value != ''
                                        ? ColorConstant.accent
                                        : ColorConstant.black.withOpacity(0.77),
                                  ),
                                  SizedBox(width: 3.w,),
                                  Text(
                                    '정렬',
                                    style: TextStyle(
                                      color: controller.sort.value != ''
                                          ? ColorConstant.accent
                                          : ColorConstant.black.withOpacity(0.77),
                                      fontSize: 10.sp,
                                      fontFamily: 'Noto Sans KR',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 7,),
                    CustomScrollView(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        slivers: [
                          SliverGrid(
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 58.63 / 90,
                              mainAxisSpacing: 37,
                              crossAxisSpacing: 23,
                            ),
                            delegate: SliverChildBuilderDelegate(
                                    (BuildContext context, int index){
                                  return InkWell(
                                    onTap: (){
                                      Get.toNamed(AppRoutes.productDetailScreen,arguments: {
                                        'productId' : controller.productList[index].it_id
                                      });
                                    },
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        controller.productList[index].it_img1 == ""
                                            ? Image.asset(
                                          'assets/images/product_sample.png',
                                          fit: BoxFit.cover,
                                        )
                                            : AspectRatio(
                                          aspectRatio: 1/1,
                                          child: Image.network(
                                            '${Constants.fileUrl}${controller.productList[index].it_img1}',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        SizedBox(height: 9.h,),
                                        SizedBox(
                                          width: 146.w,
                                          child: Text.rich(
                                              TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: controller.productList[index].it_name,
                                                      style: TextStyle(
                                                        color: ColorConstant.black,
                                                        fontSize: 10.sp,
                                                        fontFamily: 'Noto Sans KR',
                                                        fontWeight: FontWeight.w400,
                                                      ),
                                                    )
                                                  ]
                                              )
                                          ),
                                        ),
                                        SizedBox(height: 2.h,),
                                        SizedBox(
                                          width: 146.w,
                                          child: Text.rich(
                                              TextSpan(
                                                  children: [
                                                    controller.productList[index].it_cust_price != controller.productList[index].it_price ? TextSpan(
                                                      text: '${Constants.getPercent(controller.productList[index].it_price, controller.productList[index].it_cust_price)}%',
                                                      style: TextStyle(
                                                        color: ColorConstant.primary,
                                                        fontSize: 12.sp,
                                                        fontFamily: 'Noto Sans KR',
                                                        fontWeight: FontWeight.w700,
                                                      ),
                                                    ) : TextSpan(),
                                                    TextSpan(
                                                      text: ' ${Constants.numberAddComma(controller.productList[index].it_price)}원',
                                                      style: TextStyle(
                                                        color: ColorConstant.black,
                                                        fontSize: 12.sp,
                                                        fontFamily: 'Noto Sans KR',
                                                        fontWeight: FontWeight.w700,
                                                      ),
                                                    )
                                                  ]
                                              )
                                          ),
                                        ),
                                        controller.productList[index].it_cust_price != controller.productList[index].it_price ? Text(
                                          '${Constants.numberAddComma(controller.productList[index].it_cust_price)}원',
                                          style: TextStyle(
                                              color: ColorConstant.gray1,
                                              fontSize: 8.sp,
                                              fontFamily: 'Noto Sans KR',
                                              fontWeight: FontWeight.w700,
                                              decoration: TextDecoration.lineThrough
                                          ),
                                        ) : SizedBox()

                                      ],
                                    ),
                                  );
                                },
                                childCount: controller.productList.length
                            ),
                          ),
                        ]
                    )
                  ],
                ),
              ))
          ),
        )
    );
  }

}