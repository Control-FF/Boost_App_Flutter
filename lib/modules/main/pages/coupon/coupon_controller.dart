import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/data/models/coupon.dart';
import 'package:boostapp/data/service/user_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CouponController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final UserService _userService = Get.find();

  TextEditingController couponController = TextEditingController();

  late TabController tabController;
  Rx<int> currentIndex = 0.obs;

  RxList<Coupon> couponList = RxList<Coupon>([]);
  RxList<Coupon> myCouponList = RxList<Coupon>([]);

  RxBool isCheck = false.obs;

  @override
  void onInit() {
    var initialIndex = Get.arguments ?? 0;
    currentIndex.value = initialIndex;
    tabController =
        TabController(length: 2, vsync: this, initialIndex: initialIndex);
    tabController.addListener(() {
      currentIndex.value = tabController.index;
    });

    super.onInit();


    getCouponList('has');
    getCouponList('get');
  }

  Future<void> getCouponList(String status) async {
    final result = await _userService.getCouponList(status: status);
    result.fold(
      (failure) {
        print(failure.message);
      },
      (response) {
        if(status == 'has'){
          myCouponList.value = response.items!;
        }else{
          couponList.value = response.items!;
        }
      },
    );
  }

  Future<void> registerCoupon(BuildContext context, String code) async {
    var map = <String, dynamic>{};
    map.addAll({'cp_id' : code});

    final result = await _userService.couponRegister(code: map);
    result.fold(
      (failure) {
        showAddCouponPopup(context,'');
      },
      (response) {
        showAddCouponPopup(context,'register');
      },
    );
  }

  String getCouponMethod(int method){
    if(method == 1){
      return '카테고리할인';
    }else if(method == 1){
      return '주문금액할인';
    }else if(method == 1){
      return '배송비할인';
    }else{
      return '개별상품할인';
    }
  }

  void showAddCouponPopup(context,type){
    String title = '';

    if(type == 'add' || type == 'register'){
      title = '쿠폰이 발급되었습니다.';
    } else{
      title = '유효하지 않은 쿠폰번호 입니다.';
    }

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            insetPadding: EdgeInsets.symmetric(horizontal: 68.w),
            contentPadding: EdgeInsets.zero,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.r))
            ),
            content: Container(
              width: 242.w,
              height: 142.h,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: ColorConstant.black,
                      fontSize: 14.sp,
                      fontFamily: 'Noto Sans KR',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 21.h,),
                  ElevatedButton(
                    onPressed: (){
                      Get.back();

                      if(type == 'register'){
                        Get.back();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorConstant.primary,
                        elevation: 0,
                        minimumSize: Size(79.w,28.h)
                    ),
                    child: Text(
                      '확인',
                      style: TextStyle(
                        color: ColorConstant.white,
                        fontSize: 9.sp,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}