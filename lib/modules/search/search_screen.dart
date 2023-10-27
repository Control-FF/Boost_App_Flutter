import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/search/search_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SearchScreen extends GetView<SearchController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () async {
          bool backStatus = controller.onWillPop(context);
          if (backStatus) {
            return Future.value(true);
          }
          return Future.value(false);
        },
        child: Scaffold(
          backgroundColor: ColorConstant.white,
          appBar: AppBar(
            backgroundColor: ColorConstant.white,
            elevation: 0,
            title: Container(
              width: Get.width,
              height: 41.w,
              child: TextField(
                controller: controller.searchController,
                decoration: InputDecoration(
                  counterText: '',
                  hintText: '검색어를 입력하세요.',
                  hintStyle: TextStyle(
                    color: ColorConstant.black,
                    fontSize: 12.sp,
                    fontFamily: 'Noto Sans KR',
                    fontWeight: FontWeight.w500,
                  ),
                  contentPadding: EdgeInsets.zero,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2.w,
                        color: ColorConstant.gray14
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8.r)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2.w,
                        color: ColorConstant.gray14
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8.r)),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2.w,
                        color: ColorConstant.gray14
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8.r)),
                  ),
                  prefixIcon: Icon(Icons.search_rounded,color: ColorConstant.primary,),
                ),
                maxLines: 1,
                style: TextStyle(
                  color: ColorConstant.black,
                  fontSize: 12.sp,
                  fontFamily: 'Noto Sans KR',
                  fontWeight: FontWeight.w500,
                ),
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.text,
                onChanged: (value){
                  if(value == ""){
                    controller.searchStatus.value = '';
                  }
                },
                onSubmitted: (String str){
                  if(str != ''){
                    controller.searchStatus.value = 'search';
                    controller.saveSearchText(str);
                  }

                },
              ),
            ),
            leading: IconButton(
              onPressed: (){
                Get.back();
              },
              icon: Icon(Icons.arrow_back,color: ColorConstant.gray12,),
            ),
          ),
          body: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Obx(() {
                if(controller.searchStatus.value == ''){
                  return Container(
                    margin: EdgeInsets.fromLTRB(30.w, 34.h, 30.w, 0.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '최근 검색어',
                                style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 16.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              controller.searchTextList.isNotEmpty ? TextButton(
                                onPressed: (){
                                  controller.clearSearchText();
                                },
                                style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    minimumSize: Size(50.w,20.h)
                                ),
                                child: Text(
                                  '전체 삭제',
                                  style: TextStyle(
                                    color: ColorConstant.black,
                                    fontSize: 12.sp,
                                    fontFamily: 'Noto Sans KR',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ) : SizedBox()
                            ],
                          ),
                          Container(
                            height: 145,
                            child: controller.searchTextList.isEmpty ? Center(
                              child: Text(
                                '최근 검색한 검색어가 없습니다.',
                                style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 12.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ) : SingleChildScrollView(
                              physics: NeverScrollableScrollPhysics(),
                              child: Padding(
                                padding: EdgeInsets.only(top: 16),
                                child: Wrap(
                                  spacing: 16,
                                  runSpacing: 10,
                                  children: List.generate(
                                      controller.searchTextList.length,
                                          (index) {
                                        return FilterChip(
                                          backgroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(4)),
                                            side: BorderSide(width: 1,color: ColorConstant.black.withOpacity(0.15)),
                                          ),
                                          label: Text(
                                            controller.searchTextList[index],
                                            style: TextStyle(
                                              color: ColorConstant.gray12,
                                              fontSize: 12.sp,
                                              fontFamily: 'Noto Sans KR',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          onSelected: (bool isSelect){
                                            if(isSelect){
                                              controller.searchController.text = controller.searchTextList[index];
                                              controller.searchStatus.value = 'search';
                                              controller.saveSearchText(controller.searchTextList[index]);
                                            }
                                          },
                                        );
                                      }
                                  ).toList(),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '인기 검색어',
                                style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 16.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                '2023년 10월 17일 기준',
                                style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 10.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 31.h,),
                          CustomScrollView(
                            shrinkWrap: true,
                            physics: BouncingScrollPhysics(),
                            slivers: [
                              SliverPadding(
                                  padding: EdgeInsets.zero,
                                  sliver: SliverGrid(
                                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      childAspectRatio: 120 / 30,
                                      mainAxisSpacing: 0,
                                      crossAxisSpacing: 0,
                                    ),
                                    delegate: SliverChildBuilderDelegate(
                                            (BuildContext context, int index){
                                          return InkWell(
                                            onTap: (){
                                              controller.searchController.text = '썸머스비';
                                              controller.searchStatus.value = 'search';
                                              controller.saveSearchText('썸머스비');
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(color: ColorConstant.gray2, width: 0.5)
                                                ),
                                              ),
                                              child: Row(
                                                children: [
                                                  SizedBox(
                                                    width: 20,
                                                    child: Text(
                                                      (index+1).toString(),
                                                      style: TextStyle(
                                                        color: ColorConstant.primary,
                                                        fontSize: 16.sp,
                                                        fontFamily: 'Noto Sans KR',
                                                        fontWeight: FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(width: 14.3.w,),
                                                  Text(
                                                    '썸머스비',
                                                    style: TextStyle(
                                                      color: ColorConstant.black,
                                                      fontSize: 12.sp,
                                                      fontFamily: 'Noto Sans KR',
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                        childCount: 10
                                    ),
                                  )
                              )
                            ],
                          )
                        ]
                    ),
                  );
                }else if(controller.searchStatus.value == 'search'){
                  return Container(
                    padding: EdgeInsets.fromLTRB(30.w, 34.h, 30.w, 0.h),
                    color: ColorConstant.gray16,
                    child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 100,
                      separatorBuilder: (context, index) {
                        return Container(
                          height: 26.h,
                        );
                      },
                      itemBuilder: (context, index) {
                        return Text(
                          '서울 우유',
                          style: TextStyle(
                            color: ColorConstant.black,
                            fontSize: 12.sp,
                            fontFamily: 'Noto Sans KR',
                            fontWeight: FontWeight.w500,
                          ),
                        );
                      },
                    ),
                  );
                }else{
                  return Container(

                  );
                }
              })
          ),
        ),
      ),
    );
  }
}