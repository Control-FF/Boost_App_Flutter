import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/main/main_controller.dart';
import 'package:boostapp/modules/main/pages/bnv_home_controller.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeTabPopular extends GetView<HomeController>{
  final mainController = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: CustomScrollView(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                    [
                      Container(
                        margin: EdgeInsets.fromLTRB(30.w, 7.h, 30.w, 21.h),
                        width: Get.width,
                        height: 187.h,
                        child: PageView(
                          controller: controller.pageController1,
                          children: [
                            GestureDetector(
                              onTap: (){

                              },
                              child: Image.asset('assets/images/banner_sample1.png'),
                            ),
                            GestureDetector(
                              onTap: (){

                              },
                              child: Image.asset('assets/images/banner_sample2.png'),
                            ),
                            GestureDetector(
                              onTap: (){

                              },
                              child: Image.asset('assets/images/banner_sample3.png'),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: SmoothPageIndicator(
                          controller: controller.pageController1,
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
                      Padding(
                        padding: EdgeInsets.fromLTRB(30.w, 19.h, 30.w, 10.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '카테고리',
                              style: TextStyle(
                                color: ColorConstant.black,
                                fontSize: 16.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Obx(() => !controller.isCategoryAll.value ? TextButton(
                              onPressed: (){
                                controller.isCategoryAll.value = true;
                              },
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  minimumSize: Size(0.w,20.h)
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    '더보기',
                                    style: TextStyle(
                                      color: ColorConstant.black.withOpacity(0.77),
                                      fontSize: 10.sp,
                                      fontFamily: 'Noto Sans KR',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Icon(Icons.add,size: 10,color: ColorConstant.black.withOpacity(0.77),)
                                ],
                              ),
                            ) : SizedBox())
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Divider(
                          color: ColorConstant.gray10,
                          height: 1.h,
                          thickness: 1.h,
                        ),
                      ),
                    ]
                ),
              ),
              GetX<MainController>(
                  builder: (_){
                    return SliverPadding(
                      padding: EdgeInsets.fromLTRB(30.w, 14.h, 30.w, 0),
                      sliver: SliverGrid(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 5,
                          childAspectRatio: 58.63 / 85.19,
                          mainAxisSpacing: 5,
                          crossAxisSpacing: 5,
                        ),
                        delegate: SliverChildBuilderDelegate(
                                (BuildContext context, int index){
                              return InkWell(
                                onTap: (){
                                  Get.toNamed(AppRoutes.category,arguments: {
                                    'category':mainController.categoryFirstList[index].ca_name,
                                    'caId':mainController.categoryFirstList[index].ca_id,
                                  });
                                },
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage('assets/images/sample_category1.png',),
                                      radius: 29.w,
                                    ),
                                    SizedBox(height: 7.h,),
                                    Text(
                                      mainController.categoryFirstList[index].ca_name,
                                      style: TextStyle(
                                        color: ColorConstant.black,
                                        fontSize: 10.sp,
                                        fontFamily: 'Noto Sans KR',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                            childCount: controller.isCategoryAll.value ? mainController.categoryFirstList.length : (mainController.categoryFirstList.length > 15 ? 15 : mainController.categoryFirstList.length)
                        ),
                      ),
                    );
                  }
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                    [
                      Container(
                        margin: EdgeInsets.fromLTRB(30.w, 30.h, 30.w, 17.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '놓치면 후회하는 상품',
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
                                      '오늘 들어온 상품',
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
                                  minimumSize: Size(0.w,20.h),
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
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Divider(
                          color: ColorConstant.gray10,
                          height: 1.h,
                          thickness: 1.h,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Container(
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
                                          Image.asset('assets/images/sample_product1.png',width: 146.w,height: 151.h,fit: BoxFit.cover,),
                                          Positioned(
                                            left: 9,
                                            top: 4,
                                            child: Container(
                                              alignment: Alignment.center,
                                              width: 29.w,
                                              height: 12.h,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(2.r)),
                                                  color: ColorConstant.primary
                                              ),
                                              child: Text(
                                                '당일 특가',
                                                style: TextStyle(
                                                  color: ColorConstant.white,
                                                  fontSize: 6.sp,
                                                  fontFamily: 'Noto Sans KR',
                                                  fontWeight: FontWeight.w700,
                                                ),
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
                                                    text: '[부스트 상품]',
                                                    style: TextStyle(
                                                      color: ColorConstant.primary,
                                                      fontSize: 10.sp,
                                                      fontFamily: 'Noto Sans KR',
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '오리지널 바베큐 폭립 1kg (500X2EA)',
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
                        ),
                      )
                    ]
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                    [
                      Padding(
                        padding: EdgeInsets.fromLTRB(30.w, 0.h, 30.w, 17.h),
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
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Divider(
                          color: ColorConstant.gray10,
                          height: 1.h,
                          thickness: 1.h,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Container(
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
                        ),
                      )
                    ]
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                    [
                      Container(
                        color: ColorConstant.gray13,
                        padding: EdgeInsets.fromLTRB(30.w, 34.h, 30.w, 120.h),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  onPressed: (){

                                  },
                                  style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                      minimumSize: Size(0.w,20.h)
                                  ),
                                  child: Text(
                                    '회사 소개',
                                    style: TextStyle(
                                      color: ColorConstant.black,
                                      fontSize: 8.sp,
                                      fontFamily: 'Noto Sans KR',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: (){

                                  },
                                  style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                      minimumSize: Size(40.w,20.h)
                                  ),
                                  child: Text(
                                    '투자 정보',
                                    style: TextStyle(
                                      color: ColorConstant.black,
                                      fontSize: 8.sp,
                                      fontFamily: 'Noto Sans KR',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: (){

                                  },
                                  style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                      minimumSize: Size(40.w,20.h)
                                  ),
                                  child: Text(
                                    '인재 채용',
                                    style: TextStyle(
                                      color: ColorConstant.black,
                                      fontSize: 8.sp,
                                      fontFamily: 'Noto Sans KR',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: (){

                                  },
                                  style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                      minimumSize: Size(40.w,20.h)
                                  ),
                                  child: Text(
                                    '이용약관',
                                    style: TextStyle(
                                      color: ColorConstant.black,
                                      fontSize: 8.sp,
                                      fontFamily: 'Noto Sans KR',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: (){

                                  },
                                  style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                      minimumSize: Size(40.w,20.h)
                                  ),
                                  child: Text(
                                    '개인정보 처리방침',
                                    style: TextStyle(
                                      color: ColorConstant.black,
                                      fontSize: 8.sp,
                                      fontFamily: 'Noto Sans KR',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: (){

                                  },
                                  style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                      minimumSize: Size(40.w,20.h)
                                  ),
                                  child: Text(
                                    '이용 안내',
                                    style: TextStyle(
                                      color: ColorConstant.black,
                                      fontSize: 8.sp,
                                      fontFamily: 'Noto Sans KR',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text.rich(
                                TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '법인명(상호) : 수 식자재유통센타 대표자(성명) : 신하수 사업자 등록번호 안내 : [104-30-20362] 통신판매업 신고 2021-부산기장-0487',
                                        style: TextStyle(
                                          color: ColorConstant.gray12,
                                          fontSize: 8.sp,
                                          fontFamily: 'Noto Sans KR',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '[사업자정보확인]',
                                        style: TextStyle(
                                          color: ColorConstant.gray12,
                                          fontSize: 8.sp,
                                          fontFamily: 'Noto Sans KR',
                                          fontWeight: FontWeight.w400,
                                          decoration: TextDecoration.underline
                                        ),
                                        recognizer: TapGestureRecognizer()..onTap = (){
                                          print('biz info');
                                        }
                                      ),
                                      TextSpan(
                                        text: '전화 : 1533-0818 팩스 : 051-728-7803 주소 : 46004 부산광역시 기장군 정관읍 용수로 60 /62 개인정보보호책임자 : ',
                                        style: TextStyle(
                                          color: ColorConstant.gray12,
                                          fontSize: 8.sp,
                                          fontFamily: 'Noto Sans KR',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      TextSpan(
                                          text: '김지창(boost051@naver.com)',
                                          style: TextStyle(
                                            color: ColorConstant.gray12,
                                            fontSize: 8.sp,
                                            fontFamily: 'Noto Sans KR',
                                            fontWeight: FontWeight.w400,
                                            decoration: TextDecoration.underline
                                          ),
                                          recognizer: TapGestureRecognizer()..onTap = (){
                                            print('biz info');
                                          }
                                      ),
                                    ]
                                )
                            )
                          ],
                        ),
                      )
                    ]
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

}