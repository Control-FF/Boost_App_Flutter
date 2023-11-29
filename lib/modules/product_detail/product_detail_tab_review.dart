import 'package:boostapp/core/constants/constants.dart';
import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/product_detail/product_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProductDetailTabReview extends GetView<ProductDetailController>{
  @override
  Widget build(BuildContext context) {
    controller.getReview();

    return Obx(() => ListView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.fromLTRB(30.w, 21.h, 30.w, 21.h),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Review (${Constants.numberAddComma(controller.reviewList.length)})',
              style: TextStyle(
                color: ColorConstant.black,
                fontSize: 16.sp,
                fontFamily: 'Noto Sans KR',
                fontWeight: FontWeight.w700,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/ic_rating_fill.png',width: 14.w,height: 14.w,),
                SizedBox(width: 3.w,),
                Text(
                  '4.6',
                  style: TextStyle(
                    color: ColorConstant.black,
                    fontSize: 16.sp,
                    fontFamily: 'Noto Sans KR',
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            )
          ],
        ),
        SizedBox(height: 8,),
        ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index){
              return Padding(
                padding: EdgeInsets.only(top: 18.h,bottom: 17.h),
                child: Column(
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
                          controller.reviewList[index].is_time.split(" ")[0],
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
                      children: controller.getReviewRating(controller.reviewList[index].is_score.toDouble()),
                    ),
                    SizedBox(height: 9.h,),
                    Stack(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                                child: Text(
                                  Constants.parseHtmlString(controller.reviewList[index].is_content),
                                  maxLines: controller.reviewList[index].isExpand ?? false ? null : 2,
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
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(5),
                                topLeft: Radius.circular(5)
                            ),
                            child: Image.network(
                              controller.reviewList[index].is_img1,
                            ),
                          ),
                        ) : SizedBox(),
                        controller.reviewList[index].is_img2 != '' ? Container(
                          width: 60.w,
                          height: 60.h,
                          margin: EdgeInsets.only(right: 4.w),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(5),
                                topLeft: Radius.circular(5)
                            ),
                            child: Image.network(
                              controller.reviewList[index].is_img2,
                            ),
                          ),
                        ) : SizedBox(),
                        controller.reviewList[index].is_img3 != '' ? Container(
                          width: 60.w,
                          height: 60.h,
                          margin: EdgeInsets.only(right: 4.w),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(5),
                                topLeft: Radius.circular(5)
                            ),
                            child: Image.network(
                              controller.reviewList[index].is_img3,
                            ),
                          ),
                        ) : SizedBox()
                      ],
                    ),
                    SizedBox(height: 9.h,),
                    Text(
                      controller.reviewList[index].is_name,
                      style: TextStyle(
                        color: ColorConstant.black,
                        fontSize: 12.sp,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (context, index){
              return Divider(
                height: 0.5.h,
                thickness: 0.5,
                color: ColorConstant.gray29,
              );
            },
            itemCount: controller.reviewList.length
        )
      ],
    ));
  }

}