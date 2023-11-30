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
                        controller.reviewList[index].is_name,
                        style: TextStyle(
                          color: ColorConstant.black,
                          fontSize: 14.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        controller.reviewList[index].is_time.split(' ')[0],
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
                  controller.reviewList[index].isExpand! ? Text(
                    '[옵션] 욥션들어갈자리',
                    style: TextStyle(
                      color: ColorConstant.black,
                      fontSize: 12.sp,
                      fontFamily: 'Noto Sans KR',
                      fontWeight: FontWeight.w700,
                    ),
                  ) : SizedBox(),
                  controller.reviewList[index].isExpand! ? Container(
                    margin: EdgeInsets.only(top: 17.h,bottom: 12.h),
                    width: Get.width,
                    height: 187.h,
                    child: PageView(
                      controller: controller.pageController,
                      children: [
                        Image.network(controller.reviewList[index].is_img1,width: Get.width,),
                        Image.network(controller.reviewList[index].is_img2,width: Get.width,),
                        Image.network(controller.reviewList[index].is_img3,width: Get.width,),
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
                                controller.reviewList[index].is_content,
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
                      !(controller.reviewList[index].isExpand ?? false) ? Positioned(
                          bottom: 0,
                          right: 0,
                          child: InkWell(
                            onTap: (){
                              controller.reviewList[index] = controller.reviewList[index].copyWith(isExpand: true);
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
                      controller.reviewList[index].is_img1 != '' ? Container(
                        width: 60.w,
                        height: 60.h,
                        margin: EdgeInsets.only(right: 4.w),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          child: Image.network(
                            controller.reviewList[index].is_img1,
                            width: 60.w,
                            height: 60.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ) : SizedBox(),
                      controller.reviewList[index].is_img2 != '' ? Container(
                        width: 60.w,
                        height: 60.h,
                        margin: EdgeInsets.only(right: 4.w),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          child: Image.network(
                            controller.reviewList[index].is_img2,
                            width: 60.w,
                            height: 60.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ) : SizedBox(),
                      controller.reviewList[index].is_img3 != '' ? Container(
                        width: 60.w,
                        height: 60.h,
                        margin: EdgeInsets.only(right: 4.w),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          child: Image.network(
                            controller.reviewList[index].is_img3,
                            width: 60.w,
                            height: 60.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ) : SizedBox(),
                    ],
                  ),
                  SizedBox(height: 9.h,),
                  !(controller.reviewList[index].isExpand ?? false) ? Text(
                    '[옵션] 옵션들어갈곳',
                    style: TextStyle(
                      color: ColorConstant.black,
                      fontSize: 12.sp,
                      fontFamily: 'Noto Sans KR',
                      fontWeight: FontWeight.w700,
                    ),
                  ) : SizedBox(),
                  !(controller.reviewList[index].isExpand ?? false) ? Padding(
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
                  controller.reviewList[index].isExpand ?? false ? Padding(
                    padding: EdgeInsets.only(top: 14.h),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '사장님 댓글 ${controller.reviewList[index].is_reply_content == '' ? 0 : 1}개',
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
                        controller.reviewList[index].is_reply_content != '' ? Row(
                          children: [
                            Expanded(
                              child: Text(
                                controller.reviewList[index].is_reply_content,
                                style: TextStyle(
                                  color: ColorConstant.gray12,
                                  fontSize: 12.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          ],
                        ) : SizedBox()
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
                                controller.showReviewPopup(context, 'delete', index);
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
          itemCount: controller.reviewList.length
        ),
      ),
    );
  }

}