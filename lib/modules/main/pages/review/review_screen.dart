import 'package:boostapp/core/constants/constants.dart';
import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/main/pages/review/review_controller.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ReviewScreen extends GetView<ReviewController>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorConstant.white,
          elevation: 0,
          title: Text(
            '리뷰',
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
        ),
        backgroundColor: ColorConstant.white,
        body: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index){
            return Obx(() => Padding(
              padding: EdgeInsets.only(top: 18.h,bottom: 17.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '신선신선야채맨',
                        style: TextStyle(
                          color: ColorConstant.black,
                          fontSize: 14.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '2023-06-02',
                        style: TextStyle(
                          color: ColorConstant.gray32,
                          fontSize: 10.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.h,),
                  Row(
                    children: controller.getReviewRating(4.6),
                  ),
                  SizedBox(height: 9.h,),
                  controller.isExpand.value ? Text(
                    '[옵션] 제주삼다수 / 1박스',
                    style: TextStyle(
                      color: ColorConstant.black,
                      fontSize: 12.sp,
                      fontFamily: 'Noto Sans KR',
                      fontWeight: FontWeight.w700,
                    ),
                  ) : SizedBox(),
                  controller.isExpand.value ? Container(
                    margin: EdgeInsets.only(top: 17.h,bottom: 12.h),
                    width: Get.width,
                    height: 187.h,
                    child: PageView(
                      controller: controller.pageController,
                      children: [
                        Image.network(controller.is_img1.value,width: Get.width,),
                        Image.network(controller.is_img2.value,width: Get.width,),
                        Image.network(controller.is_img3.value,width: Get.width,),
                      ],
                    ),
                  ) : SizedBox(),
                  Stack(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                              child: Text(
                                Constants.parseHtmlString('물맛이 좋고 깨끗해요. 지하 암반수에서 체취한 물을 담은것 같아요. 물맛도 좋지만 정말 깨끗한 물을 마시는 것 같은 느낌이 들어요. 등산하고 나서 먹는 약수터 물 같아요. 정말 깨끗합니다.  산약수물 일부터 뜨러 안다녀도 될거같아요. 삼다수 드셔보신분 중 제 리뷰 보신 분들은 제말이 무슨 말인지 아실거예요.'),
                                maxLines: controller.isExpand.value ? null : 2,
                                style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 12.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                          ),
                        ],
                      ),
                      !(controller.isExpand.value ?? false) ? Positioned(
                          bottom: 0,
                          right: 0,
                          child: InkWell(
                            onTap: (){
                              controller.isExpand.value = true;
                              //controller.reviewList[index] = controller.reviewList[index].copyWith(isExpand: true);
                            },
                            child: Container(
                              color: ColorConstant.white,
                              child: RichText(
                                text: TextSpan(
                                    children: [
                                      TextSpan(
                                          text: '  ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.sp,
                                            fontFamily: 'Noto Sans KR',
                                            fontWeight: FontWeight.w700,
                                          )
                                      ),
                                      TextSpan(
                                          text: '..자세히',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12.sp,
                                              fontFamily: 'Noto Sans KR',
                                              fontWeight: FontWeight.w700,
                                              decoration: TextDecoration.underline
                                          )
                                      )
                                    ]
                                ),
                              ),
                            ),
                          )
                      ) : SizedBox()
                    ],
                  ),
                  SizedBox(height: 12.h,),
                  Row(
                    children: [
                      controller.is_img1.value != '' ? Container(
                        width: 60.w,
                        height: 60.h,
                        margin: EdgeInsets.only(right: 4.w),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5),
                              topLeft: Radius.circular(5)
                          ),
                          child: Image.network(
                            controller.is_img1.value,
                          ),
                        ),
                      ) : SizedBox(),
                      controller.is_img2.value != '' ? Container(
                        width: 60.w,
                        height: 60.h,
                        margin: EdgeInsets.only(right: 4.w),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5),
                              topLeft: Radius.circular(5)
                          ),
                          child: Image.network(
                            controller.is_img2.value,
                          ),
                        ),
                      ) : SizedBox(),
                      controller.is_img3.value != '' ? Container(
                        width: 60.w,
                        height: 60.h,
                        margin: EdgeInsets.only(right: 4.w),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5),
                              topLeft: Radius.circular(5)
                          ),
                          child: Image.network(
                            controller.is_img3.value,
                          ),
                        ),
                      ) : SizedBox()
                    ],
                  ),
                  SizedBox(height: 9.h,),
                  !controller.isExpand.value ? Text(
                    '[옵션] 제주삼다수 / 1박스',
                    style: TextStyle(
                      color: ColorConstant.black,
                      fontSize: 12.sp,
                      fontFamily: 'Noto Sans KR',
                      fontWeight: FontWeight.w700,
                    ),
                  ) : SizedBox(),
                  !controller.isExpand.value ? Padding(
                    padding: EdgeInsets.only(top: 22),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 44.h,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  side: BorderSide(width: 1.w, color: ColorConstant.primary),
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(8.r))
                                  ),
                                  padding: EdgeInsets.all(0)
                              ),
                              onPressed: (){
                                controller.showReviewPopup(context,'delete',index);
                              },
                              child: Text(
                                '리뷰 삭제하기',
                                style: TextStyle(
                                  color: ColorConstant.primary,
                                  fontSize: 14.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 7.w,),
                        Expanded(
                          child: Container(
                            height: 44.h,
                            child: ElevatedButton(
                              onPressed: (){
                                Get.toNamed(AppRoutes.reviewEdit);
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: ColorConstant.primary,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(8.r))
                                  )
                              ),
                              child: Text(
                                '리뷰 수정하기',
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
                    ),
                  ) : SizedBox(),
                  controller.isExpand.value ? Padding(
                    padding: EdgeInsets.only(top: 14.h),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '사장님 댓글 0개',
                              style: TextStyle(
                                color: ColorConstant.gray12,
                                fontSize: 12.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '2023-08-03',
                              style: TextStyle(
                                color: ColorConstant.gray12,
                                fontSize: 12.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 13.h,),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                Constants.parseHtmlString('고객님 안녕하세요. 부스트 운영자 입니다.해당상품에 대해 좋은 평가 주셔서 감사합니다.  앞으로도 더 좋은 상품 판매하도록 노력하겠습니다.  감사합니다.'),
                                style: TextStyle(
                                  color: ColorConstant.gray12,
                                  fontSize: 12.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ) : SizedBox(),
                  controller.isExpand.value ? Padding(
                    padding: EdgeInsets.only(top: 22),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 44.h,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  side: BorderSide(width: 1.w, color: ColorConstant.primary),
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(8.r))
                                  ),
                                  padding: EdgeInsets.all(0)
                              ),
                              onPressed: (){
                                Get.back();
                              },
                              child: Text(
                                '리뷰 삭제하기',
                                style: TextStyle(
                                  color: ColorConstant.primary,
                                  fontSize: 14.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 7.w,),
                        Expanded(
                          child: Container(
                            height: 44.h,
                            child: ElevatedButton(
                              onPressed: (){
                                //Get.offAllNamed(AppRoutes.loginScreen);
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: ColorConstant.primary,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(8.r))
                                  )
                              ),
                              child: Text(
                                '리뷰 수정하기',
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
                    ),
                  ) : SizedBox(),
                ],
              ),
            ));
          },
          itemCount: 10
        ),
      ),
    );
  }

}