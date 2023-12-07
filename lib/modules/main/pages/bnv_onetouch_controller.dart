import 'package:boostapp/core/utils/color_constant.dart';
import 'package:boostapp/data/models/more.dart';
import 'package:boostapp/data/models/onetouch.dart';
import 'package:boostapp/data/models/onetouch_cart.dart';
import 'package:boostapp/data/service/shop_service.dart';
import 'package:boostapp/modules/cart/cart_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OneTouchController extends GetxController{
  final ShopService _shopService = Get.find();
  CartController cartController = Get.put(CartController());

  RxInt page = 1.obs;
  RxInt totalCnt = 0.obs;

  RxList<OneTouch> productList = RxList<OneTouch>([]);
  RxList<OneTouchCart> oneTouchCartList = RxList<OneTouchCart>([]);
  RxString filter = ''.obs; //'': 필터 적용전, 'boost': 부스트 배송, 'seller': 판매자 배송
  RxString sort = ''.obs; //'': 필터 적용전, 'latest': 최근 등록, 'review': 리뷰, 'price_high': 가격 높은, 'price_low': 가격 낮은, 'rating': 평점, 'sales': 판매

  @override
  void onInit() {
    super.onInit();

  }

  Future<void> getOneTouch() async {


    final result = await _shopService.getOneTouch(sort: sort.value,page: page.value);

    result.fold(
      (failure) => print(failure.message),
      (response){
        if(page.value == 1) {
          productList.value = List<OneTouch>.from(response.items!.toList(growable: false));
        }else{
          if (response.items!.isEmpty) {
            page.value--;
            return;
          }
          productList.addAll(response.items!);
        }

        totalCnt.value = response.total_cnt;
      },
    );
  }

  Future<void> getOneTouchCart() async {


    final result = await _shopService.getOneTouchCart();

    result.fold(
      (failure) => print(failure.message),
      (response){
        oneTouchCartList.value = response.data!.items!;
      },
    );
  }

  Future<void> addOneTouch(BuildContext context, String itId, List<dynamic> items) async {
    var map = <String, dynamic>{};
    map.addAll(
        {
          'it_id' : itId,
          'items' : items
        }
    );

    final result = await _shopService.addOneTouch(data: map);
    result.fold(
          (failure){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          elevation: 6.0,
          behavior: SnackBarBehavior.floating,
          content: Text(
            failure.message,
            style: TextStyle(color: Colors.white),
          ),
        ));
      },
          (response){
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          elevation: 6.0,
          behavior: SnackBarBehavior.floating,
          content: Text(
            '원터치 상품이 등록되었습니다.',
            style: TextStyle(color: Colors.white),
          ),
        ));
        page.value = 1;
        getOneTouch();
      },
    );
  }

  Future<void> addOneTouchCart(BuildContext context, int otId) async {


    final result = await _shopService.addOneTouchCart(otId: otId);

    result.fold(
      (failure) => print(failure.message),
      (response){
        showOneTouchPopup(context);
        cartController.getCartList();
      },
    );
  }

  Future<void> deleteOneTouch(BuildContext context, int otId, int index) async {


    final result = await _shopService.deleteOneTouch(otId: otId);

    result.fold(
      (failure) => print(failure.message),
      (response){
        productList.removeAt(index);
      },
    );
  }

  void showOneTouchPopup(context){
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            insetPadding: EdgeInsets.symmetric(horizontal: 68.w),
            contentPadding: EdgeInsets.zero,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.r))
            ),
            content: Container(
              height: 110.h,
              alignment: Alignment.center,
              child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '원터치 상품이 추가되었습니다.',
                        style: TextStyle(
                          color: ColorConstant.black,
                          fontSize: 12.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 14.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 50.w,
                            height: 23.h,
                            child: ElevatedButton(
                              onPressed: (){
                                Get.back();
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: ColorConstant.primary,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(5.r))
                                  ),
                                  padding: EdgeInsets.all(0)
                              ),
                              child: Text(
                                '확인',
                                style: TextStyle(
                                  color: ColorConstant.white,
                                  fontSize: 10.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),

                            ),
                          ),
                        ],
                      )
                    ],
                  )
              ),
            ),
          );
        });
  }

  void showOneTouchPopupConfirm(BuildContext context, String itId, List<dynamic> ctItems){
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            insetPadding: EdgeInsets.symmetric(horizontal: 68.w),
            contentPadding: EdgeInsets.zero,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.r))
            ),
            content: Container(
              height: 142.h,
              alignment: Alignment.center,
              child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '옵션과 수량을 확인해주세요.',
                        style: TextStyle(
                          color: ColorConstant.black,
                          fontSize: 14.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '확인을 누르시면 원터치 리스트에 추가됩니다.',
                        style: TextStyle(
                          color: ColorConstant.primary,
                          fontSize: 8.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 79.w,
                            height: 28.h,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  side: BorderSide(width: 1.w, color: ColorConstant.gray2),
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(5.r))
                                  ),
                                  padding: EdgeInsets.all(0)
                              ),
                              onPressed: (){
                                Get.back();
                              },
                              child: Text(
                                '취소',
                                style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 10.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 6.w,),
                          Container(
                            width: 79.w,
                            height: 28.h,
                            child: ElevatedButton(
                              onPressed: (){
                                Get.back();
                                addOneTouch(context, itId, ctItems);
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: ColorConstant.primary,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(5.r))
                                  ),
                                  padding: EdgeInsets.all(0)
                              ),
                              child: Text(
                                '확인',
                                style: TextStyle(
                                  color: ColorConstant.white,
                                  fontSize: 10.sp,
                                  fontFamily: 'Noto Sans KR',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),

                            ),
                          ),
                        ],
                      )
                    ],
                  )
              ),
            ),
          );
        });
  }
}