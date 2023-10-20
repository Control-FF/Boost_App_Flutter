import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/address/address_edit_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AddressEditScreen extends GetView<AddressEditController>{

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        backgroundColor: ColorConstant.white,
        appBar: AppBar(
          backgroundColor: ColorConstant.white,
          elevation: 0,
          title: Text(
            '배송지 추가',
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
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            children: [
              Expanded(
                child: Form(
                  key: controller.formKey,
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 29.h,),
                          Text(
                            '받는 사람',
                            style: TextStyle(
                              color: ColorConstant.black.withOpacity(0.77),
                              fontSize: 14.sp,
                              fontFamily: 'Noto Sans KR',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 7.h),
                            width: Get.width,
                            height: 55.h,
                            child: TextField(
                              controller: controller.receiveNameController,
                              decoration: InputDecoration(
                                counterText: '',
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1.w,
                                      color: ColorConstant.gray2
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(4.w)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1.w,
                                      color: ColorConstant.gray2
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(4.w)),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1.w,
                                      color: ColorConstant.gray2
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(4.w)),
                                ),
                              ),
                              maxLines: 1,
                              style: TextStyle(
                                color: ColorConstant.gray1,
                                fontSize: 14.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w500,
                              ),
                              keyboardType: TextInputType.name,
                              textInputAction: TextInputAction.next,
                              onSubmitted: (_) => FocusScope.of(context).nextFocus(),
                            ),
                          ),
                          SizedBox(height: 13.h,),
                          Text(
                            '전화 번호',
                            style: TextStyle(
                              color: ColorConstant.black.withOpacity(0.77),
                              fontSize: 14.sp,
                              fontFamily: 'Noto Sans KR',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 9.h),
                            width: Get.width,
                            height: 55.h,
                            child: TextField(
                              controller: controller.phoneController,
                              decoration: InputDecoration(
                                counterText: '',
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1.w,
                                      color: ColorConstant.gray2
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(4.w)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1.w,
                                      color: ColorConstant.gray2
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(4.w)),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1.w,
                                      color: ColorConstant.gray2
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(4.w)),
                                ),
                                suffixIconConstraints: BoxConstraints(
                                    minWidth: 81.w,
                                    minHeight: 23.h
                                ),
                              ),
                              maxLines: 1,
                              maxLength: 13,
                              style: TextStyle(
                                color: ColorConstant.gray1,
                                fontSize: 14.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w500,
                              ),
                              keyboardType: TextInputType.number,
                              textInputAction: TextInputAction.next,
                              inputFormatters: [
                                MaskTextInputFormatter(
                                  mask: '###-####-####',
                                  filter: {"#": RegExp(r'[0-9]')},
                                  type: MaskAutoCompletionType.lazy,
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 13.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '주소',
                                style: TextStyle(
                                  color: ColorConstant.black.withOpacity(0.77),
                                  fontSize: 14.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Container(
                                width: 72.w,
                                height: 30.h,
                                child: ElevatedButton(
                                  onPressed: (){

                                  },
                                  child: Text(
                                    '주소검색',
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
                                          borderRadius: BorderRadius.all(Radius.circular(4.w))
                                      ),
                                      padding: EdgeInsets.all(0),
                                      minimumSize: Size(72.w,30.h)
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 9.h),
                            padding: EdgeInsets.symmetric(horizontal: 13.w),
                            width: Get.width,
                            height: 55.h,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1.w,
                                  color: ColorConstant.gray2
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(4.w)),
                            ),
                            child: Text(
                              controller.addressController.text,
                              style: TextStyle(
                                color: ColorConstant.gray1,
                                fontSize: 14.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w500,
                              )
                            ),
                          ),
                          SizedBox(height: 13.h,),
                          Text(
                            '상세주소',
                            style: TextStyle(
                              color: ColorConstant.black.withOpacity(0.77),
                              fontSize: 14.sp,
                              fontFamily: 'Noto Sans KR',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 7.h),
                            width: Get.width,
                            height: 55.h,
                            child: TextField(
                              controller: controller.addressController,
                              decoration: InputDecoration(
                                counterText: '',
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1.w,
                                      color: ColorConstant.gray2
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(4.w)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1.w,
                                      color: ColorConstant.gray2
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(4.w)),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1.w,
                                      color: ColorConstant.gray2
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(4.w)),
                                ),
                              ),
                              maxLines: 1,
                              style: TextStyle(
                                color: ColorConstant.gray1,
                                fontSize: 14.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w500,
                              ),
                              keyboardType: TextInputType.streetAddress,
                              textInputAction: TextInputAction.done,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              Container(
                width: Get.width,
                height: 55.h,
                margin: EdgeInsets.fromLTRB(0, 14.h, 0, 47.h),
                child: ElevatedButton(
                  onPressed: (){
                    //Get.toNamed(AppRoutes.registerScreen);
                    Get.back();
                  },
                  child: Text(
                    '배송지 추가하기',
                    style: TextStyle(
                      color: ColorConstant.white,
                      fontSize: 16.sp,
                      fontFamily: 'Noto Sans KR',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ColorConstant.primary,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.w))
                      )
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}