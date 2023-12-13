import 'package:boostapp/core/constants/constants.dart';
import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/product_detail/product_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProductDetailTabInquiryRegister extends GetView<ProductDetailController>{
  @override
  Widget build(BuildContext context) {
    return KeyboardDismissOnTap(
      child: Scaffold(
        backgroundColor: ColorConstant.white,
        appBar: AppBar(
          backgroundColor: ColorConstant.white,
          elevation: 0,
          title: Text(
            '상품 문의',
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
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Obx(() => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 12.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 60.w,
                              margin: EdgeInsets.only(right: 24.w),
                              child: controller.productData.value != null ? ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(4)),
                                child: AspectRatio(
                                  aspectRatio: 1,
                                  child: Image.network(Constants.fileUrl+controller.productData.value!.item!.it_img1!, fit: BoxFit.cover,),
                                ),
                              ) : SizedBox(),
                            ),
                            Expanded(
                              child: Text(
                                controller.productData.value!.item!.it_name,
                                style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 14.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 28.h,),
                        Divider(
                          height: 1.h,
                          thickness: 1,
                          color: ColorConstant.gray17,
                        ),
                        SizedBox(height: 17.h,),
                        Text(
                          '문의 분야',
                          style: TextStyle(
                            color: ColorConstant.black,
                            fontSize: 16.sp,
                            fontFamily: 'Noto Sans KR',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            controller.showInquiryTypePopup(context);
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 14.h),
                            padding: EdgeInsets.fromLTRB(15.w, 0.h, 15.w, 0.h),
                            height: 37.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(7)),
                              border: Border.all(color: ColorConstant.gray30,width: 1),
                              color: ColorConstant.gray31,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  controller.inquiryType.value,
                                  style: TextStyle(
                                    color: ColorConstant.black4,
                                    fontSize: 14.sp,
                                    fontFamily: 'Noto Sans KR',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Image.asset('assets/images/ic_down_black.png',width: 15.w,height: 7.h,)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 21.h,),
                        Text(
                          '제목',
                          style: TextStyle(
                            color: ColorConstant.black,
                            fontSize: 16.sp,
                            fontFamily: 'Noto Sans KR',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Container(
                          width: Get.width,
                          height: 37.h,
                          margin: EdgeInsets.only(top: 14.h),
                          padding: EdgeInsets.fromLTRB(15.w, 0.h, 15.w, 0.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            border: Border.all(color: ColorConstant.gray30,width: 1),
                            color: ColorConstant.gray31,
                          ),
                          child: TextField(
                            controller: controller.inquirySubjectController,
                            focusNode: controller.inquirySubjectFocusNode,
                            decoration: InputDecoration(
                                hintText: '',
                                hintStyle: TextStyle(
                                  color: ColorConstant.black4,
                                  fontSize: 14.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                                counterText: '',
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                contentPadding: EdgeInsets.zero

                            ),
                            maxLines: 1,
                            style: TextStyle(
                              color: ColorConstant.black4,
                              fontSize: 14.sp,
                              fontFamily: 'Noto Sans KR',
                              fontWeight: FontWeight.w400,
                            ),
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.text,
                            onSubmitted: (_) => FocusScope.of(context).requestFocus(controller.inquiryContentsFocusNode),

                          ),
                        ),
                        SizedBox(height: 21.h,),
                        Text(
                          '문의 내용',
                          style: TextStyle(
                            color: ColorConstant.black,
                            fontSize: 16.sp,
                            fontFamily: 'Noto Sans KR',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Container(
                          width: Get.width,
                          height: 229.h,
                          margin: EdgeInsets.only(top: 14.h),
                          padding: EdgeInsets.fromLTRB(15.w, 16.h, 15.w, 16.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            border: Border.all(color: ColorConstant.gray30,width: 1),
                            color: ColorConstant.gray31,
                          ),
                          child: TextField(
                            controller: controller.inquiryContentsController,
                            focusNode: controller.inquiryContentsFocusNode,
                            decoration: InputDecoration(
                                hintText: '',
                                hintStyle: TextStyle(
                                  color: ColorConstant.black4,
                                  fontSize: 14.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                                counterText: '',
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                contentPadding: EdgeInsets.zero

                            ),
                            maxLength: 600,
                            maxLines: 100,
                            style: TextStyle(
                              color: ColorConstant.black4,
                              fontSize: 14.sp,
                              fontFamily: 'Noto Sans KR',
                              fontWeight: FontWeight.w400,
                            ),
                            keyboardType: TextInputType.multiline,
                            textInputAction: TextInputAction.newline,

                          ),
                        ),
                        SizedBox(height: 21.h,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 20.w,
                              height: 20.h,
                              child: Checkbox(
                                side: BorderSide(
                                    width: 1.w,
                                    color: ColorConstant.gray7
                                ),
                                value: controller.inquiryIsSecret.value,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                checkColor: ColorConstant.white,
                                activeColor: ColorConstant.primary,
                                onChanged: (bool? value){
                                  controller.inquiryIsSecret.value = !controller.inquiryIsSecret.value;
                                },
                              ),
                            ),
                            SizedBox(width: 9.w,),
                            GestureDetector(
                              onTap: (){
                                controller.inquiryIsSecret.value = !controller.inquiryIsSecret.value;
                              },
                              child: Text(
                                '비밀글로 문의하기',
                                style: TextStyle(
                                  color: ColorConstant.gray1,
                                  fontSize: 13.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 19.h,),
                        Image.asset('assets/images/inquiry_notice.png',width: Get.width),
                        SizedBox(height: 86.h,),
                      ],
                    )),
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 55.h,
                      child: ElevatedButton(
                        onPressed: (){
                          Get.back();
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ColorConstant.primary,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero
                            )
                        ),
                        child: Text(
                          '취소 하기',
                          style: TextStyle(
                            color: ColorConstant.white,
                            fontSize: 14.sp,
                            fontFamily: 'Noto Sans KR',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 55.h,
                      child: ElevatedButton(
                        onPressed: (){
                          if(controller.inquirySubjectController.text == ''){
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                              elevation: 6.0,
                              behavior: SnackBarBehavior.floating,
                              content: Text(
                                '제목을 입력해주세요.',
                                style: TextStyle(color: Colors.white),
                              ),
                            ));
                            return;
                          }

                          if(controller.inquiryContentsController.text == ''){
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                              elevation: 6.0,
                              behavior: SnackBarBehavior.floating,
                              content: Text(
                                '문의 내용을 입력해주세요.',
                                style: TextStyle(color: Colors.white),
                              ),
                            ));
                            return;
                          }

                          controller.writeInquiry(context);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ColorConstant.accent,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero
                            )
                        ),
                        child: Text(
                          '문의 하기',
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
              )
            ],
          ),
        ),
      ),
    );
  }

}