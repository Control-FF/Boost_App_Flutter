import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/search/search_controller.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SearchScreen extends GetView<ProductSearchController> {

  void _showFilterPopup(context){
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            insetPadding: EdgeInsets.symmetric(horizontal: 55.w),
            contentPadding: EdgeInsets.zero,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25.r))
            ),
            content: Container(
              height: 139.h,
              child: Center(
                child: Obx(() => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){
                        if(controller.filter.value == 'boost'){
                          controller.filter.value = '';
                        }else{
                          controller.filter.value = 'boost';
                        }

                        Get.back();
                      },
                      child: Container(
                        height: 30,
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        margin: EdgeInsets.symmetric(horizontal: 32.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            border: Border.all(
                                color: controller.filter.value == 'boost' ? ColorConstant.accent :ColorConstant.gray17,
                                width: 1
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '부스트 배송',
                              style: TextStyle(
                                color: ColorConstant.black,
                                fontSize: 16.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(
                              Icons.check_circle_outline_sharp,
                              color: controller.filter.value == 'boost' ? ColorConstant.accent : ColorConstant.gray18,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    GestureDetector(
                      onTap: (){
                        if(controller.filter.value == 'seller'){
                          controller.filter.value = '';
                        }else{
                          controller.filter.value = 'seller';
                        }

                        Get.back();
                      },
                      child: Container(
                        height: 30,
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        margin: EdgeInsets.symmetric(horizontal: 32.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            border: Border.all(
                                color: controller.filter.value == 'seller' ? ColorConstant.accent :ColorConstant.gray17,
                                width: 1
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '판매자 배송',
                              style: TextStyle(
                                color: ColorConstant.black,
                                fontSize: 16.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(
                              Icons.check_circle_outline_sharp,
                              color: controller.filter.value == 'seller' ? ColorConstant.accent : ColorConstant.gray18,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
              ),
            ),
          );
        });
  }

  void _showSortPopup(context){
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            insetPadding: EdgeInsets.symmetric(horizontal: 55.w),
            contentPadding: EdgeInsets.zero,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25.r))
            ),
            content: Container(
              height: 274.h,
              child: Center(
                child: Obx(() => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){
                        if(controller.sort.value == 'recent'){
                          controller.sort.value = '';
                        }else{
                          controller.sort.value = 'recent';
                        }

                        Get.back();
                      },
                      child: Container(
                        height: 30,
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        margin: EdgeInsets.symmetric(horizontal: 32.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            border: Border.all(
                                color: controller.sort.value == 'recent' ? ColorConstant.accent :ColorConstant.gray17,
                                width: 1
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '최근등록 순',
                              style: TextStyle(
                                color: ColorConstant.black,
                                fontSize: 16.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(
                              Icons.check_circle_outline_sharp,
                              color: controller.sort.value == 'recent' ? ColorConstant.accent : ColorConstant.gray18,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    GestureDetector(
                      onTap: (){
                        if(controller.sort.value == 'review'){
                          controller.sort.value = '';
                        }else{
                          controller.sort.value = 'review';
                        }

                        Get.back();
                      },
                      child: Container(
                        height: 30,
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        margin: EdgeInsets.symmetric(horizontal: 32.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            border: Border.all(
                                color: controller.sort.value == 'review' ? ColorConstant.accent :ColorConstant.gray17,
                                width: 1
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '리뷰 순',
                              style: TextStyle(
                                color: ColorConstant.black,
                                fontSize: 16.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(
                              Icons.check_circle_outline_sharp,
                              color: controller.sort.value == 'review' ? ColorConstant.accent : ColorConstant.gray18,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    GestureDetector(
                      onTap: (){
                        if(controller.sort.value == 'priceUp'){
                          controller.sort.value = '';
                        }else{
                          controller.sort.value = 'priceUp';
                        }

                        Get.back();
                      },
                      child: Container(
                        height: 30,
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        margin: EdgeInsets.symmetric(horizontal: 32.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            border: Border.all(
                                color: controller.sort.value == 'priceUp' ? ColorConstant.accent :ColorConstant.gray17,
                                width: 1
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '가격 높은 순',
                              style: TextStyle(
                                color: ColorConstant.black,
                                fontSize: 16.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(
                              Icons.check_circle_outline_sharp,
                              color: controller.sort.value == 'priceUp' ? ColorConstant.accent : ColorConstant.gray18,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    GestureDetector(
                      onTap: (){
                        if(controller.sort.value == 'priceDown'){
                          controller.sort.value = '';
                        }else{
                          controller.sort.value = 'priceDown';
                        }

                        Get.back();
                      },
                      child: Container(
                        height: 30,
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        margin: EdgeInsets.symmetric(horizontal: 32.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            border: Border.all(
                                color: controller.sort.value == 'priceDown' ? ColorConstant.accent :ColorConstant.gray17,
                                width: 1
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '가격 낮은 순',
                              style: TextStyle(
                                color: ColorConstant.black,
                                fontSize: 16.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(
                              Icons.check_circle_outline_sharp,
                              color: controller.sort.value == 'priceDown' ? ColorConstant.accent : ColorConstant.gray18,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    GestureDetector(
                      onTap: (){
                        if(controller.sort.value == 'rate'){
                          controller.sort.value = '';
                        }else{
                          controller.sort.value = 'rate';
                        }

                        Get.back();
                      },
                      child: Container(
                        height: 30,
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        margin: EdgeInsets.symmetric(horizontal: 32.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            border: Border.all(
                                color: controller.sort.value == 'rate' ? ColorConstant.accent :ColorConstant.gray17,
                                width: 1
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '평점 순',
                              style: TextStyle(
                                color: ColorConstant.black,
                                fontSize: 16.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(
                              Icons.check_circle_outline_sharp,
                              color: controller.sort.value == 'rate' ? ColorConstant.accent : ColorConstant.gray18,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    GestureDetector(
                      onTap: (){
                        if(controller.sort.value == 'sell'){
                          controller.sort.value = '';
                        }else{
                          controller.sort.value = 'sell';
                        }

                        Get.back();
                      },
                      child: Container(
                        height: 30,
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        margin: EdgeInsets.symmetric(horizontal: 32.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            border: Border.all(
                                color: controller.sort.value == 'sell' ? ColorConstant.accent :ColorConstant.gray17,
                                width: 1
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '판매 순',
                              style: TextStyle(
                                color: ColorConstant.black,
                                fontSize: 16.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(
                              Icons.check_circle_outline_sharp,
                              color: controller.sort.value == 'sell' ? ColorConstant.accent : ColorConstant.gray18,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
              ),
            ),
          );
        });
  }

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
              icon: Icon(Icons.arrow_back_ios_new_rounded,color: ColorConstant.gray12,),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 30.w),
                child: SizedBox.fromSize(
                  size: Size(17, 17), // button width and height
                  child: InkWell(
                    splashColor: Colors.white, // splash color
                    onTap: () {
                      Get.toNamed(AppRoutes.cartScreen);
                    }, // button pressed
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset('assets/images/ic_cart.png',width: 17.w,height: 17.h,), // icon
                      ],
                    ),
                  ),
                ),
              )
            ],
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
                        return GestureDetector(
                          onTap: (){
                            controller.searchStatus.value = 'result';
                            controller.searchController.text = '서울 우유';
                          },
                          child: Text(
                            '서울 우유',
                            style: TextStyle(
                              color: ColorConstant.black,
                              fontSize: 12.sp,
                              fontFamily: 'Noto Sans KR',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        );
                      },
                    ),
                  );
                }else{
                  return Container(
                    margin: EdgeInsets.fromLTRB(30.w, 34.h, 30.w, 0.h),
                    color: ColorConstant.white,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              controller.searchController.text,
                              style: TextStyle(
                                color: ColorConstant.black,
                                fontSize: 16.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              ' 관련 상품',
                              style: TextStyle(
                                color: ColorConstant.black,
                                fontSize: 16.sp,
                                fontFamily: 'Noto Sans KR',
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '60개의 상품',
                                style: TextStyle(
                                  color: ColorConstant.gray12,
                                  fontSize: 10.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: (){
                                      _showFilterPopup(context);
                                    },
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.tune,
                                          size: 12,
                                          color: controller.filter.value != ''
                                              ? ColorConstant.accent
                                              : ColorConstant.black.withOpacity(0.77),
                                        ),
                                        SizedBox(width: 3.w,),
                                        Text(
                                          '필터',
                                          style: TextStyle(
                                            color: controller.filter.value != ''
                                                ? ColorConstant.accent
                                                : ColorConstant.black.withOpacity(0.77),
                                            fontSize: 10.sp,
                                            fontFamily: 'Noto Sans KR',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 3.w,),
                                  InkWell(
                                    onTap: (){
                                      _showSortPopup(context);
                                    },
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.format_list_bulleted,
                                          size: 12,
                                          color: controller.sort.value != ''
                                              ? ColorConstant.accent
                                              : ColorConstant.black.withOpacity(0.77),
                                        ),
                                        SizedBox(width: 3.w,),
                                        Text(
                                          '정렬',
                                          style: TextStyle(
                                            color: controller.sort.value != ''
                                                ? ColorConstant.accent
                                                : ColorConstant.black.withOpacity(0.77),
                                            fontSize: 10.sp,
                                            fontFamily: 'Noto Sans KR',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 7,),
                        CustomScrollView(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            slivers: [
                              SliverGrid(
                                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio: 58.63 / 85.19,
                                  mainAxisSpacing: 37,
                                  crossAxisSpacing: 23,
                                ),
                                delegate: SliverChildBuilderDelegate(
                                        (BuildContext context, int index){
                                      return InkWell(
                                        onTap: (){
                                          Get.toNamed(AppRoutes.productDetailScreen,arguments: {
                                            'productId' : 1
                                          });
                                        },
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Stack(
                                              children: [
                                                Image.asset('assets/images/sample_product2.png',fit: BoxFit.cover,),
                                                Positioned(
                                                  right: 0,
                                                  bottom: 0,
                                                  child: Container(
                                                    color: ColorConstant.accent,
                                                    width: 20.w,
                                                    height: 20.h,
                                                    child: IconButton(padding: EdgeInsets.zero,
                                                      color: ColorConstant.accent,
                                                      alignment: Alignment.center,
                                                      onPressed: (){

                                                      },
                                                      icon: Icon(Icons.favorite_border_outlined,color: ColorConstant.white,size: 10),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 9.h,),
                                            SizedBox(
                                              width: 146.w,
                                              child: Text.rich(
                                                  TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: '칠레산 생 블루베리 2(택1)',
                                                          style: TextStyle(
                                                            color: ColorConstant.black,
                                                            fontSize: 10.sp,
                                                            fontFamily: 'Noto Sans KR',
                                                            fontWeight: FontWeight.w400,
                                                          ),
                                                        )
                                                      ]
                                                  )
                                              ),
                                            ),
                                            SizedBox(height: 2.h,),
                                            SizedBox(
                                              width: 146.w,
                                              child: Text.rich(
                                                  TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: ' 3,600원',
                                                          style: TextStyle(
                                                            color: ColorConstant.black,
                                                            fontSize: 12.sp,
                                                            fontFamily: 'Noto Sans KR',
                                                            fontWeight: FontWeight.w700,
                                                          ),
                                                        )
                                                      ]
                                                  )
                                              ),
                                            ),

                                          ],
                                        ),
                                      );
                                    },
                                    childCount: 15
                                ),
                              )
                            ]
                        )
                      ],
                    ),
                  );
                }
              })
          ),
        ),
      ),
    );
  }
}