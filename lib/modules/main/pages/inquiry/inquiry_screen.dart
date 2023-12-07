import 'dart:io';

import 'package:boostapp/core/constants/constants.dart';
import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/main/pages/inquiry/inquiry_controller.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class InquiryScreen extends GetView<InquiryController>{

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: ColorConstant.white,
            elevation: 0,
            title: Text(
              '고객센터',
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
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: Get.width,
                          height: 137.h,
                          color: ColorConstant.gray2.withOpacity(0.5),
                          alignment: Alignment.center,
                          child: Text(
                            '문의하시거나 신고하실 내용을\n빠르게 확인하세요.',
                            style: TextStyle(
                              color: ColorConstant.black,
                              fontSize: 16.sp,
                              fontFamily: 'Noto Sans KR',
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 46.h,)
                      ],
                    ),
                    Positioned(
                      bottom: 30.h,
                      left: 0,
                      right: 0,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 41.w),
                        height: 32.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10.r)),
                            border: Border.all(color: ColorConstant.primary,width: 2),
                            color: ColorConstant.white
                        ),
                        child: TextField(
                          controller: controller.searchController,
                          decoration: InputDecoration(
                              hintStyle: TextStyle(
                                color: ColorConstant.black2,
                                fontSize: 13.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w700,
                              ),
                              hintText: '내 문의내역을 검색하세요.',
                              counterText: '',
                              contentPadding: EdgeInsets.only(left: 18.w),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide.none
                              ),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide.none
                              ),
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide.none
                              ),
                              suffixIconConstraints: BoxConstraints(
                                  minWidth: 16.w,
                                  minHeight: 16.h
                              ),
                              suffixIcon: Container(
                                margin: EdgeInsets.fromLTRB(18.w, 7.h, 18.h, 7.w),
                                child: GestureDetector(
                                  onTap: (){
                                    controller.getInquiryList();
                                    FocusManager.instance.primaryFocus?.unfocus();
                                  },
                                  child: Image.asset('assets/images/ic_search_primary.png'),
                                ),
                              )
                          ),
                          maxLines: 1,
                          style: TextStyle(
                            color: ColorConstant.gray1,
                            fontSize: 14.sp,
                            fontFamily: 'Noto Sans KR',
                            fontWeight: FontWeight.w500,
                          ),
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.done,
                        ),
                      ),
                    )
                  ],
                ),
                Obx(() => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Text(
                    controller.type.value == 'list' ? '내 문의 전체보기' : (controller.type.value == 'register' ? '문의 작성하기' : '문의 수정하기'),
                    style: TextStyle(
                      color: ColorConstant.primary,
                      fontSize: 14.sp,
                      fontFamily: 'Noto Sans KR',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )),
                SizedBox(height: 16.h,),
                Obx(() => controller.type.value == 'list' ? ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: controller.inquiryList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: (){
                            bool isExpand = controller.inquiryList[index].isExpand!;
                            controller.inquiryList[index] = controller.inquiryList[index].copyWith(isExpand: !isExpand);
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(10.w, 8.h, 10.w, 7.h),
                            margin: EdgeInsets.symmetric(horizontal: 30.w),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(15.r)),
                                border: Border.all(color: controller.inquiryList[index].isExpand! ? ColorConstant.primary : ColorConstant.gray2,width: 1)
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Q',
                                      style: TextStyle(
                                        color: ColorConstant.black.withOpacity(0.77),
                                        fontSize: 15.sp,
                                        fontFamily: 'Noto Sans KR',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(width: 5.w,),
                                    Text(
                                      controller.inquiryList[index].qa_subject,
                                      style: TextStyle(
                                        color: ColorConstant.gray18,
                                        fontSize: 12.sp,
                                        fontFamily: 'Noto Sans KR',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      Constants.getDateTime(controller.inquiryList[index].qa_datetime!),
                                      style: TextStyle(
                                        color: ColorConstant.gray18,
                                        fontSize: 10.sp,
                                        fontFamily: 'Noto Sans KR',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    controller.inquiryList[index].isExpand! ? Row(
                                      children: [
                                        SizedBox(width: 16,),
                                        GestureDetector(
                                          onTap: () async {
                                            controller.type.value = 'update';
                                            controller.titleController.text = controller.inquiryList[index].qa_subject;
                                            controller.contentsController.text = controller.inquiryList[index].qa_content;
                                            controller.selectIndex.value = controller.inquiryList[index].qa_id;

                                            if(controller.inquiryList[index].qa_file1 != ''){
                                              File? file = await controller.urlToFile(controller.inquiryList[index].qa_file1);

                                              if(file != null){
                                                controller.imgList.add(file);
                                              }
                                            }

                                            if(controller.inquiryList[index].qa_file2 != ''){
                                              File? file = await controller.urlToFile(controller.inquiryList[index].qa_file2);

                                              if(file != null){
                                                controller.imgList.add(file);
                                              }
                                            }
                                          },
                                          child: Text(
                                            '수정',
                                            style: TextStyle(
                                              color: ColorConstant.primary,
                                              fontSize: 10.sp,
                                              fontFamily: 'Noto Sans KR',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 2.w,),
                                        VerticalDivider(
                                          width: 0.3,
                                          thickness: 0.3,
                                          color: ColorConstant.primary,
                                        ),
                                        SizedBox(width: 2.w,),
                                        GestureDetector(
                                          onTap: (){
                                            controller.deleteInquiry(context, controller.inquiryList[index].qa_id);
                                          },
                                          child: Text(
                                            '삭제',
                                            style: TextStyle(
                                              color: ColorConstant.primary,
                                              fontSize: 10.sp,
                                              fontFamily: 'Noto Sans KR',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ) : SizedBox()
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        controller.inquiryList[index].isExpand! ? SizedBox(height: 7.h,) : SizedBox(),
                        controller.inquiryList[index].isExpand! && controller.inquiryList[index].qa_content != '' ? Container(
                          width: Get.width,
                          padding: EdgeInsets.fromLTRB(16.w, 13.h, 16.w, 13.h),
                          margin: EdgeInsets.symmetric(horizontal: 30.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15.r)),
                              border: Border.all(color: ColorConstant.gray2,width: 1)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                controller.inquiryList[index].qa_content,
                                style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 12.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 16.h,),
                              Row(
                                children: [
                                  controller.inquiryList[index].qa_file1 != '' ? Padding(
                                    padding: EdgeInsets.only(right: 4.w),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.all(Radius.circular(7.r)),
                                      child: Image.network(
                                        controller.inquiryList[index].qa_file1,width: 57.w,height: 57.h,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ) : SizedBox(),
                                  controller.inquiryList[index].qa_file2 != '' ? Padding(
                                    padding: EdgeInsets.only(right: 4.w),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.all(Radius.circular(7.r)),
                                      child: Image.network(
                                        controller.inquiryList[index].qa_file2,width: 57.w,height: 57.h,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ) : SizedBox()
                                ],
                              )
                            ],
                          ),
                        ) : SizedBox(),
                        controller.inquiryList[index].answer_content != '' ? GestureDetector(
                          onTap: (){
                            bool isExpand = controller.inquiryList[index].isExpand!;
                            controller.inquiryList[index] = controller.inquiryList[index].copyWith(isExpand: !isExpand);
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(10.w, 8.h, 10.w, 7.h),
                            margin: EdgeInsets.fromLTRB(30.w, 7.h, 30.w, 0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(15.r)),
                                border: Border.all(color: controller.inquiryList[index].isExpand! ? ColorConstant.accent : ColorConstant.gray2,width: 1)
                            ),
                            child: Row(
                              crossAxisAlignment: controller.inquiryList[index].isExpand! ? CrossAxisAlignment.start : CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'A',
                                  style: TextStyle(
                                    color: ColorConstant.black.withOpacity(0.77),
                                    fontSize: 15.sp,
                                    fontFamily: 'Noto Sans KR',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(width: 5.w,),
                                Expanded(
                                  child: Text(
                                    Constants.parseHtmlString(controller.inquiryList[index].answer_content!),
                                    style: TextStyle(
                                      color: ColorConstant.gray18,
                                      fontSize: 12.sp,
                                      fontFamily: 'Noto Sans KR',
                                      fontWeight: FontWeight.w500,
                                    ),
                                    maxLines: controller.inquiryList[index].isExpand! ? null : 1,
                                    overflow: TextOverflow.clip,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ) : SizedBox(),

                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index){
                    return SizedBox(height: 7.h,);
                  },

                ) : Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 30.w),
                        width: Get.width,
                        child: TextField(
                          focusNode: controller.titleFocusNode,
                          controller: controller.titleController,
                          decoration: InputDecoration(
                            hintText: '제목을 입력하세요.',
                            hintStyle: TextStyle(
                              color: ColorConstant.gray2,
                              fontSize: 12.sp,
                              fontFamily: 'Noto Sans KR',
                              fontWeight: FontWeight.w500,
                            ),
                            counterText: '',
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1.w,
                                  color: ColorConstant.primary
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(15.r)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1.w,
                                  color: ColorConstant.gray2
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(15.r)),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1.w,
                                  color: ColorConstant.gray2
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(15.r)),
                            ),
                            contentPadding: EdgeInsets.fromLTRB(17.w, 8.h, 17.w, 8.h)
                          ),
                          maxLines: 1,
                          style: TextStyle(
                            color: ColorConstant.black,
                            fontSize: 12.sp,
                            fontFamily: 'Noto Sans KR',
                            fontWeight: FontWeight.w400,
                          ),
                          textInputAction: TextInputAction.next,
                          onSubmitted: (_) => FocusScope.of(context).requestFocus(controller.contentsFocusNode),
                        ),
                      ),
                      SizedBox(height: 8.h,),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 30.w),
                        width: Get.width,
                        height: 127.h,
                        child: TextField(
                          focusNode: controller.contentsFocusNode,
                          controller: controller.contentsController,
                          decoration: InputDecoration(
                            hintText: '내용을 입력하세요.',
                            hintStyle: TextStyle(
                              color: ColorConstant.gray2,
                              fontSize: 12.sp,
                              fontFamily: 'Noto Sans KR',
                              fontWeight: FontWeight.w500,
                            ),
                            counterText: '',
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1.w,
                                  color: ColorConstant.primary
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(15.r)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1.w,
                                  color: ColorConstant.gray2
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(15.r)),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1.w,
                                  color: ColorConstant.gray2
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(15.r)),
                            ),
                            contentPadding: EdgeInsets.fromLTRB(17.w, 13.h, 17.w, 13.h),
                          ),
                          maxLength: 200,
                          maxLines: 16,
                          style: TextStyle(
                            color: ColorConstant.black,
                            fontSize: 12.sp,
                            fontFamily: 'Noto Sans KR',
                            fontWeight: FontWeight.w400,
                          ),
                          textInputAction: TextInputAction.done,
                          onSubmitted: (_) => FocusManager.instance.primaryFocus?.unfocus(),
                        ),
                      ),
                      SizedBox(height: 8.h,),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 30.w),
                        padding: EdgeInsets.fromLTRB(17.w, 8.h, 17.w, 8.h),
                        decoration: BoxDecoration(
                          border: Border.all(color: ColorConstant.gray2, width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(15.r)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '첨부파일',
                              style: TextStyle(
                                color: ColorConstant.gray2,
                                fontSize: 12.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 8.h,),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () async {
                                    if(controller.imgList.length == 2){
                                      return;
                                    }
                                    final ImagePicker picker = ImagePicker();

                                    final XFile? pickedFile = await picker.pickImage(source: ImageSource.gallery);
                                    if (pickedFile != null) {
                                      File file = File(pickedFile.path);
                                      controller.imgList.add(file);
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
                                controller.imgList.isNotEmpty ? Container(
                                  margin: EdgeInsets.only(left: 8.w),
                                  child: Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.all(Radius.circular(7.r)),
                                        child: Image.file(
                                          File(controller.imgList[0]!.path),width: 57.w,height: 57.h,fit: BoxFit.cover,
                                        ),
                                      ),
                                      Positioned(
                                        top: 0,
                                        right: 0,
                                        child: GestureDetector(
                                          onTap: (){
                                            controller.imgList.removeAt(0);
                                          },
                                          child: Image.asset('assets/images/ic_circle_close.png',width: 13.86,height: 13.86,),
                                        ),
                                      )
                                    ],
                                  ),
                                ) : SizedBox(),
                                controller.imgList.length >= 2 ? Container(
                                  margin: EdgeInsets.only(left: 8.w),
                                  child: Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.all(Radius.circular(7.r)),
                                        child: Image.file(
                                          File(controller.imgList[1]!.path),width: 57.w,height: 57.h,fit: BoxFit.cover,
                                        ),
                                      ),
                                      Positioned(
                                        top: 0,
                                        right: 0,
                                        child: GestureDetector(
                                          onTap: (){
                                            controller.imgList.removeAt(1);
                                          },
                                          child: Image.asset('assets/images/ic_circle_close.png',width: 13.86,height: 13.86,),
                                        ),
                                      )
                                    ],
                                  ),
                                ) : SizedBox(),
                              ],
                            )
                          ],
                        ),

                      )
                    ],
                  ),
                )),
                SizedBox(height: 13.h,),
                Obx(() => Center(
                  child: controller.type.value == 'list' ? ElevatedButton(
                    onPressed: () async {
                      controller.type.value = 'register';
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorConstant.primary,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.r))),
                        minimumSize: Size(115.w,35.h)
                    ),
                    child: Text(
                      '문의 작성하기',
                      style: TextStyle(
                        color: ColorConstant.white,
                        fontSize: 13.sp,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ) : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () async {
                          controller.type.value = 'list';
                          controller.titleController.text = '';
                          controller.contentsController.text = '';
                          controller.imgList.clear();
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ColorConstant.gray33,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10.r))),
                            minimumSize: Size(83.w,35.h)
                        ),
                        child: Text(
                          '취소',
                          style: TextStyle(
                            color: ColorConstant.black,
                            fontSize: 13.sp,
                            fontFamily: 'Noto Sans KR',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(width: 10.w,),
                      ElevatedButton(
                        onPressed: () async {
                          FocusManager.instance.primaryFocus?.unfocus();

                          String title = controller.titleController.text;
                          String contents = controller.contentsController.text;

                          if(title.isEmpty){
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                              elevation: 6.0,
                              behavior: SnackBarBehavior.floating,
                              content: Text(
                                '제목을 입력하세요.',
                                style: TextStyle(color: Colors.white),
                              ),
                            ));
                            return;
                          }

                          if(contents.trim().isEmpty){
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                              elevation: 6.0,
                              behavior: SnackBarBehavior.floating,
                              content: Text(
                                '내용을 입력하세요.',
                                style: TextStyle(color: Colors.white),
                              ),
                            ));
                            return;
                          }

                          if(controller.type.value == 'register') {
                            controller.writeInquiry(context);
                          }else if(controller.type.value == 'update'){
                            controller.updateInquiry(context);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ColorConstant.accent,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10.r))),
                            minimumSize: Size(83.w,35.h)
                        ),
                        child: Text(
                          controller.type.value == 'register' ? '작성완료' : '수정완료',
                          style: TextStyle(
                            color: ColorConstant.white,
                            fontSize: 13.sp,
                            fontFamily: 'Noto Sans KR',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                )),
                SizedBox(height: 38.h,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Text(
                    '자주 묻는 질문',
                    style: TextStyle(
                      color: ColorConstant.primary,
                      fontSize: 14.sp,
                      fontFamily: 'Noto Sans KR',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 16.h,),
                Obx(() => ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: controller.faqList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: (){
                            bool isExpand = controller.faqList[index].isExpand!;
                            controller.faqList[index] = controller.faqList[index].copyWith(isExpand: !isExpand);
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(10.w, 8.h, 10.w, 7.h),
                            margin: EdgeInsets.symmetric(horizontal: 30.w),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(15.r)),
                                border: Border.all(color: controller.faqList[index].isExpand! ? ColorConstant.primary : ColorConstant.gray2,width: 1)
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Q',
                                  style: TextStyle(
                                    color: ColorConstant.black.withOpacity(0.77),
                                    fontSize: 15.sp,
                                    fontFamily: 'Noto Sans KR',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(width: 5.w,),
                                Text(
                                  controller.faqList[index].fa_subject,
                                  style: TextStyle(
                                    color: ColorConstant.gray18,
                                    fontSize: 12.sp,
                                    fontFamily: 'Noto Sans KR',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        controller.faqList[index].isExpand! ? SizedBox(height: 7.h,) : SizedBox(),
                        controller.faqList[index].isExpand! && controller.faqList[index].fa_content != '' ? Container(
                          width: Get.width,
                          padding: EdgeInsets.fromLTRB(16.w, 13.h, 16.w, 13.h),
                          margin: EdgeInsets.symmetric(horizontal: 30.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15.r)),
                              border: Border.all(color: ColorConstant.gray2,width: 1)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                controller.faqList[index].fa_content,
                                style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 12.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ) : SizedBox(),




                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index){
                    return SizedBox(height: 7.h,);
                  },

                ),
                ),
                SizedBox(height: 13.h,),
                Center(
                  child: OutlinedButton(
                    onPressed: () async {

                    },
                    style: OutlinedButton.styleFrom(
                        backgroundColor: ColorConstant.primary,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.r))),
                        minimumSize: Size(115.w,35.h)
                    ),
                    child: Text(
                      '상담하기',
                      style: TextStyle(
                        color: ColorConstant.white,
                        fontSize: 13.sp,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.h,)
              ],
            ),
          )
      ),
    );
  }


}