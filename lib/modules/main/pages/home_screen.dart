import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/modules/main/pages/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              onTap: () {}, // button pressed
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
            padding: EdgeInsets.only(right: 10.65.w),
            child: SizedBox.fromSize(
              size: Size(14.25, 15), // button width and height
              child: InkWell(
                splashColor: Colors.white, // splash color
                onTap: () {}, // button pressed
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/images/ic_search.png',width: 14.25.w,height: 15.h,), // icon
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 30.w),
            child: SizedBox.fromSize(
              size: Size(17, 17), // button width and height
              child: InkWell(
                splashColor: Colors.white, // splash color
                onTap: () {}, // button pressed
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/images/ic_cart.png',width: 17.w,height: 17.h,), // icon
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Text("d"),
      ),
    );
  }

}