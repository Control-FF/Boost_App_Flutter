import 'package:boostapp/core/constants/constants.dart';
import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/category/category_controller.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CategoryScreen extends GetView<CategoryController>{

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

                        controller.getCategoryProduct();
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

                        controller.getCategoryProduct();
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
                        controller.getCategoryProduct();
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
                        if(controller.sort.value == 'review'){
                          controller.sort.value = '';
                        }else{
                          controller.sort.value = 'review';
                        }

                        controller.getCategoryProduct();
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

                        controller.getCategoryProduct();
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

                        controller.getCategoryProduct();
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

                        controller.getCategoryProduct();
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

                        controller.getCategoryProduct();
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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorConstant.white,
          elevation: 0,
          title: Obx(() => Text(
            controller.category.value,
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
        body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Obx(() => Container(
              margin: EdgeInsets.fromLTRB(30.w, 20.h, 30.w, 0.h),
              color: ColorConstant.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${controller.keywordResultList.length}개의 상품',
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
                            childAspectRatio: 58.63 / 85.19,
                            mainAxisSpacing: 37,
                            crossAxisSpacing: 23,
                          ),
                          delegate: SliverChildBuilderDelegate(
                                  (BuildContext context, int index){
                                return InkWell(
                                  onTap: (){
                                    Get.toNamed(AppRoutes.productDetailScreen,arguments: {
                                      'productId' : controller.keywordResultList[index].it_id
                                    });
                                  },
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: [
                                          controller.keywordResultList[index].it_img1 == ""
                                              ? Image.asset(
                                            'assets/images/product_sample.png',
                                            fit: BoxFit.cover,
                                          )
                                              : AspectRatio(
                                            aspectRatio: 1/1,
                                            child: Image.network(
                                              '${Constants.fileUrl}${controller.keywordResultList[index].it_img1}',
                                              fit: BoxFit.cover,
                                            ),
                                          )
                                          ,
                                          Positioned(
                                            right: 0,
                                            bottom: 0,
                                            child: Container(
                                              color: ColorConstant.accent,
                                              width: 20.w,
                                              height: 20.h,
                                              child: IconButton(padding: EdgeInsets.zero,
                                                color: ColorConstant.accent,
                                                alignment: Alignment.center,
                                                onPressed: (){

                                                },
                                                icon: Icon(Icons.favorite_border_outlined,color: ColorConstant.white,size: 10),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 9.h,),
                                      SizedBox(
                                        width: 146.w,
                                        child: Text.rich(
                                            TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: controller.keywordResultList[index].it_name,
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
                                                  TextSpan(
                                                    text: ' ${Constants.numberAddComma(controller.keywordResultList[index].it_price)}원',
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

                                    ],
                                  ),
                                );
                              },
                              childCount: controller.keywordResultList.length
                          ),
                        ),
                        SliverList(
                          delegate: SliverChildListDelegate(
                              [
                                Padding(
                                  padding: EdgeInsets.only(top: 49.h),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '부스트 앱 오픈 맞이 파격행사',
                                            style: TextStyle(
                                              color: ColorConstant.gray11,
                                              fontSize: 10.sp,
                                              fontFamily: 'Noto Sans KR',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                '이런 상품은 어떠세요?',
                                                style: TextStyle(
                                                  color: ColorConstant.black,
                                                  fontSize: 16.sp,
                                                  fontFamily: 'Noto Sans KR',
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      TextButton(
                                        onPressed: (){

                                        },
                                        style: TextButton.styleFrom(
                                          padding: EdgeInsets.zero,
                                          minimumSize: Size(0,20),
                                        ),
                                        child: Row(
                                          children: [
                                            Text(
                                              '더보러 가기',
                                              style: TextStyle(
                                                color: ColorConstant.gray12,
                                                fontSize: 10.sp,
                                                fontFamily: 'Noto Sans KR',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Icon(Icons.arrow_forward_ios_sharp,size: 10,color: ColorConstant.gray12,)
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 17.h,),
                                Divider(
                                  color: ColorConstant.gray10,
                                  height: 1.h,
                                  thickness: 1.h,
                                ),
                                Container(
                                  height: 290,
                                  child: ListView.builder(
                                    physics: BouncingScrollPhysics(),
                                    padding: EdgeInsets.only(top: 20.h,bottom: 30.h),
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 5,
                                    shrinkWrap: true,
                                    itemBuilder: (context, index){
                                      return GestureDetector(
                                        onTap: (){
                                          Get.toNamed(AppRoutes.productDetailScreen,arguments: {
                                            'productId' : 1
                                          });
                                        },
                                        child: Padding(
                                          padding: index == 4 ? EdgeInsets.zero : EdgeInsets.only(right: 11),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Stack(
                                                children: [
                                                  Image.asset('assets/images/sample_product2.png',width: 146.w,height: 151.h,fit: BoxFit.cover,),
                                                  Positioned(
                                                    right: 0,
                                                    bottom: 0,
                                                    child: Container(
                                                      color: ColorConstant.accent,
                                                      width: 20.w,
                                                      height: 20.h,
                                                      child: IconButton(padding: EdgeInsets.zero,
                                                        color: ColorConstant.accent,
                                                        alignment: Alignment.center,
                                                        onPressed: (){

                                                        },
                                                        icon: Icon(Icons.favorite_border_outlined,color: ColorConstant.white,size: 10),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 9.h,),
                                              SizedBox(
                                                width: 146.w,
                                                child: Text.rich(
                                                    TextSpan(
                                                        children: [
                                                          TextSpan(
                                                            text: '[J마트]',
                                                            style: TextStyle(
                                                              color: ColorConstant.accent,
                                                              fontSize: 10.sp,
                                                              fontFamily: 'Noto Sans KR',
                                                              fontWeight: FontWeight.w700,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text: '칠레산 생 블루베리 2(택1)',
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
                                                          TextSpan(
                                                            text: '50%',
                                                            style: TextStyle(
                                                              color: ColorConstant.primary,
                                                              fontSize: 12.sp,
                                                              fontFamily: 'Noto Sans KR',
                                                              fontWeight: FontWeight.w700,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text: ' 3,600원',
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
                                              Text(
                                                '7,800원',
                                                style: TextStyle(
                                                    color: ColorConstant.gray1,
                                                    fontSize: 8.sp,
                                                    fontFamily: 'Noto Sans KR',
                                                    fontWeight: FontWeight.w700,
                                                    decoration: TextDecoration.lineThrough
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                )
                              ]
                          ),
                        ),
                      ]
                  )
                ],
              ),
            ))
        )
      ),
    );
  }

}