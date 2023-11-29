import 'dart:io';

import 'package:boostapp/core/constants/constants.dart';
import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/main/pages/review/review_controller.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ReviewEditScreen extends GetView<ReviewController>{

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
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: Get.width,
                  margin: EdgeInsets.only(top: 27.h,bottom: 12.h),
                  padding: EdgeInsets.fromLTRB(11.w, 7.h, 11.w, 7.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.r)),
                      color: ColorConstant.gray16
                  ),
                  child: Obx(() => Text(
                    controller.itName.value,
                    style: TextStyle(
                      color: ColorConstant.gray12,
                      fontSize: 12.sp,
                      fontFamily: 'Noto Sans KR',
                      fontWeight: FontWeight.w700,
                    ),
                  )),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10.w, 9.h, 10.w, 9.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.r)),
                      color: ColorConstant.gray16
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Obx(() => Text(
                            controller.name.value,
                            style: TextStyle(
                              color: ColorConstant.black,
                              fontSize: 12.sp,
                              fontFamily: 'Noto Sans KR',
                              fontWeight: FontWeight.w500,
                            ),
                          )),
                          Text(
                            Constants.getToday(),
                            style: TextStyle(
                              color: ColorConstant.gray32,
                              fontSize: 10.sp,
                              fontFamily: 'Noto Sans KR',
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 1.h,),
                      RatingBar(
                        initialRating: 0,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: false,
                        itemCount: 5,
                        itemSize: 14,
                        itemPadding: EdgeInsets.only(right: 2.w),
                        ratingWidget: RatingWidget(
                          full: Image.asset('assets/images/ic_rating_fill.png',width: 14.w,height: 14.h,),
                          empty: Image.asset('assets/images/ic_rating_empty.png',width: 14.w,height: 14.h,),
                          half: Image.asset('assets/images/ic_rating_empty.png',width: 14.w,height: 14.h,)
                        ),
                        onRatingUpdate: (rating) {
                          controller.editRating.value = rating.toInt();
                        },
                      ),
                      SizedBox(height: 6.h,),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 6.h, 0, 14.h),
                        height: 124,
                        padding: EdgeInsets.all(8),
                        color: ColorConstant.white,
                        child: Column(
                          children: [
                            Expanded(
                              child: TextField(
                                controller: controller.editContentsController,
                                decoration: InputDecoration(
                                  counterText: '',
                                  hintText: '리뷰 내용을 입력하세요.',
                                  hintStyle: TextStyle(
                                    color: ColorConstant.gray2,
                                    fontSize: 12.sp,
                                    fontFamily: 'Noto Sans KR',
                                    fontWeight: FontWeight.w500,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  contentPadding: EdgeInsets.zero,
                                ),
                                maxLength: 200,
                                maxLines: 16,
                                style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 12.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                                keyboardType: TextInputType.multiline,
                                textInputAction: TextInputAction.newline,
                                onChanged: (value){
                                  controller.editContents.value = value;
                                },
                              ),
                            ),
                            Obx(() => Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                '${controller.editContents.value.length} / 200 자',
                                style: TextStyle(
                                  color: ColorConstant.gray2,
                                  fontSize: 11.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 13.h,),
                controller.ioName != '' ? Container(
                  padding: EdgeInsets.only(bottom: 20.h),
                  child: Text(
                    '[옵션] 제주삼다수 / 1박스',
                    style: TextStyle(
                      color: ColorConstant.black,
                      fontSize: 12.sp,
                      fontFamily: 'Noto Sans KR',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ) : SizedBox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '사진등록',
                      style: TextStyle(
                        color: ColorConstant.black,
                        fontSize: 11.sp,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Obx(() => Text(
                      '${controller.editImgList.length} / 3장',
                      style: TextStyle(
                        color: ColorConstant.black,
                        fontSize: 11.sp,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w500,
                      ),
                    ))
                  ],
                ),
                SizedBox(height: 12.h,),
                Obx(() => Row(
                  children: [
                    GestureDetector(
                      onTap: () async {
                        if(controller.editImgList.length == 3){
                          return;
                        }
                        FilePickerResult? result = await FilePicker.platform.pickFiles(
                            type: FileType.custom,
                            allowedExtensions: ['png','jpg','jpeg']
                        );
                        if(result != null) {
                          File file = File(result.files.single.path.toString());
                          controller.editImgList.add(file);
                        }
                      },
                      child: Container(
                        width: 57.w,
                        height: 57.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(7.r)),
                            color: ColorConstant.gray2
                        ),
                        child: Icon(Icons.add,color: ColorConstant.white,size: 24,),
                      ),
                    ),
                    controller.editImgList.isNotEmpty ? Container(
                      margin: EdgeInsets.only(left: 8.w),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(7.r)),
                            child: Image.file(
                              File(controller.editImgList[0]!.path),width: 57.w,height: 57.h,fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: GestureDetector(
                              onTap: (){
                                controller.editImgList.removeAt(0);
                              },
                              child: Image.asset('assets/images/ic_circle_close.png',width: 13.86,height: 13.86,),
                            ),
                          )
                        ],
                      ),
                    ) : SizedBox(),
                    controller.editImgList.length >= 2 ? Container(
                      margin: EdgeInsets.only(left: 8.w),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(7.r)),
                            child: Image.file(
                              File(controller.editImgList[1]!.path),width: 57.w,height: 57.h,fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: GestureDetector(
                              onTap: (){
                                controller.editImgList.removeAt(1);
                              },
                              child: Image.asset('assets/images/ic_circle_close.png',width: 13.86,height: 13.86,),
                            ),
                          )
                        ],
                      ),
                    ) : SizedBox(),
                    controller.editImgList.length >= 3 ? Container(
                      margin: EdgeInsets.only(left: 8.w),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(7.r)),
                            child: Image.file(
                              File(controller.editImgList[2]!.path),width: 57.w,height: 57.h,fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: GestureDetector(
                              onTap: (){
                                controller.editImgList.removeAt(2);
                              },
                              child: Image.asset('assets/images/ic_circle_close.png',width: 13.86,height: 13.86,),
                            ),
                          )
                        ],
                      ),
                    ) : SizedBox()
                  ],
                )),
                SizedBox(height: 39.h,),
                Center(
                  child: Container(
                    height: 44.h,
                    width: 155.w,
                    child: ElevatedButton(
                      onPressed: (){
                        String contents = controller.editContentsController.text;
                        int rating = controller.editRating.value;

                        if(contents == ''){
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            elevation: 6.0,
                            behavior: SnackBarBehavior.floating,
                            content: Text(
                              '리뷰 내용을 작성해주세요.',
                              style: TextStyle(color: Colors.white),
                            ),
                          ));
                          return;
                        }

                        if(rating == 0){
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            elevation: 6.0,
                            behavior: SnackBarBehavior.floating,
                            content: Text(
                              '별점을 선택해주세요.',
                              style: TextStyle(color: Colors.white),
                            ),
                          ));
                          return;
                        }

                        controller.registerReview(context);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: ColorConstant.primary,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8.r))
                          )
                      ),
                      child: Text(
                        '리뷰 작성하기',
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
          ),
        ),
      ),
    );
  }

}