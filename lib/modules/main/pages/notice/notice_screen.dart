import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/data/models/notice.dart';
import 'package:boostapp/modules/main/pages/notice/notice_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class NoticeScreen extends GetView<NoticeController>{

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorConstant.white,
          elevation: 0,
          title: Text(
            '공지사항',
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
                          '최근 부스트 앱 중요한 소식 업로드\n공지사항 페이지 입니다.',
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
                            hintText: '공지 내용을 검색하세요.',
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
                                  controller.getNoticeList();
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
              Obx(
                  () => ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller.items.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: (){
                              //int faId = controller.items[index].fa_id;
                              //String subject = controller.items[index].fa_subject;
                              //String content = controller.items[index].fa_content;
                              //int order = controller.items[index].fa_order;
                              bool isExpand = controller.items[index].isExpand;

                              //controller.items[index] = Notice(fa_id: faId,fa_subject: subject,fa_content: content,fa_order: order,isExpand: !isExpand);

                              //controller.items.value[index] = controller.items.value[index].copyWith(isExpand: !isExpand);
                              controller.updateExpanded(index,!isExpand);
                            },
                            child: Container(
                              padding: EdgeInsets.fromLTRB(18.w, 24.h, 18.w, 24.h),
                              width: Get.width,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      controller.items[index].fa_subject,
                                      style: TextStyle(
                                        color: ColorConstant.gray24,
                                        fontSize: 14.sp,
                                        fontFamily: 'Noto Sans KR',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 5.h),
                                    child: Image.asset(
                                      controller.items[index].isExpand ? 'assets/images/ic_up.png' : 'assets/images/ic_down.png',
                                      width: 16.w,
                                      height: 8.h,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Obx(
                              () => controller.items[index].isExpand ? Container(
                                width: Get.width,
                                color: ColorConstant.gray16.withOpacity(0.5),
                                padding: EdgeInsets.fromLTRB(18.w, 24.h, 18.w, 24.h),
                                child: Text(
                                  controller.items[index].fa_content,
                                  style: TextStyle(
                                    color: ColorConstant.gray24,
                                    fontSize: 14.sp,
                                    fontFamily: 'Noto Sans KR',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ) : SizedBox()
                          ),
                          Divider(
                            height: 1.h,
                            thickness: 1,
                            color: ColorConstant.gray22,
                          )
                        ],
                      );
                    },

                  ),
              )
            ],
          ),
        )
      ),
    );
  }


}