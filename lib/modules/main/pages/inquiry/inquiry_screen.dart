import 'package:boostapp/core/constants/constants.dart';
import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/main/pages/inquiry/inquiry_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Text(
                  '내 문의 전체보기',
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
                                            onTap: (){

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
                                          borderRadius: BorderRadius.all(Radius.circular(5.r)),
                                          child: Image.network(
                                            controller.inquiryList[index].qa_file1,width: 27.w,height: 27.h,
                                          ),
                                        ),
                                      ) : SizedBox(),
                                    controller.inquiryList[index].qa_file2 != '' ? Padding(
                                      padding: EdgeInsets.only(right: 4.w),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(Radius.circular(5.r)),
                                        child: Image.network(
                                          controller.inquiryList[index].qa_file2,width: 27.w,height: 27.h,
                                        ),
                                      ),
                                    ) : SizedBox()
                                  ],
                                )
                              ],
                            ),
                          ) : SizedBox()
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
                child: ElevatedButton(
                  onPressed: () async {

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
                ),
              ),
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
                        ) : SizedBox()
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