import 'package:boostapp/core/constants/constants.dart';
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
                      Obx(() => Container(
                        margin: EdgeInsets.fromLTRB(30.w, 7.h, 30.w, 21.h),
                        width: Get.width,
                        height: 187.h,
                        child: PageView(
                          controller: controller.pageController1,
                          children: mainController.getMainBanner(),
                        ),
                      )),
                      Obx(() => Center(
                        child: SmoothPageIndicator(
                          controller: controller.pageController1,
                          count: mainController.mainBannerList.length,
                          axisDirection: Axis.horizontal,
                          effect: ExpandingDotsEffect(
                            dotHeight: 9.w,
                            dotWidth: 9.h,
                            dotColor: ColorConstant.gray2,
                            activeDotColor: ColorConstant.primary,
                          ),
                        ),
                      )),
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
                          childAspectRatio: 58.63 / 90,
                          mainAxisSpacing: 5,
                          crossAxisSpacing: 5,
                        ),
                        delegate: SliverChildBuilderDelegate(
                                (BuildContext context, int index){
                              return InkWell(
                                onTap: (){
                                  Get.toNamed(AppRoutes.category,arguments: {
                                    'category':mainController.mainCategoryList[index].ca_name,
                                    'caId':mainController.mainCategoryList[index].ca_id,
                                  });
                                },
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: NetworkImage(mainController.mainCategoryList[index].ca_img,),
                                      radius: 29.w,
                                    ),
                                    SizedBox(height: 7.h,),
                                    Text(
                                      mainController.mainCategoryList[index].ca_name,
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
                            childCount: controller.isCategoryAll.value ? mainController.mainCategoryList.length : (mainController.mainCategoryList.length > 15 ? 15 : mainController.mainCategoryList.length)
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
                                Get.toNamed(AppRoutes.moreScreen,arguments: {
                                  'title' : '오늘 들어온 상품',
                                  'type' : 'md'
                                });
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
                      GetX<MainController>(
                        builder: (_){
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: Container(
                              height: 290,
                              child: ListView.builder(
                                physics: BouncingScrollPhysics(),
                                padding: EdgeInsets.only(top: 20.h,bottom: 30.h),
                                scrollDirection: Axis.horizontal,
                                itemCount: mainController.mainMdList.length,
                                shrinkWrap: true,
                                itemBuilder: (context, index){
                                  return GestureDetector(
                                    onTap: (){
                                      Get.toNamed(AppRoutes.productDetailScreen,arguments: {
                                        'productId' : mainController.mainMdList[index].it_id
                                      });
                                    },
                                    child: Padding(
                                      padding: index == 4 ? EdgeInsets.zero : EdgeInsets.only(right: 11),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Stack(
                                            children: [
                                              mainController.mainMdList[index].it_img1 != ''
                                                  ? Image.network(Constants.fileUrl+mainController.mainMdList[index].it_img1,width: 146.w,height: 151.h,fit: BoxFit.cover,errorBuilder: (context,exception,stackTrace){
                                                    return Image.asset('assets/images/product_sample.png',width: 146.w,height: 151.h,fit: BoxFit.cover,);
                                              },)
                                                  : Image.asset('assets/images/product_sample.png',width: 146.w,height: 151.h,fit: BoxFit.cover,),
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
                                                        text: mainController.mainMdList[index].it_name,
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
                                                      mainController.mainMdList[index].it_cust_price != mainController.mainMdList[index].it_price ? TextSpan(
                                                        text: '${Constants.getPercent(mainController.mainMdList[index].it_price, mainController.mainMdList[index].it_cust_price)}%',
                                                        style: TextStyle(
                                                          color: ColorConstant.primary,
                                                          fontSize: 12.sp,
                                                          fontFamily: 'Noto Sans KR',
                                                          fontWeight: FontWeight.w700,
                                                        ),
                                                      ) : TextSpan(),
                                                      TextSpan(
                                                        text: ' ${Constants.numberAddComma(mainController.mainMdList[index].it_price)}원',
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
                                          mainController.mainMdList[index].it_cust_price != mainController.mainMdList[index].it_price ? Text(
                                            '${Constants.numberAddComma(mainController.mainMdList[index].it_cust_price)}원',
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
                                    ),
                                  );
                                },
                              ),
                            ),
                          );
                        },
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
                                Get.toNamed(AppRoutes.moreScreen,arguments: {
                                  'title' : '이런 상품은 어떠세요?',
                                  'type' : 'recommend'
                                });
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
                      GetX<MainController>(
                        builder: (_){
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: Container(
                              height: 290,
                              child: ListView.builder(
                                physics: BouncingScrollPhysics(),
                                padding: EdgeInsets.only(top: 20.h,bottom: 30.h),
                                scrollDirection: Axis.horizontal,
                                itemCount: mainController.mainRecommendList.length,
                                shrinkWrap: true,
                                itemBuilder: (context, index){
                                  return GestureDetector(
                                    onTap: (){
                                      Get.toNamed(AppRoutes.productDetailScreen,arguments: {
                                        'productId' : mainController.mainRecommendList[index].it_id
                                      });
                                    },
                                    child: Padding(
                                      padding: index == 4 ? EdgeInsets.zero : EdgeInsets.only(right: 11),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          mainController.mainRecommendList[index].it_img1 != ''
                                              ? Image.network(Constants.fileUrl+mainController.mainRecommendList[index].it_img1,width: 146.w,height: 151.h,fit: BoxFit.cover,errorBuilder: (context,exception,stackTrace){
                                                  return Image.asset('assets/images/product_sample.png',width: 146.w,height: 151.h,fit: BoxFit.cover,);
                                                })
                                              : Image.asset('assets/images/product_sample.png',width: 146.w,height: 151.h,fit: BoxFit.cover,),
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
                                                        text: mainController.mainRecommendList[index].it_name,
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
                                                      mainController.mainRecommendList[index].it_cust_price != mainController.mainRecommendList[index].it_price ? TextSpan(
                                                        text: '${Constants.getPercent(mainController.mainRecommendList[index].it_price, mainController.mainRecommendList[index].it_cust_price)}%',
                                                        style: TextStyle(
                                                          color: ColorConstant.primary,
                                                          fontSize: 12.sp,
                                                          fontFamily: 'Noto Sans KR',
                                                          fontWeight: FontWeight.w700,
                                                        ),
                                                      ) : TextSpan(),
                                                      TextSpan(
                                                        text: ' ${Constants.numberAddComma(mainController.mainRecommendList[index].it_price)}원',
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
                                          mainController.mainRecommendList[index].it_cust_price != mainController.mainRecommendList[index].it_price ? Text(
                                            '${Constants.numberAddComma(mainController.mainRecommendList[index].it_cust_price)}원',
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
                                    ),
                                  );
                                },
                              ),
                            ),
                          );
                        },
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
                                    Get.toNamed(AppRoutes.policy,arguments: {'type' : 'company'});
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
                                    Get.toNamed(AppRoutes.policy,arguments: {'type' : 'provision'});
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
                                    Get.toNamed(AppRoutes.policy,arguments: {'type' : 'privacy'});
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