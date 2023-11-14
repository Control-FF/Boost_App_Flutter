import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/main/main_controller.dart';
import 'package:boostapp/modules/main/pages/bnv_home_controller.dart';
import 'package:boostapp/modules/main/pages/home_tab_popular.dart';
import 'package:boostapp/modules/main/pages/home_tab_time.dart';
import 'package:boostapp/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BnvHomeScreen extends StatefulWidget{
  late int initialIndex;
  final ValueChanged<int?>? onChanged;

  BnvHomeScreen({
    this.initialIndex = 0,
    this.onChanged,
  });

  @override
  _BnvHomeScreenState createState() => _BnvHomeScreenState();
}

class _BnvHomeScreenState extends State<BnvHomeScreen>
    with TickerProviderStateMixin {
  HomeController controller = Get.put(HomeController());
  MainController mainController = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawerEnableOpenDragGesture: false,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: ColorConstant.white,
        elevation: 0,
        title: Image.asset('assets/images/logo2.png',width: 75.w, height: 17.h,),
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.only(left: 30.w),
          child: SizedBox.fromSize(
            size: Size(21.w, 18.h), // button width and height
            child: InkWell(
              splashColor: Colors.white, // splash color
              onTap: () {
                mainController.scaffoldKey.currentState!.openDrawer();
              }, // button pressed
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/images/ic_menu.png',width: 21.w,height: 18.h,), // icon
                ],
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 30.w),
            child: SizedBox.fromSize(
              size: Size(14.25, 15), // button width and height
              child: InkWell(
                splashColor: Colors.white, // splash color
                onTap: () {
                  Get.toNamed(AppRoutes.searchScreen);
                }, // button pressed
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/images/ic_search.png',width: 14.25.w,height: 15.h,), // icon
                  ],
                ),
              ),
            ),
          ),
        ],
        bottom: TabBar(
          padding: EdgeInsets.symmetric(horizontal: 15),
          controller: controller.tabController,
          tabs: controller.tabs.value
              .map((String title) => Tab(text: title))
              .toList(),
          indicatorColor: Colors.transparent,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 1,
          isScrollable: false,
          labelPadding: EdgeInsets.zero,
          indicatorPadding: EdgeInsets.zero,
          labelColor: ColorConstant.gray9,
          labelStyle: TextStyle(
            color: ColorConstant.gray9,
            fontSize: 12.sp,
            fontFamily: 'Noto Sans KR',
            fontWeight: FontWeight.w700,
          ),
          unselectedLabelColor: ColorConstant.gray9,
          unselectedLabelStyle: TextStyle(
            color: ColorConstant.gray9,
            fontSize: 12.sp,
            fontFamily: 'Noto Sans KR',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: Get.width,
            height: 14.h,
            margin: EdgeInsets.symmetric(horizontal: 30.w),
            color: ColorConstant.blue1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 6),
                  child: Text(
                    '배송중 2시간 후 도착',
                    style: TextStyle(
                      color: ColorConstant.white,
                      fontSize: 7.sp,
                      fontFamily: 'Noto Sans KR',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 6),
                  child: Text(
                    '부산 기장군 정관읍 504-3 >',
                    style: TextStyle(
                      color: ColorConstant.white,
                      fontSize: 7.sp,
                      fontFamily: 'Noto Sans KR',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: controller.tabController,
              children: [
                HomeTabPopular(),
                HomeTabTime(),
                Center(
                  child: Text('tab3'),
                ),
                Center(
                  child: Text('tab4'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}