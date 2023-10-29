import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/product_detail/product_detail_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDetailScreen extends GetView<ProductDetailController>{
  @override
  Widget build(BuildContext context) {
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
            icon: Icon(Icons.arrow_back,color: ColorConstant.black,),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 30.w),
              child: SizedBox.fromSize(
                size: Size(17, 17), // button width and height
                child: InkWell(
                  splashColor: Colors.white, // splash color
                  onTap: () {}, // button pressed
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/images/ic_cart.png',width: 17.w,height: 17.h,), // icon
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
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
                                    children: [
                                      Image.asset('assets/images/banner_sample7.png',fit: BoxFit.cover,),
                                      Image.asset('assets/images/banner_sample7.png',fit: BoxFit.cover,),
                                      Image.asset('assets/images/banner_sample7.png',fit: BoxFit.cover,),
                                    ],
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
                                    count: 3,
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
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30.w),
                            child: Row(
                              children: [
                                Text(
                                  '[부스트 상품] 제주 삼다수 500ml',
                                  style: TextStyle(
                                    color: ColorConstant.black,
                                    fontSize: 16.sp,
                                    fontFamily: 'Noto Sans KR',
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(30.w, 3.h, 30.w, 8.h),
                            child: Text(
                              '800원',
                              style: TextStyle(
                                color: ColorConstant.black,
                                fontSize: 24.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(30.w, 3.h, 30.w, 0.h),
                            child: Row(
                              children: [
                                Image.asset('assets/images/ic_boost.png',width: 68.w,height: 24.h,)
                              ],
                            ),
                          ),
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
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.all(Radius.circular(4)),
                                      child: AspectRatio(
                                        aspectRatio: 1,
                                        child: Image.asset('assets/images/banner_sample7.png', fit: BoxFit.cover,),
                                      ),
                                    ),
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
                                              '1,600원',
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
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                GestureDetector(
                                                  onTap: (){

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
                                                  '2',
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
                                      width: 100.w,
                                      child: Text(
                                        '원산지',
                                        style: TextStyle(
                                          color: ColorConstant.black,
                                          fontSize: 12.sp,
                                          fontFamily: 'Noto Sans KR',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '대한민국',
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
                                      width: 100.w,
                                      child: Text(
                                        '보관방법',
                                        style: TextStyle(
                                          color: ColorConstant.black,
                                          fontSize: 12.sp,
                                          fontFamily: 'Noto Sans KR',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '상온 보관',
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
                                      width: 100.w,
                                      child: Text(
                                        '소비기한',
                                        style: TextStyle(
                                          color: ColorConstant.black,
                                          fontSize: 12.sp,
                                          fontFamily: 'Noto Sans KR',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '수령일로부터 일주일',
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
                                      width: 100.w,
                                      child: Text(
                                        '식품유형',
                                        style: TextStyle(
                                          color: ColorConstant.black,
                                          fontSize: 12.sp,
                                          fontFamily: 'Noto Sans KR',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '농산물',
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
                                      width: 100.w,
                                      child: Text(
                                        '오차범위',
                                        style: TextStyle(
                                          color: ColorConstant.black,
                                          fontSize: 12.sp,
                                          fontFamily: 'Noto Sans KR',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '2%',
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

                        ]
                    ),
                  ),

                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 55.h,
                    child: ElevatedButton(
                      onPressed: (){
                        //Get.offAllNamed(AppRoutes.loginScreen);
                      },
                      child: Text(
                        '장바구니',
                        style: TextStyle(
                          color: ColorConstant.white,
                          fontSize: 14.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorConstant.primary,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero
                        )
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 55.h,
                    child: ElevatedButton(
                      onPressed: (){
                        //Get.offAllNamed(AppRoutes.loginScreen);
                      },
                      child: Text(
                        '바로 구매',
                        style: TextStyle(
                          color: ColorConstant.white,
                          fontSize: 14.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorConstant.accent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero
                        )
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