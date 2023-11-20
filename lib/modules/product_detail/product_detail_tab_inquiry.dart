import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/product_detail/product_detail_controller.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProductDetailInquiryInfo extends GetView<ProductDetailController>{
  @override
  Widget build(BuildContext context) {
    controller.getInquiry();

    return Obx(() => ListView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.fromLTRB(30.w, 21.h, 30.w, 21.h),
      children: [
        ElevatedButton(
          onPressed: () async {
            var res = await Get.toNamed(AppRoutes.productDetailInquiryRegister);

            if(res != null){
              controller.getInquiry();
              controller.inquirySubjectController.text = '';
              controller.inquiryContentsController.text = '';
              controller.inquiryType.value = '상품';
            }else{
              controller.getInquiry();
              controller.inquirySubjectController.text = '';
              controller.inquiryContentsController.text = '';
              controller.inquiryType.value = '상품';
            }
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: ColorConstant.primary,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero),
              minimumSize: Size(Get.width,48.h)
          ),
          child: Text(
            '문의하기',
            style: TextStyle(
              color: ColorConstant.white,
              fontSize: 15.sp,
              fontFamily: 'Noto Sans KR',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index){
            return Padding(
              padding: EdgeInsets.only(top: 21.h,bottom: 25.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: RichText(
                                overflow: TextOverflow.visible,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: '[${controller.inquiryList[index].iq_type} 문의] ',
                                        style: TextStyle(
                                          color: ColorConstant.black,
                                          fontSize: 14.sp,
                                          fontFamily: 'Noto Sans KR',
                                          fontWeight: FontWeight.w700,
                                        )
                                    ),
                                    TextSpan(
                                        text: '제목',
                                        style: TextStyle(
                                          color: ColorConstant.black,
                                          fontSize: 14.sp,
                                          fontFamily: 'Noto Sans KR',
                                          fontWeight: FontWeight.w400,
                                        )
                                    ),
                                    TextSpan(
                                        text: controller.inquiryList[index].iq_time,
                                        style: TextStyle(
                                          color: Colors.transparent,
                                          fontSize: 10.sp,
                                          fontFamily: 'Noto Sans KR',
                                          fontWeight: FontWeight.w400,
                                        )
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: RichText(
                            text: TextSpan(
                                text: controller.inquiryList[index].iq_time,
                                style: TextStyle(
                                  color: ColorConstant.gray32,
                                  fontSize: 10.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                )
                            ),
                          )
                      )
                    ],
                  ),
                  controller.inquiryList[index].iq_question != '' ? Padding(
                    padding: EdgeInsets.only(top: 4.h),
                    child: Text(
                        controller.inquiryList[index].iq_question,
                        style: TextStyle(
                          color: ColorConstant.black,
                          fontSize: 14.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w400,
                        )
                    ),
                  ) : SizedBox(),
                  controller.inquiryList[index].iq_answer != '' ? Padding(
                    padding: EdgeInsets.only(top: 29.h),
                    child: Stack(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: RichText(
                                  overflow: TextOverflow.visible,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                          text: '[답변완료] ',
                                          style: TextStyle(
                                            color: ColorConstant.black,
                                            fontSize: 14.sp,
                                            fontFamily: 'Noto Sans KR',
                                            fontWeight: FontWeight.w700,
                                          )
                                      ),
                                      TextSpan(
                                          text: '제목',
                                          style: TextStyle(
                                            color: ColorConstant.black,
                                            fontSize: 14.sp,
                                            fontFamily: 'Noto Sans KR',
                                            fontWeight: FontWeight.w400,
                                          )
                                      ),
                                      TextSpan(
                                          text: controller.inquiryList[index].iq_answer_time,
                                          style: TextStyle(
                                            color: Colors.transparent,
                                            fontSize: 10.sp,
                                            fontFamily: 'Noto Sans KR',
                                            fontWeight: FontWeight.w400,
                                          )
                                      ),
                                    ],
                                  )),
                            ),
                          ],
                        ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: RichText(
                              text: TextSpan(
                                  text: controller.inquiryList[index].iq_answer_time,
                                  style: TextStyle(
                                    color: ColorConstant.gray32,
                                    fontSize: 10.sp,
                                    fontFamily: 'Noto Sans KR',
                                    fontWeight: FontWeight.w400,
                                  )
                              ),
                            )
                        )
                      ],
                    ),
                  ) : SizedBox(),
                  controller.inquiryList[index].iq_answer != '' ? Padding(
                    padding: EdgeInsets.only(top: 4.h),
                    child: Text(
                        controller.inquiryList[index].iq_answer,
                        style: TextStyle(
                          color: ColorConstant.black,
                          fontSize: 14.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w400,
                        )
                    ),
                  ) : SizedBox()
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
          itemCount: controller.inquiryList.length
        )
      ],
    ));
  }

}