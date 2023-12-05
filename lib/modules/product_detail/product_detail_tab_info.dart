import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/product_detail/product_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProductDetailTabInfo extends GetView<ProductDetailController>{
  @override
  Widget build(BuildContext context) {
    return Obx(() => ListView(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      children: [
        SizedBox(height: 30.h,),
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
              Container(
                width: Get.width,
                child: Html(
                  data: controller.nullCheck(controller.productData.value?.item?.it_explan),
                ),
              )
            ],
          ),
        )
      ],
    ));
  }

}