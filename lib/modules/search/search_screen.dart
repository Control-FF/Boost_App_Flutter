import 'package:boostapp/core/constants/constants.dart';
import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/cart/cart_controller.dart';
import 'package:boostapp/modules/main/main_controller.dart';
import 'package:boostapp/modules/search/search_controller.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SearchScreen extends GetView<ProductSearchController> {

  final cartController = Get.put(CartController());
  final mainController = Get.put(MainController());

  ScrollController _scrollController = ScrollController();
  bool _showedMessage = false;

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

                        controller.keywordResultPage.value = 1;
                        controller.getKeywordResultList();
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

                        controller.keywordResultPage.value = 1;
                        controller.getKeywordResultList();
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
                        if(controller.sort.value == 'latest'){
                          controller.sort.value = '';
                        }else{
                          controller.sort.value = 'latest';
                        }

                        controller.keywordResultPage.value = 1;
                        controller.getKeywordResultList();
                        Get.back();
                      },
                      child: Container(
                        height: 30,
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        margin: EdgeInsets.symmetric(horizontal: 32.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            border: Border.all(
                                color: controller.sort.value == 'latest' ? ColorConstant.accent :ColorConstant.gray17,
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
                              color: controller.sort.value == 'latest' ? ColorConstant.accent : ColorConstant.gray18,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    GestureDetector(
                      onTap: (){
                        if(controller.sort.value == 'reviews'){
                          controller.sort.value = '';
                        }else{
                          controller.sort.value = 'reviews';
                        }

                        controller.keywordResultPage.value = 1;
                        controller.getKeywordResultList();
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
                        if(controller.sort.value == 'price_high'){
                          controller.sort.value = '';
                        }else{
                          controller.sort.value = 'price_high';
                        }

                        controller.keywordResultPage.value = 1;
                        controller.getKeywordResultList();
                        Get.back();
                      },
                      child: Container(
                        height: 30,
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        margin: EdgeInsets.symmetric(horizontal: 32.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            border: Border.all(
                                color: controller.sort.value == 'price_high' ? ColorConstant.accent :ColorConstant.gray17,
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
                              color: controller.sort.value == 'price_high' ? ColorConstant.accent : ColorConstant.gray18,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    GestureDetector(
                      onTap: (){
                        if(controller.sort.value == 'price_low'){
                          controller.sort.value = '';
                        }else{
                          controller.sort.value = 'price_low';
                        }

                        controller.keywordResultPage.value = 1;
                        controller.getKeywordResultList();
                        Get.back();
                      },
                      child: Container(
                        height: 30,
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        margin: EdgeInsets.symmetric(horizontal: 32.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            border: Border.all(
                                color: controller.sort.value == 'price_low' ? ColorConstant.accent :ColorConstant.gray17,
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
                              color: controller.sort.value == 'price_low' ? ColorConstant.accent : ColorConstant.gray18,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    GestureDetector(
                      onTap: (){
                        if(controller.sort.value == 'rating'){
                          controller.sort.value = '';
                        }else{
                          controller.sort.value = 'rating';
                        }

                        controller.keywordResultPage.value = 1;
                        controller.getKeywordResultList();
                        Get.back();
                      },
                      child: Container(
                        height: 30,
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        margin: EdgeInsets.symmetric(horizontal: 32.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            border: Border.all(
                                color: controller.sort.value == 'rating' ? ColorConstant.accent :ColorConstant.gray17,
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
                              color: controller.sort.value == 'rating' ? ColorConstant.accent : ColorConstant.gray18,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    GestureDetector(
                      onTap: (){
                        if(controller.sort.value == 'sales'){
                          controller.sort.value = '';
                        }else{
                          controller.sort.value = 'sales';
                        }

                        controller.keywordResultPage.value = 1;
                        controller.getKeywordResultList();
                        Get.back();
                      },
                      child: Container(
                        height: 30,
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        margin: EdgeInsets.symmetric(horizontal: 32.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            border: Border.all(
                                color: controller.sort.value == 'sales' ? ColorConstant.accent :ColorConstant.gray17,
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
                              color: controller.sort.value == 'sales' ? ColorConstant.accent : ColorConstant.gray18,
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
    cartController.getCartList();

    _scrollController.addListener(() {
      double maxScroll = _scrollController.position.maxScrollExtent;
      double currentScroll = _scrollController.position.pixels;
      double delta = maxScroll - currentScroll;

      if (delta <= 300 && !_showedMessage) {
        if(controller.searchStatus.value == 'result'){
          _showedMessage = true;
          controller.keywordResultPage++;
          controller.getKeywordResultList();
        }
      } else if (delta > 300) {
        _showedMessage = false;
      }
    });

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
                  }else{
                    controller.searchStatus.value = 'search';
                    controller.getKeywordAutoList();
                  }
                },
                onSubmitted: (String str){
                  if(str != ''){
                    controller.searchStatus.value = 'result';
                    controller.saveSearchText(str);
                    controller.getKeywordResultList();
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
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 25.w,
                      height: 25.h,
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
                    GetX<CartController>(
                      builder: (_){
                        return cartController.cartList.isNotEmpty ? Container(
                          width: 15.w,
                          height: 15.h,
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 20.w,bottom: 10.h),
                          decoration: BoxDecoration(
                              color: ColorConstant.accent,
                              shape: BoxShape.circle
                          ),
                          child: Text(
                            cartController.cartList.length.toString(),
                            style: TextStyle(
                              color: ColorConstant.white,
                              fontSize: 7.sp,
                              fontFamily: 'Noto Sans KR',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ) : SizedBox();
                      }
                    )
                  ],
                ),
              )
            ],
          ),
          body: SingleChildScrollView(
              controller: _scrollController,
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
                                            controller.searchController.text = controller.searchTextList[index];
                                            controller.searchStatus.value = 'search';
                                            controller.saveSearchText(controller.searchTextList[index]);
                                            controller.getKeywordAutoList();
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
                                '${Constants.getToday()} 기준',
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
                                              controller.searchController.text = controller.keywordRankList[index].keyword;
                                              controller.searchStatus.value = 'search';
                                              controller.saveSearchText(controller.keywordRankList[index].keyword);
                                              controller.getKeywordAutoList();
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
                                                      controller.keywordRankList[index].rank.toString(),
                                                      style: TextStyle(
                                                        color: ColorConstant.primary,
                                                        fontSize: 16.sp,
                                                        fontFamily: 'Noto Sans KR',
                                                        fontWeight: FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(width: 14.3.w,),
                                                  Expanded(
                                                    child: Text(
                                                      controller.keywordRankList[index].keyword,
                                                      style: TextStyle(
                                                        color: ColorConstant.black,
                                                        fontSize: 12.sp,
                                                        fontFamily: 'Noto Sans KR',
                                                        fontWeight: FontWeight.w400,
                                                        overflow: TextOverflow.ellipsis
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                        childCount: controller.keywordRankList.length
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
                    height: Get.height,
                    child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.keywordAutoList.length,
                      separatorBuilder: (context, index) {
                        return Container(
                          height: 26.h,
                        );
                      },
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: (){
                            controller.searchStatus.value = 'result';
                            controller.searchController.text = controller.keywordAutoList[index];
                            controller.getKeywordResultList();
                            FocusManager.instance.primaryFocus?.unfocus();
                          },
                          child: Text(
                            controller.keywordAutoList[index],
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
                                '${controller.keywordResultTotal.value}개의 상품',
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
                                  childAspectRatio: 58.63 / 90,
                                  mainAxisSpacing: 37,
                                  crossAxisSpacing: 23,
                                ),
                                delegate: SliverChildBuilderDelegate(
                                        (BuildContext context, int index){
                                      return InkWell(
                                        onTap: (){
                                          Get.toNamed(AppRoutes.productDetailScreen,arguments: {
                                            'productId' : controller.keywordResultList[index].it_id
                                          });
                                        },
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            controller.keywordResultList[index].it_img1 == ""
                                                ? Image.asset(
                                              'assets/images/product_sample.png',
                                              fit: BoxFit.cover,
                                            )
                                                : AspectRatio(
                                              aspectRatio: 1/1,
                                              child: Image.network(
                                                '${Constants.fileUrl}${controller.keywordResultList[index].it_img1}',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            SizedBox(height: 9.h,),
                                            SizedBox(
                                              width: 146.w,
                                              child: Text.rich(
                                                  TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: controller.keywordResultList[index].it_name,
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
                                                        controller.keywordResultList[index].it_cust_price != controller.keywordResultList[index].it_price ? TextSpan(
                                                          text: '${Constants.getPercent(controller.keywordResultList[index].it_price, controller.keywordResultList[index].it_cust_price)}%',
                                                          style: TextStyle(
                                                            color: ColorConstant.primary,
                                                            fontSize: 12.sp,
                                                            fontFamily: 'Noto Sans KR',
                                                            fontWeight: FontWeight.w700,
                                                          ),
                                                        ) : TextSpan(),
                                                        TextSpan(
                                                          text: ' ${Constants.numberAddComma(controller.keywordResultList[index].it_price)}원',
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
                                            controller.keywordResultList[index].it_cust_price != controller.keywordResultList[index].it_price ? Text(
                                              '${Constants.numberAddComma(controller.keywordResultList[index].it_cust_price)}원',
                                              style: TextStyle(
                                                  color: ColorConstant.gray1,
                                                  fontSize: 8.sp,
                                                  fontFamily: 'Noto Sans KR',
                                                  fontWeight: FontWeight.w700,
                                                  decoration: TextDecoration.lineThrough
                                              ),
                                            ) : SizedBox()
                                          ],
                                        ),
                                      );
                                    },
                                    childCount: controller.keywordResultList.length
                                ),
                              ),
                              SliverList(
                                delegate: SliverChildListDelegate(
                                    [
                                      Padding(
                                        padding: EdgeInsets.only(top: 49.h),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '부스트 앱 오픈 맞이 파격행사',
                                                  style: TextStyle(
                                                    color: ColorConstant.gray11,
                                                    fontSize: 10.sp,
                                                    fontFamily: 'Noto Sans KR',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      '이런 상품은 어떠세요?',
                                                      style: TextStyle(
                                                        color: ColorConstant.black,
                                                        fontSize: 16.sp,
                                                        fontFamily: 'Noto Sans KR',
                                                        fontWeight: FontWeight.w700,
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                            TextButton(
                                              onPressed: (){
                                                Get.toNamed(AppRoutes.moreScreen,arguments: {
                                                  'title' : '이런 상품은 어떠세요?',
                                                  'type' : 'recommend'
                                                });
                                              },
                                              style: TextButton.styleFrom(
                                                padding: EdgeInsets.zero,
                                                minimumSize: Size(0,20),
                                              ),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    '더보러 가기',
                                                    style: TextStyle(
                                                      color: ColorConstant.gray12,
                                                      fontSize: 10.sp,
                                                      fontFamily: 'Noto Sans KR',
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  ),
                                                  Icon(Icons.arrow_forward_ios_sharp,size: 10,color: ColorConstant.gray12,)
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 17.h,),
                                      Divider(
                                        color: ColorConstant.gray10,
                                        height: 1.h,
                                        thickness: 1.h,
                                      ),
                                      GetX<MainController>(
                                        builder: (_){
                                          return Container(
                                            height: 290,
                                            child: ListView.builder(
                                              physics: BouncingScrollPhysics(),
                                              padding: EdgeInsets.only(top: 20.h,bottom: 30.h),
                                              scrollDirection: Axis.horizontal,
                                              itemCount: mainController.recommendList.length,
                                              shrinkWrap: true,
                                              itemBuilder: (context, index){
                                                return GestureDetector(
                                                  onTap: (){
                                                    Get.toNamed(AppRoutes.productDetailScreen,arguments: {
                                                      'productId' : mainController.recommendList[index].it_id
                                                    });
                                                  },
                                                  child: Padding(
                                                    padding: index == 4 ? EdgeInsets.zero : EdgeInsets.only(right: 11),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        mainController.recommendList[index].it_img1 != ''
                                                            ? Image.network(Constants.fileUrl+mainController.recommendList[index].it_img1,width: 146.w,height: 151.h,fit: BoxFit.cover,errorBuilder: (context,exception,stackTrace){
                                                          return Image.asset('assets/images/product_sample.png',width: 146.w,height: 151.h,fit: BoxFit.cover,);
                                                        })
                                                            : Image.asset('assets/images/product_sample.png',width: 146.w,height: 151.h,fit: BoxFit.cover,),
                                                        SizedBox(height: 9.h,),
                                                        SizedBox(
                                                          width: 146.w,
                                                          child: Text.rich(
                                                              TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                      text: '[부스트 상품]',
                                                                      style: TextStyle(
                                                                        color: ColorConstant.primary,
                                                                        fontSize: 10.sp,
                                                                        fontFamily: 'Noto Sans KR',
                                                                        fontWeight: FontWeight.w700,
                                                                      ),
                                                                    ),
                                                                    TextSpan(
                                                                      text: mainController.recommendList[index].it_name,
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
                                                                    mainController.recommendList[index].it_cust_price != mainController.recommendList[index].it_price ? TextSpan(
                                                                      text: '${Constants.getPercent(mainController.recommendList[index].it_price, mainController.recommendList[index].it_cust_price)}%',
                                                                      style: TextStyle(
                                                                        color: ColorConstant.primary,
                                                                        fontSize: 12.sp,
                                                                        fontFamily: 'Noto Sans KR',
                                                                        fontWeight: FontWeight.w700,
                                                                      ),
                                                                    ) : TextSpan(),
                                                                    TextSpan(
                                                                      text: ' ${Constants.numberAddComma(mainController.recommendList[index].it_price)}원',
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
                                                        mainController.recommendList[index].it_cust_price != mainController.recommendList[index].it_price ? Text(
                                                          '${Constants.numberAddComma(mainController.recommendList[index].it_cust_price)}원',
                                                          style: TextStyle(
                                                              color: ColorConstant.gray1,
                                                              fontSize: 8.sp,
                                                              fontFamily: 'Noto Sans KR',
                                                              fontWeight: FontWeight.w700,
                                                              decoration: TextDecoration.lineThrough
                                                          ),
                                                        ) : SizedBox()
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                          );
                                        },
                                      )
                                    ]
                                ),
                              ),
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